import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import "MainPages"
import "OggettiGlobali"


ApplicationWindow {


    visible: true
    width: 480
    height: 800
    title: qsTr("Hello World")

    Item {

        id:item
        anchors.fill: parent

       VarGlobali {id: define }
       Stringhe {id: stringhe}
       Loader {

           id:loader
           state:"standby"
           states: [
               State {
                   name: "standby"
                   when: gestorePagine.capitolo === define.mainPages.standBy
                   PropertyChanges { target: loader; sourceComponent: standby }
               },
               State {
                   name: "introduzione"
                   when: gestorePagine.capitolo === define.mainPages.introduzione
                   PropertyChanges { target: loader ; sourceComponent: introduzione }
               },
               State {
                   name: "homepage"
                   when: gestorePagine.capitolo === define.mainPages.homepage
                   PropertyChanges { target: loader ; sourceComponent: homepage }
               }
           ]
       }
       Component {
           id:standby
           StandBy {
               //onPremuto: { gestorePagine.capitolo=1 }
           }
       }
       Component {
           id: introduzione
           PgIntroduzione{}
       }
       Component{
           id:  homepage
           PgHome{}
       }


    }
}
