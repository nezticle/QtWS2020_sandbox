import QtQuick 6
import QtQuick3D 6
import QtQuick3D.Helpers

import "LightBox"

Item {
    id: sandbox
    // Inputs
    // Values are between 0.0 - 1.0
    required property real value1
    required property real value2
    required property real value3
    required property real value4
    required property real value5
    required property real value6
    required property bool isEnabled1
    required property bool isEnabled2
    required property bool isEnabled3
    // Outputs
    property string sessionText: "Qt Quick 3D: Imported Content"
    property string debugText: ""

    Node {
        id: sceneRoot
        PerspectiveCamera {
            id: mainCamera
            z: 300
        }

        LightBox {
            y: -200
            eulerRotation.y: 45
        }

        Node {

            DirectionalLight {
                eulerRotation.x: -30
                castsShadow: true
            }


            Model {
                Node {
                    y: 100
                    Rectangle {
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: 100
                        height: 25
                        color: "white"
                        Text {
                            anchors.centerIn: parent
                            text: "Hello World"
                        }
                    }
                }

                source: "#Sphere"
                eulerRotation.y: 30
                materials: PrincipledMaterial {
                    baseColor: "red"
                    metalness: value1
                    roughness: value2
                }
            }

            Model {
                source: "#Cube"
                x: -100
                materials: PrincipledMaterial {
                    baseColorMap: Texture {
                        sourceItem: Rectangle {
                            width: 256
                            height: 256
                            color: "blue"
                            Text {
                                anchors.centerIn: parent
                                text: qsTr("Via A Texture")
                                color: "white"
                                PropertyAnimation on rotation {
                                    from: 0
                                    to: 360
                                    duration: 5000
                                    running: true
                                    loops: Animation.Infinite
                                }
                            }

                        }
                    }
                    metalness: 0.0
                    roughness: 0.0
                }
            }
        }
    }


    View3D {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        width: parent.width * 0.5
        environment: SceneEnvironment {
            lightProbe: Texture {
                source: "monte_scherbelino_2k.hdr"
            }
            backgroundMode: SceneEnvironment.SkyBox
        }
        importScene: sceneRoot
    }

    View3D {
        importScene: sceneRoot
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        width: parent.width * 0.5
    }

    WasdController {
        controlledObject: mainCamera
    }
}
