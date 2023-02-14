#version 450 core
#extension GL_ARB_gpu_shader_int64 : enable
#extension GL_ARB_shader_ballot : enable
#extension GL_ARB_shader_group_vote : enable
#extension GL_EXT_shader_image_load_formatted : enable
#extension GL_EXT_texture_shadow_lod : enable
#extension GL_ARB_shader_draw_parameters : enable
#extension GL_ARB_shader_viewport_layer_array : enable
#pragma optionNV(fastmath off)

const int undef = 0;

layout (binding = 1, std140) uniform vp_c1
{
    vec4 vp_c1_data[0x1000];
};
layout (binding = 2, std140) uniform vp_c8
{
    vec4 vp_c8_data[0x1000];
};
layout (binding = 3, std140) uniform vp_c9
{
    vec4 vp_c9_data[0x1000];
};
layout (binding = 4, std140) uniform vp_c10
{
    vec4 vp_c10_data[0x1000];
};

layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;
layout (location = 5) in vec4 in_attr5;
layout (location = 6) in vec4 in_attr6;

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 3) out vec4 out_attr3;
layout (location = 4) out vec4 out_attr4;
layout (location = 5) out vec4 out_attr5;
layout (location = 6) out vec4 out_attr6;


void main()
{
    bool temp_0;
    precise float temp_1;
    precise float temp_2;
    bool temp_3;
    precise float temp_4;
    bool temp_5;
    precise float temp_6;
    int temp_7;
    precise float temp_8;
    bool temp_9;
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
    bool temp_22;
    precise float temp_23;
    precise float temp_24;
    bool temp_25;
    precise float temp_26;
    precise float temp_27;
    precise float temp_28;
    precise float temp_29;
    precise float temp_30;
    precise float temp_31;
    precise float temp_32;
    precise float temp_33;
    bool temp_34;
    precise float temp_35;
    precise float temp_36;
    precise float temp_37;
    bool temp_38;
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
    bool temp_82;
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
    int temp_111;
    int temp_112;
    precise float temp_113;
    precise float temp_114;
    precise float temp_115;
    precise float temp_116;
    precise float temp_117;
    precise float temp_118;
    int temp_119;
    int temp_120;
    precise float temp_121;
    precise float temp_122;
    precise float temp_123;
    bool temp_124;
    bool temp_125;
    precise float temp_126;
    precise float temp_127;
    precise float temp_128;
    uint temp_129;
    bool temp_130;
    precise float temp_131;
    bool temp_132;
    precise float temp_133;
    int temp_134;
    int temp_135;
    int temp_136;
    bool temp_137;
    bool temp_138;
    bool temp_139;
    bool temp_140;
    int temp_141;
    uint temp_142;
    int temp_143;
    int temp_144;
    int temp_145;
    int temp_146;
    int temp_147;
    uint temp_148;
    uint temp_149;
    int temp_150;
    int temp_151;
    int temp_152;
    int temp_153;
    int temp_154;
    precise float temp_155;
    precise float temp_156;
    precise float temp_157;
    uint temp_158;
    int temp_159;
    precise float temp_160;
    precise float temp_161;
    precise float temp_162;
    int temp_163;
    int temp_164;
    int temp_165;
    int temp_166;
    uint temp_167;
    int temp_168;
    int temp_169;
    int temp_170;
    int temp_171;
    int temp_172;
    uint temp_173;
    uint temp_174;
    int temp_175;
    int temp_176;
    int temp_177;
    int temp_178;
    int temp_179;
    precise float temp_180;
    bool temp_181;
    int temp_182;
    precise float temp_183;
    precise float temp_184;
    uint temp_185;
    precise float temp_186;
    int temp_187;
    int temp_188;
    precise float temp_189;
    precise float temp_190;
    precise float temp_191;
    precise float temp_192;
    uint temp_193;
    bool temp_194;
    bool temp_195;
    bool temp_196;
    bool temp_197;
    bool temp_198;
    bool temp_199;
    int temp_200;
    precise float temp_201;
    precise float temp_202;
    precise float temp_203;
    precise float temp_204;
    precise float temp_205;
    bool temp_206;
    precise float temp_207;
    bool temp_208;
    bool temp_209;
    bool temp_210;
    bool temp_211;
    bool temp_212;
    precise float temp_213;
    precise float temp_214;
    precise float temp_215;
    int temp_216;
    int temp_217;
    int temp_218;
    int temp_219;
    precise float temp_220;
    int temp_221;
    uint temp_222;
    int temp_223;
    int temp_224;
    int temp_225;
    int temp_226;
    int temp_227;
    precise float temp_228;
    precise float temp_229;
    bool temp_230;
    uint temp_231;
    uint temp_232;
    int temp_233;
    int temp_234;
    int temp_235;
    int temp_236;
    int temp_237;
    int temp_238;
    int temp_239;
    int temp_240;
    int temp_241;
    uint temp_242;
    int temp_243;
    int temp_244;
    int temp_245;
    int temp_246;
    bool temp_247;
    uint temp_248;
    uint temp_249;
    int temp_250;
    int temp_251;
    int temp_252;
    int temp_253;
    int temp_254;
    bool temp_255;
    bool temp_256;
    bool temp_257;
    bool temp_258;
    int temp_259;
    precise float temp_260;
    precise float temp_261;
    bool temp_262;
    int temp_263;
    bool temp_264;
    bool temp_265;
    precise float temp_266;
    bool temp_267;
    bool temp_268;
    precise float temp_269;
    bool temp_270;
    precise float temp_271;
    precise float temp_272;
    uint temp_273;
    int temp_274;
    int temp_275;
    precise float temp_276;
    precise float temp_277;
    precise float temp_278;
    int temp_279;
    int temp_280;
    precise float temp_281;
    precise float temp_282;
    int temp_283;
    int temp_284;
    int temp_285;
    int temp_286;
    int temp_287;
    uint temp_288;
    int temp_289;
    int temp_290;
    int temp_291;
    int temp_292;
    precise float temp_293;
    precise float temp_294;
    precise float temp_295;
    precise float temp_296;
    precise float temp_297;
    precise float temp_298;
    precise float temp_299;
    precise float temp_300;
    precise float temp_301;
    precise float temp_302;
    int temp_303;
    uint temp_304;
    uint temp_305;
    int temp_306;
    int temp_307;
    int temp_308;
    int temp_309;
    int temp_310;
    bool temp_311;
    bool temp_312;
    precise float temp_313;
    precise float temp_314;
    int temp_315;
    int temp_316;
    int temp_317;
    precise float temp_318;
    precise float temp_319;
    precise float temp_320;
    int temp_321;
    precise float temp_322;
    int temp_323;
    precise float temp_324;
    precise float temp_325;
    precise float temp_326;
    precise float temp_327;
    precise float temp_328;
    precise float temp_329;
    precise float temp_330;
    precise float temp_331;
    precise float temp_332;
    precise float temp_333;
    precise float temp_334;
    precise float temp_335;
    precise float temp_336;
    precise float temp_337;
    precise float temp_338;
    precise float temp_339;
    precise float temp_340;
    precise float temp_341;
    precise float temp_342;
    precise float temp_343;
    precise float temp_344;
    precise float temp_345;
    precise float temp_346;
    precise float temp_347;
    precise float temp_348;
    precise float temp_349;
    precise float temp_350;
    precise float temp_351;
    precise float temp_352;
    precise float temp_353;
    precise float temp_354;
    precise float temp_355;
    precise float temp_356;
    precise float temp_357;
    precise float temp_358;
    precise float temp_359;
    precise float temp_360;
    precise float temp_361;
    precise float temp_362;
    precise float temp_363;
    precise float temp_364;
    precise float temp_365;
    precise float temp_366;
    precise float temp_367;
    precise float temp_368;
    precise float temp_369;
    int temp_370;
    precise float temp_371;
    precise float temp_372;
    precise float temp_373;
    precise float temp_374;
    precise float temp_375;
    precise float temp_376;
    bool temp_377;
    precise float temp_378;
    precise float temp_379;
    precise float temp_380;
    precise float temp_381;
    precise float temp_382;
    precise float temp_383;
    precise float temp_384;
    precise float temp_385;
    precise float temp_386;
    precise float temp_387;
    precise float temp_388;
    precise float temp_389;
    precise float temp_390;
    precise float temp_391;
    precise float temp_392;
    precise float temp_393;
    precise float temp_394;
    precise float temp_395;
    precise float temp_396;
    precise float temp_397;
    precise float temp_398;
    precise float temp_399;
    precise float temp_400;
    precise float temp_401;
    precise float temp_402;
    precise float temp_403;
    precise float temp_404;
    precise float temp_405;
    precise float temp_406;
    precise float temp_407;
    precise float temp_408;
    precise float temp_409;
    bool temp_410;
    precise float temp_411;
    int temp_412;
    int temp_413;
    precise float temp_414;
    precise float temp_415;
    precise float temp_416;
    precise float temp_417;
    int temp_418;
    bool temp_419;
    bool temp_420;
    precise float temp_421;
    int temp_422;
    precise float temp_423;
    precise float temp_424;
    uint temp_425;
    precise float temp_426;
    int temp_427;
    int temp_428;
    int temp_429;
    precise float temp_430;
    precise float temp_431;
    uint temp_432;
    int temp_433;
    uint temp_434;
    int temp_435;
    int temp_436;
    int temp_437;
    int temp_438;
    uint temp_439;
    uint temp_440;
    int temp_441;
    int temp_442;
    int temp_443;
    int temp_444;
    int temp_445;
    int temp_446;
    int temp_447;
    int temp_448;
    int temp_449;
    uint temp_450;
    int temp_451;
    int temp_452;
    int temp_453;
    int temp_454;
    int temp_455;
    uint temp_456;
    uint temp_457;
    int temp_458;
    int temp_459;
    int temp_460;
    int temp_461;
    int temp_462;
    precise float temp_463;
    int temp_464;
    precise float temp_465;
    precise float temp_466;
    precise float temp_467;
    precise float temp_468;
    precise float temp_469;
    uint temp_470;
    precise float temp_471;
    precise float temp_472;
    precise float temp_473;
    uint temp_474;
    int temp_475;
    int temp_476;
    int temp_477;
    int temp_478;
    int temp_479;
    int temp_480;
    uint temp_481;
    int temp_482;
    int temp_483;
    int temp_484;
    int temp_485;
    int temp_486;
    int temp_487;
    int temp_488;
    int temp_489;
    uint temp_490;
    int temp_491;
    int temp_492;
    int temp_493;
    int temp_494;
    uint temp_495;
    uint temp_496;
    int temp_497;
    int temp_498;
    int temp_499;
    int temp_500;
    int temp_501;
    uint temp_502;
    uint temp_503;
    int temp_504;
    int temp_505;
    int temp_506;
    int temp_507;
    int temp_508;
    bool temp_509;
    bool temp_510;
    int temp_511;
    bool temp_512;
    bool temp_513;
    int temp_514;
    bool temp_515;
    bool temp_516;
    uint temp_517;
    int temp_518;
    int temp_519;
    int temp_520;
    int temp_521;
    int temp_522;
    precise float temp_523;
    int temp_524;
    int temp_525;
    int temp_526;
    int temp_527;
    uint temp_528;
    int temp_529;
    int temp_530;
    int temp_531;
    int temp_532;
    bool temp_533;
    bool temp_534;
    int temp_535;
    uint temp_536;
    uint temp_537;
    int temp_538;
    int temp_539;
    int temp_540;
    int temp_541;
    int temp_542;
    precise float temp_543;
    int temp_544;
    int temp_545;
    precise float temp_546;
    int temp_547;
    precise float temp_548;
    precise float temp_549;
    precise float temp_550;
    precise float temp_551;
    int temp_552;
    int temp_553;
    precise float temp_554;
    precise float temp_555;
    precise float temp_556;
    precise float temp_557;
    precise float temp_558;
    precise float temp_559;
    precise float temp_560;
    precise float temp_561;
    precise float temp_562;
    precise float temp_563;
    precise float temp_564;
    precise float temp_565;
    precise float temp_566;
    precise float temp_567;
    precise float temp_568;
    precise float temp_569;
    precise float temp_570;
    precise float temp_571;
    precise float temp_572;
    precise float temp_573;
    precise float temp_574;
    precise float temp_575;
    precise float temp_576;
    precise float temp_577;
    temp_82 = false;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    out_attr0.x = 0.0;
    out_attr0.y = 0.0;
    out_attr0.z = 0.0;
    out_attr0.w = 1.0;
    out_attr1.x = 0.0;
    out_attr1.y = 0.0;
    out_attr1.z = 0.0;
    out_attr1.w = 1.0;
    out_attr2.x = 0.0;
    out_attr2.y = 0.0;
    out_attr2.z = 0.0;
    out_attr2.w = 1.0;
    out_attr3.x = 0.0;
    out_attr3.y = 0.0;
    out_attr3.w = 1.0;
    out_attr4.x = 0.0;
    out_attr4.y = 0.0;
    out_attr5.y = 0.0;
    out_attr5.z = 0.0;
    out_attr6.x = 0.0;
    out_attr6.y = 0.0;
    out_attr6.z = 0.0;
    // 0x000008: 0x50900380E0077007 Psetp
    // 0x000010: 0xEFD87F800CC7FF01 Ald
    // 0x000018: 0xE290000007800000 Ssy
    // 0x000028: 0x4BB483A80087010F Fsetp
    temp_0 = in_attr4.w > vp_c10_data[2].x;
    // 0x000030: 0x4C59102800870101 Fadd
    temp_1 = 0.0 - in_attr4.w;
    temp_2 = temp_1 + vp_c10_data[2].x;
    // 0x000038: 0xF0F800000009000F Sync
    temp_3 = true;
    if (temp_0)
    {
        // 0x000048: 0x4C9807A004970000 Mov
        // 0x000050: 0xEFF07F800707FFFF Ast
        gl_Position.x = 0.0;
        // 0x000058: 0x50900380E007F007 Psetp
        // 0x000068: 0xEFF07F800747FFFF Ast
        gl_Position.y = 0.0;
        // 0x000070: 0x38681040A0070000 Fmul
        temp_4 = vp_c8_data[18].y * 5.0;
        // 0x000078: 0xEFF07F800C07FFFF Ast
        out_attr4.x = 0.0;
        // 0x000088: 0xEFF07F800787FF00 Ast
        gl_Position.z = temp_4;
        // 0x000090: 0xF0F800000007000F Sync
        temp_3 = false;
    }
    // 0x000098: 0xE30000000008000F Exit
    temp_5 = temp_3;
    if (!temp_3)
    {
        return;
    }
    // 0x0000A8: 0xEFD87F800BC7FF02 Ald
    // 0x0000B0: 0x5CB0118000271A00 F2i
    temp_6 = trunc(in_attr3.w);
    temp_7 = int(temp_6);
    // 0x0000B8: 0x5CB8000000072A00 I2f
    temp_8 = float(temp_7);
    // 0x0000C8: 0x5BB683800007010F Fsetp
    temp_9 = temp_2 >= temp_8;
    // 0x0000D0: 0xE290000006000000 Ssy
    // 0x0000D8: 0xF0F800000009000F Sync
    if (temp_9)
    {
        // 0x0000E8: 0x4C9807A004970000 Mov
        // 0x0000F0: 0xEFF07F800707FFFF Ast
        gl_Position.x = 0.0;
        // 0x0000F8: 0x50900380E007F007 Psetp
        // 0x000108: 0xEFF07F800747FFFF Ast
        gl_Position.y = 0.0;
        // 0x000110: 0x38681040A0070000 Fmul
        temp_10 = vp_c8_data[18].y * 5.0;
        // 0x000118: 0xEFF07F800C07FFFF Ast
        out_attr4.x = 0.0;
        // 0x000128: 0xEFF07F800787FF00 Ast
        gl_Position.z = temp_10;
        // 0x000130: 0xF0F800000007000F Sync
        temp_5 = false;
    }
    // 0x000138: 0xE30000000008000F Exit
    if (!temp_5)
    {
        return;
    }
    // 0x000148: 0x4C9807A802070003 Mov
    // 0x000150: 0xEFD87F800E07FF02 Ald
    // 0x000158: 0x4C9807A802470000 Mov
    // 0x000168: 0xEFD87F800D47FF12 Ald
    // 0x000170: 0x4C9807A802870004 Mov
    // 0x000178: 0xEFD87F800D87FF14 Ald
    // 0x000188: 0x4C9807A802170006 Mov
    // 0x000190: 0x4C68102802070303 Fmul
    temp_11 = vp_c10_data[8].x * vp_c10_data[8].x;
    // 0x000198: 0x4C9807A802570005 Mov
    // 0x0001A8: 0x4C68102802470000 Fmul
    temp_12 = vp_c10_data[9].x * vp_c10_data[9].x;
    // 0x0001B0: 0x4C9807A802970007 Mov
    // 0x0001B8: 0x4C68102802870404 Fmul
    temp_13 = vp_c10_data[10].x * vp_c10_data[10].x;
    // 0x0001C8: 0x4C9807A802270008 Mov
    // 0x0001D0: 0x49A001A802170603 Ffma
    temp_14 = fma(vp_c10_data[8].y, vp_c10_data[8].y, temp_11);
    // 0x0001D8: 0x4C9807A802670006 Mov
    // 0x0001E8: 0x49A0002802570500 Ffma
    temp_15 = fma(vp_c10_data[9].y, vp_c10_data[9].y, temp_12);
    // 0x0001F0: 0x4C9807A802A7000A Mov
    // 0x0001F8: 0x49A0022802970705 Ffma
    temp_16 = fma(vp_c10_data[10].y, vp_c10_data[10].y, temp_13);
    // 0x000208: 0xEFD87F800D07FF07 Ald
    // 0x000210: 0x49A001A802270804 Ffma
    temp_17 = fma(vp_c10_data[8].z, vp_c10_data[8].z, temp_14);
    // 0x000218: 0x5080000000870408 Mufu
    temp_18 = sqrt(temp_17);
    // 0x000228: 0x49A0002802670603 Ffma
    temp_19 = fma(vp_c10_data[9].z, vp_c10_data[9].z, temp_15);
    // 0x000230: 0x49A002A802A70A06 Ffma
    temp_20 = fma(vp_c10_data[10].z, vp_c10_data[10].z, temp_16);
    // 0x000238: 0x5080000000870300 Mufu
    temp_21 = sqrt(temp_19);
    // 0x000248: 0x5BB483800FF70807 Fsetp
    temp_22 = temp_18 > 0.0;
    // 0x000250: 0x5080000000870605 Mufu
    temp_23 = sqrt(temp_20);
    // 0x000258: 0x5C6013800027FF08 Fmnmx
    temp_24 = min(0.0, in_attr6.x);
    // 0x000268: 0x5BB483800FF7000F Fsetp
    temp_25 = temp_21 > 0.0;
    // 0x000270: 0x5C5C30000FF70800 Fadd
    temp_26 = temp_24 + -0.0;
    temp_27 = clamp(temp_26, 0.0, 1.0);
    // 0x000278: 0x5080000000500404 Mufu
    temp_28 = temp_17;
    temp_29 = temp_19;
    temp_30 = in_attr5.x;
    temp_31 = vp_c10_data[10].z;
    temp_32 = temp_20;
    if (temp_22)
    {
        temp_33 = inversesqrt(temp_17);
        temp_28 = temp_33;
    }
    // 0x000288: 0x5BB483800FF70517 Fsetp
    temp_34 = temp_23 > 0.0;
    // 0x000290: 0x5080000000510303 Mufu
    temp_35 = temp_28;
    if (temp_25)
    {
        temp_36 = inversesqrt(temp_19);
        temp_29 = temp_36;
    }
    // 0x000298: 0x5C58100000770005 Fadd
    temp_37 = temp_27 + in_attr5.x;
    // 0x0002A8: 0x4C9807A403070000 Mov
    // 0x0002B0: 0x36B283BF8007001F Fsetp
    temp_38 = vp_c9_data[12].x == 1.0;
    // 0x0002B8: 0x5080000000520607 Mufu
    temp_39 = temp_29;
    if (temp_34)
    {
        temp_40 = inversesqrt(temp_20);
        temp_30 = temp_40;
    }
    // 0x0002C8: 0x4C68102418171212 Fmul
    temp_41 = in_attr5.y * vp_c9_data[96].y;
    // 0x0002D0: 0x4C68102418271414 Fmul
    temp_42 = in_attr5.z * vp_c9_data[96].z;
    // 0x0002D8: 0x4C68102418070517 Fmul
    temp_43 = temp_37 * vp_c9_data[96].x;
    // 0x0002E8: 0x4C6810280200040A Fmul
    if (temp_22)
    {
        temp_44 = temp_28 * vp_c10_data[8].x;
        temp_31 = temp_44;
    }
    // 0x0002F0: 0x4C6810280240040B Fmul
    temp_45 = intBitsToFloat(undef);
    temp_46 = temp_31;
    if (temp_22)
    {
        temp_47 = temp_28 * vp_c10_data[9].x;
        temp_45 = temp_47;
    }
    // 0x0002F8: 0x4C68102802800409 Fmul
    temp_48 = intBitsToFloat(undef);
    temp_49 = temp_45;
    if (temp_22)
    {
        temp_50 = temp_28 * vp_c10_data[10].x;
        temp_48 = temp_50;
    }
    // 0x000308: 0x4C6810280211030C Fmul
    temp_51 = intBitsToFloat(undef);
    temp_52 = temp_48;
    if (temp_25)
    {
        temp_53 = temp_29 * vp_c10_data[8].y;
        temp_51 = temp_53;
    }
    // 0x000310: 0x4C6810280251030D Fmul
    temp_54 = intBitsToFloat(undef);
    temp_55 = temp_51;
    if (temp_25)
    {
        temp_56 = temp_29 * vp_c10_data[9].y;
        temp_54 = temp_56;
    }
    // 0x000318: 0x4C6810280291030E Fmul
    temp_57 = intBitsToFloat(undef);
    temp_58 = temp_54;
    if (temp_25)
    {
        temp_59 = temp_29 * vp_c10_data[10].y;
        temp_57 = temp_59;
    }
    // 0x000328: 0x4C58102800B70105 Fadd
    temp_60 = temp_2 + vp_c10_data[2].w;
    // 0x000330: 0x4C68102800E71212 Fmul
    temp_61 = temp_41 * vp_c10_data[3].z;
    // 0x000338: 0x4C68102800F71414 Fmul
    temp_62 = temp_42 * vp_c10_data[3].w;
    // 0x000348: 0x4C68102802220703 Fmul
    temp_63 = temp_57;
    if (temp_34)
    {
        temp_64 = temp_30 * vp_c10_data[8].z;
        temp_39 = temp_64;
    }
    // 0x000350: 0x4C68102802620706 Fmul
    temp_65 = temp_39;
    if (temp_34)
    {
        temp_66 = temp_30 * vp_c10_data[9].z;
        temp_32 = temp_66;
    }
    // 0x000358: 0x4C68102802A20704 Fmul
    temp_67 = temp_32;
    if (temp_34)
    {
        temp_68 = temp_30 * vp_c10_data[10].z;
        temp_35 = temp_68;
    }
    // 0x000368: 0x4C68102800D71717 Fmul
    temp_69 = temp_43 * vp_c10_data[3].y;
    // 0x000370: 0x5C9807800FF8000A Mov
    temp_70 = temp_35;
    if (!temp_22)
    {
        temp_46 = 0.0;
    }
    // 0x000378: 0x5C9807800FF8000B Mov
    if (!temp_22)
    {
        temp_49 = 0.0;
    }
    // 0x000388: 0x5C9807800FF80009 Mov
    if (!temp_22)
    {
        temp_52 = 0.0;
    }
    // 0x000390: 0x5C9807800FF9000C Mov
    if (!temp_25)
    {
        temp_55 = 0.0;
    }
    // 0x000398: 0x5C9807800FF9000D Mov
    if (!temp_25)
    {
        temp_58 = 0.0;
    }
    // 0x0003A8: 0x5C9807800FF9000E Mov
    if (!temp_25)
    {
        temp_63 = 0.0;
    }
    // 0x0003B0: 0x5C9807800FFA0003 Mov
    if (!temp_34)
    {
        temp_65 = 0.0;
    }
    // 0x0003B8: 0x5C9807800FFA0006 Mov
    if (!temp_34)
    {
        temp_67 = 0.0;
    }
    // 0x0003C8: 0x5C9807800FFA0004 Mov
    if (!temp_34)
    {
        temp_70 = 0.0;
    }
    // 0x0003D0: 0xE2400000040B000F Bra
    if (temp_38)
    {
        // 0x0003D8: 0x5C68100000570507 Fmul
        temp_71 = temp_60 * temp_60;
        // 0x0003E8: 0x4C68102402F70707 Fmul
        temp_72 = temp_71 * vp_c9_data[11].w;
        // 0x0003F0: 0x4C68122402C70716 Fmul
        temp_73 = temp_72 * 0.5;
        temp_74 = temp_73 * vp_c9_data[11].x;
        // 0x0003F8: 0x4C68122402D7071A Fmul
        temp_75 = temp_72 * 0.5;
        temp_76 = temp_75 * vp_c9_data[11].y;
        // 0x000408: 0x4C68122402E7071C Fmul
        temp_77 = temp_72 * 0.5;
        temp_78 = temp_77 * vp_c9_data[11].z;
        // 0x000410: 0xE24000000A07000F Bra
        temp_79 = temp_74;
        temp_80 = temp_76;
        temp_81 = temp_78;
        temp_82 = true;
    }
    else
    {
        // 0x000418: 0x3859103F80070010 Fadd
        temp_83 = 0.0 - vp_c9_data[12].x;
        temp_84 = temp_83 + 1.0;
        // 0x000428: 0x5080000000370007 Mufu
        temp_85 = log2(vp_c9_data[12].x);
        // 0x000430: 0x5C68100000770508 Fmul
        temp_86 = temp_60 * temp_85;
        // 0x000438: 0x5080000000470707 Mufu
        temp_87 = 1.0 / temp_85;
        // 0x000448: 0x5C9000800087000F Rro
        // 0x000450: 0x5080000000471011 Mufu
        temp_88 = 1.0 / temp_84;
        // 0x000458: 0x1E23FB8AA3B70708 Fmul32i
        temp_89 = temp_87 * 1.44269502;
        // 0x000468: 0x5080000000270F0F Mufu
        temp_90 = exp2(temp_86);
        // 0x000470: 0x59A2040000F70808 Ffma
        temp_91 = 0.0 - temp_89;
        temp_92 = fma(temp_89, temp_90, temp_91);
        // 0x000478: 0x5C58300000870508 Fadd
        temp_93 = 0.0 - temp_92;
        temp_94 = temp_60 + temp_93;
        // 0x000488: 0x5C68100001170808 Fmul
        temp_95 = temp_94 * temp_88;
        // 0x000490: 0x4C68102402F70808 Fmul
        temp_96 = temp_95 * vp_c9_data[11].w;
        // 0x000498: 0x4C68102402C70816 Fmul
        temp_97 = temp_96 * vp_c9_data[11].x;
        // 0x0004A8: 0x4C68102402D7081A Fmul
        temp_98 = temp_96 * vp_c9_data[11].y;
        // 0x0004B0: 0x4C68102402E7081C Fmul
        temp_99 = temp_96 * vp_c9_data[11].z;
        temp_79 = temp_97;
        temp_80 = temp_98;
        temp_81 = temp_99;
    }
    temp_82 = false;
    // 0x0004B8: 0x5C98078000530019 Mov
    temp_100 = intBitsToFloat(undef);
    if (temp_38)
    {
        temp_100 = temp_60;
    }
    // 0x0004C8: 0xE24000000483000F Bra
    temp_101 = temp_100;
    if (!temp_38)
    {
        // 0x0004D0: 0x5080000000370007 Mufu
        temp_102 = log2(vp_c9_data[12].x);
        // 0x0004D8: 0x5C68100000770507 Fmul
        temp_103 = temp_60 * temp_102;
        // 0x0004E8: 0x3859103F80070005 Fadd
        temp_104 = 0.0 - vp_c9_data[12].x;
        temp_105 = temp_104 + 1.0;
        // 0x0004F0: 0x5080000000470505 Mufu
        temp_106 = 1.0 / temp_105;
        // 0x0004F8: 0x5C90008000770007 Rro
        // 0x000508: 0x5080000000270707 Mufu
        temp_107 = exp2(temp_103);
        // 0x000510: 0x59A1028000570719 Ffma
        temp_108 = 0.0 - temp_106;
        temp_109 = fma(temp_107, temp_108, temp_106);
        temp_101 = temp_109;
    }
    // 0x000518: 0x010000000017F01D Mov32i
    // 0x000528: 0x4CB011A40C271A05 F2i
    temp_110 = trunc(vp_c9_data[48].z);
    temp_111 = int(temp_110);
    // 0x000530: 0xEFD87F800C07FF00 Ald
    // 0x000538: 0x5CE2000000573A08 I2i
    temp_112 = abs(temp_111);
    // 0x000548: 0xEFD87F800C47FF13 Ald
    // 0x000550: 0xEFD87F800C87FF1B Ald
    // 0x000558: 0x5CB8000000870A18 I2f
    temp_113 = float(uint(temp_112));
    // 0x000568: 0xEFD87F800B07FF0F Ald
    // 0x000570: 0xEFD87F800DC7FF11 Ald
    // 0x000578: 0x59A00B0000071916 Ffma
    temp_114 = fma(temp_101, in_attr4.x, temp_79);
    // 0x000588: 0x5CB801800FF70A00 I2f
    temp_115 = float(0u);
    // 0x000590: 0x59A00D000137191A Ffma
    temp_116 = fma(temp_101, in_attr4.y, temp_80);
    // 0x000598: 0xEFD87F800B47FF10 Ald
    // 0x0005A8: 0x59A00E0001B7191C Ffma
    temp_117 = fma(temp_101, in_attr4.z, temp_81);
    // 0x0005B0: 0x5080000000471815 Mufu
    temp_118 = 1.0 / temp_113;
    // 0x0005B8: 0x010001000007F01B Mov32i
    // 0x0005C8: 0xEFD87F800E47FF07 Ald
    // 0x0005D0: 0x4C47002401471B1B Lop
    temp_119 = 0x100000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x0005D8: 0xEFD87F800B87FF13 Ald
    // 0x0005E8: 0x1C0FFFFFFFE71515 Iadd32i
    temp_120 = floatBitsToInt(temp_118) + -2;
    // 0x0005F0: 0x5CB8000000570A19 I2f
    temp_121 = float(uint(temp_111));
    // 0x0005F8: 0x59A007800117160F Ffma
    temp_122 = fma(temp_114, in_attr5.w, in_attr3.x);
    // 0x000608: 0xEFD87F800807FF18 Ald
    // 0x000610: 0x5C68118000071516 Fmul
    temp_123 = intBitsToFloat(temp_120) * temp_115;
    // 0x000618: 0x5CE0800000573AFF I2i
    temp_124 = temp_111 == 0;
    temp_125 = temp_111 < 0;
    // 0x000628: 0x59A0080001171A10 Ffma
    temp_126 = fma(temp_116, in_attr5.w, in_attr3.y);
    // 0x000630: 0x5CB0118001670A16 F2i
    temp_127 = trunc(temp_123);
    temp_128 = max(temp_127, 0.0);
    temp_129 = uint(temp_128);
    // 0x000638: 0x4B55038400171B1B Iset
    temp_130 = temp_119 == floatBitsToInt(vp_c1_data[0].y);
    // 0x000648: 0x5080000000471919 Mufu
    temp_131 = 1.0 / temp_121;
    // 0x000650: 0x308403BF0007071A Fset
    temp_132 = in_attr6.y > 0.5;
    // 0x000658: 0x59A0098001171C11 Ffma
    temp_133 = fma(temp_117, in_attr5.w, in_attr3.z);
    // 0x000668: 0x5B007F8001670813 Xmad
    temp_134 = temp_112 & 0xFFFF;
    temp_135 = int(temp_129) & 0xFFFF;
    temp_136 = temp_134 * temp_135;
    // 0x000670: 0x5C42338001A71BFF Lop
    temp_137 = !temp_130;
    temp_138 = !temp_132;
    temp_139 = temp_137 || temp_138;
    temp_140 = (temp_139 ? -1 : 0) != 0;
    // 0x000678: 0x5B007FA80167081A Xmad
    temp_141 = temp_112 & 0xFFFF;
    temp_142 = temp_129 >> 16;
    temp_143 = temp_141 * int(temp_142);
    temp_144 = temp_143 & 0xFFFF;
    temp_145 = int(temp_129) << 16;
    temp_146 = temp_144 | temp_145;
    // 0x000688: 0x1C0FFFFFFFE7191B Iadd32i
    temp_147 = floatBitsToInt(temp_131) + -2;
    // 0x000690: 0x5B30099801A7081C Xmad
    temp_148 = uint(temp_112) >> 16;
    temp_149 = uint(temp_146) >> 16;
    temp_150 = int(temp_148) * int(temp_149);
    temp_151 = temp_150 << 16;
    temp_152 = temp_146 << 16;
    temp_153 = temp_136 + temp_152;
    temp_154 = temp_151 + temp_153;
    // 0x000698: 0x5C68118001B70013 Fmul
    temp_155 = temp_115 * intBitsToFloat(temp_147);
    // 0x0006A8: 0x0103F0000007F01A Mov32i
    // 0x0006B0: 0x5CB0118001370A13 F2i
    temp_156 = trunc(temp_155);
    temp_157 = max(temp_156, 0.0);
    temp_158 = uint(temp_157);
    // 0x0006B8: 0x5C1200000FF71C1C Iadd
    temp_159 = 0 - temp_154;
    // 0x0006C8: 0x5CB8018001C70A1C I2f
    temp_160 = float(uint(temp_159));
    // 0x0006D0: 0x49A00C2403471A18 Ffma
    temp_161 = fma(0.5, vp_c9_data[13].x, in_attr0.x);
    // 0x0006D8: 0x5C68100001871718 Fmul
    temp_162 = temp_69 * temp_161;
    // 0x0006E8: 0x5B007F8001370517 Xmad
    temp_163 = temp_111 & 0xFFFF;
    temp_164 = int(temp_158) & 0xFFFF;
    temp_165 = temp_163 * temp_164;
    // 0x0006F0: 0x5B007FA80137051E Xmad
    temp_166 = temp_111 & 0xFFFF;
    temp_167 = temp_158 >> 16;
    temp_168 = temp_166 * int(temp_167);
    temp_169 = temp_168 & 0xFFFF;
    temp_170 = int(temp_158) << 16;
    temp_171 = temp_169 | temp_170;
    // 0x0006F8: 0x4C47002401571D19 Lop
    temp_172 = 1 & floatBitsToInt(vp_c9_data[5].y);
    // 0x000708: 0x5B300B9801E70517 Xmad
    temp_173 = uint(temp_111) >> 16;
    temp_174 = uint(temp_171) >> 16;
    temp_175 = int(temp_173) * int(temp_174);
    temp_176 = temp_175 << 16;
    temp_177 = temp_171 << 16;
    temp_178 = temp_165 + temp_177;
    temp_179 = temp_176 + temp_178;
    // 0x000710: 0x5C68118001C7151E Fmul
    temp_180 = intBitsToFloat(temp_120) * temp_160;
    // 0x000718: 0xEFD87F800847FF15 Ald
    // 0x000728: 0x366B03800017190F Isetp
    temp_181 = temp_172 != 1;
    // 0x000730: 0xEFD87F800947FF1C Ald
    // 0x000738: 0x5C1200000FF7171F Iadd
    temp_182 = 0 - temp_179;
    // 0x000748: 0x5CB0118001E70A17 F2i
    temp_183 = trunc(temp_180);
    temp_184 = max(temp_183, 0.0);
    temp_185 = uint(temp_184);
    // 0x000750: 0x010000800007F01D Mov32i
    // 0x000758: 0x5CB8018001F70A19 I2f
    temp_186 = float(uint(temp_182));
    // 0x000768: 0x5C10000001771616 Iadd
    temp_187 = int(temp_129) + int(temp_185);
    // 0x000770: 0x4C47002401471D17 Lop
    temp_188 = 0x80000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x000778: 0x5C68118001971B19 Fmul
    temp_189 = intBitsToFloat(temp_147) * temp_186;
    // 0x000788: 0xEFD87F800887FF1B Ald
    // 0x000790: 0x49A00AA403571A1D Ffma
    temp_190 = fma(0.5, vp_c9_data[13].y, in_attr0.y);
    // 0x000798: 0x5CB0118001970A19 F2i
    temp_191 = trunc(temp_189);
    temp_192 = max(temp_191, 0.0);
    temp_193 = uint(temp_192);
    // 0x0007A8: 0x308403BF00070215 Fset
    temp_194 = in_attr6.x > 0.5;
    // 0x0007B0: 0x4B55038400071717 Iset
    temp_195 = temp_188 == floatBitsToInt(vp_c1_data[0].x);
    // 0x0007B8: 0x5C453380015717FF Lop
    temp_196 = !temp_195;
    temp_197 = !temp_194;
    temp_198 = temp_196 || temp_197;
    temp_199 = (temp_198 ? -1 : 0) != 0;
    // 0x0007C8: 0xEFD87F800E87FF17 Ald
    // 0x0007D0: 0x4C9807A40B57001E Mov
    // 0x0007D8: 0x010002000007F01A Mov32i
    // 0x0007E8: 0x4C47002401471A1A Lop
    temp_200 = 0x200000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x0007F0: 0x5C68100001B71415 Fmul
    temp_201 = temp_62 * in_attr0.z;
    // 0x0007F8: 0x5C68100001D7121B Fmul
    temp_202 = temp_61 * temp_190;
    // 0x000808: 0x5C68100001C71214 Fmul
    temp_203 = temp_61 * in_attr1.y;
    // 0x000810: 0x4C5810240B371E12 Fadd
    temp_204 = vp_c9_data[45].y + vp_c9_data[44].w;
    // 0x000818: 0x4C6810240B57071C Fmul
    temp_205 = in_attr6.y * vp_c9_data[45].y;
    // 0x000828: 0x4B55038400271A1A Iset
    temp_206 = temp_200 == floatBitsToInt(vp_c1_data[0].z);
    // 0x000830: 0x32A1094000071C12 Ffma
    temp_207 = fma(temp_205, -2.0, temp_204);
    // 0x000838: 0x308403BF0007171C Fset
    temp_208 = in_attr6.z > 0.5;
    // 0x000848: 0x5C44338001C71AFF Lop
    temp_209 = !temp_206;
    temp_210 = !temp_208;
    temp_211 = temp_209 || temp_210;
    temp_212 = (temp_211 ? -1 : 0) != 0;
    // 0x000850: 0xEFD87F800EC7FF1C Ald
    // 0x000858: 0x010004000007F01A Mov32i
    // 0x000868: 0x5C68100001870909 Fmul
    temp_213 = temp_52 * temp_162;
    // 0x000870: 0x5C68100001870A0A Fmul
    temp_214 = temp_46 * temp_162;
    // 0x000878: 0x5C68100001870B18 Fmul
    temp_215 = temp_49 * temp_162;
    // 0x000888: 0x5B007F800167080B Xmad
    temp_216 = temp_112 & 0xFFFF;
    temp_217 = temp_187 & 0xFFFF;
    temp_218 = temp_216 * temp_217;
    // 0x000890: 0x4C47002401471A1A Lop
    temp_219 = 0x400000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x000898: 0x59A0048001B70E0E Ffma
    temp_220 = fma(temp_63, temp_202, temp_213);
    // 0x0008A8: 0x5B007FA801670809 Xmad
    temp_221 = temp_112 & 0xFFFF;
    temp_222 = uint(temp_187) >> 16;
    temp_223 = temp_221 * int(temp_222);
    temp_224 = temp_223 & 0xFFFF;
    temp_225 = temp_187 << 16;
    temp_226 = temp_224 | temp_225;
    // 0x0008B0: 0x5C10000001971313 Iadd
    temp_227 = int(temp_158) + int(temp_193);
    // 0x0008B8: 0x59A0050001B70C0C Ffma
    temp_228 = fma(temp_55, temp_202, temp_214);
    // 0x0008C8: 0x59A00C0001B70D1B Ffma
    temp_229 = fma(temp_58, temp_202, temp_215);
    // 0x0008D0: 0xEFD87F800907FF0D Ald
    // 0x0008D8: 0x4B55038400371A1A Iset
    temp_230 = temp_219 == floatBitsToInt(vp_c1_data[0].w);
    // 0x0008E8: 0x5B3005980097080B Xmad
    temp_231 = uint(temp_112) >> 16;
    temp_232 = uint(temp_226) >> 16;
    temp_233 = int(temp_231) * int(temp_232);
    temp_234 = temp_233 << 16;
    temp_235 = temp_226 << 16;
    temp_236 = temp_218 + temp_235;
    temp_237 = temp_234 + temp_236;
    // 0x0008F0: 0x5B007F8001370518 Xmad
    temp_238 = temp_111 & 0xFFFF;
    temp_239 = temp_227 & 0xFFFF;
    temp_240 = temp_238 * temp_239;
    // 0x0008F8: 0x5B007FA80137051E Xmad
    temp_241 = temp_111 & 0xFFFF;
    temp_242 = uint(temp_227) >> 16;
    temp_243 = temp_241 * int(temp_242);
    temp_244 = temp_243 & 0xFFFF;
    temp_245 = temp_227 << 16;
    temp_246 = temp_244 | temp_245;
    // 0x000908: 0x308403BF00071C1C Fset
    temp_247 = in_attr6.w > 0.5;
    // 0x000910: 0x5B300C1801E70518 Xmad
    temp_248 = uint(temp_111) >> 16;
    temp_249 = uint(temp_246) >> 16;
    temp_250 = int(temp_248) * int(temp_249);
    temp_251 = temp_250 << 16;
    temp_252 = temp_246 << 16;
    temp_253 = temp_240 + temp_252;
    temp_254 = temp_251 + temp_253;
    // 0x000918: 0x4C9807A40B47000A Mov
    // 0x000928: 0x5C40338001C71AFF Lop
    temp_255 = !temp_230;
    temp_256 = !temp_247;
    temp_257 = temp_255 || temp_256;
    temp_258 = (temp_257 ? -1 : 0) != 0;
    // 0x000930: 0x5C1200000FF70B1A Iadd
    temp_259 = 0 - temp_237;
    // 0x000938: 0x4C6810240B470209 Fmul
    temp_260 = in_attr6.x * vp_c9_data[45].x;
    // 0x000948: 0x4C5810240B270A0A Fadd
    temp_261 = vp_c9_data[45].x + vp_c9_data[44].z;
    // 0x000950: 0x5B5C038000871A08 Iset
    temp_262 = uint(temp_259) >= uint(temp_112);
    // 0x000958: 0x5C1200000FF7181A Iadd
    temp_263 = 0 - temp_254;
    // 0x000968: 0x50A0038000070D1F Csetp
    temp_264 = !temp_124;
    temp_265 = temp_125 || temp_264;
    // 0x000970: 0x32A105400007090A Ffma
    temp_266 = fma(temp_260, -2.0, temp_261);
    // 0x000978: 0x5CE0800000570AFF I2i
    temp_267 = temp_111 == 0;
    temp_268 = temp_111 < 0;
    // 0x000988: 0x4C68102801870F09 Fmul
    temp_269 = temp_122 * vp_c10_data[6].x;
    // 0x000990: 0x5B5C038000571A1A Iset
    temp_270 = uint(temp_263) >= uint(temp_111);
    // 0x000998: 0x4C68102801070F0B Fmul
    temp_271 = temp_122 * vp_c10_data[4].x;
    // 0x0009A8: 0x4C68102801470F19 Fmul
    temp_272 = temp_122 * vp_c10_data[5].x;
    // 0x0009B0: 0x3828000001F70518 Shr
    temp_273 = uint(temp_111) >> 31;
    // 0x0009B8: 0x5C11000001A71313 Iadd
    temp_274 = 0 - (temp_270 ? -1 : 0);
    temp_275 = temp_227 + temp_274;
    // 0x0009C8: 0x49A004A80197100F Ffma
    temp_276 = fma(temp_126, vp_c10_data[6].y, temp_269);
    // 0x0009D0: 0x49A005A80117100B Ffma
    temp_277 = fma(temp_126, vp_c10_data[4].y, temp_271);
    // 0x0009D8: 0x49A00CA801571010 Ffma
    temp_278 = fma(temp_126, vp_c10_data[5].y, temp_272);
    // 0x0009E8: 0x5C11000000871619 Iadd
    temp_279 = 0 - (temp_262 ? -1 : 0);
    temp_280 = temp_187 + temp_279;
    // 0x0009F0: 0x59A0070001570404 Ffma
    temp_281 = fma(temp_70, temp_201, temp_220);
    // 0x0009F8: 0x59A00D8001570606 Ffma
    temp_282 = fma(temp_67, temp_201, temp_229);
    // 0x000A08: 0x5C1200000FF71816 Iadd
    temp_283 = 0 - int(temp_273);
    // 0x000A10: 0x5B007F800137050E Xmad
    temp_284 = temp_111 & 0xFFFF;
    temp_285 = temp_275 & 0xFFFF;
    temp_286 = temp_284 * temp_285;
    // 0x000A18: 0x5B007FA80137051B Xmad
    temp_287 = temp_111 & 0xFFFF;
    temp_288 = uint(temp_275) >> 16;
    temp_289 = temp_287 * int(temp_288);
    temp_290 = temp_289 & 0xFFFF;
    temp_291 = temp_275 << 16;
    temp_292 = temp_290 | temp_291;
    // 0x000A28: 0x5C98078000D70009 Mov
    // 0x000A30: 0x5C98078000D70008 Mov
    // 0x000A38: 0x4C9807A40C370018 Mov
    // 0x000A48: 0x3859103F800D0D09 Fadd
    temp_293 = in_attr1.x;
    temp_294 = in_attr1.x;
    temp_295 = temp_203;
    if (!temp_199)
    {
        temp_296 = 0.0 - in_attr1.x;
        temp_297 = temp_296 + 1.0;
        temp_293 = temp_297;
    }
    // 0x000A50: 0x3859103F800C0D08 Fadd
    if (!temp_212)
    {
        temp_298 = 0.0 - in_attr1.x;
        temp_299 = temp_298 + 1.0;
        temp_294 = temp_299;
    }
    // 0x000A58: 0x508000000047180D Mufu
    temp_300 = 1.0 / vp_c9_data[48].w;
    // 0x000A68: 0x59A0060001570303 Ffma
    temp_301 = fma(temp_65, temp_201, temp_228);
    // 0x000A70: 0x49A005A80127110C Ffma
    temp_302 = fma(temp_133, vp_c10_data[4].z, temp_277);
    // 0x000A78: 0x5C47040001671919 Lop
    temp_303 = temp_280 ^ temp_283;
    // 0x000A88: 0x5B30071801B7050B Xmad
    temp_304 = uint(temp_111) >> 16;
    temp_305 = uint(temp_292) >> 16;
    temp_306 = int(temp_304) * int(temp_305);
    temp_307 = temp_306 << 16;
    temp_308 = temp_292 << 16;
    temp_309 = temp_286 + temp_308;
    temp_310 = temp_307 + temp_309;
    // 0x000A90: 0x50A0038000070D27 Csetp
    temp_311 = !temp_267;
    temp_312 = temp_268 || temp_311;
    // 0x000A98: 0x49A007A801A71113 Ffma
    temp_313 = fma(temp_133, vp_c10_data[6].z, temp_276);
    // 0x000AA8: 0x49A0082801671110 Ffma
    temp_314 = fma(temp_133, vp_c10_data[5].z, temp_278);
    // 0x000AB0: 0x4C9807A40C270015 Mov
    // 0x000AB8: 0x5C12000001971616 Iadd
    temp_315 = 0 - temp_283;
    temp_316 = temp_315 + temp_303;
    // 0x000AC8: 0x5C1200000FF70B11 Iadd
    temp_317 = 0 - temp_310;
    // 0x000AD0: 0x508000000047150B Mufu
    temp_318 = 1.0 / vp_c9_data[48].z;
    // 0x000AD8: 0x5C9807800147000E Mov
    // 0x000AE8: 0x4C6810240C170D05 Fmul
    temp_319 = temp_300 * vp_c9_data[48].y;
    // 0x000AF0: 0x4C5810280177100D Fadd
    temp_320 = temp_314 + vp_c10_data[5].w;
    // 0x000AF8: 0x39A001FFFFF7160F Sel
    temp_321 = temp_265 ? temp_316 : -1;
    // 0x000B08: 0x5CB8000000F72A0F I2f
    temp_322 = float(temp_321);
    // 0x000B10: 0x39A0027FFFF71110 Sel
    temp_323 = temp_312 ? temp_317 : -1;
    // 0x000B18: 0x4C58102801370C0C Fadd
    temp_324 = temp_302 + vp_c10_data[4].w;
    // 0x000B28: 0x5CB8000001072A10 I2f
    temp_325 = float(temp_323);
    // 0x000B30: 0x5C58100000670D0D Fadd
    temp_326 = temp_320 + temp_282;
    // 0x000B38: 0x3859103F800A0E0E Fadd
    temp_327 = temp_203;
    if (!temp_140)
    {
        temp_328 = 0.0 - temp_203;
        temp_329 = temp_328 + 1.0;
        temp_327 = temp_329;
    }
    // 0x000B48: 0xEFF07F800E47FF0D Ast
    out_attr6.y = temp_326;
    // 0x000B50: 0x4C6810240C070B06 Fmul
    temp_330 = temp_318 * vp_c9_data[48].x;
    // 0x000B58: 0x49A009240B170112 Ffma
    temp_331 = fma(temp_2, vp_c9_data[44].y, temp_207);
    // 0x000B68: 0x49A305240B07010B Ffma
    temp_332 = 0.0 - vp_c9_data[44].x;
    temp_333 = 0.0 - temp_266;
    temp_334 = fma(temp_2, temp_332, temp_333);
    // 0x000B70: 0x4C9807A40F07000A Mov
    // 0x000B78: 0x5C58100000370C0C Fadd
    temp_335 = temp_324 + temp_301;
    // 0x000B88: 0x51A0028400470E03 Ffma
    temp_336 = fma(temp_327, temp_319, vp_c1_data[1].x);
    // 0x000B90: 0xEFF07F800E07FF0C Ast
    out_attr6.x = temp_335;
    // 0x000B98: 0x59A1090000F70505 Ffma
    temp_337 = 0.0 - temp_322;
    temp_338 = fma(temp_319, temp_337, temp_331);
    // 0x000BA8: 0x4C9807A40F17000E Mov
    // 0x000BB0: 0x4C68102800070A0A Fmul
    temp_339 = vp_c9_data[60].x * vp_c10_data[0].x;
    // 0x000BB8: 0x4C9807A40F270012 Mov
    // 0x000BC8: 0x4C9807A415070011 Mov
    // 0x000BD0: 0x4C58102801B71313 Fadd
    temp_340 = temp_313 + vp_c10_data[6].w;
    // 0x000BD8: 0x4C9807A41107000F Mov
    // 0x000BE8: 0x51A0030400470909 Ffma
    temp_341 = fma(temp_293, temp_330, vp_c1_data[1].x);
    // 0x000BF0: 0x59A0058001070606 Ffma
    temp_342 = fma(temp_330, temp_325, temp_334);
    // 0x000BF8: 0x4C68102800170E0B Fmul
    temp_343 = vp_c9_data[60].y * vp_c10_data[0].y;
    // 0x000C08: 0x4C6810240EC70A10 Fmul
    temp_344 = temp_339 * vp_c9_data[59].x;
    // 0x000C10: 0x4C6810280027120E Fmul
    temp_345 = vp_c9_data[60].z * vp_c10_data[0].z;
    // 0x000C18: 0xEFF07F800807FF10 Ast
    out_attr0.x = temp_344;
    // 0x000C28: 0x4C68102800771111 Fmul
    temp_346 = vp_c9_data[84].x * vp_c10_data[1].w;
    // 0x000C30: 0x4C68102002470C0A Fmul
    temp_347 = temp_335 * vp_c8_data[9].x;
    // 0x000C38: 0xEFF07F8009C7FF11 Ast
    out_attr1.w = temp_346;
    // 0x000C48: 0x5C58100000471304 Fadd
    temp_348 = temp_340 + temp_281;
    // 0x000C50: 0x4C68102800370F0F Fmul
    temp_349 = vp_c9_data[68].x * vp_c10_data[0].w;
    // 0x000C58: 0xEFF07F800E87FF04 Ast
    out_attr6.z = temp_348;
    // 0x000C68: 0x4C9807A413070013 Mov
    // 0x000C70: 0xEFF07F8008C7FF0F Ast
    out_attr0.w = temp_349;
    // 0x000C78: 0x4C9807A40B870018 Mov
    // 0x000C88: 0x4C6810240EC70E11 Fmul
    temp_350 = temp_345 * vp_c9_data[59].x;
    // 0x000C90: 0x4C6810240EC70B0F Fmul
    temp_351 = temp_343 * vp_c9_data[59].x;
    // 0x000C98: 0xEFF07F800887FF11 Ast
    out_attr0.z = temp_350;
    // 0x000CA8: 0x4C68102002070C0E Fmul
    temp_352 = temp_335 * vp_c8_data[8].x;
    // 0x000CB0: 0xEFF07F800847FF0F Ast
    out_attr0.y = temp_351;
    // 0x000CB8: 0x49A0052002570D0A Ffma
    temp_353 = fma(temp_326, vp_c8_data[9].y, temp_347);
    // 0x000CC8: 0x4C9807A413170015 Mov
    // 0x000CD0: 0x4C6810280047130B Fmul
    temp_354 = vp_c9_data[76].x * vp_c10_data[1].x;
    // 0x000CD8: 0x4C5810240BA71818 Fadd
    temp_355 = vp_c9_data[46].x + vp_c9_data[46].z;
    // 0x000CE8: 0x4C9807A413270016 Mov
    // 0x000CF0: 0x4C68102002870C0F Fmul
    temp_356 = temp_335 * vp_c8_data[10].x;
    // 0x000CF8: 0x49A0072002170D0E Ffma
    temp_357 = fma(temp_326, vp_c8_data[8].y, temp_352);
    // 0x000D08: 0x49A005200267040A Ffma
    temp_358 = fma(temp_348, vp_c8_data[9].z, temp_353);
    // 0x000D10: 0x4C68102800571512 Fmul
    temp_359 = vp_c9_data[76].y * vp_c10_data[1].y;
    // 0x000D18: 0x4C6810240EC70B15 Fmul
    temp_360 = temp_354 * vp_c9_data[59].x;
    // 0x000D28: 0x49A00C240BA7020B Ffma
    temp_361 = fma(in_attr6.x, vp_c9_data[46].z, temp_355);
    // 0x000D30: 0xEFF07F800907FF15 Ast
    out_attr1.x = temp_360;
    // 0x000D38: 0x4C68102800671613 Fmul
    temp_362 = vp_c9_data[76].z * vp_c10_data[1].z;
    // 0x000D48: 0x4C9807A40BB70018 Mov
    // 0x000D50: 0x4C68102002C70C10 Fmul
    temp_363 = temp_335 * vp_c8_data[11].x;
    // 0x000D58: 0x49A007A002970D11 Ffma
    temp_364 = fma(temp_326, vp_c8_data[10].y, temp_356);
    // 0x000D68: 0x49A007200227040E Ffma
    temp_365 = fma(temp_348, vp_c8_data[8].z, temp_357);
    // 0x000D70: 0x4C58102002770A0F Fadd
    temp_366 = temp_358 + vp_c8_data[9].w;
    // 0x000D78: 0x4C6810240EC71212 Fmul
    temp_367 = temp_359 * vp_c9_data[59].x;
    // 0x000D88: 0xEFF07F800747FF0F Ast
    gl_Position.y = temp_366;
    // 0x000D90: 0x5C9807800FF7000A Mov
    // 0x000D98: 0xEFF07F800947FF12 Ast
    out_attr1.y = temp_367;
    // 0x000DA8: 0x4C6810240EC71316 Fmul
    temp_368 = temp_362 * vp_c9_data[59].x;
    // 0x000DB0: 0x4C5810240B971818 Fadd
    temp_369 = vp_c9_data[46].w + vp_c9_data[46].y;
    // 0x000DB8: 0xEFF07F800987FF16 Ast
    out_attr1.z = temp_368;
    // 0x000DC8: 0x010000000011F00A Mov32i
    temp_370 = 0;
    if (temp_181)
    {
        temp_370 = 1;
    }
    // 0x000DD0: 0x49A0082002D70D13 Ffma
    temp_371 = fma(temp_326, vp_c8_data[11].y, temp_363);
    // 0x000DD8: 0x49A008A002A70415 Ffma
    temp_372 = fma(temp_348, vp_c8_data[10].z, temp_364);
    // 0x000DE8: 0x4C58102002370E10 Fadd
    temp_373 = temp_365 + vp_c8_data[8].w;
    // 0x000DF0: 0x5C68100000F7FF11 Fmul
    temp_374 = 0.0 * temp_366;
    // 0x000DF8: 0xEFF07F800707FF10 Ast
    gl_Position.x = temp_373;
    // 0x000E08: 0x3968103F00070F12 Fmul
    temp_375 = temp_366 * -0.5;
    // 0x000E10: 0x49A00C240BB7070E Ffma
    temp_376 = fma(in_attr6.y, vp_c9_data[46].w, temp_369);
    // 0x000E18: 0x3665038000170A0F Isetp
    temp_377 = temp_370 == 1;
    // 0x000E28: 0x49A009A002E70413 Ffma
    temp_378 = fma(temp_348, vp_c8_data[11].z, temp_371);
    // 0x000E30: 0x4C58102002B7151B Fadd
    temp_379 = temp_372 + vp_c8_data[10].w;
    // 0x000E38: 0x32A008BF0007100C Ffma
    temp_380 = fma(temp_373, 0.5, temp_374);
    // 0x000E48: 0xEFF07F800787FF1B Ast
    gl_Position.z = temp_379;
    // 0x000E50: 0x59A009000107FF12 Ffma
    temp_381 = fma(0.0, temp_373, temp_375);
    // 0x000E58: 0x59A008800107FF11 Ffma
    temp_382 = fma(0.0, temp_373, temp_374);
    // 0x000E68: 0x49A007240B770116 Ffma
    temp_383 = fma(temp_2, vp_c9_data[45].w, temp_376);
    // 0x000E70: 0x49A005A40B67010F Ffma
    temp_384 = fma(temp_2, vp_c9_data[45].z, temp_361);
    // 0x000E78: 0x4C58102002F71313 Fadd
    temp_385 = temp_378 + vp_c8_data[11].w;
    // 0x000E88: 0x59A0060001B7FF0D Ffma
    temp_386 = fma(0.0, temp_379, temp_380);
    // 0x000E90: 0xEFF07F8007C7FF13 Ast
    gl_Position.w = temp_385;
    // 0x000E98: 0x59A0090001B7FF12 Ffma
    temp_387 = fma(0.0, temp_379, temp_381);
    // 0x000EA8: 0x59A0088001B7FF11 Ffma
    temp_388 = fma(0.0, temp_379, temp_382);
    // 0x000EB0: 0x5C98078000770004 Mov
    // 0x000EB8: 0x59A2028000371603 Ffma
    temp_389 = 0.0 - temp_338;
    temp_390 = fma(temp_383, temp_336, temp_389);
    // 0x000EC8: 0x5C98078001710004 Mov
    temp_391 = in_attr6.y;
    if (temp_377)
    {
        temp_391 = in_attr6.z;
    }
    // 0x000ED0: 0x59A0030000F70905 Ffma
    temp_392 = fma(temp_341, temp_384, temp_342);
    // 0x000ED8: 0x32A006BF0007130E Ffma
    temp_393 = fma(temp_385, 0.5, temp_386);
    // 0x000EE8: 0x32A0093F00071312 Ffma
    temp_394 = fma(temp_385, 0.5, temp_387);
    // 0x000EF0: 0xEFF07F800B07FF0E Ast
    out_attr3.x = temp_393;
    // 0x000EF8: 0x5C58100001171311 Fadd
    temp_395 = temp_385 + temp_388;
    // 0x000F08: 0xEFF07F800B47FF12 Ast
    out_attr3.y = temp_394;
    // 0x000F10: 0x5C9807800027000C Mov
    // 0x000F18: 0xEFF07F800BC7FF11 Ast
    out_attr3.w = temp_395;
    // 0x000F28: 0x5C9807800027000B Mov
    // 0x000F30: 0x5C9807800077000D Mov
    // 0x000F38: 0x3859103F80081414 Fadd
    temp_396 = in_attr6.x;
    temp_397 = in_attr6.x;
    temp_398 = in_attr6.y;
    temp_399 = temp_391;
    temp_400 = temp_391;
    if (!temp_258)
    {
        temp_401 = 0.0 - temp_203;
        temp_402 = temp_401 + 1.0;
        temp_295 = temp_402;
    }
    // 0x000F48: 0x5C9807800071000C Mov
    if (temp_377)
    {
        temp_396 = in_attr6.y;
    }
    // 0x000F50: 0x5C9807800071000B Mov
    temp_403 = temp_396;
    temp_404 = temp_396;
    if (temp_377)
    {
        temp_397 = in_attr6.y;
    }
    // 0x000F58: 0x5C9807800041000D Mov
    temp_405 = temp_397;
    if (temp_377)
    {
        temp_398 = temp_391;
    }
    // 0x000F68: 0x3858103F00070303 Fadd
    temp_406 = temp_390 + 0.5;
    // 0x000F70: 0x3858103F00070505 Fadd
    temp_407 = temp_392 + 0.5;
    // 0x000F78: 0xE24000000381000F Bra
    temp_408 = temp_398;
    temp_409 = temp_398;
    if (!temp_377)
    {
        // 0x000F88: 0x3665038000270A07 Isetp
        temp_410 = temp_370 == 2;
        // 0x000F90: 0x5C98078000700004 Mov
        if (temp_410)
        {
            temp_399 = in_attr6.y;
        }
        // 0x000F98: 0x5C9807800170000C Mov
        temp_400 = temp_399;
        if (temp_410)
        {
            temp_403 = in_attr6.z;
        }
        // 0x000FA8: 0x5C9807800020000D Mov
        temp_404 = temp_403;
        if (temp_410)
        {
            temp_408 = in_attr6.x;
        }
        // 0x000FB0: 0x5C9807800020000B Mov
        temp_409 = temp_408;
        if (temp_410)
        {
            temp_405 = in_attr6.x;
        }
    }
    // 0x000FB8: 0x4CB011A40D671A02 F2i
    temp_411 = trunc(vp_c9_data[53].z);
    temp_412 = int(temp_411);
    // 0x000FC8: 0x5CE2000000273A06 I2i
    temp_413 = abs(temp_412);
    // 0x000FD0: 0x5CB8000000270A0A I2f
    temp_414 = float(uint(temp_412));
    // 0x000FD8: 0x5CB8000000670A07 I2f
    temp_415 = float(uint(temp_413));
    // 0x000FE8: 0x5080000000470A0A Mufu
    temp_416 = 1.0 / temp_414;
    // 0x000FF0: 0x5080000000470707 Mufu
    temp_417 = 1.0 / temp_415;
    // 0x000FF8: 0x1C0FFFFFFFE70A0E Iadd32i
    temp_418 = floatBitsToInt(temp_416) + -2;
    // 0x001008: 0x5CE0800000273AFF I2i
    temp_419 = temp_412 == 0;
    temp_420 = temp_412 < 0;
    // 0x001010: 0x5C68118000E7000F Fmul
    temp_421 = temp_115 * intBitsToFloat(temp_418);
    // 0x001018: 0xEFF07F800A47FF03 Ast
    out_attr2.y = temp_406;
    // 0x001028: 0x1C0FFFFFFFE70709 Iadd32i
    temp_422 = floatBitsToInt(temp_417) + -2;
    // 0x001030: 0x5CB0118000F70A0F F2i
    temp_423 = trunc(temp_421);
    temp_424 = max(temp_423, 0.0);
    temp_425 = uint(temp_424);
    // 0x001038: 0x5C68118000970000 Fmul
    temp_426 = temp_115 * intBitsToFloat(temp_422);
    // 0x001048: 0xEFF07F800A07FF05 Ast
    out_attr2.x = temp_407;
    // 0x001050: 0x5B007F8000F70213 Xmad
    temp_427 = temp_412 & 0xFFFF;
    temp_428 = int(temp_425) & 0xFFFF;
    temp_429 = temp_427 * temp_428;
    // 0x001058: 0x5CB0118000070A00 F2i
    temp_430 = trunc(temp_426);
    temp_431 = max(temp_430, 0.0);
    temp_432 = uint(temp_431);
    // 0x001068: 0x5B007FA800F70215 Xmad
    temp_433 = temp_412 & 0xFFFF;
    temp_434 = temp_425 >> 16;
    temp_435 = temp_433 * int(temp_434);
    temp_436 = temp_435 & 0xFFFF;
    temp_437 = int(temp_425) << 16;
    temp_438 = temp_436 | temp_437;
    // 0x001070: 0x5B3009980157020A Xmad
    temp_439 = uint(temp_412) >> 16;
    temp_440 = uint(temp_438) >> 16;
    temp_441 = int(temp_439) * int(temp_440);
    temp_442 = temp_441 << 16;
    temp_443 = temp_438 << 16;
    temp_444 = temp_429 + temp_443;
    temp_445 = temp_442 + temp_444;
    // 0x001078: 0x5B007F8000070610 Xmad
    temp_446 = temp_413 & 0xFFFF;
    temp_447 = int(temp_432) & 0xFFFF;
    temp_448 = temp_446 * temp_447;
    // 0x001088: 0x5B007FA800070611 Xmad
    temp_449 = temp_413 & 0xFFFF;
    temp_450 = temp_432 >> 16;
    temp_451 = temp_449 * int(temp_450);
    temp_452 = temp_451 & 0xFFFF;
    temp_453 = int(temp_432) << 16;
    temp_454 = temp_452 | temp_453;
    // 0x001090: 0x5C1200000FF70A0A Iadd
    temp_455 = 0 - temp_445;
    // 0x001098: 0x5B30081801170607 Xmad
    temp_456 = uint(temp_413) >> 16;
    temp_457 = uint(temp_454) >> 16;
    temp_458 = int(temp_456) * int(temp_457);
    temp_459 = temp_458 << 16;
    temp_460 = temp_454 << 16;
    temp_461 = temp_448 + temp_460;
    temp_462 = temp_459 + temp_461;
    // 0x0010A8: 0x5CB8018000A70A10 I2f
    temp_463 = float(uint(temp_455));
    // 0x0010B0: 0x5C1200000FF70707 Iadd
    temp_464 = 0 - temp_462;
    // 0x0010B8: 0x5CB8018000770A07 I2f
    temp_465 = float(uint(temp_464));
    // 0x0010C8: 0x5C68118001070E0E Fmul
    temp_466 = intBitsToFloat(temp_418) * temp_463;
    // 0x0010D0: 0x5C68118000770909 Fmul
    temp_467 = intBitsToFloat(temp_422) * temp_465;
    // 0x0010D8: 0x5CB0118000E70A0E F2i
    temp_468 = trunc(temp_466);
    temp_469 = max(temp_468, 0.0);
    temp_470 = uint(temp_469);
    // 0x0010E8: 0x4C6810240C970D0D Fmul
    temp_471 = temp_409 * vp_c9_data[50].y;
    // 0x0010F0: 0x5CB0118000970A09 F2i
    temp_472 = trunc(temp_467);
    temp_473 = max(temp_472, 0.0);
    temp_474 = uint(temp_473);
    // 0x0010F8: 0x5C10000000E70F10 Iadd
    temp_475 = int(temp_425) + int(temp_470);
    // 0x001108: 0x5C1000000097000F Iadd
    temp_476 = int(temp_432) + int(temp_474);
    // 0x001110: 0x5B007F8001070213 Xmad
    temp_477 = temp_412 & 0xFFFF;
    temp_478 = temp_475 & 0xFFFF;
    temp_479 = temp_477 * temp_478;
    // 0x001118: 0x5B007FA801070215 Xmad
    temp_480 = temp_412 & 0xFFFF;
    temp_481 = uint(temp_475) >> 16;
    temp_482 = temp_480 * int(temp_481);
    temp_483 = temp_482 & 0xFFFF;
    temp_484 = temp_475 << 16;
    temp_485 = temp_483 | temp_484;
    // 0x001128: 0x5B007F8000F70600 Xmad
    temp_486 = temp_413 & 0xFFFF;
    temp_487 = temp_476 & 0xFFFF;
    temp_488 = temp_486 * temp_487;
    // 0x001130: 0x5B007FA800F70611 Xmad
    temp_489 = temp_413 & 0xFFFF;
    temp_490 = uint(temp_476) >> 16;
    temp_491 = temp_489 * int(temp_490);
    temp_492 = temp_491 & 0xFFFF;
    temp_493 = temp_476 << 16;
    temp_494 = temp_492 | temp_493;
    // 0x001138: 0x5B30099801570207 Xmad
    temp_495 = uint(temp_412) >> 16;
    temp_496 = uint(temp_485) >> 16;
    temp_497 = int(temp_495) * int(temp_496);
    temp_498 = temp_497 << 16;
    temp_499 = temp_485 << 16;
    temp_500 = temp_479 + temp_499;
    temp_501 = temp_498 + temp_500;
    // 0x001148: 0x5B30001801170600 Xmad
    temp_502 = uint(temp_413) >> 16;
    temp_503 = uint(temp_494) >> 16;
    temp_504 = int(temp_502) * int(temp_503);
    temp_505 = temp_504 << 16;
    temp_506 = temp_494 << 16;
    temp_507 = temp_488 + temp_506;
    temp_508 = temp_505 + temp_507;
    // 0x001150: 0x50A0038000070D07 Csetp
    temp_509 = !temp_419;
    temp_510 = temp_420 || temp_509;
    // 0x001158: 0x5C1200000FF70707 Iadd
    temp_511 = 0 - temp_501;
    // 0x001168: 0x5CE0800000270AFF I2i
    temp_512 = temp_412 == 0;
    temp_513 = temp_412 < 0;
    // 0x001170: 0x5C1200000FF70000 Iadd
    temp_514 = 0 - temp_508;
    // 0x001178: 0x5B5C038000270707 Iset
    temp_515 = uint(temp_511) >= uint(temp_412);
    // 0x001188: 0x5B5C038000670006 Iset
    temp_516 = uint(temp_514) >= uint(temp_413);
    // 0x001190: 0x3828000001F70200 Shr
    temp_517 = uint(temp_412) >> 31;
    // 0x001198: 0x4C9807A40C970009 Mov
    // 0x0011A8: 0x5C11000000771007 Iadd
    temp_518 = 0 - (temp_515 ? -1 : 0);
    temp_519 = temp_475 + temp_518;
    // 0x0011B0: 0x5C11000000670F0F Iadd
    temp_520 = 0 - (temp_516 ? -1 : 0);
    temp_521 = temp_476 + temp_520;
    // 0x0011B8: 0x5C1200000FF70006 Iadd
    temp_522 = 0 - int(temp_517);
    // 0x0011C8: 0x4C5810240C770900 Fadd
    temp_523 = vp_c9_data[50].y + vp_c9_data[49].w;
    // 0x0011D0: 0x5B007F8000770209 Xmad
    temp_524 = temp_412 & 0xFFFF;
    temp_525 = temp_519 & 0xFFFF;
    temp_526 = temp_524 * temp_525;
    // 0x0011D8: 0x5B007FA800770207 Xmad
    temp_527 = temp_412 & 0xFFFF;
    temp_528 = uint(temp_519) >> 16;
    temp_529 = temp_527 * int(temp_528);
    temp_530 = temp_529 & 0xFFFF;
    temp_531 = temp_519 << 16;
    temp_532 = temp_530 | temp_531;
    // 0x0011E8: 0x50A0038000070D0F Csetp
    temp_533 = !temp_512;
    temp_534 = temp_513 || temp_533;
    // 0x0011F0: 0x5C47040000670F0F Lop
    temp_535 = temp_521 ^ temp_522;
    // 0x0011F8: 0x4C9807A40C87000A Mov
    // 0x001208: 0x5B30049800770209 Xmad
    temp_536 = uint(temp_412) >> 16;
    temp_537 = uint(temp_532) >> 16;
    temp_538 = int(temp_536) * int(temp_537);
    temp_539 = temp_538 << 16;
    temp_540 = temp_532 << 16;
    temp_541 = temp_526 + temp_540;
    temp_542 = temp_539 + temp_541;
    // 0x001210: 0x4C9807A40CF70002 Mov
    // 0x001218: 0x32A1004000070D00 Ffma
    temp_543 = fma(temp_471, -2.0, temp_523);
    // 0x001228: 0x5C12000000F70607 Iadd
    temp_544 = 0 - temp_522;
    temp_545 = temp_544 + temp_535;
    // 0x001230: 0x4C9807A40D67000E Mov
    // 0x001238: 0x4C9807A40D770006 Mov
    // 0x001248: 0x5080000000470E0E Mufu
    temp_546 = 1.0 / vp_c9_data[53].z;
    // 0x001250: 0x5C1200000FF7090D Iadd
    temp_547 = 0 - temp_542;
    // 0x001258: 0x5080000000470606 Mufu
    temp_548 = 1.0 / vp_c9_data[53].w;
    // 0x001268: 0x4C5810240CD70202 Fadd
    temp_549 = vp_c9_data[51].w + vp_c9_data[51].y;
    // 0x001270: 0x4C6810240C870C0C Fmul
    temp_550 = temp_404 * vp_c9_data[50].x;
    // 0x001278: 0x4C9807A40CE7000F Mov
    // 0x001288: 0x4C5810240C670A0A Fadd
    temp_551 = vp_c9_data[50].x + vp_c9_data[49].z;
    // 0x001290: 0x39A0007FFFF70707 Sel
    temp_552 = temp_510 ? temp_545 : -1;
    // 0x001298: 0x39A000FFFFF70D0D Sel
    temp_553 = temp_534 ? temp_547 : -1;
    // 0x0012A8: 0x5CB8000000772A09 I2f
    temp_554 = float(temp_552);
    // 0x0012B0: 0x49A001240CF70402 Ffma
    temp_555 = fma(temp_400, vp_c9_data[51].w, temp_549);
    // 0x0012B8: 0x5CB8000000D72A0D I2f
    temp_556 = float(temp_553);
    // 0x0012C8: 0x4C5810240CC70F04 Fadd
    temp_557 = vp_c9_data[51].z + vp_c9_data[51].x;
    // 0x0012D0: 0x32A1054000070C0A Ffma
    temp_558 = fma(temp_550, -2.0, temp_551);
    // 0x0012D8: 0x4C6810240D470E07 Fmul
    temp_559 = temp_546 * vp_c9_data[53].x;
    // 0x0012E8: 0x4C6810240D570606 Fmul
    temp_560 = temp_548 * vp_c9_data[53].y;
    // 0x0012F0: 0x49A000240C570100 Ffma
    temp_561 = fma(temp_2, vp_c9_data[49].y, temp_543);
    // 0x0012F8: 0x49A002240CE70B04 Ffma
    temp_562 = fma(temp_405, vp_c9_data[51].z, temp_557);
    // 0x001308: 0x49A305240C47010A Ffma
    temp_563 = 0.0 - vp_c9_data[49].x;
    temp_564 = 0.0 - temp_558;
    temp_565 = fma(temp_2, temp_563, temp_564);
    // 0x001310: 0x49A001240CB70102 Ffma
    temp_566 = fma(temp_2, vp_c9_data[50].w, temp_555);
    // 0x001318: 0x51A0038400470808 Ffma
    temp_567 = fma(temp_294, temp_559, vp_c1_data[1].x);
    // 0x001328: 0x51A003040047140B Ffma
    temp_568 = fma(temp_295, temp_560, vp_c1_data[1].x);
    // 0x001330: 0x59A1000000970600 Ffma
    temp_569 = 0.0 - temp_554;
    temp_570 = fma(temp_560, temp_569, temp_561);
    // 0x001338: 0x49A002240CA70101 Ffma
    temp_571 = fma(temp_2, vp_c9_data[50].z, temp_562);
    // 0x001348: 0x59A0050000D70707 Ffma
    temp_572 = fma(temp_559, temp_556, temp_565);
    // 0x001350: 0x59A2000000B70200 Ffma
    temp_573 = 0.0 - temp_570;
    temp_574 = fma(temp_566, temp_568, temp_573);
    // 0x001358: 0x59A0038000870101 Ffma
    temp_575 = fma(temp_571, temp_567, temp_572);
    // 0x001368: 0x4C9807A41A07000C Mov
    // 0x001370: 0x4C9807A41A170006 Mov
    // 0x001378: 0xEFF07F800C47FF0C Ast
    out_attr4.y = vp_c9_data[104].x;
    // 0x001388: 0x4C9807A41A270003 Mov
    // 0x001390: 0xEFF07F800D47FF06 Ast
    out_attr5.y = vp_c9_data[104].y;
    // 0x001398: 0x4C9807A800C70002 Mov
    // 0x0013A8: 0xEFF07F800D87FF03 Ast
    out_attr5.z = vp_c9_data[104].z;
    // 0x0013B0: 0x3858103F00070000 Fadd
    temp_576 = temp_574 + 0.5;
    // 0x0013B8: 0xEFF07F800C07FF02 Ast
    out_attr4.x = vp_c10_data[3].x;
    // 0x0013C8: 0x3858103F00070101 Fadd
    temp_577 = temp_575 + 0.5;
    // 0x0013D0: 0xEFF07F800AC7FF00 Ast
    out_attr2.w = temp_576;
    // 0x0013D8: 0xEFF07F800A87FF01 Ast
    out_attr2.z = temp_577;
    // 0x0013E8: 0xE30000000007000F Exit
    //gl_Position = vec4(in_attr0.x, in_attr0.y, in_attr0.z, 1.0);
    return;
}
