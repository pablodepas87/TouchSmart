import QtQuick 2.7
import QtQuick.Controls 2.0



Button {
   id: btnGenerico
   width: 145
   height: 145
   opacity: btnGenerico.pressed ? 0.50 : 1

   signal powerOff()
   signal lampadaOnOff()
   signal settings()

   background:Item {

      anchors.fill: parent
      Image{
        id:imgBackground
        anchors.horizontalCenter: parent.horizontalCenter
        source: "qrc:/QmlContents/Images/Generiche/sfondo-bottone.png"
      }
   }
   contentItem: Item {
      anchors.fill: parent
      Image{
        id: icoBottone
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        source: "qrc:/QmlContents/Images/Generiche/sfondo-bottone.png"
      }
   }

   state: "powerOff"
   states:  [
       State {
           name: "powerOff"
           PropertyChanges { target:icoBottone ; source:"qrc:/QmlContents/Images/IconeBottoneArancio/off.png" }
       },
       State {
           name: "settings"
           PropertyChanges { target:icoBottone ; source:"qrc:/QmlContents/Images/IconeBottoneArancio/settings.png" }
       }
   ]

   onClicked: {

     switch (state){

       case "powerOff": powerOff() ; break;
       case "settings": settings() ; break;

     }


   }


}
