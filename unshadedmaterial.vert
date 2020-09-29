VARYING vec3 worldNormal;

void MAIN()
{
    worldNormal = normalize(NORMAL_MATRIX * NORMAL);
    POSITION = MODELVIEWPROJECTION_MATRIX * vec4(VERTEX, 1.0);
}
