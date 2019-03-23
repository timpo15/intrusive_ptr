//
// Created by timpo on 3/23/19.
//

#ifndef INTRUSIVE_PTR_INTRUSIVE_PTR_H
#define INTRUSIVE_PTR_INTRUSIVE_PTR_H


#include <cstddef>
#include <algorithm>

class intrusive_base {
    template<class T>
    friend
    class intrusive_ptr;

protected:
    virtual void add_ref() = 0;

    virtual void release() = 0;

    virtual int get_reffcnt() = 0;
};

template<class T>
class intrusive_ptr : intrusive_base {


public:
    intrusive_ptr() : ptr(nullptr) {}

    intrusive_ptr(T *ptr) : ptr(ptr) {
        add_ref();
    }

    intrusive_ptr(const intrusive_ptr<T> &&in_ptr) {
        ptr = in_ptr;
        add_ref();
    }

    intrusive_ptr(const intrusive_ptr<T> &in_ptr) {
        ptr = in_ptr.ptr;
        helper = &in_ptr;
        add_ref();
    }

    template<class U>
    intrusive_ptr(intrusive_ptr<U> &in_ptr) {
        ptr = static_cast<T *>(in_ptr.ptr);
        helper = &in_ptr;
        add_ref();

    }

    template<class U>
    intrusive_ptr(intrusive_ptr<U> &in_ptr, T *ptr):ptr(ptr) {
        helper = &in_ptr;
        add_ref();

    }

    ~intrusive_ptr() {
        release();
    }

    intrusive_ptr &operator=(intrusive_ptr<T> &in_ptr) {
        release();
        ptr = in_ptr.ptr;
        helper = &in_ptr;
        add_ref();
        return *this;
    }

    intrusive_ptr &operator=(const intrusive_ptr<T> &&in_ptr) {
        release();
        std::swap(ptr, in_ptr.ptr);
        std::swap(helper, in_ptr.helper);
        add_ref();
        return *this;
    }


    template<class U>
    intrusive_ptr &operator=(const intrusive_ptr<U> in_ptr) {
        release();
        ptr = in_ptr.ptr;
        helper = &in_ptr;
        add_ref();
        return *this;
    }

    void reset() {
        release();
        ptr = nullptr;
        helper = nullptr;
    }

    void reset(T *arg) {
        release();
        ptr = arg;
    }

    T &operator*() {
        return *ptr;
    }

    T *operator->() {
        return ptr;
    }

    T *get() {
        return ptr;
    }

    operator bool() {
        return (ptr != nullptr);
    }

    bool operator!() {
        return (ptr == nullptr);
    }

    void swap(intrusive_ptr<T> &b) {
        swap(helper, b.helper);
        swap(ptr, b.ptr);
    }

    int get_refcount() {
        return ptr->ref_count();
    }

private:
    T *ptr;
    intrusive_base *helper;

    void add_ref() {
        if (helper) {
            helper->add_ref();
        } else if (ptr) {
            ptr->add_ref();
        }
    }

    void release() {
        if (helper) {
            helper->release();
        } else if (ptr) {
            ptr->release();
        }
    }
};

template<class T, class U>
intrusive_ptr<T> dynamic_pointer_cast(intrusive_ptr<U> &in_ptr) {
    T *ptr = dynamic_cast<T *>(in_ptr.ptr);
    return intrusive_ptr<T>(ptr, &in_ptr);
}

#endif //INTRUSIVE_PTR_INTRUSIVE_PTR_H
