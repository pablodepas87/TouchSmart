import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import "MainPages"


ApplicationWindow {


    visible: true
    width: 800
    height: 480
    title: qsTr("Hello World")
    background:
    Item {

        id:item
        anchors.fill: parent

        Loader {

          id:loader
          state:"page1"
          states: [
              State {
                  name: "page1"
                  when: gestorePagine.capitolo===0
                  PropertyChanges { target: loader; sourceComponent: page1 }
              },
              State {
                  name: "page2"
                  when: gestorePagine.capitolo===1
                  PropertyChanges { target: loader ; sourceComponent: page2 }
              }
          ]
        }
        Component {
            id:page1
            Page1 {
              onPremuto: { gestorePagine.capitolo=1 }
            }
        }
        Component {
            id:page2
            Page2{}
        }

        Connections{

          target: timeZone
          onDateTimeChanged: {

          }
        }
    }
}
