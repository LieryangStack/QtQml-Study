#ifndef MYOBJECT_H
#define MYOBJECT_H

#include <QObject>
#include <QtQml>

class MyObject : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit MyObject(QObject *parent = nullptr);
    /* Q_INVOKABLE表示可供qml文件中直接调用该方法 */
    Q_INVOKABLE void fun();

    int iValue() const;
    void setIValue(int iValue);

    QString sString() const;
    void setSString(const QString &sString);

    static MyObject *getInstance();

signals:
    void iValueChanged();
    void sStringChanged();
    void objSignal(QVariant i, QVariant s);

public slots:
    void cppSlot (int i, QString s);

private:
    int m_iValue;
    QString m_sString;

    Q_PROPERTY(int iValue MEMBER m_iValue NOTIFY iValueChanged)
    Q_PROPERTY(QString sString MEMBER m_sString NOTIFY sStringChanged)
};

#endif // MYOBJECT_H
