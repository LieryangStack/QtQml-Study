/****************************************************************************
** Meta object code from reading C++ file 'myobject.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.4.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../17_Cplusplus_Interaction/myobject.h"
#include <QtNetwork/QSslError>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'myobject.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.4.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
namespace {
struct qt_meta_stringdata_MyObject_t {
    uint offsetsAndSizes[26];
    char stringdata0[9];
    char stringdata1[12];
    char stringdata2[5];
    char stringdata3[14];
    char stringdata4[1];
    char stringdata5[15];
    char stringdata6[10];
    char stringdata7[2];
    char stringdata8[2];
    char stringdata9[8];
    char stringdata10[4];
    char stringdata11[7];
    char stringdata12[8];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_MyObject_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_MyObject_t qt_meta_stringdata_MyObject = {
    {
        QT_MOC_LITERAL(0, 8),  // "MyObject"
        QT_MOC_LITERAL(9, 11),  // "QML.Element"
        QT_MOC_LITERAL(21, 4),  // "auto"
        QT_MOC_LITERAL(26, 13),  // "iValueChanged"
        QT_MOC_LITERAL(40, 0),  // ""
        QT_MOC_LITERAL(41, 14),  // "sStringChanged"
        QT_MOC_LITERAL(56, 9),  // "objSignal"
        QT_MOC_LITERAL(66, 1),  // "i"
        QT_MOC_LITERAL(68, 1),  // "s"
        QT_MOC_LITERAL(70, 7),  // "cppSlot"
        QT_MOC_LITERAL(78, 3),  // "fun"
        QT_MOC_LITERAL(82, 6),  // "iValue"
        QT_MOC_LITERAL(89, 7)   // "sString"
    },
    "MyObject",
    "QML.Element",
    "auto",
    "iValueChanged",
    "",
    "sStringChanged",
    "objSignal",
    "i",
    "s",
    "cppSlot",
    "fun",
    "iValue",
    "sString"
};
#undef QT_MOC_LITERAL
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_MyObject[] = {

 // content:
      10,       // revision
       0,       // classname
       1,   14, // classinfo
       5,   16, // methods
       2,   59, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // classinfo: key, value
       1,    2,

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       3,    0,   46,    4, 0x06,    3 /* Public */,
       5,    0,   47,    4, 0x06,    4 /* Public */,
       6,    2,   48,    4, 0x06,    5 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       9,    2,   53,    4, 0x0a,    8 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
      10,    0,   58,    4, 0x02,   11 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QVariant, QMetaType::QVariant,    7,    8,

 // slots: parameters
    QMetaType::Void, QMetaType::Int, QMetaType::QString,    7,    8,

 // methods: parameters
    QMetaType::Void,

 // properties: name, type, flags
      11, QMetaType::Int, 0x00015003, uint(0), 0,
      12, QMetaType::QString, 0x00015003, uint(1), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject MyObject::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_MyObject.offsetsAndSizes,
    qt_meta_data_MyObject,
    qt_static_metacall,
    nullptr,
    qt_metaTypeArray<
        // property 'iValue'
        int,
        // property 'sString'
        QString,
        // Q_OBJECT / Q_GADGET
        MyObject,
        // method 'iValueChanged'
        void,
        // method 'sStringChanged'
        void,
        // method 'objSignal'
        void,
        QVariant,
        QVariant,
        // method 'cppSlot'
        void,
        int,
        QString,
        // method 'fun'
        void
    >,
    nullptr
} };

void MyObject::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<MyObject *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->iValueChanged(); break;
        case 1: _t->sStringChanged(); break;
        case 2: _t->objSignal((*reinterpret_cast< std::add_pointer_t<QVariant>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QVariant>>(_a[2]))); break;
        case 3: _t->cppSlot((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2]))); break;
        case 4: _t->fun(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (MyObject::*)();
            if (_t _q_method = &MyObject::iValueChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (MyObject::*)();
            if (_t _q_method = &MyObject::sStringChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (MyObject::*)(QVariant , QVariant );
            if (_t _q_method = &MyObject::objSignal; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
    }else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<MyObject *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = _t->m_iValue; break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->m_sString; break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<MyObject *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0:
            if (_t->m_iValue != *reinterpret_cast< int*>(_v)) {
                _t->m_iValue = *reinterpret_cast< int*>(_v);
                Q_EMIT _t->iValueChanged();
            }
            break;
        case 1:
            if (_t->m_sString != *reinterpret_cast< QString*>(_v)) {
                _t->m_sString = *reinterpret_cast< QString*>(_v);
                Q_EMIT _t->sStringChanged();
            }
            break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *MyObject::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MyObject::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_MyObject.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int MyObject::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 5;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void MyObject::iValueChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void MyObject::sStringChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void MyObject::objSignal(QVariant _t1, QVariant _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))), const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t2))) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
