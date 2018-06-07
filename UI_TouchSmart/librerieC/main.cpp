#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "gestionepagine.h"
#include "timezone.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    TimeZone tmZone;
    GestionePagine gestorePagine;
    engine.rootContext()->setContextProperty("timeZone", &tmZone);
    engine.rootContext()->setContextProperty("gestorePagine",&gestorePagine);

    engine.load(QUrl(QStringLiteral("qrc:/QmlContents/QML/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();

}
