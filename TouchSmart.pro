TEMPLATE = subdirs

SUBDIRS += \
    UI_TouchSmart \
    ParametriSotterranei \
    ParametriUtente



TRANSLATIONS +=\
         UI_TouchSmart/QmlContents/Traduzioni/en_EN.ts

CONFIG *= c++14

UI_TouchSmart.depends = ParametriUtente
