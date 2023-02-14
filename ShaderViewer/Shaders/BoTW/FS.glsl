#version 450 core
#extension GL_ARB_gpu_shader_int64 : enable
#extension GL_ARB_shader_ballot : enable
#extension GL_ARB_shader_group_vote : enable
#extension GL_EXT_shader_image_load_formatted : enable
#extension GL_EXT_texture_shadow_lod : enable
#extension GL_ARB_fragment_shader_interlock : enable
#pragma optionNV(fastmath off)

const int undef = 0;

layout (binding = 5, std140) uniform fp_c8
{
    vec4 fp_c8_data[0x1000];
};
layout (binding = 6, std140) uniform fp_c9
{
    vec4 fp_c9_data[0x1000];
};

layout (binding = 7) uniform sampler2D fp_tex_tcb_8;
layout (binding = 8) uniform sampler2D fp_tex_tcb_A;
layout (binding = 9) uniform sampler2D fp_tex_tcb_E;

layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;
layout (location = 5) in vec4 in_attr5;
layout (location = 6) in vec4 in_attr6;

layout (location = 0) out vec4 out_attr0;

layout (binding = 10, std140) uniform support_block
{
    uint s_alpha_test;
    bool s_is_bgra[8];
    vec4 s_viewport_inverse;
    int s_frag_scale_count;
    float s_render_scale[73];
};


void main()
{
    precise float temp_0;
    precise float temp_1;
    precise float temp_2;
    precise float temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    precise float temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    precise float temp_27;
    precise float temp_28;
    precise float temp_29;
    bool temp_30;
    precise vec2 temp_31;
    precise float temp_32;
    precise float temp_33;
    precise float temp_34;
    precise float temp_35;
    precise float temp_36;
    precise float temp_37;
    precise float temp_38;
    precise float temp_39;
    precise float temp_40;
    precise float temp_41;
    precise float temp_42;
    precise float temp_43;
    precise float temp_44;
    precise float temp_45;
    precise float temp_46;
    precise float temp_47;
    precise float temp_48;
    precise float temp_49;
    precise float temp_50;
    precise float temp_51;
    precise float temp_52;
    precise float temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    precise float temp_59;
    precise float temp_60;
    precise float temp_61;
    precise float temp_62;
    precise float temp_63;
    precise float temp_64;
    precise float temp_65;
    precise float temp_66;
    precise float temp_67;
    precise float temp_68;
    precise float temp_69;
    precise vec3 temp_70;
    precise float temp_71;
    precise float temp_72;
    precise float temp_73;
    precise float temp_74;
    precise float temp_75;
    precise float temp_76;
    precise float temp_77;
    precise float temp_78;
    precise float temp_79;
    precise float temp_80;
    precise float temp_81;
    precise float temp_82;
    precise float temp_83;
    precise float temp_84;
    precise float temp_85;
    precise float temp_86;
    precise float temp_87;
    precise float temp_88;
    precise float temp_89;
    precise float temp_90;
    precise float temp_91;
    precise float temp_92;
    precise float temp_93;
    precise float temp_94;
    precise float temp_95;
    precise float temp_96;
    precise float temp_97;
    precise float temp_98;
    bool temp_99;
    bool temp_100;
    temp_100 = false;
    temp_99 = false;
    // 0x000008: 0x0103F8000007F00E Mov32i
    // 0x000010: 0xE003FF87CFF7FF02 Ipa
    // 0x000018: 0x5080000000470202 Mufu
    temp_0 = 1.0 / gl_FragCoord.w;
    // 0x000028: 0xE043FF8E0027FF00 Ipa
    temp_1 = in_attr6.x * gl_FragCoord.w;
    temp_2 = temp_1 * temp_0;
    // 0x000030: 0xE043FF8E4027FF01 Ipa
    temp_3 = in_attr6.y * gl_FragCoord.w;
    temp_4 = temp_3 * temp_0;
    // 0x000038: 0xE043FF8E8027FF03 Ipa
    temp_5 = in_attr6.z * gl_FragCoord.w;
    temp_6 = temp_5 * temp_0;
    // 0x000048: 0xE043FF8D4027FF04 Ipa
    temp_7 = in_attr5.y * gl_FragCoord.w;
    temp_8 = temp_7 * temp_0;
    // 0x000050: 0xE043FF8D8027FF05 Ipa
    temp_9 = in_attr5.z * gl_FragCoord.w;
    temp_10 = temp_9 * temp_0;
    // 0x000058: 0x4C68102000870000 Fmul
    temp_11 = temp_2 * fp_c8_data[2].x;
    // 0x000068: 0x49A0002000970100 Ffma
    temp_12 = fma(temp_4, fp_c8_data[2].y, temp_11);
    // 0x000070: 0xE043FF8C0027FF01 Ipa
    temp_13 = in_attr4.x * gl_FragCoord.w;
    temp_14 = temp_13 * temp_0;
    // 0x000078: 0x5C59100000570405 Fadd
    temp_15 = 0.0 - temp_8;
    temp_16 = temp_15 + temp_10;
    // 0x000088: 0x49A0002000A70300 Ffma
    temp_17 = fma(temp_6, fp_c8_data[2].z, temp_12);
    // 0x000090: 0x5080000000470503 Mufu
    temp_18 = 1.0 / temp_16;
    // 0x000098: 0x4C58102000B70007 Fadd
    temp_19 = temp_17 + fp_c8_data[2].w;
    // 0x0000A8: 0xE043FF8A0027FF00 Ipa
    temp_20 = in_attr2.x * gl_FragCoord.w;
    temp_21 = temp_20 * temp_0;
    // 0x0000B0: 0x5C59300000470704 Fadd
    temp_22 = 0.0 - temp_19;
    temp_23 = 0.0 - temp_8;
    temp_24 = temp_22 + temp_23;
    // 0x0000B8: 0x5C6C100000370403 Fmul
    temp_25 = temp_24 * temp_18;
    temp_26 = clamp(temp_25, 0.0, 1.0);
    // 0x0000C8: 0x5C68100000370103 Fmul
    temp_27 = temp_14 * temp_26;
    // 0x0000D0: 0xE043FF8A4027FF01 Ipa
    temp_28 = in_attr2.y * gl_FragCoord.w;
    temp_29 = temp_28 * temp_0;
    // 0x0000D8: 0x4BB383A417A70307 Fsetp
    temp_30 = temp_27 <= fp_c9_data[94].z;
    // 0x0000E8: 0xE33000000000000F Kil
    if (temp_30)
    {
        discard;
    }
    // 0x0000F0: 0xD834008FF0170000 Texs
    temp_31 = texture(fp_tex_tcb_8, vec2(temp_21, temp_29)).xw;
    temp_32 = temp_31.x;
    temp_33 = temp_31.y;
    // 0x0000F8: 0xE043FF89C027FF08 Ipa
    temp_34 = in_attr1.w * gl_FragCoord.w;
    temp_35 = temp_34 * temp_0;
    // 0x000108: 0xE043FF88C027FF0D Ipa
    temp_36 = in_attr0.w * gl_FragCoord.w;
    temp_37 = temp_36 * temp_0;
    // 0x000110: 0xE043FF8BC027FF09 Ipa
    temp_38 = in_attr3.w * gl_FragCoord.w;
    temp_39 = temp_38 * temp_0;
    // 0x000118: 0xE043FF8C4027FF05 Ipa
    temp_40 = in_attr4.y * gl_FragCoord.w;
    temp_41 = temp_40 * temp_0;
    // 0x000128: 0xE043FF8B0027FF06 Ipa
    temp_42 = in_attr3.x * gl_FragCoord.w;
    temp_43 = temp_42 * temp_0;
    // 0x000130: 0xE043FF8B4027FF04 Ipa
    temp_44 = in_attr3.y * gl_FragCoord.w;
    temp_45 = temp_44 * temp_0;
    // 0x000138: 0xE043FF8AC027FF0A Ipa
    temp_46 = in_attr2.w * gl_FragCoord.w;
    temp_47 = temp_46 * temp_0;
    // 0x000148: 0x5C58300000D7080B Fadd
    temp_48 = 0.0 - temp_37;
    temp_49 = temp_35 + temp_48;
    // 0x000150: 0xE043FF8A8027FF08 Ipa
    temp_50 = in_attr2.z * gl_FragCoord.w;
    temp_51 = temp_50 * temp_0;
    // 0x000158: 0x5C59300000D70707 Fadd
    temp_52 = 0.0 - temp_19;
    temp_53 = 0.0 - temp_37;
    temp_54 = temp_52 + temp_53;
    // 0x000168: 0x5080000000470B0C Mufu
    temp_55 = 1.0 / temp_49;
    // 0x000170: 0x5C6C100000C7070C Fmul
    temp_56 = temp_54 * temp_55;
    temp_57 = clamp(temp_56, 0.0, 1.0);
    // 0x000178: 0x5080000000470907 Mufu
    temp_58 = 1.0 / temp_39;
    // 0x000188: 0x5C68120000570C0C Fmul
    temp_59 = temp_57 * 0.5;
    temp_60 = temp_59 * temp_41;
    // 0x000190: 0x32A207400007000F Ffma
    temp_61 = fma(temp_32, 2.0, -1.0);
    // 0x000198: 0x32A2074000070101 Ffma
    temp_62 = fma(temp_33, 2.0, -1.0);
    // 0x0001A8: 0x59A0030000C70F06 Ffma
    temp_63 = fma(temp_61, temp_60, temp_43);
    // 0x0001B0: 0x59A0020000C70104 Ffma
    temp_64 = fma(temp_62, temp_60, temp_45);
    // 0x0001B8: 0x59A0040000F7050F Ffma
    temp_65 = fma(temp_41, temp_61, temp_51);
    // 0x0001C8: 0x59A005000017050C Ffma
    temp_66 = fma(temp_41, temp_62, temp_47);
    // 0x0001D0: 0x5C68100000770600 Fmul
    temp_67 = temp_63 * temp_58;
    // 0x0001D8: 0xD82E00AFF0C70F06 Texs
    temp_68 = texture(fp_tex_tcb_A, vec2(temp_65, temp_66)).w;
    // 0x0001E8: 0x5C68100000770401 Fmul
    temp_69 = temp_64 * temp_58;
    // 0x0001F0: 0xD82200E040170000 Texs
    temp_70 = texture(fp_tex_tcb_E, vec2(temp_67, temp_69)).xyz;
    temp_71 = temp_70.x;
    temp_72 = temp_70.y;
    temp_73 = temp_70.z;
    // 0x0001F8: 0xE043FF890027FF08 Ipa
    temp_74 = in_attr1.x * gl_FragCoord.w;
    temp_75 = temp_74 * temp_0;
    // 0x000208: 0xE043FF880027FF09 Ipa
    temp_76 = in_attr0.x * gl_FragCoord.w;
    temp_77 = temp_76 * temp_0;
    // 0x000210: 0xE043FF894027FF07 Ipa
    temp_78 = in_attr1.y * gl_FragCoord.w;
    temp_79 = temp_78 * temp_0;
    // 0x000218: 0xE043FF884027FF0A Ipa
    temp_80 = in_attr0.y * gl_FragCoord.w;
    temp_81 = temp_80 * temp_0;
    // 0x000228: 0xE043FF898027FF05 Ipa
    temp_82 = in_attr1.z * gl_FragCoord.w;
    temp_83 = temp_82 * temp_0;
    // 0x000230: 0xE043FF888027FF0B Ipa
    temp_84 = in_attr0.z * gl_FragCoord.w;
    temp_85 = temp_84 * temp_0;
    // 0x000238: 0x5C59100000970809 Fadd
    temp_86 = 0.0 - temp_75;
    temp_87 = temp_86 + temp_77;
    // 0x000248: 0x5C59100000A7070A Fadd
    temp_88 = 0.0 - temp_79;
    temp_89 = temp_88 + temp_81;
    // 0x000250: 0x5C59100000B7050B Fadd
    temp_90 = 0.0 - temp_83;
    temp_91 = temp_90 + temp_85;
    // 0x000258: 0x5C6810000067060E Fmul
    temp_92 = temp_68 * temp_68;
    // 0x000268: 0x59A0040000E70909 Ffma
    temp_93 = fma(temp_87, temp_92, temp_75);
    // 0x000270: 0x59A0038000E70A07 Ffma
    temp_94 = fma(temp_89, temp_92, temp_79);
    // 0x000278: 0x59A0028000E70B05 Ffma
    temp_95 = fma(temp_91, temp_92, temp_83);
    // 0x000288: 0x59A0000000970600 Ffma
    temp_96 = fma(temp_68, temp_93, temp_71);
    // 0x000290: 0x59A0008000770601 Ffma
    temp_97 = fma(temp_68, temp_94, temp_72);
    // 0x000298: 0x59A0020000570602 Ffma
    temp_98 = fma(temp_68, temp_95, temp_73);
    // 0x0002A8: 0xE30000000007000F Exit
    if (!s_is_bgra[0])
    {
        out_attr0.x = temp_96;
        temp_99 = true;
    }
    else
    {
        out_attr0.z = temp_96;
    }
    temp_99 = false;
    out_attr0.y = temp_97;
    if (!s_is_bgra[0])
    {
        out_attr0.z = temp_98;
        temp_100 = true;
    }
    else
    {
        out_attr0.x = temp_98;
    }
    temp_100 = false;
    out_attr0.w = temp_27;
    return;
}
