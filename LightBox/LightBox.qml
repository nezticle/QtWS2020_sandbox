import QtQuick
import QtQuick3D
Node {
    id: rOOT
    Model {
        id: floor
        source: "meshes/floor.mesh"

        PrincipledMaterial {
            id: stones_material
            baseColorMap: Texture {
                source: "maps/0.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            opacityChannel: Material.A
            metalness: 0
            roughness: 0.5
        }
        materials: [
            stones_material
        ]
    }
    Model {
        id: walls
        source: "meshes/walls.mesh"

        PrincipledMaterial {
            id: plates_material
            baseColorMap: Texture {
                source: "maps/1.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            opacityChannel: Material.A
            metalness: 0
            roughness: 0.5
        }
        materials: [
            plates_material
        ]
    }
}
