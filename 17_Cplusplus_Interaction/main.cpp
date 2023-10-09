#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QScreen>
#include <myobject.h>
#include <QObject>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    /* 获取上下文对象 */
    QQmlContext *context = engine.rootContext();

    /* 获取应用程序屏幕对象 */
    QScreen *screen =  QGuiApplication::primaryScreen();
    /* 得到应用程序屏幕大小 */
    QRect rect = screen->virtualGeometry();
    /* 设定窗口宽度全局变量 WIDTH */
    context->setContextProperty("WIDTH", rect.width());

    /* C++自定义的对象加载入qml */
    qmlRegisterType<MyObject>("MyObj", 1, 0, "MyObject");

    /* 注册单例 */
    //qmlRegisterSingletonInstance ("MyObj", 1, 0, "MyObject", MyObject::getInstance());

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    /* engine 加载完成后 load以后 */
    auto list = engine.rootObjects();
    auto window = list.first();

    QObject::connect(window, SIGNAL(qmSig(int, QString)), \
                     MyObject::getInstance(), SLOT(cppSlot(int,QString)));
    QObject::connect(MyObject::getInstance(), SIGNAL(objSignal(QVariant, QVariant)), \
                     window, SLOT(qmSlot(QVariant, QVariant)));


    return app.exec();
}
