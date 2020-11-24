#include "randompointcloud.h"
#include <QRandomGenerator>

RandomPointCloud::RandomPointCloud()
{
    updateGeometry();
}

int RandomPointCloud::count() const
{
    return m_count;
}

void RandomPointCloud::setCount(int count)
{
    if (m_count == count)
        return;

    m_count = count;
    updateGeometry();
    emit countChanged(m_count);
}

void RandomPointCloud::updateGeometry()
{
    clear();
    QByteArray vertexData;
    vertexData.resize(sizeof(float) * 3 * m_count);
    float *p = reinterpret_cast<float *>(vertexData.data());

    for (int i = 0; i < m_count; ++i) {
        // Create a vertex between -300.0 and 300
        const QVector3D vertex = generateRandomVertex(-300.0f, 300.0f);
        *p++ = vertex.x();
        *p++ = vertex.y();
        *p++ = vertex.z();
    }

    setVertexData(vertexData);
    setPrimitiveType(QQuick3DGeometry::PrimitiveType::Points);
    setStride(3 * sizeof(float));
    addAttribute(QQuick3DGeometry::Attribute::PositionSemantic,
                 0,
                 QQuick3DGeometry::Attribute::F32Type);
}

QVector3D RandomPointCloud::generateRandomVertex(float min, float max) const
{
    float value1 = QRandomGenerator::global()->generateDouble() * (max - min) + min;
    float value2 = QRandomGenerator::global()->generateDouble() * (max - min) + min;
    float value3 = QRandomGenerator::global()->generateDouble() * (max - min) + min;

    return QVector3D(value1, value2, value3);
}
