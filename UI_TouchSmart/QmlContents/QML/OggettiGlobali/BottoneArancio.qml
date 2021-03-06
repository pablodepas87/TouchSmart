import QtQuick 2.7
import QtQuick.Controls 2.0



Button {
   id: btnGenerico
   width: 145
   height: 145
   opacity: btnGenerico.pressed ? 0.50 : 1

   property bool sbuffoOn: false

   signal powerOffOn()
   signal lampadaOnOff()
   signal settings()
   signal startStopTimer()
   checked: false

   background:Item {

      anchors.fill: parent
      Image{
        id:imgBackground
        anchors.horizontalCenter: parent.horizontalCenter
        source: btnGenerico.enabled == false ? "qrc:/QmlContents/Images/Generiche/sfondo-bottone_grigio.png" : btnGenerico.checked ? "qrc:/QmlContents/Images/Generiche/sfondo-bottone_verde.png" : "qrc:/QmlContents/Images/Generiche/sfondo-bottone.png"


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
       },
       State {
           name: "startTimer"
           PropertyChanges { target:icoBottone ; source:"qrc:/QmlContents/Images/IconeBottoneArancio/esegui.png" }
       }

   ]

   onClicked: {

     switch (state){

       case "powerOff": powerOffOn();  break;
       case "settings": settings() ;   break;
       case "startTimer": startStopTimer() ; break;
     }


   }


}
