import QtQuick 6
import QtQuick3D 6
import QtQuick3D.Helpers
import Sandbox3D 1

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
    property string sessionText: "Qt Quick 3D: Custom Geometry"
    property string debugText: ""


    View3D {
        anchors.fill: parent
        environment: SceneEnvironment {
            lightProbe: Texture {
                source: "monte_scherbelino_2k.hdr"
            }
            backgroundMode: SceneEnvironment.SkyBox
        }
        importScene: sceneRoot


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

            DirectionalLight {
                eulerRotation.x: -30
            }

            Model {
                geometry: RandomPointCloud {
                    count: 300000
                }
                materials: PrincipledMaterial {
                }
            }


        }
    }

    WasdController {
        controlledObject: mainCamera
    }
}
