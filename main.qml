import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Qt Quick 3D Presentation Sandbox")

    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        Rectangle {
            id: contentContainer
            color: "black"
            SplitView.fillWidth: true

            Sandbox {
                id: sandbox
                anchors.fill: parent
                value1: slider1.value
                value2: slider2.value
                value3: slider3.value
                value4: slider4.value
                value5: slider5.value
                value6: slider6.value
                isEnabled1: checkbox1.checked
                isEnabled2: checkbox2.checked
                isEnabled3: checkbox3.checked
            }
        }
        Rectangle {
            id: controlsContainer
            color: "#875087"
            implicitWidth: 0

            ColumnLayout {
                width: parent.width
                Label {
                    text: "Sandbox Settings"
                    font.pointSize: 16
                    color: "white"
                    ColumnLayout.alignment: Qt.AlignHCenter
                }

                RowLayout {
                    Slider {
                        id: slider1
                        value: 0
                        from: 0
                        to: 1
                        stepSize: 0.01
                        focusPolicy: Qt.NoFocus
                    }
                    Label {
                        text: slider1.value.toFixed(2)
                        color: "white"
                        ColumnLayout.alignment: Qt.AlignRight
                    }
                }
                RowLayout {
                    Slider {
                        id: slider2
                        value: 0
                        from: 0
                        to: 1
                        stepSize: 0.01
                        focusPolicy: Qt.NoFocus
                    }
                    Label {
                        text: slider2.value.toFixed(2)
                        color: "white"
                        ColumnLayout.alignment: Qt.AlignRight
                    }
                }
                RowLayout {
                    Slider {
                        id: slider3
                        value: 0
                        from: 0
                        to: 1
                        stepSize: 0.01
                        focusPolicy: Qt.NoFocus
                    }
                    Label {
                        text: slider3.value.toFixed(2)
                        color: "white"
                        ColumnLayout.alignment: Qt.AlignRight
                    }
                }
                RowLayout {
                    Slider {
                        id: slider4
                        value: 0
                        from: 0
                        to: 1
                        stepSize: 0.01
                    }
                    Label {
                        text: slider4.value.toFixed(2)
                        color: "white"
                        ColumnLayout.alignment: Qt.AlignRight
                    }
                }
                RowLayout {
                    Slider {
                        id: slider5
                        value: 0
                        from: 0
                        to: 1
                        stepSize: 0.01
                        focusPolicy: Qt.NoFocus
                    }
                    Label {
                        text: slider5.value.toFixed(2)
                        color: "white"
                        ColumnLayout.alignment: Qt.AlignRight
                    }
                }
                RowLayout {
                    Slider {
                        id: slider6
                        value: 0
                        from: 0
                        to: 1
                        stepSize: 0.01
                        focusPolicy: Qt.NoFocus
                    }
                    Label {
                        text: slider6.value.toFixed(2)
                        color: "white"
                        ColumnLayout.alignment: Qt.AlignRight
                    }
                }
                RowLayout {
                    CheckBox {
                        id: checkbox1
                        checked: false
                        focusPolicy: Qt.NoFocus
                    }
                    Label {
                        text: "isEnabled1"
                        ColumnLayout.alignment: Qt.AlignLeft
                        color: "white"
                    }
                }
                RowLayout {
                    CheckBox {
                        id: checkbox2
                        checked: false
                        focusPolicy: Qt.NoFocus
                    }
                    Label {
                        text: "isEnabled2"
                        ColumnLayout.alignment: Qt.AlignLeft
                        color: "white"
                    }
                }
                RowLayout {
                    CheckBox {
                        id: checkbox3
                        checked: false
                        focusPolicy: Qt.NoFocus
                    }
                    Label {
                        text: "isEnabled3"
                        ColumnLayout.alignment: Qt.AlignLeft
                        color: "white"
                    }
                }
                RowLayout {
                    Label {
                        text: "debugText: "
                        ColumnLayout.alignment: Qt.AlignLeft
                        color: "white"
                    }
                    Label {
                        text: sandbox.debugText
                        ColumnLayout.alignment: Qt.AlignLeft
                        color: "white"
                    }
                }
            }
        }
    }

    Text {
        id: topText
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        text: sandbox.sessionText
        color: "white"
        font.pointSize: 32
        style: Text.Outline
        styleColor: "black"
    }

}
