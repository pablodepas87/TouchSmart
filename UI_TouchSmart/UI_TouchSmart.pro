QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += $$files(librerieC/*.cpp) \

HEADERS += $$files(librerieC/*.h) \


RESOURCES += $$files(QmlContents/Traduzioni/*.*) \
            $$files(QmlContents/Font/*.*) \
            $$files(QmlContents/JS/*.*) \
            $$files(QmlContents/Images/Generiche/*.*) \
            $$files(QmlContents/Images/Standby/*.*) \
            $$files(QmlContents/Images/IconeBottoneArancio/*.*) \
            $$files(QmlContents/Images/Intro/*.*) \
            $$files(QmlContents/Images/Home/*.*) \
            $$files(QmlContents/QML/*.qml)\
            $$files(QmlContents/QML/MainPages/*.qml)\
            $$files(QmlContents/QML/OggettiGlobali/*.qml)\
            $$files(QmlContents/QML/OggettiHomePage/*.qml)



# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../ParametriUtente/release/ -lParametriUtente
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../ParametriUtente/debug/ -lParametriUtente
else:unix: LIBS += -L$$OUT_PWD/../ParametriUtente/ -lParametriUtente

INCLUDEPATH += $$PWD/../ParametriUtente
DEPENDPATH += $$PWD/../ParametriUtente
