#ifndef RANDOMPOINTCLOUD_H
#define RANDOMPOINTCLOUD_H

#include <QtQuick3D/QQuick3DGeometry>
#include <QtGui/QVector3D>

class RandomPointCloud : public QQuick3DGeometry
{
    Q_OBJECT
    QML_NAMED_ELEMENT(RandomPointCloud)
    Q_PROPERTY(int count READ count WRITE setCount NOTIFY countChanged)

public:
    RandomPointCloud();

    int count() const;
public slots:
    void setCount(int count);

signals:
    void countChanged(int count);

private:
    void updateGeometry();
    QVector3D generateRandomVertex(float min, float max) const;

    int m_count = 1;
};

#endif // RANDOMPOINTCLOUD_H
