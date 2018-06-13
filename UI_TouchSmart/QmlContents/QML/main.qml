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
    background: Sfondo{ objBackImg.source: "qrc:/QmlContents/Images/Generiche/sfondo.png"}
    Item {

        id:item
        anchors.fill: parent

        Loader {

          id:loader
          state:"standby"
          states: [
              State {
                  name: "standby"
                  when: gestorePagine.capitolo===0
                  PropertyChanges { target: loader; sourceComponent: standby }
              },
              State {
                  name: "page2"
                  when: gestorePagine.capitolo===1
                  PropertyChanges { target: loader ; sourceComponent: page2 }
              }
          ]
        }
        Component {
            id:standby
            StandBy {
              onPremuto: { gestorePagine.capitolo=1 }
            }
        }
        Component {
            id:page2
            Page2{}
        }


    }
}
