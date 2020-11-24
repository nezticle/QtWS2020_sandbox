void MAIN()
{
    vec4 color = texture(INPUT, INPUT_UV);
    vec3 srgbColor = pow(color.rgb, vec3(1.0 / 2.2));
    FRAGCOLOR = vec4(srgbColor, color.a);
}
