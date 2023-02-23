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

layout (binding = 0) uniform sampler2D fp_tex_tcb_8;
layout (binding = 1) uniform sampler2D fp_tex_cb2_8;
layout (binding = 2) uniform sampler2D fp_tex_tcb_A;
layout (binding = 3) uniform sampler2D fp_tex_cb2_A;
layout (binding = 4) uniform sampler2D fp_tex_tcb_C;
layout (binding = 5) uniform sampler2D fp_tex_cb2_C;
layout (binding = 6) uniform sampler2D fp_tex_tcb_10;

layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;
layout (location = 5) in vec4 in_attr5;

layout (location = 0) out vec4 out_attr0;

layout (binding = 0, std140) uniform support_block
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
    int temp_7;
    precise float temp_8;
    precise float temp_9;
    bool temp_10;
    precise float temp_11;
    precise vec2 temp_12;
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
    precise float temp_30;
    precise float temp_31;
    int temp_32;
    precise float temp_33;
    precise float temp_34;
    precise float temp_35;
    int temp_36;
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
    bool temp_48;
    bool temp_49;
    precise float temp_50;
    precise float temp_51;
    precise vec4 temp_52;
    precise float temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    precise vec4 temp_57;
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
    precise float temp_70;
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
    bool temp_98;
    precise float temp_99;
    precise float temp_100;
    precise float temp_101;
    precise float temp_102;
    precise float temp_103;
    precise float temp_104;
    precise float temp_105;
    precise float temp_106;
    precise float temp_107;
    precise float temp_108;
    precise float temp_109;
    precise float temp_110;
    precise float temp_111;
    precise float temp_112;
    precise float temp_113;
    precise float temp_114;
    precise float temp_115;
    bool temp_116;
    bool temp_117;
    temp_117 = false;
    temp_116 = false;
    // 0x000008: 0x4C98078800870006 Mov
    // 0x000010: 0xE003FF87CFF7FF08 Ipa
    // 0x000018: 0x0103F8000007F00D Mov32i
    // 0x000028: 0x5080000000470808 Mufu
    temp_0 = 1.0 / gl_FragCoord.w;
    // 0x000030: 0xE043FF8A0087FF04 Ipa
    temp_1 = in_attr2.x * gl_FragCoord.w;
    temp_2 = temp_1 * temp_0;
    // 0x000038: 0xE043FF8A4087FF05 Ipa
    temp_3 = in_attr2.y * gl_FragCoord.w;
    temp_4 = temp_3 * temp_0;
    // 0x000048: 0xDF60000120670406 TmmlB
    temp_5 = textureQueryLod(fp_tex_cb2_8, vec2(temp_2, temp_4)).r;
    temp_6 = temp_5 * 256.0;
    temp_7 = int(temp_6);
    // 0x000050: 0x5CB8000000670A00 I2f
    temp_8 = float(uint(temp_7));
    // 0x000058: 0x3868103B80070000 Fmul
    temp_9 = temp_8 * 0.00390625;
    // 0x000068: 0x36B483C000070007 Fsetp
    temp_10 = temp_9 > 2.0;
    // 0x000070: 0x5C98078000070002 Mov
    // 0x000078: 0x010400000000F002 Mov32i
    temp_11 = temp_9;
    if (temp_10)
    {
        temp_11 = 2.0;
    }
    // 0x000088: 0xD874008FF0270402 Texs
    temp_12 = textureLod(fp_tex_tcb_8, vec2(temp_2, temp_4), temp_11).xw;
    temp_13 = temp_12.x;
    temp_14 = temp_12.y;
    // 0x000090: 0xE043FF8D4087FF07 Ipa
    temp_15 = in_attr5.y * gl_FragCoord.w;
    temp_16 = temp_15 * temp_0;
    // 0x000098: 0xE043FF8AC087FF0A Ipa
    temp_17 = in_attr2.w * gl_FragCoord.w;
    temp_18 = temp_17 * temp_0;
    // 0x0000A8: 0xE043FF8A8087FF09 Ipa
    temp_19 = in_attr2.z * gl_FragCoord.w;
    temp_20 = temp_19 * temp_0;
    // 0x0000B0: 0xE043FF8B0087FF00 Ipa
    temp_21 = in_attr3.x * gl_FragCoord.w;
    temp_22 = temp_21 * temp_0;
    // 0x0000B8: 0xE043FF8B4087FF01 Ipa
    temp_23 = in_attr3.y * gl_FragCoord.w;
    temp_24 = temp_23 * temp_0;
    // 0x0000C8: 0x4C98078800C7000E Mov
    // 0x0000D0: 0x4C98078800A7000B Mov
    // 0x0000D8: 0x4C68102404070706 Fmul
    temp_25 = temp_16 * fp_c9_data[16].x;
    // 0x0000E8: 0x4C68102404170707 Fmul
    temp_26 = temp_16 * fp_c9_data[16].y;
    // 0x0000F0: 0x32A206C00007030C Ffma
    temp_27 = fma(temp_14, 2.0, -1.0);
    // 0x0000F8: 0x32A206C000070203 Ffma
    temp_28 = fma(temp_13, 2.0, -1.0);
    // 0x000108: 0x59A0050000C70705 Ffma
    temp_29 = fma(temp_26, temp_27, temp_18);
    // 0x000110: 0xDF60000120E70007 TmmlB
    temp_30 = textureQueryLod(fp_tex_cb2_C, vec2(temp_22, temp_24)).r;
    temp_31 = temp_30 * 256.0;
    temp_32 = int(temp_31);
    // 0x000118: 0x59A0048000370604 Ffma
    temp_33 = fma(temp_25, temp_28, temp_20);
    // 0x000128: 0xDF60000120B70403 TmmlB
    temp_34 = textureQueryLod(fp_tex_cb2_A, vec2(temp_33, temp_29)).r;
    temp_35 = temp_34 * 256.0;
    temp_36 = int(temp_35);
    // 0x000130: 0xE003FF8CCFF7FF09 Ipa
    temp_37 = in_attr4.w * gl_FragCoord.w;
    // 0x000138: 0x508000000047090A Mufu
    temp_38 = 1.0 / temp_37;
    // 0x000148: 0xE043FF8C00A7FF0F Ipa
    temp_39 = in_attr4.x * gl_FragCoord.w;
    temp_40 = temp_39 * temp_38;
    // 0x000150: 0xE043FF8C40A7FF09 Ipa
    temp_41 = in_attr4.y * gl_FragCoord.w;
    temp_42 = temp_41 * temp_38;
    // 0x000158: 0xD822010FF0970F09 Texs
    temp_43 = texture(fp_tex_tcb_10, vec2(temp_40, temp_42)).x;
    // 0x000168: 0x5CB8000000770A06 I2f
    temp_44 = float(uint(temp_32));
    // 0x000170: 0x5CB8000000370A02 I2f
    temp_45 = float(uint(temp_36));
    // 0x000178: 0x3868103B80070606 Fmul
    temp_46 = temp_44 * 0.00390625;
    // 0x000188: 0x3868103B80070202 Fmul
    temp_47 = temp_45 * 0.00390625;
    // 0x000190: 0x36B483C00007060F Fsetp
    temp_48 = temp_46 > 2.0;
    // 0x000198: 0x36B483C000070207 Fsetp
    temp_49 = temp_47 > 2.0;
    // 0x0001A8: 0x5C9807800067000C Mov
    // 0x0001B0: 0x5C98078000270006 Mov
    // 0x0001B8: 0x010400000001F00C Mov32i
    temp_50 = temp_46;
    temp_51 = temp_47;
    if (temp_48)
    {
        temp_50 = 2.0;
    }
    // 0x0001C8: 0xD87200C020C70000 Texs
    temp_52 = textureLod(fp_tex_tcb_C, vec2(temp_22, temp_24), temp_50).xyzw;
    temp_53 = temp_52.x;
    temp_54 = temp_52.y;
    temp_55 = temp_52.z;
    temp_56 = temp_52.w;
    // 0x0001D0: 0x010400000000F006 Mov32i
    if (temp_49)
    {
        temp_51 = 2.0;
    }
    // 0x0001D8: 0xD87200A040670406 Texs
    temp_57 = textureLod(fp_tex_tcb_A, vec2(temp_33, temp_29), temp_51).xyzw;
    temp_58 = temp_57.x;
    temp_59 = temp_57.y;
    temp_60 = temp_57.z;
    temp_61 = temp_57.w;
    // 0x0001E8: 0xE043FF8CC087FF0D Ipa
    temp_62 = in_attr4.w * gl_FragCoord.w;
    temp_63 = temp_62 * temp_0;
    // 0x0001F0: 0xE043FF8C8087FF0A Ipa
    temp_64 = in_attr4.z * gl_FragCoord.w;
    temp_65 = temp_64 * temp_0;
    // 0x0001F8: 0x4C9807A004B7000C Mov
    // 0x000208: 0x5080000000470D0B Mufu
    temp_66 = 1.0 / temp_63;
    // 0x000210: 0x5C68100000B70A0B Fmul
    temp_67 = temp_65 * temp_66;
    // 0x000218: 0xE043FF88C087FF0A Ipa
    temp_68 = in_attr0.w * gl_FragCoord.w;
    temp_69 = temp_68 * temp_0;
    // 0x000228: 0x51A2062004970B0E Ffma
    temp_70 = 0.0 - fp_c8_data[18].y;
    temp_71 = fma(temp_67, fp_c8_data[18].w, temp_70);
    // 0x000230: 0xE043FF8D0087FF0B Ipa
    temp_72 = in_attr5.x * gl_FragCoord.w;
    temp_73 = temp_72 * temp_0;
    // 0x000238: 0x51A006200487090C Ffma
    temp_74 = fma(temp_43, fp_c8_data[18].w, fp_c8_data[18].x);
    // 0x000248: 0xE043FF89C087FF09 Ipa
    temp_75 = in_attr1.w * gl_FragCoord.w;
    temp_76 = temp_75 * temp_0;
    // 0x000250: 0x5080000000470E0E Mufu
    temp_77 = 1.0 / temp_71;
    // 0x000258: 0x49A0062004A70E0C Ffma
    temp_78 = fma(temp_77, fp_c8_data[18].z, temp_74);
    // 0x000268: 0xE043FF880087FF0D Ipa
    temp_79 = in_attr0.x * gl_FragCoord.w;
    temp_80 = temp_79 * temp_0;
    // 0x000270: 0x5C68100000370503 Fmul
    temp_81 = temp_61 * temp_56;
    // 0x000278: 0x4C9807A417D70005 Mov
    // 0x000288: 0x5080000000470505 Mufu
    temp_82 = 1.0 / fp_c9_data[95].y;
    // 0x000290: 0x5C68100000A70303 Fmul
    temp_83 = temp_81 * temp_69;
    // 0x000298: 0xE043FF890087FF0A Ipa
    temp_84 = in_attr1.x * gl_FragCoord.w;
    temp_85 = temp_84 * temp_0;
    // 0x0002A8: 0x5C6C100000970303 Fmul
    temp_86 = temp_83 * temp_76;
    temp_87 = clamp(temp_86, 0.0, 1.0);
    // 0x0002B0: 0xE043FF898087FF09 Ipa
    temp_88 = in_attr1.z * gl_FragCoord.w;
    temp_89 = temp_88 * temp_0;
    // 0x0002B8: 0x5C6C100000570C0C Fmul
    temp_90 = temp_78 * temp_82;
    temp_91 = clamp(temp_90, 0.0, 1.0);
    // 0x0002C8: 0xE043FF894087FF05 Ipa
    temp_92 = in_attr1.y * gl_FragCoord.w;
    temp_93 = temp_92 * temp_0;
    // 0x0002D0: 0x5C68100000370C0C Fmul
    temp_94 = temp_91 * temp_87;
    // 0x0002D8: 0x5C68100000B70C03 Fmul
    temp_95 = temp_94 * temp_73;
    // 0x0002E8: 0xE043FF884087FF0C Ipa
    temp_96 = in_attr0.y * gl_FragCoord.w;
    temp_97 = temp_96 * temp_0;
    // 0x0002F0: 0x4BB383A417A70307 Fsetp
    temp_98 = temp_95 <= fp_c9_data[94].z;
    // 0x0002F8: 0xE043FF888087FF0B Ipa
    temp_99 = in_attr0.z * gl_FragCoord.w;
    temp_100 = temp_99 * temp_0;
    // 0x000308: 0x5C68100000670606 Fmul
    temp_101 = temp_58 * temp_58;
    // 0x000310: 0xE33000000000000F Kil
    if (temp_98)
    {
        discard;
    }
    // 0x000318: 0x5C68100000770707 Fmul
    temp_102 = temp_59 * temp_59;
    // 0x000328: 0x5C68100000470404 Fmul
    temp_103 = temp_60 * temp_60;
    // 0x000330: 0x5C68100000070600 Fmul
    temp_104 = temp_101 * temp_53;
    // 0x000338: 0x5C58300000A70D0D Fadd
    temp_105 = 0.0 - temp_85;
    temp_106 = temp_80 + temp_105;
    // 0x000348: 0x5C58300000570C0C Fadd
    temp_107 = 0.0 - temp_93;
    temp_108 = temp_97 + temp_107;
    // 0x000350: 0x5C68100000170707 Fmul
    temp_109 = temp_102 * temp_54;
    // 0x000358: 0x5C68100000270402 Fmul
    temp_110 = temp_103 * temp_55;
    // 0x000368: 0x5C58300000970B0B Fadd
    temp_111 = 0.0 - temp_89;
    temp_112 = temp_100 + temp_111;
    // 0x000370: 0x59A0050000070D00 Ffma
    temp_113 = fma(temp_106, temp_104, temp_85);
    // 0x000378: 0x59A0028000770C01 Ffma
    temp_114 = fma(temp_108, temp_109, temp_93);
    // 0x000388: 0x59A0048000270B02 Ffma
    temp_115 = fma(temp_112, temp_110, temp_89);
    // 0x000390: 0xE30000000007000F Exit
    if (!s_is_bgra[0])
    {
        out_attr0.x = temp_113;
        temp_116 = true;
    }
    else
    {
        out_attr0.z = temp_113;
    }
    temp_116 = false;
    out_attr0.y = temp_114;
    if (!s_is_bgra[0])
    {
        out_attr0.z = temp_115;
        temp_117 = true;
    }
    else
    {
        out_attr0.x = temp_115;
    }
    temp_117 = false;
    out_attr0.w = temp_95;
    return;
}