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
    property string sessionText: "Qt Quick 3D: 2D in 3D"
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
//                visible: isEnabled1
                eulerRotation.x: -30
                castsShadow: true
            }

//            PointLight {
//                visible: isEnabled2
//                position: Qt.vector3d(0, 100, 100)
//                castsShadow: true
//                shadowFactor: 50
//            }

//            SpotLight {
//                visible: isEnabled3
//                z: 300
//            }

            Model {
                source: "#Sphere"
                eulerRotation.y: 30
                materials: PrincipledMaterial {
                    baseColor: "red"
                    metalness: value1
                    roughness: value2
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
