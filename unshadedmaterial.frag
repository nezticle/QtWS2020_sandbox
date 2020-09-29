VARYING vec3 worldNormal;

void MAIN()
{
    // Lambert diffuse
    vec3 lightDirection = vec3(0.0, 0.0, 1.0);
    float factor = max(0.0, dot(lightDirection, worldNormal));

    FRAGCOLOR = vec4(factor * diffuseColor.rgb, 1.0);
}
