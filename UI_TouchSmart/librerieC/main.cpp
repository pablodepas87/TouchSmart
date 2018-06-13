#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "gestionepagine.h"
#include "timezone.h"
#include "parametriutente.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    TimeZone tmZone;
    GestionePagine gestorePagine;

    qmlRegisterType<ParametriUtente>("com.tagliavini.lib",1,0,"ParametriUtente");




    ParametriUtente::m_parametriUtente= new ParametriUtente();

    engine.rootContext()->setContextProperty("parUtente",ParametriUtente::m_parametriUtente);
    engine.rootContext()->setContextProperty("timeZone", &tmZone);
    engine.rootContext()->setContextProperty("gestorePagine",&gestorePagine);

    engine.load(QUrl(QStringLiteral("qrc:/QmlContents/QML/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;
    return app.exec();

}
