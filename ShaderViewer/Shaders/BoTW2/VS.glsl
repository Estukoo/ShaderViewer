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

uniform float rad;
uniform mat4 viewProjMatrix;

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
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 3) out vec4 out_attr3;
layout (location = 4) out vec4 out_attr4;
layout (location = 5) out vec4 out_attr5;


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
    int temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    int temp_17;
    bool temp_18;
    precise float temp_19;
    bool temp_20;
    int temp_21;
    precise float temp_22;
    precise float temp_23;
    int temp_24;
    precise float temp_25;
    bool temp_26;
    int temp_27;
    bool temp_28;
    bool temp_29;
    bool temp_30;
    bool temp_31;
    int temp_32;
    bool temp_33;
    bool temp_34;
    int temp_35;
    int temp_36;
    int temp_37;
    int temp_38;
    int temp_39;
    precise float temp_40;
    bool temp_41;
    precise float temp_42;
    int temp_43;
    int temp_44;
    int temp_45;
    int temp_46;
    precise float temp_47;
    bool temp_48;
    precise float temp_49;
    bool temp_50;
    bool temp_51;
    precise float temp_52;
    precise float temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    int temp_59;
    int temp_60;
    int temp_61;
    precise float temp_62;
    int temp_63;
    precise float temp_64;
    precise float temp_65;
    precise float temp_66;
    precise float temp_67;
    precise float temp_68;
    bool temp_69;
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
    bool temp_92;
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
    precise float temp_111;
    precise float temp_112;
    precise float temp_113;
    precise float temp_114;
    precise float temp_115;
    bool temp_116;
    bool temp_117;
    precise float temp_118;
    precise float temp_119;
    precise float temp_120;
    precise float temp_121;
    precise float temp_122;
    precise float temp_123;
    precise float temp_124;
    precise float temp_125;
    bool temp_126;
    precise float temp_127;
    bool temp_128;
    precise float temp_129;
    precise float temp_130;
    precise float temp_131;
    bool temp_132;
    precise float temp_133;
    precise float temp_134;
    precise float temp_135;
    bool temp_136;
    precise float temp_137;
    precise float temp_138;
    precise float temp_139;
    precise float temp_140;
    precise float temp_141;
    precise float temp_142;
    precise float temp_143;
    precise float temp_144;
    precise float temp_145;
    precise float temp_146;
    bool temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    bool temp_151;
    precise float temp_152;
    precise float temp_153;
    precise float temp_154;
    precise float temp_155;
    precise float temp_156;
    precise float temp_157;
    precise float temp_158;
    precise float temp_159;
    bool temp_160;
    precise float temp_161;
    precise float temp_162;
    precise float temp_163;
    precise float temp_164;
    precise float temp_165;
    precise float temp_166;
    precise float temp_167;
    precise float temp_168;
    precise float temp_169;
    bool temp_170;
    precise float temp_171;
    precise float temp_172;
    precise float temp_173;
    precise float temp_174;
    precise float temp_175;
    precise float temp_176;
    precise float temp_177;
    precise float temp_178;
    precise float temp_179;
    precise float temp_180;
    precise float temp_181;
    precise float temp_182;
    precise float temp_183;
    bool temp_184;
    precise float temp_185;
    precise float temp_186;
    precise float temp_187;
    precise float temp_188;
    precise float temp_189;
    precise float temp_190;
    precise float temp_191;
    precise float temp_192;
    precise float temp_193;
    precise float temp_194;
    precise float temp_195;
    precise float temp_196;
    precise float temp_197;
    precise float temp_198;
    precise float temp_199;
    precise float temp_200;
    precise float temp_201;
    bool temp_202;
    precise float temp_203;
    precise float temp_204;
    precise float temp_205;
    precise float temp_206;
    precise float temp_207;
    precise float temp_208;
    precise float temp_209;
    precise float temp_210;
    precise float temp_211;
    precise float temp_212;
    precise float temp_213;
    precise float temp_214;
    precise float temp_215;
    precise float temp_216;
    precise float temp_217;
    precise float temp_218;
    precise float temp_219;
    precise float temp_220;
    precise float temp_221;
    precise float temp_222;
    precise float temp_223;
    precise float temp_224;
    precise float temp_225;
    precise float temp_226;
    precise float temp_227;
    precise float temp_228;
    precise float temp_229;
    precise float temp_230;
    precise float temp_231;
    precise float temp_232;
    precise float temp_233;
    precise float temp_234;
    precise float temp_235;
    precise float temp_236;
    precise float temp_237;
    precise float temp_238;
    precise float temp_239;
    precise float temp_240;
    precise float temp_241;
    precise float temp_242;
    bool temp_243;
    precise float temp_244;
    precise float temp_245;
    precise float temp_246;
    precise float temp_247;
    precise float temp_248;
    precise float temp_249;
    precise float temp_250;
    precise float temp_251;
    precise float temp_252;
    precise float temp_253;
    precise float temp_254;
    precise float temp_255;
    precise float temp_256;
    precise float temp_257;
    precise float temp_258;
    precise float temp_259;
    precise float temp_260;
    precise float temp_261;
    precise float temp_262;
    precise float temp_263;
    precise float temp_264;
    precise float temp_265;
    precise float temp_266;
    precise float temp_267;
    precise float temp_268;
    precise float temp_269;
    precise float temp_270;
    bool temp_271;
    precise float temp_272;
    precise float temp_273;
    precise float temp_274;
    precise float temp_275;
    precise float temp_276;
    precise float temp_277;
    precise float temp_278;
    precise float temp_279;
    precise float temp_280;
    precise float temp_281;
    precise float temp_282;
    precise float temp_283;
    precise float temp_284;
    precise float temp_285;
    precise float temp_286;
    precise float temp_287;
    precise float temp_288;
    precise float temp_289;
    precise float temp_290;
    precise float temp_291;
    precise float temp_292;
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
    precise float temp_303;
    precise float temp_304;
    precise float temp_305;
    precise float temp_306;
    precise float temp_307;
    precise float temp_308;
    precise float temp_309;
    precise float temp_310;
    precise float temp_311;
    precise float temp_312;
    bool temp_313;
    precise float temp_314;
    precise float temp_315;
    precise float temp_316;
    precise float temp_317;
    precise float temp_318;
    precise float temp_319;
    precise float temp_320;
    precise float temp_321;
    precise float temp_322;
    precise float temp_323;
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
    precise float temp_370;
    precise float temp_371;
    precise float temp_372;
    precise float temp_373;
    precise float temp_374;
    precise float temp_375;
    precise float temp_376;
    precise float temp_377;
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
    precise float temp_410;
    precise float temp_411;
    precise float temp_412;
    precise float temp_413;
    precise float temp_414;
    precise float temp_415;
    precise float temp_416;
    precise float temp_417;
    precise float temp_418;
    precise float temp_419;
    precise float temp_420;
    precise float temp_421;
    precise float temp_422;
    precise float temp_423;
    precise float temp_424;
    precise float temp_425;
    precise float temp_426;
    precise float temp_427;
    precise float temp_428;
    precise float temp_429;
    precise float temp_430;
    precise float temp_431;
    precise float temp_432;
    precise float temp_433;
    precise float temp_434;
    precise float temp_435;
    precise float temp_436;
    precise float temp_437;
    precise float temp_438;
    precise float temp_439;
    precise float temp_440;
    precise float temp_441;
    precise float temp_442;
    bool temp_443;
    precise float temp_444;
    precise float temp_445;
    precise float temp_446;
    precise float temp_447;
    precise float temp_448;
    precise float temp_449;
    precise float temp_450;
    precise float temp_451;
    precise float temp_452;
    precise float temp_453;
    precise float temp_454;
    precise float temp_455;
    precise float temp_456;
    precise float temp_457;
    bool temp_458;
    precise float temp_459;
    precise float temp_460;
    precise float temp_461;
    int temp_462;
    int temp_463;
    precise float temp_464;
    precise float temp_465;
    precise float temp_466;
    precise float temp_467;
    precise float temp_468;
    int temp_469;
    bool temp_470;
    bool temp_471;
    precise float temp_472;
    precise float temp_473;
    precise float temp_474;
    uint temp_475;
    int temp_476;
    precise float temp_477;
    precise float temp_478;
    precise float temp_479;
    uint temp_480;
    int temp_481;
    int temp_482;
    int temp_483;
    int temp_484;
    uint temp_485;
    int temp_486;
    int temp_487;
    int temp_488;
    int temp_489;
    uint temp_490;
    uint temp_491;
    int temp_492;
    int temp_493;
    int temp_494;
    int temp_495;
    int temp_496;
    int temp_497;
    int temp_498;
    int temp_499;
    int temp_500;
    uint temp_501;
    int temp_502;
    int temp_503;
    int temp_504;
    int temp_505;
    int temp_506;
    uint temp_507;
    uint temp_508;
    int temp_509;
    int temp_510;
    int temp_511;
    int temp_512;
    int temp_513;
    precise float temp_514;
    int temp_515;
    precise float temp_516;
    precise float temp_517;
    precise float temp_518;
    precise float temp_519;
    uint temp_520;
    int temp_521;
    int temp_522;
    precise float temp_523;
    precise float temp_524;
    precise float temp_525;
    precise float temp_526;
    uint temp_527;
    precise float temp_528;
    bool temp_529;
    bool temp_530;
    precise float temp_531;
    int temp_532;
    int temp_533;
    int temp_534;
    int temp_535;
    int temp_536;
    bool temp_537;
    bool temp_538;
    bool temp_539;
    bool temp_540;
    bool temp_541;
    bool temp_542;
    bool temp_543;
    bool temp_544;
    bool temp_545;
    bool temp_546;
    int temp_547;
    int temp_548;
    int temp_549;
    int temp_550;
    uint temp_551;
    int temp_552;
    int temp_553;
    int temp_554;
    int temp_555;
    int temp_556;
    int temp_557;
    int temp_558;
    int temp_559;
    uint temp_560;
    int temp_561;
    int temp_562;
    int temp_563;
    int temp_564;
    precise float temp_565;
    precise float temp_566;
    bool temp_567;
    bool temp_568;
    bool temp_569;
    bool temp_570;
    bool temp_571;
    bool temp_572;
    bool temp_573;
    bool temp_574;
    uint temp_575;
    uint temp_576;
    int temp_577;
    int temp_578;
    int temp_579;
    int temp_580;
    int temp_581;
    uint temp_582;
    uint temp_583;
    int temp_584;
    int temp_585;
    int temp_586;
    int temp_587;
    int temp_588;
    precise float temp_589;
    bool temp_590;
    int temp_591;
    precise float temp_592;
    precise float temp_593;
    int temp_594;
    precise float temp_595;
    precise float temp_596;
    bool temp_597;
    precise float temp_598;
    bool temp_599;
    int temp_600;
    bool temp_601;
    bool temp_602;
    precise float temp_603;
    bool temp_604;
    precise float temp_605;
    precise float temp_606;
    precise float temp_607;
    precise float temp_608;
    bool temp_609;
    bool temp_610;
    bool temp_611;
    bool temp_612;
    bool temp_613;
    bool temp_614;
    bool temp_615;
    precise float temp_616;
    precise float temp_617;
    precise float temp_618;
    precise float temp_619;
    precise float temp_620;
    bool temp_621;
    precise float temp_622;
    precise float temp_623;
    bool temp_624;
    bool temp_625;
    bool temp_626;
    bool temp_627;
    int temp_628;
    int temp_629;
    uint temp_630;
    int temp_631;
    int temp_632;
    bool temp_633;
    precise float temp_634;
    bool temp_635;
    bool temp_636;
    precise float temp_637;
    precise float temp_638;
    bool temp_639;
    bool temp_640;
    precise float temp_641;
    precise float temp_642;
    int temp_643;
    precise float temp_644;
    precise float temp_645;
    int temp_646;
    int temp_647;
    int temp_648;
    int temp_649;
    int temp_650;
    uint temp_651;
    int temp_652;
    int temp_653;
    int temp_654;
    int temp_655;
    int temp_656;
    int temp_657;
    uint temp_658;
    uint temp_659;
    int temp_660;
    int temp_661;
    int temp_662;
    int temp_663;
    int temp_664;
    precise float temp_665;
    precise float temp_666;
    precise float temp_667;
    precise float temp_668;
    int temp_669;
    bool temp_670;
    bool temp_671;
    int temp_672;
    precise float temp_673;
    precise float temp_674;
    precise float temp_675;
    precise float temp_676;
    precise float temp_677;
    precise float temp_678;
    precise float temp_679;
    precise float temp_680;
    precise float temp_681;
    precise float temp_682;
    precise float temp_683;
    precise float temp_684;
    int temp_685;
    bool temp_686;
    bool temp_687;
    int temp_688;
    bool temp_689;
    bool temp_690;
    bool temp_691;
    bool temp_692;
    precise float temp_693;
    precise float temp_694;
    precise float temp_695;
    precise float temp_696;
    precise float temp_697;
    precise float temp_698;
    precise float temp_699;
    precise float temp_700;
    precise float temp_701;
    precise float temp_702;
    precise float temp_703;
    precise float temp_704;
    precise float temp_705;
    precise float temp_706;
    precise float temp_707;
    precise float temp_708;
    precise float temp_709;
    precise float temp_710;
    precise float temp_711;
    precise float temp_712;
    precise float temp_713;
    precise float temp_714;
    precise float temp_715;
    precise float temp_716;
    precise float temp_717;
    precise float temp_718;
    precise float temp_719;
    precise float temp_720;
    precise float temp_721;
    precise float temp_722;
    precise float temp_723;
    precise float temp_724;
    precise float temp_725;
    precise float temp_726;
    precise float temp_727;
    precise float temp_728;
    precise float temp_729;
    precise float temp_730;
    precise float temp_731;
    precise float temp_732;
    precise float temp_733;
    precise float temp_734;
    precise float temp_735;
    int temp_736;
    precise float temp_737;
    precise float temp_738;
    precise float temp_739;
    precise float temp_740;
    precise float temp_741;
    precise float temp_742;
    bool temp_743;
    precise float temp_744;
    precise float temp_745;
    precise float temp_746;
    precise float temp_747;
    precise float temp_748;
    precise float temp_749;
    precise float temp_750;
    precise float temp_751;
    precise float temp_752;
    precise float temp_753;
    precise float temp_754;
    precise float temp_755;
    precise float temp_756;
    precise float temp_757;
    precise float temp_758;
    precise float temp_759;
    precise float temp_760;
    precise float temp_761;
    precise float temp_762;
    precise float temp_763;
    precise float temp_764;
    precise float temp_765;
    precise float temp_766;
    precise float temp_767;
    precise float temp_768;
    precise float temp_769;
    precise float temp_770;
    precise float temp_771;
    precise float temp_772;
    precise float temp_773;
    precise float temp_774;
    precise float temp_775;
    precise float temp_776;
    precise float temp_777;
    bool temp_778;
    precise float temp_779;
    int temp_780;
    precise float temp_781;
    precise float temp_782;
    precise float temp_783;
    precise float temp_784;
    precise float temp_785;
    precise float temp_786;
    int temp_787;
    precise float temp_788;
    precise float temp_789;
    precise float temp_790;
    bool temp_791;
    bool temp_792;
    precise float temp_793;
    precise float temp_794;
    precise float temp_795;
    precise float temp_796;
    bool temp_797;
    precise float temp_798;
    bool temp_799;
    precise float temp_800;
    precise float temp_801;
    int temp_802;
    precise float temp_803;
    precise float temp_804;
    precise float temp_805;
    precise float temp_806;
    bool temp_807;
    precise float temp_808;
    precise float temp_809;
    precise float temp_810;
    precise float temp_811;
    precise float temp_812;
    precise float temp_813;
    uint temp_814;
    bool temp_815;
    precise float temp_816;
    int temp_817;
    precise float temp_818;
    precise float temp_819;
    precise float temp_820;
    precise float temp_821;
    precise float temp_822;
    precise float temp_823;
    precise float temp_824;
    precise float temp_825;
    precise float temp_826;
    precise float temp_827;
    precise float temp_828;
    precise float temp_829;
    precise float temp_830;
    uint temp_831;
    precise float temp_832;
    precise float temp_833;
    int temp_834;
    int temp_835;
    int temp_836;
    int temp_837;
    uint temp_838;
    int temp_839;
    int temp_840;
    int temp_841;
    int temp_842;
    precise float temp_843;
    precise float temp_844;
    bool temp_845;
    precise float temp_846;
    uint temp_847;
    uint temp_848;
    int temp_849;
    int temp_850;
    int temp_851;
    int temp_852;
    int temp_853;
    int temp_854;
    int temp_855;
    int temp_856;
    int temp_857;
    uint temp_858;
    int temp_859;
    int temp_860;
    int temp_861;
    int temp_862;
    precise float temp_863;
    precise float temp_864;
    precise float temp_865;
    precise float temp_866;
    precise float temp_867;
    uint temp_868;
    uint temp_869;
    int temp_870;
    int temp_871;
    int temp_872;
    int temp_873;
    int temp_874;
    precise float temp_875;
    precise float temp_876;
    bool temp_877;
    precise float temp_878;
    precise float temp_879;
    int temp_880;
    int temp_881;
    precise float temp_882;
    bool temp_883;
    precise float temp_884;
    precise float temp_885;
    precise float temp_886;
    precise float temp_887;
    precise float temp_888;
    precise float temp_889;
    precise float temp_890;
    precise float temp_891;
    precise float temp_892;
    precise float temp_893;
    precise float temp_894;
    precise float temp_895;
    uint temp_896;
    precise float temp_897;
    precise float temp_898;
    precise float temp_899;
    uint temp_900;
    precise float temp_901;
    precise float temp_902;
    precise float temp_903;
    precise float temp_904;
    bool temp_905;
    precise float temp_906;
    precise float temp_907;
    precise float temp_908;
    precise float temp_909;
    precise float temp_910;
    precise float temp_911;
    precise float temp_912;
    precise float temp_913;
    precise float temp_914;
    precise float temp_915;
    int temp_916;
    int temp_917;
    precise float temp_918;
    precise float temp_919;
    precise float temp_920;
    precise float temp_921;
    precise float temp_922;
    precise float temp_923;
    precise float temp_924;
    int temp_925;
    int temp_926;
    int temp_927;
    int temp_928;
    uint temp_929;
    int temp_930;
    int temp_931;
    int temp_932;
    int temp_933;
    int temp_934;
    int temp_935;
    int temp_936;
    int temp_937;
    uint temp_938;
    int temp_939;
    int temp_940;
    int temp_941;
    int temp_942;
    precise float temp_943;
    precise float temp_944;
    precise float temp_945;
    precise float temp_946;
    uint temp_947;
    uint temp_948;
    int temp_949;
    int temp_950;
    int temp_951;
    int temp_952;
    int temp_953;
    uint temp_954;
    uint temp_955;
    int temp_956;
    int temp_957;
    int temp_958;
    int temp_959;
    int temp_960;
    bool temp_961;
    precise float temp_962;
    precise float temp_963;
    precise float temp_964;
    int temp_965;
    int temp_966;
    precise float temp_967;
    precise float temp_968;
    bool temp_969;
    bool temp_970;
    precise float temp_971;
    bool temp_972;
    bool temp_973;
    bool temp_974;
    uint temp_975;
    bool temp_976;
    precise float temp_977;
    precise float temp_978;
    precise float temp_979;
    bool temp_980;
    precise float temp_981;
    precise float temp_982;
    int temp_983;
    int temp_984;
    int temp_985;
    int temp_986;
    int temp_987;
    bool temp_988;
    precise float temp_989;
    precise float temp_990;
    precise float temp_991;
    precise float temp_992;
    int temp_993;
    int temp_994;
    int temp_995;
    int temp_996;
    int temp_997;
    uint temp_998;
    int temp_999;
    int temp_1000;
    int temp_1001;
    int temp_1002;
    precise float temp_1003;
    precise float temp_1004;
    precise float temp_1005;
    int temp_1006;
    int temp_1007;
    precise float temp_1008;
    bool temp_1009;
    bool temp_1010;
    precise float temp_1011;
    precise float temp_1012;
    uint temp_1013;
    uint temp_1014;
    int temp_1015;
    int temp_1016;
    int temp_1017;
    int temp_1018;
    int temp_1019;
    bool temp_1020;
    precise float temp_1021;
    bool temp_1022;
    bool temp_1023;
    precise float temp_1024;
    precise float temp_1025;
    precise float temp_1026;
    precise float temp_1027;
    precise float temp_1028;
    int temp_1029;
    precise float temp_1030;
    precise float temp_1031;
    precise float temp_1032;
    precise float temp_1033;
    int temp_1034;
    int temp_1035;
    precise float temp_1036;
    precise float temp_1037;
    precise float temp_1038;
    bool temp_1039;
    precise float temp_1040;
    bool temp_1041;
    precise float temp_1042;
    precise float temp_1043;
    precise float temp_1044;
    precise float temp_1045;
    precise float temp_1046;
    precise float temp_1047;
    precise float temp_1048;
    precise float temp_1049;
    precise float temp_1050;
    precise float temp_1051;
    precise float temp_1052;
    precise float temp_1053;
    precise float temp_1054;
    precise float temp_1055;
    precise float temp_1056;
    precise float temp_1057;
    precise float temp_1058;
    precise float temp_1059;
    precise float temp_1060;
    precise float temp_1061;
    precise float temp_1062;
    precise float temp_1063;
    precise float temp_1064;
    precise float temp_1065;
    precise float temp_1066;
    precise float temp_1067;
    precise float temp_1068;
    precise float temp_1069;
    precise float temp_1070;
    precise float temp_1071;
    precise float temp_1072;
    precise float temp_1073;
    precise float temp_1074;
    temp_458 = false;
    temp_243 = false;
    temp_202 = false;
    temp_92 = false;
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
    out_attr4.x = 0.0;
    out_attr4.y = 0.0;
    out_attr4.z = 0.0;
    out_attr4.w = 1.0;
    out_attr5.x = 0.0;
    out_attr5.y = 0.0;
    // 0x000008: 0x50900380E0077007 Psetp
    // 0x000010: 0xEFD87F8009C7FF00 Ald
    // 0x000018: 0xE290000007800000 Ssy
    // 0x000028: 0x4BB483A80087000F Fsetp
    temp_0 = in_attr1.w > vp_c10_data[2].x;
    // 0x000030: 0x4C59102800870000 Fadd
    temp_1 = 0.0 - in_attr1.w;
    temp_2 = temp_1 + vp_c10_data[2].x;
    // 0x000038: 0xF0F800000009000F Sync
    temp_3 = true;
    if (temp_0)
    {
        // 0x000048: 0x4C9807A004970001 Mov
        // 0x000050: 0xEFF07F800707FFFF Ast
        gl_Position.x = 0.0;
        // 0x000058: 0x50900380E007F007 Psetp
        // 0x000068: 0xEFF07F800747FFFF Ast
        gl_Position.y = 0.0;
        // 0x000070: 0x38681040A0070101 Fmul
        temp_4 = vp_c8_data[18].y * 5.0;
        // 0x000078: 0xEFF07F800D07FFFF Ast
        out_attr5.x = 0.0;
        // 0x000088: 0xEFF07F800787FF01 Ast
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
    // 0x0000A8: 0xEFD87F8008C7FF01 Ald
    // 0x0000B0: 0x5CB0118000171A05 F2i
    temp_6 = trunc(in_attr0.w);
    temp_7 = int(temp_6);
    // 0x0000B8: 0x5CB8000000572A05 I2f
    temp_8 = float(temp_7);
    // 0x0000C8: 0x5BB683800057000F Fsetp
    temp_9 = temp_2 >= temp_8;
    // 0x0000D0: 0xE290000006000000 Ssy
    // 0x0000D8: 0xF0F800000009000F Sync
    if (temp_9)
    {
        // 0x0000E8: 0x4C9807A004970001 Mov
        // 0x0000F0: 0xEFF07F800707FFFF Ast
        gl_Position.x = 0.0;
        // 0x0000F8: 0x50900380E007F007 Psetp
        // 0x000108: 0xEFF07F800747FFFF Ast
        gl_Position.y = 0.0;
        // 0x000110: 0x38681040A0070101 Fmul
        temp_10 = vp_c8_data[18].y * 5.0;
        // 0x000118: 0xEFF07F800D07FFFF Ast
        out_attr5.x = 0.0;
        // 0x000128: 0xEFF07F800787FF01 Ast
        gl_Position.z = temp_10;
        // 0x000130: 0xF0F800000007000F Sync
        temp_5 = false;
    }
    // 0x000138: 0xE30000000008000F Exit
    if (!temp_5)
    {
        return;
    }
    // 0x000148: 0x4C9807A403A70004 Mov
    // 0x000150: 0xEFD87F800B07FF0A Ald
    // 0x000158: 0x4C58102403E70003 Fadd
    temp_11 = temp_2 + vp_c9_data[15].z;
    // 0x000168: 0x5080000000470402 Mufu
    temp_12 = 1.0 / vp_c9_data[14].z;
    // 0x000170: 0x010000000017F006 Mov32i
    // 0x000178: 0xEFD87F802FC7FF0C Ald
    // 0x000188: 0x4C9807A401470008 Mov
    // 0x000190: 0x4C4700240147060B Lop
    temp_13 = 1 & floatBitsToInt(vp_c9_data[5].x);
    // 0x000198: 0x4C68102403C70A01 Fmul
    temp_14 = in_attr3.x * vp_c9_data[15].x;
    // 0x0001A8: 0x59A0008000370202 Ffma
    temp_15 = fma(temp_12, temp_11, temp_14);
    // 0x0001B0: 0x5CA8148000270A03 F2f
    temp_16 = floor(temp_15);
    // 0x0001B8: 0x0400000000270809 Lop32i
    temp_17 = floatBitsToInt(vp_c9_data[5].x) & 2;
    // 0x0001C8: 0x5B6303800FF70B07 Isetp
    temp_18 = temp_13 < 0;
    // 0x0001D0: 0x1E240C90FDB70204 Fmul32i
    temp_19 = temp_15 * 6.28318548;
    // 0x0001D8: 0x5B6303800FF7090F Isetp
    temp_20 = temp_17 < 0;
    // 0x0001E8: 0x0400000000470808 Lop32i
    temp_21 = floatBitsToInt(vp_c9_data[5].x) & 4;
    // 0x0001F0: 0x5C58300000370203 Fadd
    temp_22 = 0.0 - temp_16;
    temp_23 = temp_15 + temp_22;
    // 0x0001F8: 0x5C90000000470007 Rro
    // 0x000208: 0x0400000000170C01 Lop32i
    temp_24 = gl_VertexID & 1;
    // 0x000210: 0x5080000000070707 Mufu
    temp_25 = cos(temp_19);
    // 0x000218: 0x38A004000017FF02 Sel
    temp_26 = !temp_18;
    temp_27 = temp_26 ? 0 : 1;
    // 0x000228: 0x36B683BF00070317 Fsetp
    temp_28 = temp_23 >= 0.5;
    // 0x000230: 0x5B6303800FF70807 Isetp
    temp_29 = temp_21 < 0;
    // 0x000238: 0x5B5903800FF70B0B Iset
    temp_30 = temp_13 > 0;
    // 0x000248: 0x5B6B03800FF7011F Isetp
    temp_31 = temp_24 != 0;
    // 0x000250: 0x0400000000270C01 Lop32i
    temp_32 = gl_VertexID & 2;
    // 0x000258: 0x0103F0000007F004 Mov32i
    // 0x000268: 0x5B5903800FF7090D Iset
    temp_33 = temp_17 > 0;
    // 0x000270: 0x38A004800017FF0C Sel
    temp_34 = !temp_20;
    temp_35 = temp_34 ? 0 : 1;
    // 0x000278: 0x5CC6010000B7FF0B Iadd3
    temp_36 = 0 - (temp_30 ? -1 : 0);
    temp_37 = 0 - temp_27;
    temp_38 = temp_36 + temp_37;
    // 0x000288: 0x0103F8000007F00E Mov32i
    // 0x000290: 0x5CBA000000B72A09 I2f
    temp_39 = abs(temp_38);
    temp_40 = float(temp_39);
    // 0x000298: 0x5B6B03800FF7010F Isetp
    temp_41 = temp_32 != 0;
    // 0x0002A8: 0x32A0023F00070707 Ffma
    temp_42 = fma(temp_25, 0.5, 0.5);
    // 0x0002B0: 0x5CC6060000D7FF0C Iadd3
    temp_43 = 0 - (temp_33 ? -1 : 0);
    temp_44 = 0 - temp_35;
    temp_45 = temp_43 + temp_44;
    // 0x0002B8: 0xEFD87F800A07FF0D Ald
    // 0x0002C8: 0x4C9807A40387000F Mov
    // 0x0002D0: 0x5CBA000000C72A0C I2f
    temp_46 = abs(temp_45);
    temp_47 = float(temp_46);
    // 0x0002D8: 0x4CA005040007FF01 Sel
    temp_48 = !temp_28;
    temp_49 = temp_48 ? 0.0 : vp_c1_data[0].x;
    // 0x0002E8: 0x5B5903800FF70808 Iset
    temp_50 = temp_21 > 0;
    // 0x0002F0: 0x38A004000017FF02 Sel
    temp_51 = !temp_29;
    temp_52 = temp_51 ? 0.0 : 1.40129846E-45;
    // 0x0002F8: 0x49A1072403870707 Ffma
    temp_53 = 0.0 - vp_c9_data[14].x;
    temp_54 = fma(temp_42, temp_53, 1.0);
    // 0x000308: 0x49A1072403870303 Ffma
    temp_55 = 0.0 - vp_c9_data[14].x;
    temp_56 = fma(temp_23, temp_55, 1.0);
    // 0x000310: 0x51A107A403870101 Ffma
    temp_57 = 0.0 - vp_c9_data[14].x;
    temp_58 = fma(temp_49, temp_57, vp_c9_data[14].x);
    // 0x000318: 0x5CC601000087FF08 Iadd3
    temp_59 = 0 - (temp_50 ? -1 : 0);
    temp_60 = 0 - floatBitsToInt(temp_52);
    temp_61 = temp_59 + temp_60;
    // 0x000328: 0x5C68100000970707 Fmul
    temp_62 = temp_54 * temp_40;
    // 0x000330: 0x5CBA000000872A08 I2f
    temp_63 = abs(temp_61);
    temp_64 = float(temp_63);
    // 0x000338: 0x5C5870000FF7030E Fadd
    temp_65 = abs(temp_56);
    temp_66 = temp_65 + -0.0;
    // 0x000348: 0x3859103F80070101 Fadd
    temp_67 = 0.0 - temp_58;
    temp_68 = temp_67 + 1.0;
    // 0x000350: 0x4BB183A40247FF07 Fsetp
    temp_69 = 0.0 < vp_c9_data[9].x;
    // 0x000358: 0x5C60138000A7FF0B Fmnmx
    temp_70 = min(0.0, in_attr3.x);
    // 0x000368: 0x0103F0000001F009 Mov32i
    temp_71 = temp_40;
    temp_72 = temp_52;
    if (temp_41)
    {
        temp_71 = 0.5;
    }
    // 0x000370: 0x010BF0000009F009 Mov32i
    temp_73 = temp_71;
    if (!temp_41)
    {
        temp_73 = -0.5;
    }
    // 0x000378: 0x59A0038000E70C03 Ffma
    temp_74 = fma(temp_47, temp_66, temp_62);
    // 0x000388: 0x5C5870000FF70101 Fadd
    temp_75 = abs(temp_68);
    temp_76 = temp_75 + -0.0;
    // 0x000390: 0x5C5C30000FF70B07 Fadd
    temp_77 = temp_70 + -0.0;
    temp_78 = clamp(temp_77, 0.0, 1.0);
    // 0x000398: 0x0103F0000003F002 Mov32i
    if (temp_31)
    {
        temp_72 = 0.5;
    }
    // 0x0003A8: 0x010BF000000BF002 Mov32i
    temp_79 = temp_72;
    if (!temp_31)
    {
        temp_79 = -0.5;
    }
    // 0x0003B0: 0x59A0018000170801 Ffma
    temp_80 = fma(temp_64, temp_76, temp_74);
    // 0x0003B8: 0x5C98078000970003 Mov
    // 0x0003C8: 0x5C58100000D70707 Fadd
    temp_81 = temp_78 + in_attr2.x;
    // 0x0003D0: 0xE24000000588000F Bra
    temp_82 = temp_79;
    temp_83 = temp_73;
    if (temp_69)
    {
        // 0x0003D8: 0x4C9807A40247000B Mov
        // 0x0003E8: 0x4C68102402970A09 Fmul
        temp_84 = in_attr3.x * vp_c9_data[10].y;
        // 0x0003F0: 0x5080000000470B08 Mufu
        temp_85 = 1.0 / vp_c9_data[9].x;
        // 0x0003F8: 0x49A0002402470909 Ffma
        temp_86 = fma(temp_84, vp_c9_data[9].x, temp_2);
        // 0x000408: 0x5C68100000870909 Fmul
        temp_87 = temp_86 * temp_85;
        // 0x000410: 0x5CA8148000970A08 F2f
        temp_88 = floor(temp_87);
        // 0x000418: 0x5C58300000870908 Fadd
        temp_89 = 0.0 - temp_88;
        temp_90 = temp_87 + temp_89;
        // 0x000428: 0xE24000000107000F Bra
        temp_91 = temp_90;
        temp_92 = true;
    }
    else
    {
        // 0x000430: 0x5080000000470509 Mufu
        temp_93 = 1.0 / temp_8;
        // 0x000438: 0x5C68100000970008 Fmul
        temp_94 = temp_2 * temp_93;
        temp_91 = temp_94;
    }
    temp_92 = false;
    // 0x000448: 0x4C9807A418370009 Mov
    // 0x000450: 0x4C9807A418B7000C Mov
    // 0x000458: 0x4C9807A41847000D Mov
    // 0x000468: 0x4C9807A418570012 Mov
    // 0x000470: 0x4C59102418770909 Fadd
    temp_95 = 0.0 - vp_c9_data[96].w;
    temp_96 = temp_95 + vp_c9_data[97].w;
    // 0x000478: 0x508000000047090F Mufu
    temp_97 = 1.0 / temp_96;
    // 0x000488: 0x4C58302418770C0B Fadd
    temp_98 = 0.0 - vp_c9_data[97].w;
    temp_99 = vp_c9_data[98].w + temp_98;
    // 0x000490: 0x4C59102418F70C0C Fadd
    temp_100 = 0.0 - vp_c9_data[98].w;
    temp_101 = temp_100 + vp_c9_data[99].w;
    // 0x000498: 0x5080000000470B0B Mufu
    temp_102 = 1.0 / temp_99;
    // 0x0004A8: 0x4C9807A41887000E Mov
    // 0x0004B0: 0x5080000000470C0C Mufu
    temp_103 = 1.0 / temp_101;
    // 0x0004B8: 0x4C9807A418970013 Mov
    // 0x0004C8: 0x4C58302418070D0D Fadd
    temp_104 = 0.0 - vp_c9_data[96].x;
    temp_105 = vp_c9_data[97].x + temp_104;
    // 0x0004D0: 0x4C58302418171212 Fadd
    temp_106 = 0.0 - vp_c9_data[96].y;
    temp_107 = vp_c9_data[97].y + temp_106;
    // 0x0004D8: 0x4C58302418470E11 Fadd
    temp_108 = 0.0 - vp_c9_data[97].x;
    temp_109 = vp_c9_data[98].x + temp_108;
    // 0x0004E8: 0x4C58302418571310 Fadd
    temp_110 = 0.0 - vp_c9_data[97].y;
    temp_111 = vp_c9_data[98].y + temp_110;
    // 0x0004F0: 0x5C68100000F70D0D Fmul
    temp_112 = temp_105 * temp_97;
    // 0x0004F8: 0x5C68100000F71212 Fmul
    temp_113 = temp_107 * temp_97;
    // 0x000508: 0x4C59102418C70E09 Fadd
    temp_114 = 0.0 - vp_c9_data[98].x;
    temp_115 = temp_114 + vp_c9_data[99].x;
    // 0x000510: 0x4C9807A41937000F Mov
    // 0x000518: 0x4BB683A41837080F Fsetp
    temp_116 = temp_91 >= vp_c9_data[96].w;
    // 0x000528: 0x4BB683A418770807 Fsetp
    temp_117 = temp_91 >= vp_c9_data[97].w;
    // 0x000530: 0x5C68100000B71111 Fmul
    temp_118 = temp_109 * temp_102;
    // 0x000538: 0x5C68100000B71010 Fmul
    temp_119 = temp_111 * temp_102;
    // 0x000548: 0x5C68100000C7090B Fmul
    temp_120 = temp_115 * temp_103;
    // 0x000550: 0x4C58302418F70F09 Fadd
    temp_121 = 0.0 - vp_c9_data[99].w;
    temp_122 = vp_c9_data[100].w + temp_121;
    // 0x000558: 0x4C59102418D7130E Fadd
    temp_123 = 0.0 - vp_c9_data[98].y;
    temp_124 = temp_123 + vp_c9_data[99].y;
    // 0x000568: 0x5080000000470919 Mufu
    temp_125 = 1.0 / temp_122;
    // 0x000570: 0x4BB683A418B70817 Fsetp
    temp_126 = temp_91 >= vp_c9_data[98].w;
    // 0x000578: 0x4C9807A41907000F Mov
    // 0x000588: 0x4C9807A419170018 Mov
    // 0x000590: 0x4C9807A418070016 Mov
    // 0x000598: 0x5C68100000C70E0C Fmul
    temp_127 = temp_124 * temp_103;
    // 0x0005A8: 0x4CA004840007FF13 Sel
    temp_128 = !temp_116;
    temp_129 = temp_128 ? 0.0 : vp_c1_data[0].x;
    // 0x0005B0: 0x4C9807A41817000E Mov
    // 0x0005B8: 0x4C58302418C70F0F Fadd
    temp_130 = 0.0 - vp_c9_data[99].x;
    temp_131 = vp_c9_data[100].x + temp_130;
    // 0x0005C8: 0x4CA004040007FF14 Sel
    temp_132 = !temp_117;
    temp_133 = temp_132 ? 0.0 : vp_c1_data[0].x;
    // 0x0005D0: 0x4C58302418370817 Fadd
    temp_134 = 0.0 - vp_c9_data[96].w;
    temp_135 = temp_91 + temp_134;
    // 0x0005D8: 0x4BB683A418F7081F Fsetp
    temp_136 = temp_91 >= vp_c9_data[99].w;
    // 0x0005E8: 0x4C58302418D71818 Fadd
    temp_137 = 0.0 - vp_c9_data[99].y;
    temp_138 = vp_c9_data[100].y + temp_137;
    // 0x0005F0: 0x51A10B2418071316 Ffma
    temp_139 = 0.0 - vp_c9_data[96].x;
    temp_140 = fma(temp_129, temp_139, vp_c9_data[96].x);
    // 0x0005F8: 0x51A107241817130E Ffma
    temp_141 = 0.0 - vp_c9_data[96].y;
    temp_142 = fma(temp_129, temp_141, vp_c9_data[96].y);
    // 0x000608: 0x5C68100001970F09 Fmul
    temp_143 = temp_131 * temp_125;
    // 0x000610: 0x59A1098001471313 Ffma
    temp_144 = 0.0 - temp_133;
    temp_145 = fma(temp_129, temp_144, temp_129);
    // 0x000618: 0x51A006A418071715 Ffma
    temp_146 = fma(temp_135, temp_112, vp_c9_data[96].x);
    // 0x000628: 0x4CA005040007FF0F Sel
    temp_147 = !temp_126;
    temp_148 = temp_147 ? 0.0 : vp_c1_data[0].x;
    // 0x000630: 0x4C5830241877081A Fadd
    temp_149 = 0.0 - vp_c9_data[97].w;
    temp_150 = temp_91 + temp_149;
    // 0x000638: 0x4BB683A419370807 Fsetp
    temp_151 = temp_91 >= vp_c9_data[100].w;
    // 0x000648: 0x5C6810000197180D Fmul
    temp_152 = temp_138 * temp_125;
    // 0x000650: 0x51A0092418171718 Ffma
    temp_153 = fma(temp_135, temp_113, vp_c9_data[96].y);
    // 0x000658: 0x59A00B0001371515 Ffma
    temp_154 = fma(temp_146, temp_145, temp_140);
    // 0x000668: 0x59A10A0000F71412 Ffma
    temp_155 = 0.0 - temp_148;
    temp_156 = fma(temp_133, temp_155, temp_133);
    // 0x000670: 0x4C58302418B70816 Fadd
    temp_157 = 0.0 - vp_c9_data[98].w;
    temp_158 = temp_91 + temp_157;
    // 0x000678: 0x51A00D2418471114 Ffma
    temp_159 = fma(temp_118, temp_150, vp_c9_data[97].x);
    // 0x000688: 0x4CA005840007FF11 Sel
    temp_160 = !temp_136;
    temp_161 = temp_160 ? 0.0 : vp_c1_data[0].x;
    // 0x000690: 0x51A00D2418571010 Ffma
    temp_162 = fma(temp_119, temp_150, vp_c9_data[97].y);
    // 0x000698: 0x59A0070001371813 Ffma
    temp_163 = fma(temp_153, temp_145, temp_142);
    // 0x0006A8: 0x4C58302418F70808 Fadd
    temp_164 = 0.0 - vp_c9_data[99].w;
    temp_165 = temp_91 + temp_164;
    // 0x0006B0: 0x51A00B2418870B0E Ffma
    temp_166 = fma(temp_120, temp_158, vp_c9_data[98].x);
    // 0x0006B8: 0x59A00A8001271414 Ffma
    temp_167 = fma(temp_159, temp_156, temp_154);
    // 0x0006C8: 0x59A1078001170F0F Ffma
    temp_168 = 0.0 - temp_161;
    temp_169 = fma(temp_148, temp_168, temp_148);
    // 0x0006D0: 0x4CA004040007FF0B Sel
    temp_170 = !temp_151;
    temp_171 = temp_170 ? 0.0 : vp_c1_data[0].x;
    // 0x0006D8: 0x51A00B2418970C16 Ffma
    temp_172 = fma(temp_127, temp_158, vp_c9_data[98].y);
    // 0x0006E8: 0xEFD87F800A47FF0C Ald
    // 0x0006F0: 0x59A0098001271010 Ffma
    temp_173 = fma(temp_162, temp_156, temp_163);
    // 0x0006F8: 0x51A0042418C70909 Ffma
    temp_174 = fma(temp_143, temp_165, vp_c9_data[99].x);
    // 0x000708: 0x51A0042418D70D08 Ffma
    temp_175 = fma(temp_152, temp_165, vp_c9_data[99].y);
    // 0x000710: 0x59A00A0000F70E0E Ffma
    temp_176 = fma(temp_166, temp_169, temp_167);
    // 0x000718: 0x59A1088000B71111 Ffma
    temp_177 = 0.0 - temp_171;
    temp_178 = fma(temp_161, temp_177, temp_161);
    // 0x000728: 0x59A0080000F7160F Ffma
    temp_179 = fma(temp_172, temp_169, temp_173);
    // 0x000730: 0x59A0070001170909 Ffma
    temp_180 = fma(temp_174, temp_178, temp_176);
    // 0x000738: 0x59A0078001170811 Ffma
    temp_181 = fma(temp_175, temp_178, temp_179);
    // 0x000748: 0x4C9807A403070008 Mov
    // 0x000750: 0x49A004A419070B09 Ffma
    temp_182 = fma(temp_171, vp_c9_data[100].x, temp_180);
    // 0x000758: 0x49A008A419170B0B Ffma
    temp_183 = fma(temp_171, vp_c9_data[100].y, temp_181);
    // 0x000768: 0x36B283BF80070807 Fsetp
    temp_184 = vp_c9_data[12].x == 1.0;
    // 0x000770: 0x5C68100000970707 Fmul
    temp_185 = temp_81 * temp_182;
    // 0x000778: 0x5C68100000C70B0B Fmul
    temp_186 = temp_183 * in_attr2.y;
    // 0x000788: 0x4C58102800B7000C Fadd
    temp_187 = temp_2 + vp_c10_data[2].w;
    // 0x000790: 0x4C68102800D70707 Fmul
    temp_188 = temp_185 * vp_c10_data[3].y;
    // 0x000798: 0x4C68102800E70B14 Fmul
    temp_189 = temp_186 * vp_c10_data[3].z;
    // 0x0007A8: 0xE24000000408000F Bra
    temp_190 = temp_187;
    if (temp_184)
    {
        // 0x0007B0: 0x5C68100000C70C09 Fmul
        temp_191 = temp_187 * temp_187;
        // 0x0007B8: 0x4C68102402F70909 Fmul
        temp_192 = temp_191 * vp_c9_data[11].w;
        // 0x0007C8: 0x4C68122402C70911 Fmul
        temp_193 = temp_192 * 0.5;
        temp_194 = temp_193 * vp_c9_data[11].x;
        // 0x0007D0: 0x4C68122402D70913 Fmul
        temp_195 = temp_192 * 0.5;
        temp_196 = temp_195 * vp_c9_data[11].y;
        // 0x0007D8: 0x4C68122402E70912 Fmul
        temp_197 = temp_192 * 0.5;
        temp_198 = temp_197 * vp_c9_data[11].z;
        // 0x0007E8: 0xE24000000A07000F Bra
        temp_199 = temp_194;
        temp_200 = temp_196;
        temp_201 = temp_198;
        temp_202 = true;
    }
    else
    {
        // 0x0007F0: 0x3859103F8007080E Fadd
        temp_203 = 0.0 - vp_c9_data[12].x;
        temp_204 = temp_203 + 1.0;
        // 0x0007F8: 0x5080000000370809 Mufu
        temp_205 = log2(vp_c9_data[12].x);
        // 0x000808: 0x5C68100000C7090B Fmul
        temp_206 = temp_205 * temp_187;
        // 0x000810: 0x5080000000470909 Mufu
        temp_207 = 1.0 / temp_205;
        // 0x000818: 0x5C90008000B7000D Rro
        // 0x000828: 0x5080000000470E0E Mufu
        temp_208 = 1.0 / temp_204;
        // 0x000830: 0x1E23FB8AA3B7090B Fmul32i
        temp_209 = temp_207 * 1.44269502;
        // 0x000838: 0x5080000000270D0D Mufu
        temp_210 = exp2(temp_206);
        // 0x000848: 0x59A2058000D70B0B Ffma
        temp_211 = 0.0 - temp_209;
        temp_212 = fma(temp_209, temp_210, temp_211);
        // 0x000850: 0x5C59100000C70B0B Fadd
        temp_213 = 0.0 - temp_212;
        temp_214 = temp_213 + temp_187;
        // 0x000858: 0x5C68100000E70B0B Fmul
        temp_215 = temp_214 * temp_208;
        // 0x000868: 0x4C68102402F70B0B Fmul
        temp_216 = temp_215 * vp_c9_data[11].w;
        // 0x000870: 0x4C68102402C70B11 Fmul
        temp_217 = temp_216 * vp_c9_data[11].x;
        // 0x000878: 0x4C68102402D70B13 Fmul
        temp_218 = temp_216 * vp_c9_data[11].y;
        // 0x000888: 0x4C68102402E70B12 Fmul
        temp_219 = temp_216 * vp_c9_data[11].z;
        temp_199 = temp_217;
        temp_200 = temp_218;
        temp_201 = temp_219;
    }
    temp_202 = false;
    // 0x000890: 0xE24000000480000F Bra
    temp_220 = temp_199;
    if (!temp_184)
    {
        // 0x000898: 0x5080000000370809 Mufu
        temp_221 = log2(vp_c9_data[12].x);
        // 0x0008A8: 0x5C68100000C7090C Fmul
        temp_222 = temp_221 * temp_187;
        // 0x0008B0: 0x3859103F80070809 Fadd
        temp_223 = 0.0 - vp_c9_data[12].x;
        temp_224 = temp_223 + 1.0;
        // 0x0008B8: 0x5080000000470909 Mufu
        temp_225 = 1.0 / temp_224;
        // 0x0008C8: 0x5C90008000C7000B Rro
        // 0x0008D0: 0x5080000000270B0B Mufu
        temp_226 = exp2(temp_222);
        // 0x0008D8: 0x59A1048000970B0C Ffma
        temp_227 = 0.0 - temp_225;
        temp_228 = fma(temp_226, temp_227, temp_225);
        temp_190 = temp_228;
    }
    // 0x0008E8: 0xEFD87F800907FF0F Ald
    // 0x0008F0: 0xEFD87F800947FF0E Ald
    // 0x0008F8: 0xEFD87F800987FF0D Ald
    // 0x000908: 0x59A0088000F70C09 Ffma
    temp_229 = fma(temp_190, in_attr1.x, temp_199);
    // 0x000910: 0x59A0098000E70C0B Ffma
    temp_230 = fma(temp_190, in_attr1.y, temp_200);
    // 0x000918: 0x59A0090000D70C0C Ffma
    temp_231 = fma(temp_190, in_attr1.z, temp_201);
    // 0x000928: 0xE24000000408000F Bra
    if (temp_184)
    {
        // 0x000930: 0x5C68100000070010 Fmul
        temp_232 = temp_2 * temp_2;
        // 0x000938: 0x4C68102402F71010 Fmul
        temp_233 = temp_232 * vp_c9_data[11].w;
        // 0x000948: 0x4C68122402C71012 Fmul
        temp_234 = temp_233 * 0.5;
        temp_235 = temp_234 * vp_c9_data[11].x;
        // 0x000950: 0x4C68122402D71013 Fmul
        temp_236 = temp_233 * 0.5;
        temp_237 = temp_236 * vp_c9_data[11].y;
        // 0x000958: 0x4C68122402E71010 Fmul
        temp_238 = temp_233 * 0.5;
        temp_239 = temp_238 * vp_c9_data[11].z;
        // 0x000968: 0xE24000000A07000F Bra
        temp_240 = temp_235;
        temp_241 = temp_237;
        temp_242 = temp_239;
        temp_243 = true;
    }
    else
    {
        // 0x000970: 0x3859103F80070816 Fadd
        temp_244 = 0.0 - vp_c9_data[12].x;
        temp_245 = temp_244 + 1.0;
        // 0x000978: 0x5080000000370813 Mufu
        temp_246 = log2(vp_c9_data[12].x);
        // 0x000988: 0x5C68100001370010 Fmul
        temp_247 = temp_2 * temp_246;
        // 0x000990: 0x5080000000471313 Mufu
        temp_248 = 1.0 / temp_246;
        // 0x000998: 0x5C90008001070015 Rro
        // 0x0009A8: 0x5080000000471616 Mufu
        temp_249 = 1.0 / temp_245;
        // 0x0009B0: 0x1E23FB8AA3B71311 Fmul32i
        temp_250 = temp_248 * 1.44269502;
        // 0x0009B8: 0x5080000000271510 Mufu
        temp_251 = exp2(temp_247);
        // 0x0009C8: 0x59A2088001071111 Ffma
        temp_252 = 0.0 - temp_250;
        temp_253 = fma(temp_250, temp_251, temp_252);
        // 0x0009D0: 0x5C58300001170011 Fadd
        temp_254 = 0.0 - temp_253;
        temp_255 = temp_2 + temp_254;
        // 0x0009D8: 0x5C68100001671111 Fmul
        temp_256 = temp_255 * temp_249;
        // 0x0009E8: 0x4C68102402F71111 Fmul
        temp_257 = temp_256 * vp_c9_data[11].w;
        // 0x0009F0: 0x4C68102402C71112 Fmul
        temp_258 = temp_257 * vp_c9_data[11].x;
        // 0x0009F8: 0x4C68102402D71113 Fmul
        temp_259 = temp_257 * vp_c9_data[11].y;
        // 0x000A08: 0x4C68102402E71110 Fmul
        temp_260 = temp_257 * vp_c9_data[11].z;
        temp_220 = temp_257;
        temp_240 = temp_258;
        temp_241 = temp_259;
        temp_242 = temp_260;
    }
    temp_243 = false;
    // 0x000A10: 0x5C98078000000011 Mov
    temp_261 = temp_220;
    if (temp_184)
    {
        temp_261 = temp_2;
    }
    // 0x000A18: 0xE24000000500000F Bra
    temp_262 = temp_261;
    if (!temp_184)
    {
        // 0x000A28: 0x3859103F80070815 Fadd
        temp_263 = 0.0 - vp_c9_data[12].x;
        temp_264 = temp_263 + 1.0;
        // 0x000A30: 0x5080000000370811 Mufu
        temp_265 = log2(vp_c9_data[12].x);
        // 0x000A38: 0x5C68100001170011 Fmul
        temp_266 = temp_2 * temp_265;
        // 0x000A48: 0x5C90008001170016 Rro
        // 0x000A50: 0x5080000000471511 Mufu
        temp_267 = 1.0 / temp_264;
        // 0x000A58: 0x5080000000271616 Mufu
        temp_268 = exp2(temp_266);
        // 0x000A68: 0x59A1088001171611 Ffma
        temp_269 = 0.0 - temp_267;
        temp_270 = fma(temp_268, temp_269, temp_267);
        temp_262 = temp_270;
    }
    // 0x000A70: 0x4BB1838400170007 Fsetp
    temp_271 = temp_2 < vp_c1_data[0].y;
    // 0x000A78: 0xE29000000A000000 Ssy
    // 0x000A88: 0x59A0090000F71112 Ffma
    temp_272 = fma(temp_262, in_attr1.x, temp_240);
    // 0x000A90: 0x59A0098000E71115 Ffma
    temp_273 = fma(temp_262, in_attr1.y, temp_241);
    // 0x000A98: 0x59A0080000D71111 Ffma
    temp_274 = fma(temp_262, in_attr1.z, temp_242);
    // 0x000AA8: 0xF0F800000008000F Sync
    temp_275 = temp_272;
    temp_276 = temp_273;
    temp_277 = temp_274;
    if (temp_271)
    {
        // 0x000AB0: 0x5C68100000F70F08 Fmul
        temp_278 = in_attr1.x * in_attr1.x;
        // 0x000AB8: 0x59A0040000E70E08 Ffma
        temp_279 = fma(in_attr1.y, in_attr1.y, temp_278);
        // 0x000AC8: 0x59A0040000D70D08 Ffma
        temp_280 = fma(in_attr1.z, in_attr1.z, temp_279);
        // 0x000AD0: 0x5080000000570808 Mufu
        temp_281 = inversesqrt(temp_280);
        // 0x000AD8: 0x5C68100000F7080F Fmul
        temp_282 = temp_281 * in_attr1.x;
        // 0x000AE8: 0x5C68100000E7080E Fmul
        temp_283 = temp_281 * in_attr1.y;
        // 0x000AF0: 0x5C68100000D7080D Fmul
        temp_284 = temp_281 * in_attr1.z;
        // 0x000AF8: 0x49A1048400170F12 Ffma
        temp_285 = 0.0 - vp_c1_data[0].y;
        temp_286 = fma(temp_282, temp_285, temp_229);
        // 0x000B08: 0x49A1058400170E15 Ffma
        temp_287 = 0.0 - vp_c1_data[0].y;
        temp_288 = fma(temp_283, temp_287, temp_230);
        // 0x000B10: 0x49A1060400170D11 Ffma
        temp_289 = 0.0 - vp_c1_data[0].y;
        temp_290 = fma(temp_284, temp_289, temp_231);
        // 0x000B18: 0xF0F800000007000F Sync
        temp_275 = temp_286;
        temp_276 = temp_288;
        temp_277 = temp_290;
    }
    // 0x000B28: 0x5C58300001270908 Fadd
    temp_291 = 0.0 - temp_275;
    temp_292 = temp_229 + temp_291;
    // 0x000B30: 0xEFD87F800807FF13 Ald
    // 0x000B38: 0x5C58300001570B0D Fadd
    temp_293 = 0.0 - temp_276;
    temp_294 = temp_230 + temp_293;
    // 0x000B48: 0xE290000019000000 Ssy
    // 0x000B50: 0x4C6810280107080F Fmul
    temp_295 = temp_292 * vp_c10_data[4].x;
    // 0x000B58: 0xEFD87F800847FF15 Ald
    // 0x000B68: 0x5C58300001170C0E Fadd
    temp_296 = 0.0 - temp_277;
    temp_297 = temp_231 + temp_296;
    // 0x000B70: 0xEFD87F800887FF17 Ald
    // 0x000B78: 0x4C68102801470810 Fmul
    temp_298 = temp_292 * vp_c10_data[5].x;
    // 0x000B88: 0x49A007A801170D0F Ffma
    temp_299 = fma(temp_294, vp_c10_data[4].y, temp_295);
    // 0x000B90: 0x4C68102801870808 Fmul
    temp_300 = temp_292 * vp_c10_data[6].x;
    // 0x000B98: 0x49A0082801570D10 Ffma
    temp_301 = fma(temp_294, vp_c10_data[5].y, temp_298);
    // 0x000BA8: 0x49A007A801270E0F Ffma
    temp_302 = fma(temp_297, vp_c10_data[4].z, temp_299);
    // 0x000BB0: 0x49A0042801970D08 Ffma
    temp_303 = fma(temp_294, vp_c10_data[6].y, temp_300);
    // 0x000BB8: 0x49A0082801670E10 Ffma
    temp_304 = fma(temp_297, vp_c10_data[5].z, temp_301);
    // 0x000BC8: 0x5C58100000F7FF12 Fadd
    temp_305 = 0.0 + temp_302;
    // 0x000BD0: 0x49A0042801A70E08 Ffma
    temp_306 = fma(temp_297, vp_c10_data[6].z, temp_303);
    // 0x000BD8: 0xEFD87F800AC7FF0E Ald
    // 0x000BE8: 0x5C5810000107FF0F Fadd
    temp_307 = 0.0 + temp_304;
    // 0x000BF0: 0x5C6810000127120D Fmul
    temp_308 = temp_305 * temp_305;
    // 0x000BF8: 0x5C5810000087FF10 Fadd
    temp_309 = 0.0 + temp_306;
    // 0x000C08: 0x59A0068000F70F0D Ffma
    temp_310 = fma(temp_307, temp_307, temp_308);
    // 0x000C10: 0x59A0068001071011 Ffma
    temp_311 = fma(temp_309, temp_309, temp_310);
    // 0x000C18: 0x5080000000871111 Mufu
    temp_312 = sqrt(temp_311);
    // 0x000C28: 0x4BB1838400171107 Fsetp
    temp_313 = temp_312 < vp_c1_data[0].y;
    // 0x000C30: 0x59A0098000E70908 Ffma
    temp_314 = fma(temp_229, in_attr2.w, in_attr0.x);
    // 0x000C38: 0x59A00A8000E70B0D Ffma
    temp_315 = fma(temp_230, in_attr2.w, in_attr0.y);
    // 0x000C48: 0x59A00B8000E70C0E Ffma
    temp_316 = fma(temp_231, in_attr2.w, in_attr0.z);
    // 0x000C50: 0xF0F800000008000F Sync
    temp_317 = temp_305;
    temp_318 = temp_307;
    temp_319 = temp_309;
    if (temp_313)
    {
        // 0x000C58: 0x4C68102801870910 Fmul
        temp_320 = temp_229 * vp_c10_data[6].x;
        // 0x000C68: 0x4C68102801470911 Fmul
        temp_321 = temp_229 * vp_c10_data[5].x;
        // 0x000C70: 0x4C68102801070912 Fmul
        temp_322 = temp_229 * vp_c10_data[4].x;
        // 0x000C78: 0x49A0082801970B09 Ffma
        temp_323 = fma(temp_230, vp_c10_data[6].y, temp_320);
        // 0x000C88: 0x49A008A801570B11 Ffma
        temp_324 = fma(temp_230, vp_c10_data[5].y, temp_321);
        // 0x000C90: 0x49A0092801170B0B Ffma
        temp_325 = fma(temp_230, vp_c10_data[4].y, temp_322);
        // 0x000C98: 0x49A004A801A70C09 Ffma
        temp_326 = fma(temp_231, vp_c10_data[6].z, temp_323);
        // 0x000CA8: 0x49A008A801670C0F Ffma
        temp_327 = fma(temp_231, vp_c10_data[5].z, temp_324);
        // 0x000CB0: 0x49A005A801270C0B Ffma
        temp_328 = fma(temp_231, vp_c10_data[4].z, temp_325);
        // 0x000CB8: 0x5C5810000097FF10 Fadd
        temp_329 = 0.0 + temp_326;
        // 0x000CC8: 0x5C58100000F7FF0F Fadd
        temp_330 = 0.0 + temp_327;
        // 0x000CD0: 0x5C58100000B7FF12 Fadd
        temp_331 = 0.0 + temp_328;
        // 0x000CD8: 0xF0F800000007000F Sync
        temp_317 = temp_331;
        temp_318 = temp_330;
        temp_319 = temp_329;
    }
    // 0x000CE8: 0x5C68100001271209 Fmul
    temp_332 = temp_317 * temp_317;
    // 0x000CF0: 0x59A0048000F70F09 Ffma
    temp_333 = fma(temp_318, temp_318, temp_332);
    // 0x000CF8: 0x59A0048001071011 Ffma
    temp_334 = fma(temp_319, temp_319, temp_333);
    // 0x000D08: 0x5080000000571111 Mufu
    temp_335 = inversesqrt(temp_334);
    // 0x000D10: 0x5C68100001170F09 Fmul
    temp_336 = temp_318 * temp_335;
    // 0x000D18: 0x5C6810000117100B Fmul
    temp_337 = temp_319 * temp_335;
    // 0x000D28: 0x4C69102004270910 Fmul
    temp_338 = 0.0 - vp_c8_data[16].z;
    temp_339 = temp_336 * temp_338;
    // 0x000D30: 0x5C68100001171212 Fmul
    temp_340 = temp_317 * temp_335;
    // 0x000D38: 0x4C69102004070B0F Fmul
    temp_341 = 0.0 - vp_c8_data[16].x;
    temp_342 = temp_337 * temp_341;
    // 0x000D48: 0x49A3082004170B10 Ffma
    temp_343 = 0.0 - vp_c8_data[16].y;
    temp_344 = 0.0 - temp_339;
    temp_345 = fma(temp_337, temp_343, temp_344);
    // 0x000D50: 0x4C6910200417120C Fmul
    temp_346 = 0.0 - vp_c8_data[16].y;
    temp_347 = temp_340 * temp_346;
    // 0x000D58: 0x49A307A00427120F Ffma
    temp_348 = 0.0 - vp_c8_data[16].z;
    temp_349 = 0.0 - temp_342;
    temp_350 = fma(temp_340, temp_348, temp_349);
    // 0x000D68: 0x5C68100001071015 Fmul
    temp_351 = temp_345 * temp_345;
    // 0x000D70: 0x49A306200407090C Ffma
    temp_352 = 0.0 - vp_c8_data[16].x;
    temp_353 = 0.0 - temp_347;
    temp_354 = fma(temp_336, temp_352, temp_353);
    // 0x000D78: 0x59A00A8000F70F15 Ffma
    temp_355 = fma(temp_350, temp_350, temp_351);
    // 0x000D88: 0x49A001A403570413 Ffma
    temp_356 = fma(0.5, vp_c9_data[13].y, temp_73);
    // 0x000D90: 0x4C68102801070816 Fmul
    temp_357 = temp_314 * vp_c10_data[4].x;
    // 0x000D98: 0x59A00A8000C70C11 Ffma
    temp_358 = fma(temp_354, temp_354, temp_355);
    // 0x000DA8: 0x5080000000571111 Mufu
    temp_359 = inversesqrt(temp_358);
    // 0x000DB0: 0x49A0012403470415 Ffma
    temp_360 = fma(0.5, vp_c9_data[13].x, temp_79);
    // 0x000DB8: 0x5C68100001371404 Fmul
    temp_361 = temp_189 * temp_356;
    // 0x000DC8: 0x4C68102801870813 Fmul
    temp_362 = temp_314 * vp_c10_data[6].x;
    // 0x000DD0: 0x4C68102801470817 Fmul
    temp_363 = temp_314 * vp_c10_data[5].x;
    // 0x000DD8: 0x49A00B2801170D08 Ffma
    temp_364 = fma(temp_315, vp_c10_data[4].y, temp_357);
    // 0x000DE8: 0x5C68100001570707 Fmul
    temp_365 = temp_188 * temp_360;
    // 0x000DF0: 0x5C68100000471212 Fmul
    temp_366 = temp_340 * temp_361;
    // 0x000DF8: 0x49A00BA801570D17 Ffma
    temp_367 = fma(temp_315, vp_c10_data[5].y, temp_363);
    // 0x000E08: 0x49A0042801270E15 Ffma
    temp_368 = fma(temp_316, vp_c10_data[4].z, temp_364);
    // 0x000E10: 0x5C68100001171010 Fmul
    temp_369 = temp_345 * temp_359;
    // 0x000E18: 0x49A009A801970D0D Ffma
    temp_370 = fma(temp_315, vp_c10_data[6].y, temp_362);
    // 0x000E28: 0x5C68100000470909 Fmul
    temp_371 = temp_336 * temp_361;
    // 0x000E30: 0x5C68100001170F08 Fmul
    temp_372 = temp_350 * temp_359;
    // 0x000E38: 0x49A00BA801670E17 Ffma
    temp_373 = fma(temp_316, vp_c10_data[5].z, temp_367);
    // 0x000E48: 0x4C58102801371515 Fadd
    temp_374 = temp_368 + vp_c10_data[4].w;
    // 0x000E50: 0x59A0090001070710 Ffma
    temp_375 = fma(temp_365, temp_369, temp_366);
    // 0x000E58: 0x5C68100000470B04 Fmul
    temp_376 = temp_337 * temp_361;
    // 0x000E68: 0x5C68100001170C11 Fmul
    temp_377 = temp_354 * temp_359;
    // 0x000E70: 0x49A006A801A70E0D Ffma
    temp_378 = fma(temp_316, vp_c10_data[6].z, temp_370);
    // 0x000E78: 0x59A0048000870708 Ffma
    temp_379 = fma(temp_365, temp_372, temp_371);
    // 0x000E88: 0x4C58102801771717 Fadd
    temp_380 = temp_373 + vp_c10_data[5].w;
    // 0x000E90: 0x5C58100001571010 Fadd
    temp_381 = temp_375 + temp_374;
    // 0x000E98: 0x59A0020001170707 Ffma
    temp_382 = fma(temp_365, temp_377, temp_376);
    // 0x000EA8: 0x4C58102801B70D0D Fadd
    temp_383 = temp_378 + vp_c10_data[6].w;
    // 0x000EB0: 0x5C58100001770808 Fadd
    temp_384 = temp_379 + temp_380;
    // 0x000EB8: 0x5C5810000107FF04 Fadd
    temp_385 = 0.0 + temp_381;
    // 0x000EC8: 0x5C58100000D70707 Fadd
    temp_386 = temp_382 + temp_383;
    // 0x000ED0: 0x5C5810000087FF08 Fadd
    temp_387 = 0.0 + temp_384;
    // 0x000ED8: 0x4C6810200007040D Fmul
    temp_388 = temp_385 * vp_c8_data[0].x;
    // 0x000EE8: 0x4C6810200047040B Fmul
    temp_389 = temp_385 * vp_c8_data[1].x;
    // 0x000EF0: 0x4C68102000870409 Fmul
    temp_390 = temp_385 * vp_c8_data[2].x;
    // 0x000EF8: 0x5C5810000077FF07 Fadd
    temp_391 = 0.0 + temp_386;
    // 0x000F08: 0x49A006A00017080D Ffma
    temp_392 = fma(temp_387, vp_c8_data[0].y, temp_388);
    // 0x000F10: 0x49A005A00057080C Ffma
    temp_393 = fma(temp_387, vp_c8_data[1].y, temp_389);
    // 0x000F18: 0x49A004A000970809 Ffma
    temp_394 = fma(temp_387, vp_c8_data[2].y, temp_390);
    // 0x000F28: 0x49A006A00027070E Ffma
    temp_395 = fma(temp_391, vp_c8_data[0].z, temp_392);
    // 0x000F30: 0x4C68102000C7040B Fmul
    temp_396 = temp_385 * vp_c8_data[3].x;
    // 0x000F38: 0x49A006200067070D Ffma
    temp_397 = fma(temp_391, vp_c8_data[1].z, temp_393);
    // 0x000F48: 0x49A004A000A70709 Ffma
    temp_398 = fma(temp_391, vp_c8_data[2].z, temp_394);
    // 0x000F50: 0x4C58102000370E0E Fadd
    temp_399 = temp_395 + vp_c8_data[0].w;
    // 0x000F58: 0x49A005A000D7080C Ffma
    temp_400 = fma(temp_387, vp_c8_data[3].y, temp_396);
    // 0x000F68: 0x4C58102000770D0D Fadd
    temp_401 = temp_397 + vp_c8_data[1].w;
    // 0x000F70: 0x4C58102000B70909 Fadd
    temp_402 = temp_398 + vp_c8_data[2].w;
    // 0x000F78: 0x4C68102001C70E0B Fmul
    temp_403 = temp_399 * vp_c8_data[7].x;
    // 0x000F88: 0x49A0062000E7070C Ffma
    temp_404 = fma(temp_391, vp_c8_data[3].z, temp_400);
    // 0x000F90: 0x4C58102403670909 Fadd
    temp_405 = temp_402 + vp_c9_data[13].z;
    // 0x000F98: 0x49A005A001D70D0B Ffma
    temp_406 = fma(temp_401, vp_c8_data[7].y, temp_403);
    // 0x000FA8: 0x4C68102001870E0E Fmul
    temp_407 = temp_399 * vp_c8_data[6].x;
    // 0x000FB0: 0x4C58102000F70C0C Fadd
    temp_408 = temp_404 + vp_c8_data[3].w;
    // 0x000FB8: 0x49A005A001E7090B Ffma
    temp_409 = fma(temp_405, vp_c8_data[7].z, temp_406);
    // 0x000FC8: 0x49A0072001970D0E Ffma
    temp_410 = fma(temp_401, vp_c8_data[6].y, temp_407);
    // 0x000FD0: 0x4C6810200247040D Fmul
    temp_411 = temp_385 * vp_c8_data[9].x;
    // 0x000FD8: 0x4C6810200207040F Fmul
    temp_412 = temp_385 * vp_c8_data[8].x;
    // 0x000FE8: 0x49A005A001F70C0B Ffma
    temp_413 = fma(temp_408, vp_c8_data[7].w, temp_409);
    // 0x000FF0: 0x49A0072001A70909 Ffma
    temp_414 = fma(temp_405, vp_c8_data[6].z, temp_410);
    // 0x000FF8: 0x5080000000470B0B Mufu
    temp_415 = 1.0 / temp_413;
    // 0x001008: 0x4C68102002C70411 Fmul
    temp_416 = temp_385 * vp_c8_data[11].x;
    // 0x001010: 0x49A006A00257080D Ffma
    temp_417 = fma(temp_387, vp_c8_data[9].y, temp_411);
    // 0x001018: 0x49A007A002170804 Ffma
    temp_418 = fma(temp_387, vp_c8_data[8].y, temp_412);
    // 0x001028: 0x4C9807A40F17000F Mov
    // 0x001030: 0x49A004A001B70C09 Ffma
    temp_419 = fma(temp_408, vp_c8_data[6].w, temp_414);
    // 0x001038: 0x49A008A002D70808 Ffma
    temp_420 = fma(temp_387, vp_c8_data[11].y, temp_416);
    // 0x001048: 0x49A006A00267070D Ffma
    temp_421 = fma(temp_391, vp_c8_data[9].z, temp_417);
    // 0x001050: 0x4C9807A40F07000C Mov
    // 0x001058: 0x4C9807A40F270010 Mov
    // 0x001068: 0x49A0022002270704 Ffma
    temp_422 = fma(temp_391, vp_c8_data[8].z, temp_418);
    // 0x001070: 0x5C68100000B70909 Fmul
    temp_423 = temp_419 * temp_415;
    // 0x001078: 0x4C68102800170F0B Fmul
    temp_424 = vp_c9_data[60].y * vp_c10_data[0].y;
    // 0x001088: 0x49A0042002E70708 Ffma
    temp_425 = fma(temp_391, vp_c8_data[11].z, temp_420);
    // 0x001090: 0x4C58102002770D0D Fadd
    temp_426 = temp_421 + vp_c8_data[9].w;
    // 0x001098: 0x4C68102800070C07 Fmul
    temp_427 = vp_c9_data[60].x * vp_c10_data[0].x;
    // 0x0010A8: 0xEFF07F800747FF0D Ast
    gl_Position.y = temp_426;
    // 0x0010B0: 0x4C6810280027100C Fmul
    temp_428 = vp_c9_data[60].z * vp_c10_data[0].z;
    // 0x0010B8: 0x4C6810240EC70B10 Fmul
    temp_429 = temp_424 * vp_c9_data[59].x;
    // 0x0010C8: 0x4C58102002370404 Fadd
    temp_430 = temp_422 + vp_c8_data[8].w;
    // 0x0010D0: 0xEFF07F800847FF10 Ast
    out_attr0.y = temp_429;
    // 0x0010D8: 0x4C58102002F70808 Fadd
    temp_431 = temp_425 + vp_c8_data[11].w;
    // 0x0010E8: 0xEFF07F800707FF04 Ast
    gl_Position.x = temp_430;
    // 0x0010F0: 0x3968103F00070D0B Fmul
    temp_432 = temp_426 * -0.5;
    // 0x0010F8: 0xEFF07F8007C7FF08 Ast
    gl_Position.w = temp_431;
    // 0x001108: 0x4C6810240EC7070F Fmul
    temp_433 = temp_427 * vp_c9_data[59].x;
    // 0x001110: 0x5C68100000D7FF07 Fmul
    temp_434 = 0.0 * temp_426;
    // 0x001118: 0xEFF07F800807FF0F Ast
    out_attr0.x = temp_433;
    // 0x001128: 0x4C9807A41107000E Mov
    // 0x001130: 0x5C68100000870909 Fmul
    temp_435 = temp_423 * temp_431;
    // 0x001138: 0x59A005800047FF0B Ffma
    temp_436 = fma(0.0, temp_430, temp_432);
    // 0x001148: 0xEFF07F800787FF09 Ast
    gl_Position.z = temp_435;
    // 0x001150: 0x4C6810240EC70C11 Fmul
    temp_437 = temp_428 * vp_c9_data[59].x;
    // 0x001158: 0x32A003BF0007040C Ffma
    temp_438 = fma(temp_430, 0.5, temp_434);
    // 0x001168: 0xEFF07F800887FF11 Ast
    out_attr0.z = temp_437;
    // 0x001170: 0x4C68102800370E0E Fmul
    temp_439 = vp_c9_data[68].x * vp_c10_data[0].w;
    // 0x001178: 0x59A005800097FF0B Ffma
    temp_440 = fma(0.0, temp_435, temp_436);
    // 0x001188: 0xEFF07F8008C7FF0E Ast
    out_attr0.w = temp_439;
    // 0x001190: 0x59A003800047FF07 Ffma
    temp_441 = fma(0.0, temp_430, temp_434);
    // 0x001198: 0x59A006000097FF0E Ffma
    temp_442 = fma(0.0, temp_435, temp_438);
    // 0x0011A8: 0x4BB183A40227FF07 Fsetp
    temp_443 = 0.0 < vp_c9_data[8].z;
    // 0x0011B0: 0x32A005BF0007080C Ffma
    temp_444 = fma(temp_431, 0.5, temp_440);
    // 0x0011B8: 0x32A003BF0007090B Ffma
    temp_445 = fma(temp_435, 0.5, temp_441);
    // 0x0011C8: 0xEFF07F800C47FF0C Ast
    out_attr4.y = temp_444;
    // 0x0011D0: 0x59A003800097FF07 Ffma
    temp_446 = fma(0.0, temp_435, temp_441);
    // 0x0011D8: 0x32A0073F0007080E Ffma
    temp_447 = fma(temp_431, 0.5, temp_442);
    // 0x0011E8: 0x32A005BF0007080B Ffma
    temp_448 = fma(temp_431, 0.5, temp_445);
    // 0x0011F0: 0xEFF07F800C07FF0E Ast
    out_attr4.x = temp_447;
    // 0x0011F8: 0x5C58100000770807 Fadd
    temp_449 = temp_431 + temp_446;
    // 0x001208: 0xEFF07F800C87FF0B Ast
    out_attr4.z = temp_448;
    // 0x001210: 0xEFF07F800CC7FF07 Ast
    out_attr4.w = temp_449;
    // 0x001218: 0xE24000000588000F Bra
    if (temp_443)
    {
        // 0x001228: 0x4C9807A402270008 Mov
        // 0x001230: 0x4C68102402770A07 Fmul
        temp_450 = in_attr3.x * vp_c9_data[9].w;
        // 0x001238: 0x5080000000470804 Mufu
        temp_451 = 1.0 / vp_c9_data[8].z;
        // 0x001248: 0x49A0002402270707 Ffma
        temp_452 = fma(temp_450, vp_c9_data[8].z, temp_2);
        // 0x001250: 0x5C68100000470707 Fmul
        temp_453 = temp_452 * temp_451;
        // 0x001258: 0x5CA8148000770A04 F2f
        temp_454 = floor(temp_453);
        // 0x001268: 0x5C58300000470713 Fadd
        temp_455 = 0.0 - temp_454;
        temp_456 = temp_453 + temp_455;
        // 0x001270: 0xE24000000187000F Bra
        temp_457 = temp_456;
        temp_458 = true;
    }
    else
    {
        // 0x001278: 0x5080000000470513 Mufu
        temp_459 = 1.0 / temp_8;
        // 0x001288: 0x5C68100001370013 Fmul
        temp_460 = temp_2 * temp_459;
        temp_457 = temp_460;
    }
    temp_458 = false;
    // 0x001290: 0x4CB011A40C271A0E F2i
    temp_461 = trunc(vp_c9_data[48].z);
    temp_462 = int(temp_461);
    // 0x001298: 0x5CE2000000E73A08 I2i
    temp_463 = abs(temp_462);
    // 0x0012A8: 0x5CB8000000E70A0B I2f
    temp_464 = float(uint(temp_462));
    // 0x0012B0: 0x5CB801800FF70A04 I2f
    temp_465 = float(0u);
    // 0x0012B8: 0x5CB8000000870A07 I2f
    temp_466 = float(uint(temp_463));
    // 0x0012C8: 0x5080000000470B0B Mufu
    temp_467 = 1.0 / temp_464;
    // 0x0012D0: 0x5080000000470707 Mufu
    temp_468 = 1.0 / temp_466;
    // 0x0012D8: 0x1C0FFFFFFFE70B0F Iadd32i
    temp_469 = floatBitsToInt(temp_467) + -2;
    // 0x0012E8: 0x5CE0800000E73AFF I2i
    temp_470 = temp_462 == 0;
    temp_471 = temp_462 < 0;
    // 0x0012F0: 0x5C68118000F70417 Fmul
    temp_472 = temp_465 * intBitsToFloat(temp_469);
    // 0x0012F8: 0x5CB0118001770A17 F2i
    temp_473 = trunc(temp_472);
    temp_474 = max(temp_473, 0.0);
    temp_475 = uint(temp_474);
    // 0x001308: 0x1C0FFFFFFFE70709 Iadd32i
    temp_476 = floatBitsToInt(temp_468) + -2;
    // 0x001310: 0x5C6811800047090D Fmul
    temp_477 = intBitsToFloat(temp_476) * temp_465;
    // 0x001318: 0x5CB0118000D70A0D F2i
    temp_478 = trunc(temp_477);
    temp_479 = max(temp_478, 0.0);
    temp_480 = uint(temp_479);
    // 0x001328: 0x5B007F8001770E0C Xmad
    temp_481 = temp_462 & 0xFFFF;
    temp_482 = int(temp_475) & 0xFFFF;
    temp_483 = temp_481 * temp_482;
    // 0x001330: 0x5B007FA801770E15 Xmad
    temp_484 = temp_462 & 0xFFFF;
    temp_485 = temp_475 >> 16;
    temp_486 = temp_484 * int(temp_485);
    temp_487 = temp_486 & 0xFFFF;
    temp_488 = int(temp_475) << 16;
    temp_489 = temp_487 | temp_488;
    // 0x001338: 0x5B30061801570E07 Xmad
    temp_490 = uint(temp_462) >> 16;
    temp_491 = uint(temp_489) >> 16;
    temp_492 = int(temp_490) * int(temp_491);
    temp_493 = temp_492 << 16;
    temp_494 = temp_489 << 16;
    temp_495 = temp_483 + temp_494;
    temp_496 = temp_493 + temp_495;
    // 0x001348: 0x5B007F8000D7080B Xmad
    temp_497 = temp_463 & 0xFFFF;
    temp_498 = int(temp_480) & 0xFFFF;
    temp_499 = temp_497 * temp_498;
    // 0x001350: 0x5B007FA800D70811 Xmad
    temp_500 = temp_463 & 0xFFFF;
    temp_501 = temp_480 >> 16;
    temp_502 = temp_500 * int(temp_501);
    temp_503 = temp_502 & 0xFFFF;
    temp_504 = int(temp_480) << 16;
    temp_505 = temp_503 | temp_504;
    // 0x001358: 0x5C1200000FF70710 Iadd
    temp_506 = 0 - temp_496;
    // 0x001368: 0xEFD87F800B47FF07 Ald
    // 0x001370: 0x5B3005980117080B Xmad
    temp_507 = uint(temp_463) >> 16;
    temp_508 = uint(temp_505) >> 16;
    temp_509 = int(temp_507) * int(temp_508);
    temp_510 = temp_509 << 16;
    temp_511 = temp_505 << 16;
    temp_512 = temp_499 + temp_511;
    temp_513 = temp_510 + temp_512;
    // 0x001378: 0x5CB8018001070A10 I2f
    temp_514 = float(uint(temp_506));
    // 0x001388: 0x5C1200000FF70B0C Iadd
    temp_515 = 0 - temp_513;
    // 0x001390: 0xEFD87F800BC7FF0B Ald
    // 0x001398: 0x4C9807A40B570012 Mov
    // 0x0013A8: 0x5CB8018000C70A0C I2f
    temp_516 = float(uint(temp_515));
    // 0x0013B0: 0x5C68118001070F19 Fmul
    temp_517 = intBitsToFloat(temp_469) * temp_514;
    // 0x0013B8: 0x010001000007F00F Mov32i
    // 0x0013C8: 0x5CB0118001970A10 F2i
    temp_518 = trunc(temp_517);
    temp_519 = max(temp_518, 0.0);
    temp_520 = uint(temp_519);
    // 0x0013D0: 0x4C47002401570611 Lop
    temp_521 = 1 & floatBitsToInt(vp_c9_data[5].y);
    // 0x0013D8: 0xEFD87F800B87FF06 Ald
    // 0x0013E8: 0x4C47002401470F0F Lop
    temp_522 = 0x100000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x0013F0: 0x5C68118000C70918 Fmul
    temp_523 = intBitsToFloat(temp_476) * temp_516;
    // 0x0013F8: 0x4C5810240B371212 Fadd
    temp_524 = vp_c9_data[45].y + vp_c9_data[44].w;
    // 0x001408: 0x5CB0118001870A0C F2i
    temp_525 = trunc(temp_523);
    temp_526 = max(temp_525, 0.0);
    temp_527 = uint(temp_526);
    // 0x001410: 0x4C6810240B570715 Fmul
    temp_528 = in_attr3.y * vp_c9_data[45].y;
    // 0x001418: 0x4B55038400370F1A Iset
    temp_529 = temp_522 == floatBitsToInt(vp_c1_data[0].w);
    // 0x001428: 0x010000800007F00F Mov32i
    // 0x001430: 0x366B03800017111F Isetp
    temp_530 = temp_521 != 1;
    // 0x001438: 0x32A1094000071511 Ffma
    temp_531 = fma(temp_528, -2.0, temp_524);
    // 0x001448: 0x010002000007F012 Mov32i
    // 0x001450: 0x010004000007F015 Mov32i
    // 0x001458: 0x4C47002401470F0F Lop
    temp_532 = 0x80000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x001468: 0x5C10000001071717 Iadd
    temp_533 = int(temp_475) + int(temp_520);
    // 0x001470: 0x5C10000000C70D0D Iadd
    temp_534 = int(temp_480) + int(temp_527);
    // 0x001478: 0x4C4700240147120C Lop
    temp_535 = 0x200000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x001488: 0x4C47002401471510 Lop
    temp_536 = 0x400000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x001490: 0x308403BF00070A12 Fset
    temp_537 = in_attr3.x > 0.5;
    // 0x001498: 0x4B55038400270F0F Iset
    temp_538 = temp_532 == floatBitsToInt(vp_c1_data[0].z);
    // 0x0014A8: 0x4C9807A40B470016 Mov
    // 0x0014B0: 0x308403BF00070B15 Fset
    temp_539 = in_attr3.w > 0.5;
    // 0x0014B8: 0x308403BF0007060B Fset
    temp_540 = in_attr3.z > 0.5;
    // 0x0014C8: 0x4B55038400571010 Iset
    temp_541 = temp_536 == floatBitsToInt(vp_c1_data[1].y);
    // 0x0014D0: 0x4B55038400470C0C Iset
    temp_542 = temp_535 == floatBitsToInt(vp_c1_data[1].x);
    // 0x0014D8: 0x5C44338001270FFF Lop
    temp_543 = !temp_538;
    temp_544 = !temp_537;
    temp_545 = temp_543 || temp_544;
    temp_546 = (temp_545 ? -1 : 0) != 0;
    // 0x0014E8: 0x5B007F8001770E18 Xmad
    temp_547 = temp_462 & 0xFFFF;
    temp_548 = temp_533 & 0xFFFF;
    temp_549 = temp_547 * temp_548;
    // 0x0014F0: 0x5B007FA801770E19 Xmad
    temp_550 = temp_462 & 0xFFFF;
    temp_551 = uint(temp_533) >> 16;
    temp_552 = temp_550 * int(temp_551);
    temp_553 = temp_552 & 0xFFFF;
    temp_554 = temp_533 << 16;
    temp_555 = temp_553 | temp_554;
    // 0x0014F8: 0x5B007F8000D7080F Xmad
    temp_556 = temp_463 & 0xFFFF;
    temp_557 = temp_534 & 0xFFFF;
    temp_558 = temp_556 * temp_557;
    // 0x001508: 0x5B007FA800D70812 Xmad
    temp_559 = temp_463 & 0xFFFF;
    temp_560 = uint(temp_534) >> 16;
    temp_561 = temp_559 * int(temp_560);
    temp_562 = temp_561 & 0xFFFF;
    temp_563 = temp_534 << 16;
    temp_564 = temp_562 | temp_563;
    // 0x001510: 0x4C6810240B470A09 Fmul
    temp_565 = in_attr3.x * vp_c9_data[45].x;
    // 0x001518: 0x4C5810240B271616 Fadd
    temp_566 = vp_c9_data[45].x + vp_c9_data[44].z;
    // 0x001528: 0x5C403380015710FF Lop
    temp_567 = !temp_541;
    temp_568 = !temp_539;
    temp_569 = temp_567 || temp_568;
    temp_570 = (temp_569 ? -1 : 0) != 0;
    // 0x001530: 0x5C42338000B70CFF Lop
    temp_571 = !temp_542;
    temp_572 = !temp_540;
    temp_573 = temp_571 || temp_572;
    temp_574 = (temp_573 ? -1 : 0) != 0;
    // 0x001538: 0x5B300C1801970E10 Xmad
    temp_575 = uint(temp_462) >> 16;
    temp_576 = uint(temp_555) >> 16;
    temp_577 = int(temp_575) * int(temp_576);
    temp_578 = temp_577 << 16;
    temp_579 = temp_555 << 16;
    temp_580 = temp_549 + temp_579;
    temp_581 = temp_578 + temp_580;
    // 0x001548: 0x5B3007980127080C Xmad
    temp_582 = uint(temp_463) >> 16;
    temp_583 = uint(temp_564) >> 16;
    temp_584 = int(temp_582) * int(temp_583);
    temp_585 = temp_584 << 16;
    temp_586 = temp_564 << 16;
    temp_587 = temp_558 + temp_586;
    temp_588 = temp_585 + temp_587;
    // 0x001550: 0x4C9807A413670012 Mov
    // 0x001558: 0x32A10B4000070909 Ffma
    temp_589 = fma(temp_565, -2.0, temp_566);
    // 0x001568: 0x4C9807A413370016 Mov
    // 0x001570: 0x4BB683A413371337 Fsetp
    temp_590 = temp_457 >= vp_c9_data[76].w;
    // 0x001578: 0x5C1200000FF71018 Iadd
    temp_591 = 0 - temp_581;
    // 0x001588: 0x010008000007F00B Mov32i
    // 0x001590: 0x4C58302413271210 Fadd
    temp_592 = 0.0 - vp_c9_data[76].z;
    temp_593 = vp_c9_data[77].z + temp_592;
    // 0x001598: 0x5C1200000FF70C12 Iadd
    temp_594 = 0 - temp_588;
    // 0x0015A8: 0x4C59102413771616 Fadd
    temp_595 = 0.0 - vp_c9_data[76].w;
    temp_596 = temp_595 + vp_c9_data[77].w;
    // 0x0015B0: 0x4BB683A41377130F Fsetp
    temp_597 = temp_457 >= vp_c9_data[77].w;
    // 0x0015B8: 0x5080000000471616 Mufu
    temp_598 = 1.0 / temp_596;
    // 0x0015C8: 0x4C9807A41347000F Mov
    // 0x0015D0: 0x4C9807A413570015 Mov
    // 0x0015D8: 0x308403BF0007071B Fset
    temp_599 = in_attr3.y > 0.5;
    // 0x0015E8: 0x4C47002401470B0B Lop
    temp_600 = 0x800000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x0015F0: 0x5B5C038000871208 Iset
    temp_601 = uint(temp_594) >= uint(temp_463);
    // 0x0015F8: 0x4CA007040007FF12 Sel
    temp_602 = !temp_590;
    temp_603 = temp_602 ? 0.0 : vp_c1_data[0].x;
    // 0x001608: 0x4C9807A413B7000C Mov
    // 0x001610: 0x4BB683A413B71337 Fsetp
    temp_604 = temp_457 >= vp_c9_data[78].w;
    // 0x001618: 0x4C58302413070F0F Fadd
    temp_605 = 0.0 - vp_c9_data[76].x;
    temp_606 = vp_c9_data[77].x + temp_605;
    // 0x001628: 0x4C58302413171515 Fadd
    temp_607 = 0.0 - vp_c9_data[76].y;
    temp_608 = vp_c9_data[77].y + temp_607;
    // 0x001630: 0x5C45338001B71AFF Lop
    temp_609 = !temp_529;
    temp_610 = !temp_599;
    temp_611 = temp_609 || temp_610;
    temp_612 = (temp_611 ? -1 : 0) != 0;
    // 0x001638: 0x308403BF0007071A Fset
    temp_613 = in_attr3.y > 0.5;
    // 0x001648: 0x4B55038400670B19 Iset
    temp_614 = temp_600 == floatBitsToInt(vp_c1_data[1].z);
    // 0x001650: 0x5B5C038000E71818 Iset
    temp_615 = uint(temp_591) >= uint(temp_462);
    // 0x001658: 0x4C58302413770C0C Fadd
    temp_616 = 0.0 - vp_c9_data[77].w;
    temp_617 = vp_c9_data[78].w + temp_616;
    // 0x001668: 0x5C68100001670F0F Fmul
    temp_618 = temp_606 * temp_598;
    // 0x001670: 0x5080000000470C0C Mufu
    temp_619 = 1.0 / temp_617;
    // 0x001678: 0x5C68100001671515 Fmul
    temp_620 = temp_608 * temp_598;
    // 0x001688: 0x4CA004840007FF0B Sel
    temp_621 = !temp_597;
    temp_622 = temp_621 ? 0.0 : vp_c1_data[0].x;
    // 0x001690: 0x5C68100001671016 Fmul
    temp_623 = temp_593 * temp_598;
    // 0x001698: 0x5C41338001A719FF Lop
    temp_624 = !temp_614;
    temp_625 = !temp_613;
    temp_626 = temp_624 || temp_625;
    temp_627 = (temp_626 ? -1 : 0) != 0;
    // 0x0016A8: 0x5C11000001871717 Iadd
    temp_628 = 0 - (temp_615 ? -1 : 0);
    temp_629 = temp_533 + temp_628;
    // 0x0016B0: 0x4C9807A413870010 Mov
    // 0x0016B8: 0x4C9807A413970019 Mov
    // 0x0016C8: 0x3828000001F70E18 Shr
    temp_630 = uint(temp_462) >> 31;
    // 0x0016D0: 0x5C11000000870D1B Iadd
    temp_631 = 0 - (temp_601 ? -1 : 0);
    temp_632 = temp_534 + temp_631;
    // 0x0016D8: 0x4CA007040007FF08 Sel
    temp_633 = !temp_604;
    temp_634 = temp_633 ? 0.0 : vp_c1_data[0].x;
    // 0x0016E8: 0x50A0038000070D37 Csetp
    temp_635 = !temp_470;
    temp_636 = temp_471 || temp_635;
    // 0x0016F0: 0x4C5830241347100D Fadd
    temp_637 = 0.0 - vp_c9_data[77].x;
    temp_638 = vp_c9_data[78].x + temp_637;
    // 0x0016F8: 0x5CE0800000E70AFF I2i
    temp_639 = temp_462 == 0;
    temp_640 = temp_462 < 0;
    // 0x001708: 0x4C58302413571919 Fadd
    temp_641 = 0.0 - vp_c9_data[77].y;
    temp_642 = vp_c9_data[78].y + temp_641;
    // 0x001710: 0x5C1200000FF71818 Iadd
    temp_643 = 0 - int(temp_630);
    // 0x001718: 0x5C68100000C70D10 Fmul
    temp_644 = temp_638 * temp_619;
    // 0x001728: 0x5C68100000C7190D Fmul
    temp_645 = temp_642 * temp_619;
    // 0x001730: 0x5C47040001871B1B Lop
    temp_646 = temp_632 ^ temp_643;
    // 0x001738: 0x5B007F8001770E19 Xmad
    temp_647 = temp_462 & 0xFFFF;
    temp_648 = temp_629 & 0xFFFF;
    temp_649 = temp_647 * temp_648;
    // 0x001748: 0x5B007FA801770E17 Xmad
    temp_650 = temp_462 & 0xFFFF;
    temp_651 = uint(temp_629) >> 16;
    temp_652 = temp_650 * int(temp_651);
    temp_653 = temp_652 & 0xFFFF;
    temp_654 = temp_629 << 16;
    temp_655 = temp_653 | temp_654;
    // 0x001750: 0x4C9807A413A7001A Mov
    // 0x001758: 0x5C12000001B71818 Iadd
    temp_656 = 0 - temp_643;
    temp_657 = temp_656 + temp_646;
    // 0x001768: 0x5B300C9801770E0E Xmad
    temp_658 = uint(temp_462) >> 16;
    temp_659 = uint(temp_655) >> 16;
    temp_660 = int(temp_658) * int(temp_659);
    temp_661 = temp_660 << 16;
    temp_662 = temp_655 << 16;
    temp_663 = temp_649 + temp_662;
    temp_664 = temp_661 + temp_663;
    // 0x001770: 0x010010000007F017 Mov32i
    // 0x001778: 0x4C58302413671A1A Fadd
    temp_665 = 0.0 - vp_c9_data[77].z;
    temp_666 = vp_c9_data[78].z + temp_665;
    // 0x001788: 0x4C5830241337131C Fadd
    temp_667 = 0.0 - vp_c9_data[76].w;
    temp_668 = temp_457 + temp_667;
    // 0x001790: 0x39A0037FFFF71818 Sel
    temp_669 = temp_636 ? temp_657 : -1;
    // 0x001798: 0x4C9807A413170019 Mov
    // 0x0017A8: 0x50A0038000070D37 Csetp
    temp_670 = !temp_639;
    temp_671 = temp_640 || temp_670;
    // 0x0017B0: 0x4C9807A41307001D Mov
    // 0x0017B8: 0x4C9807A41327001B Mov
    // 0x0017C8: 0x4C47002401471717 Lop
    temp_672 = 0x1000000 & floatBitsToInt(vp_c9_data[5].x);
    // 0x0017D0: 0x5C68100000C71A0C Fmul
    temp_673 = temp_666 * temp_619;
    // 0x0017D8: 0x51A007A413071C0F Ffma
    temp_674 = fma(temp_668, temp_618, vp_c9_data[76].x);
    // 0x0017E8: 0x51A00AA413171C15 Ffma
    temp_675 = fma(temp_668, temp_620, vp_c9_data[76].y);
    // 0x0017F0: 0x51A00B2413271C16 Ffma
    temp_676 = fma(temp_668, temp_623, vp_c9_data[76].z);
    // 0x0017F8: 0x51A10CA41317121A Ffma
    temp_677 = 0.0 - vp_c9_data[76].y;
    temp_678 = fma(temp_603, temp_677, vp_c9_data[76].y);
    // 0x001808: 0x51A10EA41307121D Ffma
    temp_679 = 0.0 - vp_c9_data[76].x;
    temp_680 = fma(temp_603, temp_679, vp_c9_data[76].x);
    // 0x001810: 0x51A10DA413271219 Ffma
    temp_681 = 0.0 - vp_c9_data[76].z;
    temp_682 = fma(temp_603, temp_681, vp_c9_data[76].z);
    // 0x001818: 0x59A1090001270B1C Ffma
    temp_683 = 0.0 - temp_603;
    temp_684 = fma(temp_622, temp_683, temp_603);
    // 0x001828: 0x5C1200000FF70E0E Iadd
    temp_685 = 0 - temp_664;
    // 0x001830: 0x4B55038400771717 Iset
    temp_686 = temp_672 == floatBitsToInt(vp_c1_data[1].w);
    // 0x001838: 0x308403BF00070612 Fset
    temp_687 = in_attr3.z > 0.5;
    // 0x001848: 0x39A0037FFFF70E0E Sel
    temp_688 = temp_671 ? temp_685 : -1;
    // 0x001850: 0x5C463380012717FF Lop
    temp_689 = !temp_686;
    temp_690 = !temp_687;
    temp_691 = temp_689 || temp_690;
    temp_692 = (temp_691 ? -1 : 0) != 0;
    // 0x001858: 0x4C9807A40C370017 Mov
    // 0x001868: 0x5080000000471717 Mufu
    temp_693 = 1.0 / vp_c9_data[48].w;
    // 0x001870: 0x59A00D0001C71512 Ffma
    temp_694 = fma(temp_675, temp_684, temp_678);
    // 0x001878: 0x59A00C8001C71615 Ffma
    temp_695 = fma(temp_676, temp_684, temp_682);
    // 0x001888: 0x5CB8000001872A19 I2f
    temp_696 = float(temp_669);
    // 0x001890: 0x59A00E8001C70F0F Ffma
    temp_697 = fma(temp_674, temp_684, temp_680);
    // 0x001898: 0x5CB8000000E72A18 I2f
    temp_698 = float(temp_688);
    // 0x0018A8: 0x4C9807A40BB7001C Mov
    // 0x0018B0: 0x4C5830241377131A Fadd
    temp_699 = 0.0 - vp_c9_data[77].w;
    temp_700 = temp_457 + temp_699;
    // 0x0018B8: 0x4C9807A40C270016 Mov
    // 0x0018C8: 0x5C68100001470313 Fmul
    temp_701 = temp_73 * temp_189;
    // 0x0018D0: 0x5080000000471616 Mufu
    temp_702 = 1.0 / vp_c9_data[48].z;
    // 0x0018D8: 0x4C5810240B971C1C Fadd
    temp_703 = vp_c9_data[46].w + vp_c9_data[46].y;
    // 0x0018E8: 0x4C6810240C171714 Fmul
    temp_704 = temp_693 * vp_c9_data[48].y;
    // 0x0018F0: 0x49A008A40B170017 Ffma
    temp_705 = fma(temp_2, vp_c9_data[44].y, temp_531);
    // 0x0018F8: 0x51A00D2413471010 Ffma
    temp_706 = fma(temp_644, temp_700, vp_c9_data[77].x);
    // 0x001908: 0x51A00D2413570D0D Ffma
    temp_707 = fma(temp_645, temp_700, vp_c9_data[77].y);
    // 0x001910: 0x51A00D2413670C0C Ffma
    temp_708 = fma(temp_673, temp_700, vp_c9_data[77].z);
    // 0x001918: 0x4C9807A40BA7001B Mov
    // 0x001928: 0x49A00E240BB7071A Ffma
    temp_709 = fma(in_attr3.y, vp_c9_data[46].w, temp_703);
    // 0x001930: 0x59A10B8001971419 Ffma
    temp_710 = 0.0 - temp_696;
    temp_711 = fma(temp_704, temp_710, temp_705);
    // 0x001938: 0x5C98078001370017 Mov
    // 0x001948: 0x4C6810240C071616 Fmul
    temp_712 = temp_702 * vp_c9_data[48].x;
    // 0x001950: 0x49A304A40B070009 Ffma
    temp_713 = 0.0 - vp_c9_data[44].x;
    temp_714 = 0.0 - temp_589;
    temp_715 = fma(temp_2, temp_713, temp_714);
    // 0x001958: 0x4C5810240B871B1B Fadd
    temp_716 = vp_c9_data[46].z + vp_c9_data[46].x;
    // 0x001968: 0x49A00D240B77001A Ffma
    temp_717 = fma(temp_2, vp_c9_data[45].w, temp_709);
    // 0x001970: 0x5C5930000FFD1717 Fadd
    temp_718 = temp_701;
    if (!temp_612)
    {
        temp_719 = 0.0 - temp_701;
        temp_720 = temp_719 + -0.0;
        temp_718 = temp_720;
    }
    // 0x001978: 0x5C98078000270011 Mov
    // 0x001988: 0x59A0048001871618 Ffma
    temp_721 = fma(temp_712, temp_698, temp_715);
    // 0x001990: 0x49A00DA40BA70A1B Ffma
    temp_722 = fma(in_attr3.x, vp_c9_data[46].z, temp_716);
    // 0x001998: 0x5C5930000FFC0211 Fadd
    temp_723 = temp_79;
    if (!temp_546)
    {
        temp_724 = 0.0 - temp_79;
        temp_725 = temp_724 + -0.0;
        temp_723 = temp_725;
    }
    // 0x0019A8: 0x59A10B8001A71709 Ffma
    temp_726 = 0.0 - temp_717;
    temp_727 = fma(temp_718, temp_726, temp_718);
    // 0x0019B0: 0x3958103F00071717 Fadd
    temp_728 = temp_718 + -0.5;
    // 0x0019B8: 0x59A1058000870B0E Ffma
    temp_729 = 0.0 - temp_634;
    temp_730 = fma(temp_622, temp_729, temp_622);
    // 0x0019C8: 0x49A00DA40B67001C Ffma
    temp_731 = fma(temp_2, vp_c9_data[45].z, temp_722);
    // 0x0019D0: 0x3858103F0007111B Fadd
    temp_732 = temp_723 + 0.5;
    // 0x0019D8: 0x59A30C8001771417 Ffma
    temp_733 = 0.0 - temp_728;
    temp_734 = 0.0 - temp_711;
    temp_735 = fma(temp_704, temp_733, temp_734);
    // 0x0019E8: 0x5C9807800FF70014 Mov
    // 0x0019F0: 0x010000000013F014 Mov32i
    temp_736 = 0;
    if (temp_530)
    {
        temp_736 = 1;
    }
    // 0x0019F8: 0x59A0078000E7100F Ffma
    temp_737 = fma(temp_706, temp_730, temp_697);
    // 0x001A08: 0x59A0090000E70D0D Ffma
    temp_738 = fma(temp_707, temp_730, temp_694);
    // 0x001A10: 0x59A00A8000E70C0E Ffma
    temp_739 = fma(temp_708, temp_730, temp_695);
    // 0x001A18: 0x59A1088001C7110B Ffma
    temp_740 = 0.0 - temp_731;
    temp_741 = fma(temp_723, temp_740, temp_723);
    // 0x001A28: 0x59A00C0001B71616 Ffma
    temp_742 = fma(temp_712, temp_732, temp_721);
    // 0x001A30: 0x366503800017141F Isetp
    temp_743 = temp_736 == 1;
    // 0x001A38: 0x49A007A41387080F Ffma
    temp_744 = fma(temp_634, vp_c9_data[78].x, temp_737);
    // 0x001A48: 0x49A006A41397080D Ffma
    temp_745 = fma(temp_634, vp_c9_data[78].y, temp_738);
    // 0x001A50: 0x49A0072413A7080C Ffma
    temp_746 = fma(temp_634, vp_c9_data[78].z, temp_739);
    // 0x001A58: 0x5C58300000B71608 Fadd
    temp_747 = 0.0 - temp_741;
    temp_748 = temp_742 + temp_747;
    // 0x001A68: 0x5C9807800137000B Mov
    // 0x001A70: 0x5C98078000770013 Mov
    // 0x001A78: 0x4C9807A415070012 Mov
    // 0x001A88: 0x4C68102800470F0F Fmul
    temp_749 = temp_744 * vp_c10_data[1].x;
    // 0x001A90: 0x4C68102800570D07 Fmul
    temp_750 = temp_745 * vp_c10_data[1].y;
    // 0x001A98: 0x4C68102800670C0C Fmul
    temp_751 = temp_746 * vp_c10_data[1].z;
    // 0x001AA8: 0x5C98078000A70015 Mov
    // 0x001AB0: 0x5C9807800137000E Mov
    // 0x001AB8: 0x5C9807800063000E Mov
    temp_752 = in_attr3.y;
    temp_753 = temp_701;
    if (temp_743)
    {
        temp_752 = in_attr3.z;
    }
    // 0x001AC8: 0x4C68102800771212 Fmul
    temp_754 = vp_c9_data[84].x * vp_c10_data[1].w;
    // 0x001AD0: 0x4C6810240EC70F0F Fmul
    temp_755 = temp_749 * vp_c9_data[59].x;
    // 0x001AD8: 0xEFF07F8009C7FF12 Ast
    out_attr1.w = temp_754;
    // 0x001AE8: 0x4C6810240EC70707 Fmul
    temp_756 = temp_750 * vp_c9_data[59].x;
    // 0x001AF0: 0xEFF07F800907FF0F Ast
    out_attr1.x = temp_755;
    // 0x001AF8: 0x4C6810240EC70C0C Fmul
    temp_757 = temp_751 * vp_c9_data[59].x;
    // 0x001B08: 0xEFF07F800947FF07 Ast
    out_attr1.y = temp_756;
    // 0x001B10: 0x5C9807800027000A Mov
    // 0x001B18: 0xEFF07F800987FF0C Ast
    out_attr1.z = temp_757;
    // 0x001B28: 0x5C98078001570010 Mov
    // 0x001B30: 0x5C98078001570011 Mov
    // 0x001B38: 0x5C9807800137000D Mov
    // 0x001B48: 0x5C5930000FFA020A Fadd
    temp_758 = temp_79;
    temp_759 = in_attr3.x;
    temp_760 = in_attr3.x;
    temp_761 = in_attr3.y;
    temp_762 = temp_752;
    temp_763 = temp_752;
    if (!temp_574)
    {
        temp_764 = 0.0 - temp_79;
        temp_765 = temp_764 + -0.0;
        temp_758 = temp_765;
    }
    // 0x001B50: 0x5C58100000971709 Fadd
    temp_766 = temp_735 + temp_727;
    // 0x001B58: 0x5C5930000FF80B0B Fadd
    if (!temp_570)
    {
        temp_767 = 0.0 - temp_701;
        temp_768 = temp_767 + -0.0;
        temp_753 = temp_768;
    }
    // 0x001B68: 0x5C5930000FF90202 Fadd
    if (!temp_627)
    {
        temp_769 = 0.0 - temp_79;
        temp_770 = temp_769 + -0.0;
        temp_82 = temp_770;
    }
    // 0x001B70: 0x5C5930000FFE0303 Fadd
    if (!temp_692)
    {
        temp_771 = 0.0 - temp_73;
        temp_772 = temp_771 + -0.0;
        temp_83 = temp_772;
    }
    // 0x001B78: 0x5C98078001330010 Mov
    if (temp_743)
    {
        temp_759 = in_attr3.y;
    }
    // 0x001B88: 0x5C98078001330011 Mov
    temp_773 = temp_759;
    temp_774 = temp_759;
    if (temp_743)
    {
        temp_760 = in_attr3.y;
    }
    // 0x001B90: 0x5C98078000E3000D Mov
    temp_775 = temp_760;
    temp_776 = temp_760;
    if (temp_743)
    {
        temp_761 = temp_752;
    }
    // 0x001B98: 0xE24000000383000F Bra
    temp_777 = temp_761;
    if (!temp_743)
    {
        // 0x001BA8: 0x3665038000271407 Isetp
        temp_778 = temp_736 == 2;
        // 0x001BB0: 0x5C9807800130000E Mov
        if (temp_778)
        {
            temp_762 = in_attr3.y;
        }
        // 0x001BB8: 0x5C98078000600010 Mov
        temp_763 = temp_762;
        if (temp_778)
        {
            temp_773 = in_attr3.z;
        }
        // 0x001BC8: 0x5C98078001500011 Mov
        temp_774 = temp_773;
        if (temp_778)
        {
            temp_775 = in_attr3.x;
        }
        // 0x001BD0: 0x5C9807800150000D Mov
        temp_776 = temp_775;
        if (temp_778)
        {
            temp_777 = in_attr3.x;
        }
    }
    // 0x001BD8: 0x4CB011A40D671A07 F2i
    temp_779 = trunc(vp_c9_data[53].z);
    temp_780 = int(temp_779);
    // 0x001BE8: 0x4C9807A41A370013 Mov
    // 0x001BF0: 0x5080000000470505 Mufu
    temp_781 = 1.0 / temp_8;
    // 0x001BF8: 0x4C9807A41A470016 Mov
    // 0x001C08: 0xEFF07F800A07FF08 Ast
    out_attr2.x = temp_748;
    // 0x001C10: 0x4C5910241A771313 Fadd
    temp_782 = 0.0 - vp_c9_data[104].w;
    temp_783 = temp_782 + vp_c9_data[105].w;
    // 0x001C18: 0xEFF07F800A47FF09 Ast
    out_attr2.y = temp_766;
    // 0x001C28: 0x4C9807A40C970017 Mov
    // 0x001C30: 0x5080000000471313 Mufu
    temp_784 = 1.0 / temp_783;
    // 0x001C38: 0x4C5830241A071612 Fadd
    temp_785 = 0.0 - vp_c9_data[104].x;
    temp_786 = vp_c9_data[105].x + temp_785;
    // 0x001C48: 0x5CE2000000773A06 I2i
    temp_787 = abs(temp_780);
    // 0x001C50: 0x5C6810000057000C Fmul
    temp_788 = temp_2 * temp_781;
    // 0x001C58: 0x5CB8000000770A19 I2f
    temp_789 = float(uint(temp_780));
    // 0x001C68: 0x4C6810240C970D0F Fmul
    temp_790 = temp_777 * vp_c9_data[50].y;
    // 0x001C70: 0x5CE0800000773AFF I2i
    temp_791 = temp_780 == 0;
    temp_792 = temp_780 < 0;
    // 0x001C78: 0x4C5810240C77170D Fadd
    temp_793 = vp_c9_data[50].y + vp_c9_data[49].w;
    // 0x001C88: 0x5CB8000000670A15 I2f
    temp_794 = float(uint(temp_787));
    // 0x001C90: 0x4C9807A40CF70014 Mov
    // 0x001C98: 0x5C68100001371217 Fmul
    temp_795 = temp_786 * temp_784;
    // 0x001CA8: 0x5080000000471515 Mufu
    temp_796 = 1.0 / temp_794;
    // 0x001CB0: 0x4BB683A41A370C07 Fsetp
    temp_797 = temp_788 >= vp_c9_data[104].w;
    // 0x001CB8: 0x5080000000471912 Mufu
    temp_798 = 1.0 / temp_789;
    // 0x001CC8: 0x4BB683A41A770C0F Fsetp
    temp_799 = temp_788 >= vp_c9_data[105].w;
    // 0x001CD0: 0x4C5810240CD71405 Fadd
    temp_800 = vp_c9_data[51].w + vp_c9_data[51].y;
    // 0x001CD8: 0x4C9807A41A770018 Mov
    // 0x001CE8: 0x32A106C000070F0D Ffma
    temp_801 = fma(temp_790, -2.0, temp_793);
    // 0x001CF0: 0x4C9807A41AB7001A Mov
    // 0x001CF8: 0x1C0FFFFFFFE71513 Iadd32i
    temp_802 = floatBitsToInt(temp_796) + -2;
    // 0x001D08: 0x49A002A40CF70E05 Ffma
    temp_803 = fma(temp_763, vp_c9_data[51].w, temp_800);
    // 0x001D10: 0x4C5910241AB71818 Fadd
    temp_804 = 0.0 - vp_c9_data[105].w;
    temp_805 = temp_804 + vp_c9_data[106].w;
    // 0x001D18: 0x4C9807A41A07000E Mov
    // 0x001D28: 0x5080000000471818 Mufu
    temp_806 = 1.0 / temp_805;
    // 0x001D30: 0x4CA004040007FF1B Sel
    temp_807 = !temp_797;
    temp_808 = temp_807 ? 0.0 : vp_c1_data[0].x;
    // 0x001D38: 0x5C6811800137040F Fmul
    temp_809 = temp_465 * intBitsToFloat(temp_802);
    // 0x001D48: 0x4C5830241A370C14 Fadd
    temp_810 = 0.0 - vp_c9_data[104].w;
    temp_811 = temp_788 + temp_810;
    // 0x001D50: 0x5CB0118000F70A0F F2i
    temp_812 = trunc(temp_809);
    temp_813 = max(temp_812, 0.0);
    temp_814 = uint(temp_813);
    // 0x001D58: 0x4CA004840007FF15 Sel
    temp_815 = !temp_799;
    temp_816 = temp_815 ? 0.0 : vp_c1_data[0].x;
    // 0x001D68: 0x1C0FFFFFFFE71212 Iadd32i
    temp_817 = floatBitsToInt(temp_798) + -2;
    // 0x001D70: 0x4C5910241A87161D Fadd
    temp_818 = 0.0 - vp_c9_data[105].x;
    temp_819 = temp_818 + vp_c9_data[106].x;
    // 0x001D78: 0x4C5910241AF71A16 Fadd
    temp_820 = 0.0 - vp_c9_data[106].w;
    temp_821 = temp_820 + vp_c9_data[107].w;
    // 0x001D88: 0x51A107241A071B19 Ffma
    temp_822 = 0.0 - vp_c9_data[104].x;
    temp_823 = fma(temp_808, temp_822, vp_c9_data[104].x);
    // 0x001D90: 0x5080000000471616 Mufu
    temp_824 = 1.0 / temp_821;
    // 0x001D98: 0x51A00A241A071717 Ffma
    temp_825 = fma(temp_795, temp_811, vp_c9_data[104].x);
    // 0x001DA8: 0x59A10D8001571B1A Ffma
    temp_826 = 0.0 - temp_816;
    temp_827 = fma(temp_808, temp_826, temp_808);
    // 0x001DB0: 0x5C6811800127040E Fmul
    temp_828 = temp_465 * intBitsToFloat(temp_817);
    // 0x001DB8: 0x4C9807A41AC70014 Mov
    // 0x001DC8: 0x5CB0118000E70A0E F2i
    temp_829 = trunc(temp_828);
    temp_830 = max(temp_829, 0.0);
    temp_831 = uint(temp_830);
    // 0x001DD0: 0x5C68100001871D18 Fmul
    temp_832 = temp_819 * temp_806;
    // 0x001DD8: 0x59A00C8001A71717 Ffma
    temp_833 = fma(temp_825, temp_827, temp_823);
    // 0x001DE8: 0x5B007F8000F7061B Xmad
    temp_834 = temp_787 & 0xFFFF;
    temp_835 = int(temp_814) & 0xFFFF;
    temp_836 = temp_834 * temp_835;
    // 0x001DF0: 0x5B007FA800F7061D Xmad
    temp_837 = temp_787 & 0xFFFF;
    temp_838 = temp_814 >> 16;
    temp_839 = temp_837 * int(temp_838);
    temp_840 = temp_839 & 0xFFFF;
    temp_841 = int(temp_814) << 16;
    temp_842 = temp_840 | temp_841;
    // 0x001DF8: 0x4C5830241A871419 Fadd
    temp_843 = 0.0 - vp_c9_data[106].x;
    temp_844 = vp_c9_data[107].x + temp_843;
    // 0x001E08: 0x4BB683A41AB70C07 Fsetp
    temp_845 = temp_788 >= vp_c9_data[106].w;
    // 0x001E10: 0x4C9807A41AF7001C Mov
    // 0x001E18: 0x5C68100001671916 Fmul
    temp_846 = temp_844 * temp_824;
    // 0x001E28: 0x5B300D9801D70619 Xmad
    temp_847 = uint(temp_787) >> 16;
    temp_848 = uint(temp_842) >> 16;
    temp_849 = int(temp_847) * int(temp_848);
    temp_850 = temp_849 << 16;
    temp_851 = temp_842 << 16;
    temp_852 = temp_836 + temp_851;
    temp_853 = temp_850 + temp_852;
    // 0x001E30: 0x5B007F8000E7071D Xmad
    temp_854 = temp_780 & 0xFFFF;
    temp_855 = int(temp_831) & 0xFFFF;
    temp_856 = temp_854 * temp_855;
    // 0x001E38: 0x5B007FA800E7071E Xmad
    temp_857 = temp_780 & 0xFFFF;
    temp_858 = temp_831 >> 16;
    temp_859 = temp_857 * int(temp_858);
    temp_860 = temp_859 & 0xFFFF;
    temp_861 = int(temp_831) << 16;
    temp_862 = temp_860 | temp_861;
    // 0x001E48: 0x4C5910241B371C1C Fadd
    temp_863 = 0.0 - vp_c9_data[107].w;
    temp_864 = temp_863 + vp_c9_data[108].w;
    // 0x001E50: 0x4C5830241A770C1A Fadd
    temp_865 = 0.0 - vp_c9_data[105].w;
    temp_866 = temp_788 + temp_865;
    // 0x001E58: 0x5080000000471C04 Mufu
    temp_867 = 1.0 / temp_864;
    // 0x001E68: 0x5B300E9801E7071D Xmad
    temp_868 = uint(temp_780) >> 16;
    temp_869 = uint(temp_862) >> 16;
    temp_870 = int(temp_868) * int(temp_869);
    temp_871 = temp_870 << 16;
    temp_872 = temp_862 << 16;
    temp_873 = temp_856 + temp_872;
    temp_874 = temp_871 + temp_873;
    // 0x001E70: 0x4C5910241B07141B Fadd
    temp_875 = 0.0 - vp_c9_data[107].x;
    temp_876 = temp_875 + vp_c9_data[108].x;
    // 0x001E78: 0x4CA004040007FF14 Sel
    temp_877 = !temp_845;
    temp_878 = temp_877 ? 0.0 : vp_c1_data[0].x;
    // 0x001E88: 0x51A00D241A47181A Ffma
    temp_879 = fma(temp_832, temp_866, vp_c9_data[105].x);
    // 0x001E90: 0x5C1200000FF71918 Iadd
    temp_880 = 0 - temp_853;
    // 0x001E98: 0x5C1200000FF71D1D Iadd
    temp_881 = 0 - temp_874;
    // 0x001EA8: 0x5CB8018001870A18 I2f
    temp_882 = float(uint(temp_880));
    // 0x001EB0: 0x4BB683A41AF70C07 Fsetp
    temp_883 = temp_788 >= vp_c9_data[107].w;
    // 0x001EB8: 0x5CB8018001D70A19 I2f
    temp_884 = float(uint(temp_881));
    // 0x001EC8: 0x59A10A800147151C Ffma
    temp_885 = 0.0 - temp_878;
    temp_886 = fma(temp_816, temp_885, temp_816);
    // 0x001ED0: 0x4C5830241AB70C15 Fadd
    temp_887 = 0.0 - vp_c9_data[106].w;
    temp_888 = temp_788 + temp_887;
    // 0x001ED8: 0x5C68100000471B04 Fmul
    temp_889 = temp_876 * temp_867;
    // 0x001EE8: 0x4C9807A40CC7001B Mov
    // 0x001EF0: 0x51A00AA41A871615 Ffma
    temp_890 = fma(temp_846, temp_888, vp_c9_data[106].x);
    // 0x001EF8: 0x4C9807A41B770016 Mov
    // 0x001F08: 0x4C5810240CE71B1B Fadd
    temp_891 = vp_c9_data[51].x + vp_c9_data[51].z;
    // 0x001F10: 0x5C6811800187131E Fmul
    temp_892 = intBitsToFloat(temp_802) * temp_882;
    // 0x001F18: 0x5C68118001971219 Fmul
    temp_893 = intBitsToFloat(temp_817) * temp_884;
    // 0x001F28: 0x5CB0118001E70A18 F2i
    temp_894 = trunc(temp_892);
    temp_895 = max(temp_894, 0.0);
    temp_896 = uint(temp_895);
    // 0x001F30: 0x59A00B8001A71C17 Ffma
    temp_897 = fma(temp_886, temp_879, temp_833);
    // 0x001F38: 0x5CB0118001970A19 F2i
    temp_898 = trunc(temp_893);
    temp_899 = max(temp_898, 0.0);
    temp_900 = uint(temp_899);
    // 0x001F48: 0x3858103F00070212 Fadd
    temp_901 = temp_82 + 0.5;
    // 0x001F50: 0x4C9807A40EA7001A Mov
    // 0x001F58: 0x4C5830241B371613 Fadd
    temp_902 = 0.0 - vp_c9_data[108].w;
    temp_903 = vp_c9_data[109].w + temp_902;
    // 0x001F68: 0x5080000000471A1A Mufu
    temp_904 = 1.0 / vp_c9_data[58].z;
    // 0x001F70: 0x4CA004040007FF02 Sel
    temp_905 = !temp_883;
    temp_906 = temp_905 ? 0.0 : vp_c1_data[0].x;
    // 0x001F78: 0x5080000000471313 Mufu
    temp_907 = 1.0 / temp_903;
    // 0x001F88: 0x49A00DA40CE71111 Ffma
    temp_908 = fma(temp_776, vp_c9_data[51].z, temp_891);
    // 0x001F90: 0x4C9807A40C87001C Mov
    // 0x001F98: 0x4C9807A41B07001B Mov
    // 0x001FA8: 0x4C6810240C871010 Fmul
    temp_909 = temp_774 * vp_c9_data[50].x;
    // 0x001FB0: 0x59A10A0000271414 Ffma
    temp_910 = 0.0 - temp_906;
    temp_911 = fma(temp_878, temp_910, temp_878);
    // 0x001FB8: 0x4C6810240E87121F Fmul
    temp_912 = temp_901 * vp_c9_data[58].x;
    // 0x001FC8: 0x4C5810240C671C1D Fadd
    temp_913 = vp_c9_data[50].x + vp_c9_data[49].z;
    // 0x001FD0: 0x4C5910241B471B1C Fadd
    temp_914 = 0.0 - vp_c9_data[108].x;
    temp_915 = temp_914 + vp_c9_data[109].x;
    // 0x001FD8: 0x5C10000001970E19 Iadd
    temp_916 = int(temp_831) + int(temp_900);
    // 0x001FE8: 0x5C10000001870F0F Iadd
    temp_917 = int(temp_814) + int(temp_896);
    // 0x001FF0: 0x59A00B8001571415 Ffma
    temp_918 = fma(temp_911, temp_890, temp_897);
    // 0x001FF8: 0x4C5910241BB71617 Fadd
    temp_919 = 0.0 - vp_c9_data[109].w;
    temp_920 = temp_919 + vp_c9_data[110].w;
    // 0x002008: 0x32A10EC000071012 Ffma
    temp_921 = fma(temp_909, -2.0, temp_913);
    // 0x002010: 0x5080000000471717 Mufu
    temp_922 = 1.0 / temp_920;
    // 0x002018: 0x5C68100001A71F10 Fmul
    temp_923 = temp_912 * temp_904;
    // 0x002028: 0x5C68100001371C13 Fmul
    temp_924 = temp_915 * temp_907;
    // 0x002030: 0xEFF07F800B07FF10 Ast
    out_attr3.x = temp_923;
    // 0x002038: 0x4C9807A41B870014 Mov
    // 0x002048: 0x5B007F800197071A Xmad
    temp_925 = temp_780 & 0xFFFF;
    temp_926 = temp_916 & 0xFFFF;
    temp_927 = temp_925 * temp_926;
    // 0x002050: 0x5B007FA80197071C Xmad
    temp_928 = temp_780 & 0xFFFF;
    temp_929 = uint(temp_916) >> 16;
    temp_930 = temp_928 * int(temp_929);
    temp_931 = temp_930 & 0xFFFF;
    temp_932 = temp_916 << 16;
    temp_933 = temp_931 | temp_932;
    // 0x002058: 0x5B007F8000F70618 Xmad
    temp_934 = temp_787 & 0xFFFF;
    temp_935 = temp_917 & 0xFFFF;
    temp_936 = temp_934 * temp_935;
    // 0x002068: 0x5B007FA800F7061D Xmad
    temp_937 = temp_787 & 0xFFFF;
    temp_938 = uint(temp_917) >> 16;
    temp_939 = temp_937 * int(temp_938);
    temp_940 = temp_939 & 0xFFFF;
    temp_941 = temp_917 << 16;
    temp_942 = temp_940 | temp_941;
    // 0x002070: 0x3958103F00070316 Fadd
    temp_943 = temp_83 + -0.5;
    // 0x002078: 0x4C9807A40EB70003 Mov
    // 0x002088: 0x4C5830241B47140E Fadd
    temp_944 = 0.0 - vp_c9_data[109].x;
    temp_945 = vp_c9_data[110].x + temp_944;
    // 0x002090: 0x5080000000470303 Mufu
    temp_946 = 1.0 / vp_c9_data[58].w;
    // 0x002098: 0x5B300D1801C7071B Xmad
    temp_947 = uint(temp_780) >> 16;
    temp_948 = uint(temp_933) >> 16;
    temp_949 = int(temp_947) * int(temp_948);
    temp_950 = temp_949 << 16;
    temp_951 = temp_933 << 16;
    temp_952 = temp_927 + temp_951;
    temp_953 = temp_950 + temp_952;
    // 0x0020A8: 0x5B300C1801D7061A Xmad
    temp_954 = uint(temp_787) >> 16;
    temp_955 = uint(temp_942) >> 16;
    temp_956 = int(temp_954) * int(temp_955);
    temp_957 = temp_956 << 16;
    temp_958 = temp_942 << 16;
    temp_959 = temp_936 + temp_958;
    temp_960 = temp_957 + temp_959;
    // 0x0020B0: 0x4BB683A41B370C07 Fsetp
    temp_961 = temp_788 >= vp_c9_data[108].w;
    // 0x0020B8: 0x4C6910240E971618 Fmul
    temp_962 = 0.0 - vp_c9_data[58].y;
    temp_963 = temp_943 * temp_962;
    // 0x0020C8: 0x5C68100001770E0E Fmul
    temp_964 = temp_945 * temp_922;
    // 0x0020D0: 0x5C1200000FF71A17 Iadd
    temp_965 = 0 - temp_960;
    // 0x0020D8: 0x5C1200000FF71B1C Iadd
    temp_966 = 0 - temp_953;
    // 0x0020E8: 0x4C5830241AF70C16 Fadd
    temp_967 = 0.0 - vp_c9_data[107].w;
    temp_968 = temp_788 + temp_967;
    // 0x0020F0: 0x4C9807A41BF7001B Mov
    // 0x0020F8: 0x50A0038000070D17 Csetp
    temp_969 = !temp_791;
    temp_970 = temp_792 || temp_969;
    // 0x002108: 0x5C68100000371803 Fmul
    temp_971 = temp_963 * temp_946;
    // 0x002110: 0x5CE0800000770AFF I2i
    temp_972 = temp_780 == 0;
    temp_973 = temp_780 < 0;
    // 0x002118: 0x5B5C03800067171A Iset
    temp_974 = uint(temp_965) >= uint(temp_787);
    // 0x002128: 0xEFF07F800B47FF03 Ast
    out_attr3.y = temp_971;
    // 0x002130: 0x3828000001F70718 Shr
    temp_975 = uint(temp_780) >> 31;
    // 0x002138: 0x5B5C038000771C1C Iset
    temp_976 = uint(temp_966) >= uint(temp_780);
    // 0x002148: 0x51A00B241AC70416 Ffma
    temp_977 = fma(temp_889, temp_968, vp_c9_data[107].x);
    // 0x002150: 0x4C5830241BB71B06 Fadd
    temp_978 = 0.0 - vp_c9_data[110].w;
    temp_979 = vp_c9_data[111].w + temp_978;
    // 0x002158: 0x4CA004040007FF04 Sel
    temp_980 = !temp_961;
    temp_981 = temp_980 ? 0.0 : vp_c1_data[0].x;
    // 0x002168: 0x5080000000470606 Mufu
    temp_982 = 1.0 / temp_979;
    // 0x002170: 0x5C11000001A70F1A Iadd
    temp_983 = 0 - (temp_974 ? -1 : 0);
    temp_984 = temp_917 + temp_983;
    // 0x002178: 0x5C1200000FF7180F Iadd
    temp_985 = 0 - int(temp_975);
    // 0x002188: 0x5C11000001C71919 Iadd
    temp_986 = 0 - (temp_976 ? -1 : 0);
    temp_987 = temp_916 + temp_986;
    // 0x002190: 0x4BB683A41B770C07 Fsetp
    temp_988 = temp_788 >= vp_c9_data[109].w;
    // 0x002198: 0x4C5910241BC71417 Fadd
    temp_989 = 0.0 - vp_c9_data[110].x;
    temp_990 = temp_989 + vp_c9_data[111].x;
    // 0x0021A8: 0x59A1010000470214 Ffma
    temp_991 = 0.0 - temp_981;
    temp_992 = fma(temp_906, temp_991, temp_906);
    // 0x0021B0: 0x5C47040000F71A1A Lop
    temp_993 = temp_984 ^ temp_985;
    // 0x0021B8: 0x5B007F800197071C Xmad
    temp_994 = temp_780 & 0xFFFF;
    temp_995 = temp_987 & 0xFFFF;
    temp_996 = temp_994 * temp_995;
    // 0x0021C8: 0x5B007FA801970719 Xmad
    temp_997 = temp_780 & 0xFFFF;
    temp_998 = uint(temp_987) >> 16;
    temp_999 = temp_997 * int(temp_998);
    temp_1000 = temp_999 & 0xFFFF;
    temp_1001 = temp_987 << 16;
    temp_1002 = temp_1000 | temp_1001;
    // 0x0021D0: 0x59A00A8001671416 Ffma
    temp_1003 = fma(temp_992, temp_977, temp_918);
    // 0x0021D8: 0x4C5830241B370C18 Fadd
    temp_1004 = 0.0 - vp_c9_data[108].w;
    temp_1005 = temp_788 + temp_1004;
    // 0x0021E8: 0x5C12000001A70F14 Iadd
    temp_1006 = 0 - temp_985;
    temp_1007 = temp_1006 + temp_993;
    // 0x0021F0: 0x5C68100000671702 Fmul
    temp_1008 = temp_990 * temp_982;
    // 0x0021F8: 0x50A0038000070D1F Csetp
    temp_1009 = !temp_972;
    temp_1010 = temp_973 || temp_1009;
    // 0x002208: 0x4C5830241B770C0F Fadd
    temp_1011 = 0.0 - vp_c9_data[109].w;
    temp_1012 = temp_788 + temp_1011;
    // 0x002210: 0x5B300E1801970717 Xmad
    temp_1013 = uint(temp_780) >> 16;
    temp_1014 = uint(temp_1002) >> 16;
    temp_1015 = int(temp_1013) * int(temp_1014);
    temp_1016 = temp_1015 << 16;
    temp_1017 = temp_1002 << 16;
    temp_1018 = temp_996 + temp_1017;
    temp_1019 = temp_1016 + temp_1018;
    // 0x002218: 0x4CA004040007FF15 Sel
    temp_1020 = !temp_988;
    temp_1021 = temp_1020 ? 0.0 : vp_c1_data[0].x;
    // 0x002228: 0x4BB683A41BB70C0F Fsetp
    temp_1022 = temp_788 >= vp_c9_data[110].w;
    // 0x002230: 0x4BB683A41BF70C07 Fsetp
    temp_1023 = temp_788 >= vp_c9_data[111].w;
    // 0x002238: 0x51A009A41B071813 Ffma
    temp_1024 = fma(temp_1005, temp_924, vp_c9_data[108].x);
    // 0x002248: 0x51A007A41B470E0F Ffma
    temp_1025 = fma(temp_964, temp_1012, vp_c9_data[109].x);
    // 0x002250: 0x4C9807A40D670007 Mov
    // 0x002258: 0x59A1020001570418 Ffma
    temp_1026 = 0.0 - temp_1021;
    temp_1027 = fma(temp_981, temp_1026, temp_981);
    // 0x002268: 0x5080000000470707 Mufu
    temp_1028 = 1.0 / vp_c9_data[53].z;
    // 0x002270: 0x5C1200000FF7170E Iadd
    temp_1029 = 0 - temp_1019;
    // 0x002278: 0x4C9807A40D770006 Mov
    // 0x002288: 0x4C5830241BB70C0C Fadd
    temp_1030 = 0.0 - vp_c9_data[110].w;
    temp_1031 = temp_788 + temp_1030;
    // 0x002290: 0x5080000000470606 Mufu
    temp_1032 = 1.0 / vp_c9_data[53].w;
    // 0x002298: 0x59A00B0001371816 Ffma
    temp_1033 = fma(temp_1027, temp_1024, temp_1003);
    // 0x0022A8: 0x39A001FFFFF70E0E Sel
    temp_1034 = temp_1010 ? temp_1029 : -1;
    // 0x0022B0: 0x39A0017FFFF71413 Sel
    temp_1035 = temp_970 ? temp_1007 : -1;
    // 0x0022B8: 0x5CB8000000E72A0E I2f
    temp_1036 = float(temp_1034);
    // 0x0022C8: 0x51A001241B870C0C Ffma
    temp_1037 = fma(temp_1031, temp_1008, vp_c9_data[110].x);
    // 0x0022D0: 0x5CB8000001372A13 I2f
    temp_1038 = float(temp_1035);
    // 0x0022D8: 0x4CA004840007FF04 Sel
    temp_1039 = !temp_1022;
    temp_1040 = temp_1039 ? 0.0 : vp_c1_data[0].x;
    // 0x0022E8: 0x4CA004040007FF02 Sel
    temp_1041 = !temp_1023;
    temp_1042 = temp_1041 ? 0.0 : vp_c1_data[0].x;
    // 0x0022F0: 0x4C68102800C70114 Fmul
    temp_1043 = temp_80 * vp_c10_data[3].x;
    // 0x0022F8: 0x4C6810240D470707 Fmul
    temp_1044 = temp_1028 * vp_c9_data[53].x;
    // 0x002308: 0xEFF07F800D07FF14 Ast
    out_attr5.x = temp_1043;
    // 0x002310: 0x59A10A8000471515 Ffma
    temp_1045 = 0.0 - temp_1040;
    temp_1046 = fma(temp_1021, temp_1045, temp_1021);
    // 0x002318: 0x59A1020000270401 Ffma
    temp_1047 = 0.0 - temp_1042;
    temp_1048 = fma(temp_1040, temp_1047, temp_1040);
    // 0x002328: 0x49A309240C470004 Ffma
    temp_1049 = 0.0 - vp_c9_data[49].x;
    temp_1050 = 0.0 - temp_921;
    temp_1051 = fma(temp_2, temp_1049, temp_1050);
    // 0x002330: 0x4C6810240D570606 Fmul
    temp_1052 = temp_1032 * vp_c9_data[53].y;
    // 0x002338: 0x49A006A40C57000D Ffma
    temp_1053 = fma(temp_2, vp_c9_data[49].y, temp_801);
    // 0x002348: 0x49A002A40CB70005 Ffma
    temp_1054 = fma(temp_2, vp_c9_data[50].w, temp_803);
    // 0x002350: 0x49A008A40CA70011 Ffma
    temp_1055 = fma(temp_2, vp_c9_data[50].z, temp_908);
    // 0x002358: 0x59A00B0000F7150F Ffma
    temp_1056 = fma(temp_1046, temp_1025, temp_1033);
    // 0x002368: 0x59A0020000E70704 Ffma
    temp_1057 = fma(temp_1044, temp_1036, temp_1051);
    // 0x002370: 0x3958103F00070B00 Fadd
    temp_1058 = temp_753 + -0.5;
    // 0x002378: 0x59A106800137060D Ffma
    temp_1059 = 0.0 - temp_1038;
    temp_1060 = fma(temp_1052, temp_1059, temp_1053);
    // 0x002388: 0x3858103F00070A0E Fadd
    temp_1061 = temp_758 + 0.5;
    // 0x002390: 0x59A1058000B70505 Ffma
    temp_1062 = 0.0 - temp_753;
    temp_1063 = fma(temp_1054, temp_1062, temp_753);
    // 0x002398: 0x59A0078000C70101 Ffma
    temp_1064 = fma(temp_1048, temp_1037, temp_1056);
    // 0x0023A8: 0x59A1050000A7110A Ffma
    temp_1065 = 0.0 - temp_758;
    temp_1066 = fma(temp_1055, temp_1065, temp_758);
    // 0x0023B0: 0x59A3068000070600 Ffma
    temp_1067 = 0.0 - temp_1058;
    temp_1068 = 0.0 - temp_1060;
    temp_1069 = fma(temp_1052, temp_1067, temp_1068);
    // 0x0023B8: 0x59A0020000E70704 Ffma
    temp_1070 = fma(temp_1044, temp_1061, temp_1057);
    // 0x0023C8: 0x49A000A41BC70201 Ffma
    temp_1071 = fma(temp_1042, vp_c9_data[111].x, temp_1064);
    // 0x0023D0: 0x5C58100000570000 Fadd
    temp_1072 = temp_1069 + temp_1063;
    // 0x0023D8: 0xEFF07F800D47FF01 Ast
    out_attr5.y = temp_1071;
    // 0x0023E8: 0x5C59100000470A04 Fadd
    temp_1073 = 0.0 - temp_1066;
    temp_1074 = temp_1073 + temp_1070;
    // 0x0023F0: 0xEFF07F800AC7FF00 Ast
    out_attr2.w = temp_1072;
    // 0x0023F8: 0xEFF07F800A87FF04 Ast
    out_attr2.z = temp_1074;
    // 0x002408: 0xE30000000007000F Exit
    vec4 rotatedPos = vec4(
        cos(rad) * in_attr0.x - sin(rad) * in_attr0.z, 
        in_attr0.y,
        sin(rad) * in_attr0.x + cos(rad) * in_attr0.z, 
        1.0
    );
    // gl_Position = viewProjMatrix * vec4(rotatedPos.x, rotatedPos.y, rotatedPos.z, 1.0);
    gl_Position = in_attr0;
    return;
}