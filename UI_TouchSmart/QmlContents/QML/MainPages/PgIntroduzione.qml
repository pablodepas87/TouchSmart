import QtQuick 2.7
import QtQuick.Controls 2.0
import "../OggettiGlobali"



Page{

  width:600
  height: 480

  anchors.fill: parent

  background: Sfondo{ objBackImg.source: "qrc:/QmlContents/Images/Intro/sfondo-intro.png" }


  Image {
     id:nomeForno
     anchors.top: parent.top ; anchors.topMargin: parent.height*0.11
     anchors.horizontalCenter: parent.horizontalCenter
     source:"qrc:/QmlContents/Images/Intro/logo-tronik.png"




  }

  Image {
     id:forno
     anchors.top: nomeForno.bottom ; anchors.topMargin: parent.height*0.05
     anchors.horizontalCenter: parent.horizontalCenter
     source:"qrc:/QmlContents/Images/Intro/forno-tronik.png"

     ScaleAnimator {
         target: forno;
         from: 0;
         to: 1;
         duration: 1500
         running: logo.visible == true? true : false
         onStopped: gestorePagine.capitolo = define.mainPages.homepage
     }


  }



  //  logo tagliavini
   Image{
       id:logo
       anchors.bottom: parent.bottom ;
       anchors.bottomMargin: parent.height*0.04
       anchors.horizontalCenter: parent.horizontalCenter
       source: "qrc:/QmlContents/Images/Standby/logo_tagliavini.png"

   }


}
