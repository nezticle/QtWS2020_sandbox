import QtQuick
import QtQuick3D
import QtQuick3D.Effects

Effect {
    passes: [
        Pass {
            shaders: [
                Shader {
                    stage: Shader.Fragment
                    shader: "simpleTonemapper.frag"
                }
            ]
        }
    ]
}
