import QtQuick 2.7
import QtQuick.Controls 2.0
import "../OggettiGlobali"

Page{

    width:480
    height: 800

    //signal premuto(int val)

    background: Sfondo{ objBackImg.source: define.pathBckg }

    header: Intestazione {

        objIconaPag.source:  ""
        objTitPag.text: qsTr("STAND BY")
        objNumPag.visible: false

    }

    // data ora
    Image {
        id:imgDataOra
        source:"qrc:/QmlContents/Images/Standby/btn-dataora.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top ; anchors.topMargin: parent.height*0.04

        Text {
            id: dataTxt
            x: 23
            y: 16
            width: 320
            height: 49
            color: "#ffffff"
            text: Qt.formatDateTime(new Date(),"dd/MM/yyyy")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 35
        }

        Text {
            id: ora
            x: 23
            y: 77
            width: 320
            height: 49
            text:  Qt.formatDateTime(new Date(),"hh:mm")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 35
            font.capitalization: Font.AllUppercase
            color: "white"
        }

        Connections{

            target: timeZone
            onDateTimeChanged: {

                dataTxt.text= Qt.formatDateTime(new Date(),"dd/MM/yyyy")
                ora.text = Qt.formatTime(dataFusoOrario,"hh:mm")

            }
        }
    }
    // prossima accensione
    Image {
        id:boxProxAccensione
        source:"qrc:/QmlContents/Images/Standby/sfondo-calendario.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: imgDataOra.bottom ; anchors.topMargin: parent.height*0.02

        Item{
            id: item1

            anchors.fill: parent

            Image {
                id: icoCalendario
                x: 133
                y: 61
                width: 90
                height: 90
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/QmlContents/Images/Standby/calendar-red.png"
            }

            Text {
                id: text1
                x: 172
                y: 8
                width: 337
                height: 47
                color: "#ffffff"
                text: qsTr("PROSSIMA ACCENSIONE")
                visible: false
                font.capitalization: Font.AllUppercase
                font.bold: true
                fontSizeMode: Text.HorizontalFit
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 20
            }

            Text {
                id: dataProxAccensione
                x: 31
                y: 157
                width: 320
                height: 49
                color: "#ffffff"
                text: Qt.formatDateTime(new Date(),"dd/MM/yyyy")
                visible: false
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 35
            }

            Text {
                id: oraProxAccensione
                x: 31
                y: 206
                width: 320
                height: 49
                color: "#ffffff"
                text: Qt.formatDateTime(new Date(),"hh:mm")
                visible: false
                font.capitalization: Font.AllUppercase
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 35
            }


            states: [
                State {
                    name: "prossAccensioneSettata"
                    when: parUtente.partenzaRit===true
                    PropertyChanges {
                        target: dataProxAccensione
                        visible: true
                    }

                    PropertyChanges {
                        target: oraProxAccensione
                        visible: true
                    }

                    PropertyChanges {
                        target: text1
                        visible: true
                    }
                    PropertyChanges {
                        target: icoCalendario
                        source:"qrc:/QmlContents/Images/Standby/calendar-VERDE.png"
                    }
                }
            ]


        }

        Connections{

            target: parUtente
            onOrarioPartenzaChanged: {

                dataProxAccensione.text= Qt.formatDateTime(orarioPartenza,"dd/MM/yyyy")
                oraProxAccensione.text = Qt.formatDateTime(orarioPartenza,"hh:mm")

            }
        }

    }
   //  logo tagliavini
    Image{
        id:logo
        anchors.top: boxProxAccensione.bottom ; anchors.topMargin: parent.height*0.02
        anchors.horizontalCenter: parent.horizontalCenter
        source: "qrc:/QmlContents/Images/Standby/logo_tagliavini.png"

    }
    // bottoner power
    BottoneArancio{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: logo.bottom ; anchors.topMargin: parent.height * 0.03
        state:"powerOff"
        onPowerOffOn:  gestorePagine.capitolo = define.mainPages.introduzione
    }




}
