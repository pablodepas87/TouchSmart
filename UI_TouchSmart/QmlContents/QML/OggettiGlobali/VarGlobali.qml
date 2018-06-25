import QtQuick 2.7

QtObject {

    id: define

    // ARRAY
    readonly property var mainPages: {

       "standBy":0,
       "introduzione":1,
       "homepage":2
    }

    // BOOL
    property string pathBckg: "qrc:/QmlContents/Images/Generiche/sfondo.png"


    //VAR INT
    property int    widthScreen:  480
    property int    heigthScreen: 800






}
