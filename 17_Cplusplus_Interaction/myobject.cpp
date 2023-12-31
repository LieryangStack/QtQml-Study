#include "myobject.h"
#include <QDebug>

MyObject::MyObject(QObject *parent) : QObject(parent)
{

}

void
MyObject::cppSlot (int i, QString s) {
   qDebug() << __FUNCTION__ << "i = " << i << "s = " << s;
}

void MyObject::fun()
{
    qDebug() << __FUNCTION__;
    emit objSignal(100, "zhang3");
}

int MyObject::iValue() const
{
    return m_iValue;
}

void MyObject::setIValue(int iValue)
{
    m_iValue = iValue;
}

QString MyObject::sString() const
{
    return m_sString;
}

void MyObject::setSString(const QString &sString)
{
    m_sString = sString;
}

MyObject *MyObject::getInstance()
{
    static MyObject *obj = new MyObject;
    return obj;
}
