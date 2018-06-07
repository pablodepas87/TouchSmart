#include <QGuiApplication>
#include "qmltranslator.h"


QmlTranslator::QmlTranslator(QObject *parent) : QObject(parent)
{

}

void QmlTranslator::setTranslation(QString translation)
{
    m_translator.load(":/QmlContents/Traduzioni/" + translation, "qmlContents/Traduzioni/"); //  nome del file .qm + path del file

    qApp->installTranslator(&m_translator);                 // Устанавливаем его в приложение
    emit languageChanged();                                 // Сигнализируем об изменении текущего перевода
}

void QmlTranslator::removeTranslation()
{

    qApp->removeTranslator(&m_translator);                 // Устанавливаем его в приложение
    emit languageChanged();                                 // Сигнализируем об изменении текущего перевода
}


QString QmlTranslator::getEmptyString() {
   return "";

}
