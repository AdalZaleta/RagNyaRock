// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:37624,y:31658,varname:node_3138,prsc:2|normal-94-OUT,custl-576-OUT,olwid-9180-OUT,olcol-7605-OUT;n:type:ShaderForge.SFN_Get,id:94,x:37406,y:31711,varname:node_94,prsc:2|IN-5688-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7540,x:34433,y:31472,ptovrint:False,ptlb:MaskingTexture,ptin:_MaskingTexture,varname:node_7540,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3d81db37aef6c2d48b6b7bc482b253b2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3151,x:34769,y:31292,cmnt:Top Left,varname:node_3151,prsc:2,tex:3d81db37aef6c2d48b6b7bc482b253b2,ntxv:0,isnm:False|UVIN-7651-OUT,TEX-7540-TEX;n:type:ShaderForge.SFN_TexCoord,id:7204,x:34006,y:31548,varname:node_7204,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector2,id:4424,x:34006,y:31695,varname:node_4424,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Multiply,id:6778,x:34215,y:31618,varname:node_6778,prsc:2|A-7204-UVOUT,B-4424-OUT;n:type:ShaderForge.SFN_Add,id:7651,x:34433,y:31631,varname:node_7651,prsc:2|A-6778-OUT,B-9156-OUT;n:type:ShaderForge.SFN_Vector2,id:9156,x:34215,y:31736,varname:node_9156,prsc:2,v1:0,v2:0.5;n:type:ShaderForge.SFN_Add,id:2895,x:34433,y:31750,varname:node_2895,prsc:2|A-6778-OUT,B-6599-OUT;n:type:ShaderForge.SFN_Vector2,id:6599,x:34215,y:31824,varname:node_6599,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Vector2,id:4195,x:34215,y:31909,varname:node_4195,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Vector2,id:4756,x:34215,y:31998,varname:node_4756,prsc:2,v1:0.5,v2:0;n:type:ShaderForge.SFN_Add,id:7522,x:34433,y:31871,varname:node_7522,prsc:2|A-6778-OUT,B-4195-OUT;n:type:ShaderForge.SFN_Add,id:2168,x:34433,y:31998,varname:node_2168,prsc:2|A-6778-OUT,B-4756-OUT;n:type:ShaderForge.SFN_Tex2d,id:5770,x:34774,y:31601,cmnt:Top Right,varname:node_5770,prsc:2,tex:3d81db37aef6c2d48b6b7bc482b253b2,ntxv:0,isnm:False|UVIN-2895-OUT,TEX-7540-TEX;n:type:ShaderForge.SFN_Tex2d,id:4267,x:34774,y:31900,cmnt:Bottom Left,varname:node_4267,prsc:2,tex:3d81db37aef6c2d48b6b7bc482b253b2,ntxv:0,isnm:False|UVIN-7522-OUT,TEX-7540-TEX;n:type:ShaderForge.SFN_Tex2d,id:6750,x:34774,y:32309,cmnt:Bottom Right,varname:node_6750,prsc:2,tex:3d81db37aef6c2d48b6b7bc482b253b2,ntxv:0,isnm:False|UVIN-2168-OUT,TEX-7540-TEX;n:type:ShaderForge.SFN_Set,id:5012,x:35172,y:31193,cmnt:Ambient Occlusion,varname:M_TLR,prsc:2|IN-486-OUT;n:type:ShaderForge.SFN_Set,id:4315,x:34996,y:31342,cmnt:Mask 0 - Pants,varname:M_TLG,prsc:2|IN-3151-G;n:type:ShaderForge.SFN_Set,id:9145,x:34996,y:31422,cmnt:Mask 4 - Hat Plate Holster,varname:M_TLB,prsc:2|IN-3151-B;n:type:ShaderForge.SFN_Set,id:8200,x:35176,y:31484,cmnt:Color Ramp,varname:M_TRR,prsc:2|IN-1678-OUT;n:type:ShaderForge.SFN_Set,id:4873,x:34996,y:31627,cmnt:Mask 1 - Belt Shoes Hatdesign,varname:M_TRG,prsc:2|IN-5770-G;n:type:ShaderForge.SFN_Set,id:7788,x:34996,y:31700,cmnt:Mask 5 - Glasses Platestraps,varname:M_TRB,prsc:2|IN-5770-B;n:type:ShaderForge.SFN_Set,id:6080,x:34996,y:31822,cmnt:Normal_R,varname:M_BLR,prsc:2|IN-4267-R;n:type:ShaderForge.SFN_Set,id:6547,x:34996,y:31900,cmnt:Normal_G,varname:M_BLG,prsc:2|IN-4267-G;n:type:ShaderForge.SFN_Set,id:5274,x:35177,y:31957,cmnt:Specular,varname:M_BLB,prsc:2|IN-4263-OUT;n:type:ShaderForge.SFN_Set,id:2274,x:35177,y:32082,cmnt:Lightness,varname:M_BRR,prsc:2|IN-3092-OUT;n:type:ShaderForge.SFN_Set,id:76,x:34996,y:32346,cmnt:Mask 3 - Skin,varname:M_BRG,prsc:2|IN-6750-G;n:type:ShaderForge.SFN_Set,id:4314,x:35177,y:32406,cmnt:Mask 2 - Shirt,varname:M_BRB,prsc:2|IN-8478-OUT;n:type:ShaderForge.SFN_Color,id:1608,x:35494,y:31080,ptovrint:False,ptlb:colorA,ptin:_colorA,varname:node_1608,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:116,x:35687,y:31080,cmnt:Skin,varname:node_116,prsc:2|A-1608-RGB,B-6811-OUT,C-9872-OUT;n:type:ShaderForge.SFN_Get,id:6811,x:35473,y:31221,varname:node_6811,prsc:2|IN-76-OUT;n:type:ShaderForge.SFN_Color,id:4864,x:35494,y:31389,ptovrint:False,ptlb:colorB,ptin:_colorB,varname:_skinTint_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1881,x:35687,y:31389,cmnt:Shirt,varname:node_1881,prsc:2|A-4864-RGB,B-9929-OUT,C-9872-OUT;n:type:ShaderForge.SFN_Get,id:9929,x:35473,y:31317,varname:node_9929,prsc:2|IN-4314-OUT;n:type:ShaderForge.SFN_Lerp,id:6968,x:35871,y:31192,varname:node_6968,prsc:2|A-116-OUT,B-1881-OUT,T-9929-OUT;n:type:ShaderForge.SFN_Multiply,id:9673,x:35687,y:31583,cmnt:Pants,varname:node_9673,prsc:2|A-2453-RGB,B-9556-OUT,C-2757-OUT;n:type:ShaderForge.SFN_Get,id:9556,x:35473,y:31725,varname:node_9556,prsc:2|IN-4315-OUT;n:type:ShaderForge.SFN_Multiply,id:9759,x:35687,y:31892,cmnt:Hat Plate Holster,varname:node_9759,prsc:2|A-928-RGB,B-7347-OUT,C-2757-OUT;n:type:ShaderForge.SFN_Get,id:7347,x:35473,y:31820,varname:node_7347,prsc:2|IN-9145-OUT;n:type:ShaderForge.SFN_Lerp,id:2705,x:35875,y:31637,varname:node_2705,prsc:2|A-9673-OUT,B-9759-OUT,T-7347-OUT;n:type:ShaderForge.SFN_Add,id:1999,x:35875,y:31761,varname:node_1999,prsc:2|A-9556-OUT,B-7347-OUT;n:type:ShaderForge.SFN_Lerp,id:5129,x:36196,y:31624,varname:node_5129,prsc:2|A-6968-OUT,B-2705-OUT,T-1999-OUT;n:type:ShaderForge.SFN_Set,id:9141,x:36753,y:31704,varname:finalTinted,prsc:2|IN-6991-OUT;n:type:ShaderForge.SFN_Color,id:2453,x:35494,y:31583,ptovrint:False,ptlb:colorC,ptin:_colorC,varname:node_2453,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:928,x:35494,y:31892,ptovrint:False,ptlb:colorD,ptin:_colorD,varname:node_928,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:369,x:35494,y:32080,ptovrint:False,ptlb:colorE,ptin:_colorE,varname:node_369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Get,id:4552,x:35473,y:32225,varname:node_4552,prsc:2|IN-7788-OUT;n:type:ShaderForge.SFN_Get,id:7802,x:35473,y:32320,varname:node_7802,prsc:2|IN-4873-OUT;n:type:ShaderForge.SFN_Color,id:3601,x:35494,y:32395,ptovrint:False,ptlb:colorF,ptin:_colorF,varname:node_3601,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:6867,x:35687,y:32080,cmnt:Glasses,varname:node_6867,prsc:2|A-369-RGB,B-4552-OUT,C-8930-OUT;n:type:ShaderForge.SFN_Multiply,id:1867,x:35683,y:32395,cmnt:Belt,varname:node_1867,prsc:2|A-3601-RGB,B-7802-OUT,C-8930-OUT;n:type:ShaderForge.SFN_Lerp,id:6289,x:35875,y:32137,varname:node_6289,prsc:2|A-6867-OUT,B-1867-OUT,T-7802-OUT;n:type:ShaderForge.SFN_Lerp,id:2250,x:36439,y:31704,varname:node_2250,prsc:2|A-5129-OUT,B-6289-OUT,T-4595-OUT;n:type:ShaderForge.SFN_Add,id:4595,x:35875,y:32267,varname:node_4595,prsc:2|A-4552-OUT,B-7802-OUT;n:type:ShaderForge.SFN_Get,id:2000,x:34748,y:31226,varname:node_2000,prsc:2|IN-2120-OUT;n:type:ShaderForge.SFN_Get,id:5138,x:34753,y:31533,varname:node_5138,prsc:2|IN-9336-OUT;n:type:ShaderForge.SFN_Get,id:2376,x:34753,y:32118,varname:node_2376,prsc:2|IN-8983-OUT;n:type:ShaderForge.SFN_Get,id:8472,x:34753,y:32442,varname:node_8472,prsc:2|IN-4334-OUT;n:type:ShaderForge.SFN_Vector3,id:4229,x:34087,y:30949,varname:node_4229,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:8358,x:34299,y:31056,varname:node_8358,prsc:2|A-4229-OUT,B-8706-OUT,T-9944-OUT;n:type:ShaderForge.SFN_Slider,id:9944,x:33930,y:31238,ptovrint:False,ptlb:normalPower,ptin:_normalPower,varname:node_9944,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Set,id:5688,x:34457,y:31056,varname:normalData,prsc:2|IN-8358-OUT;n:type:ShaderForge.SFN_Posterize,id:486,x:35017,y:31193,varname:node_486,prsc:2|IN-3151-R,STPS-2000-OUT;n:type:ShaderForge.SFN_Slider,id:2602,x:33073,y:31522,ptovrint:False,ptlb:AmbientOcclusion_Steps,ptin:_AmbientOcclusion_Steps,varname:node_2602,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:7387,x:33388,y:31522,varname:node_7387,prsc:2,frmn:0,frmx:1,tomn:2,tomx:50|IN-2602-OUT;n:type:ShaderForge.SFN_Round,id:7507,x:33546,y:31522,varname:node_7507,prsc:2|IN-7387-OUT;n:type:ShaderForge.SFN_Set,id:2120,x:33692,y:31522,varname:Q_AO,prsc:2|IN-7507-OUT;n:type:ShaderForge.SFN_Slider,id:3194,x:33073,y:31695,ptovrint:False,ptlb:ColorRamp_Steps,ptin:_ColorRamp_Steps,varname:node_3194,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:8081,x:33388,y:31695,varname:node_8081,prsc:2,frmn:0,frmx:1,tomn:2,tomx:50|IN-3194-OUT;n:type:ShaderForge.SFN_Round,id:8229,x:33546,y:31695,varname:node_8229,prsc:2|IN-8081-OUT;n:type:ShaderForge.SFN_Set,id:9336,x:33692,y:31695,varname:Q_CR,prsc:2|IN-8229-OUT;n:type:ShaderForge.SFN_RemapRange,id:8899,x:33388,y:31870,varname:node_8899,prsc:2,frmn:0,frmx:1,tomn:2,tomx:50|IN-5053-OUT;n:type:ShaderForge.SFN_RemapRange,id:3365,x:33388,y:32230,varname:node_3365,prsc:2,frmn:0,frmx:1,tomn:2,tomx:50|IN-9692-OUT;n:type:ShaderForge.SFN_Slider,id:5053,x:33073,y:31870,ptovrint:False,ptlb:Light_Steps,ptin:_Light_Steps,varname:node_5053,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:9692,x:33073,y:32230,ptovrint:False,ptlb:Specular_Steps,ptin:_Specular_Steps,varname:node_9692,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Round,id:5000,x:33546,y:31870,varname:node_5000,prsc:2|IN-8899-OUT;n:type:ShaderForge.SFN_Round,id:1406,x:33546,y:32230,varname:node_1406,prsc:2|IN-3365-OUT;n:type:ShaderForge.SFN_Set,id:8983,x:33692,y:31870,varname:Q_L,prsc:2|IN-5000-OUT;n:type:ShaderForge.SFN_Set,id:4334,x:33692,y:32230,varname:Q_Sp,prsc:2|IN-1406-OUT;n:type:ShaderForge.SFN_Posterize,id:1678,x:35017,y:31484,varname:node_1678,prsc:2|IN-5770-R,STPS-5138-OUT;n:type:ShaderForge.SFN_Posterize,id:3092,x:35017,y:32082,varname:node_3092,prsc:2|IN-6750-R,STPS-2376-OUT;n:type:ShaderForge.SFN_Posterize,id:8478,x:35017,y:32406,varname:node_8478,prsc:2|IN-6750-B,STPS-8472-OUT;n:type:ShaderForge.SFN_Set,id:846,x:35850,y:31389,varname:tintedShirt,prsc:2|IN-1881-OUT;n:type:ShaderForge.SFN_Multiply,id:6991,x:36599,y:31704,varname:node_6991,prsc:2|A-2250-OUT,B-9699-OUT;n:type:ShaderForge.SFN_Get,id:9699,x:36418,y:31823,varname:node_9699,prsc:2|IN-5012-OUT;n:type:ShaderForge.SFN_Color,id:2759,x:37216,y:32037,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_2759,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:9180,x:37406,y:31956,ptovrint:False,ptlb:OutlineValue,ptin:_OutlineValue,varname:node_9180,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:7605,x:37406,y:32037,varname:node_7605,prsc:2|A-2759-RGB,B-3480-OUT;n:type:ShaderForge.SFN_Slider,id:7214,x:36897,y:32181,ptovrint:False,ptlb:OutlineGlowPower,ptin:_OutlineGlowPower,varname:node_7214,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:3480,x:37216,y:32181,varname:node_3480,prsc:2,frmn:0,frmx:1,tomn:1,tomx:50|IN-7214-OUT;n:type:ShaderForge.SFN_LightVector,id:5051,x:30490,y:31342,varname:node_5051,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:8628,x:30490,y:31198,prsc:2,pt:True;n:type:ShaderForge.SFN_Set,id:6132,x:31025,y:31496,varname:shadowData,prsc:2|IN-1098-OUT;n:type:ShaderForge.SFN_LightColor,id:9257,x:30677,y:31548,varname:node_9257,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5507,x:30677,y:31423,varname:node_5507,prsc:2|A-6881-OUT,B-9070-OUT;n:type:ShaderForge.SFN_Multiply,id:1098,x:30869,y:31496,varname:node_1098,prsc:2|A-5507-OUT,B-9257-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:9070,x:30490,y:31466,varname:node_9070,prsc:2;n:type:ShaderForge.SFN_Dot,id:6881,x:30677,y:31269,varname:node_6881,prsc:2,dt:1|A-5051-OUT,B-8628-OUT;n:type:ShaderForge.SFN_HalfVector,id:9204,x:30490,y:31074,varname:node_9204,prsc:2;n:type:ShaderForge.SFN_Dot,id:9858,x:30677,y:31125,varname:node_9858,prsc:2,dt:1|A-9204-OUT,B-8628-OUT;n:type:ShaderForge.SFN_Set,id:9640,x:30832,y:31423,varname:lightData,prsc:2|IN-5507-OUT;n:type:ShaderForge.SFN_Set,id:225,x:31579,y:31125,varname:specular,prsc:2|IN-5265-OUT;n:type:ShaderForge.SFN_Power,id:8652,x:30874,y:31125,varname:node_8652,prsc:2|VAL-9858-OUT,EXP-3124-OUT;n:type:ShaderForge.SFN_Slider,id:8968,x:30795,y:30901,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:_SpecularPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.5,max:10;n:type:ShaderForge.SFN_Exp,id:3124,x:30874,y:30981,varname:node_3124,prsc:2,et:0|IN-8968-OUT;n:type:ShaderForge.SFN_Slider,id:3155,x:31100,y:30902,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:_SpecularIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Exp,id:4261,x:31179,y:30981,varname:node_4261,prsc:2,et:0|IN-3155-OUT;n:type:ShaderForge.SFN_Multiply,id:5354,x:31179,y:31125,varname:node_5354,prsc:2|A-8652-OUT,B-4261-OUT;n:type:ShaderForge.SFN_Multiply,id:5265,x:31422,y:31125,varname:node_5265,prsc:2|A-5354-OUT,B-9024-RGB,C-5747-OUT,D-7632-OUT;n:type:ShaderForge.SFN_Get,id:5747,x:31401,y:31250,varname:node_5747,prsc:2|IN-9640-OUT;n:type:ShaderForge.SFN_Get,id:2968,x:31277,y:31414,varname:node_2968,prsc:2|IN-225-OUT;n:type:ShaderForge.SFN_NormalVector,id:1094,x:30511,y:31884,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:341,x:30707,y:31954,varname:node_341,prsc:2,dt:0|A-1094-OUT,B-3678-OUT;n:type:ShaderForge.SFN_Set,id:5387,x:31600,y:31890,varname:customFresnel,prsc:2|IN-4209-OUT;n:type:ShaderForge.SFN_ViewVector,id:3678,x:30511,y:32027,varname:node_3678,prsc:2;n:type:ShaderForge.SFN_Power,id:1096,x:31076,y:31954,varname:node_1096,prsc:2|VAL-915-OUT,EXP-2853-OUT;n:type:ShaderForge.SFN_Slider,id:8305,x:30354,y:32176,ptovrint:False,ptlb:FresnelPower,ptin:_FresnelPower,varname:_fresnelPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:3455,x:30869,y:31686,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:_FresnelColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6078432,c2:0.9734884,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7901,x:31281,y:31890,varname:node_7901,prsc:2|A-2913-OUT,B-1096-OUT,C-8305-OUT,D-8830-OUT;n:type:ShaderForge.SFN_Color,id:9024,x:31422,y:30964,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:node_2912,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Clamp01,id:4209,x:31446,y:31890,varname:node_4209,prsc:2|IN-7901-OUT;n:type:ShaderForge.SFN_RemapRange,id:2853,x:30869,y:32074,varname:node_2853,prsc:2,frmn:0,frmx:1,tomn:10,tomx:0|IN-8305-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2913,x:31076,y:31832,ptovrint:False,ptlb:lightColorFresnel,ptin:_lightColorFresnel,varname:node_4908,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3455-RGB,B-3334-RGB;n:type:ShaderForge.SFN_LightColor,id:3334,x:30869,y:31832,varname:node_3334,prsc:2;n:type:ShaderForge.SFN_Get,id:4491,x:31928,y:31881,varname:node_4491,prsc:2|IN-2274-OUT;n:type:ShaderForge.SFN_Set,id:5133,x:33008,y:32517,varname:finalLight,prsc:2|IN-4046-OUT;n:type:ShaderForge.SFN_Get,id:7894,x:31724,y:32401,varname:node_7894,prsc:2|IN-9640-OUT;n:type:ShaderForge.SFN_Get,id:7632,x:31401,y:31302,varname:node_7632,prsc:2|IN-5274-OUT;n:type:ShaderForge.SFN_Multiply,id:9316,x:32157,y:31669,varname:node_9316,prsc:2|A-5531-OUT,B-679-OUT,C-3677-RGB;n:type:ShaderForge.SFN_Multiply,id:3469,x:32153,y:31951,varname:node_3469,prsc:2|A-4491-OUT,B-710-RGB,C-4980-OUT;n:type:ShaderForge.SFN_Get,id:576,x:37406,y:31882,varname:node_576,prsc:2|IN-5133-OUT;n:type:ShaderForge.SFN_Color,id:710,x:31949,y:31951,ptovrint:False,ptlb:LightColor,ptin:_LightColor,varname:node_710,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7216981,c2:0.9352189,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:102,x:31949,y:31387,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:node_102,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.199849,c2:0.1497864,c3:0.3207547,c4:1;n:type:ShaderForge.SFN_Lerp,id:3449,x:32149,y:32303,varname:node_3449,prsc:2|A-9951-OUT,B-1895-OUT,T-4435-OUT;n:type:ShaderForge.SFN_Blend,id:5745,x:32314,y:32303,varname:node_5745,prsc:2,blmd:6,clmp:True|SRC-3449-OUT,DST-1603-OUT;n:type:ShaderForge.SFN_Get,id:1603,x:32128,y:32423,varname:node_1603,prsc:2|IN-641-OUT;n:type:ShaderForge.SFN_Slider,id:8401,x:33073,y:32046,ptovrint:False,ptlb:Shadow_Steps,ptin:_Shadow_Steps,varname:node_8401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:4641,x:33388,y:32046,varname:node_4641,prsc:2,frmn:0,frmx:1,tomn:2,tomx:50|IN-8401-OUT;n:type:ShaderForge.SFN_Round,id:2169,x:33546,y:32046,varname:node_2169,prsc:2|IN-4641-OUT;n:type:ShaderForge.SFN_Set,id:9231,x:33692,y:32046,varname:Q_Sh,prsc:2|IN-2169-OUT;n:type:ShaderForge.SFN_Posterize,id:8889,x:35017,y:32209,varname:node_8889,prsc:2|IN-6750-R,STPS-3-OUT;n:type:ShaderForge.SFN_Get,id:3,x:34753,y:32245,varname:node_3,prsc:2|IN-9231-OUT;n:type:ShaderForge.SFN_Set,id:1650,x:35177,y:32209,cmnt:Shadows,varname:M_BRR_B,prsc:2|IN-8889-OUT;n:type:ShaderForge.SFN_Get,id:4958,x:31928,y:31669,varname:node_4958,prsc:2|IN-1650-OUT;n:type:ShaderForge.SFN_OneMinus,id:4435,x:31949,y:32401,varname:node_4435,prsc:2|IN-7894-OUT;n:type:ShaderForge.SFN_Get,id:2534,x:32293,y:32467,varname:node_2534,prsc:2|IN-9141-OUT;n:type:ShaderForge.SFN_Get,id:2757,x:35473,y:31774,varname:node_2757,prsc:2|IN-8200-OUT;n:type:ShaderForge.SFN_Get,id:9872,x:35473,y:31268,varname:node_9872,prsc:2|IN-8200-OUT;n:type:ShaderForge.SFN_Get,id:8930,x:35473,y:32274,varname:node_8930,prsc:2|IN-8200-OUT;n:type:ShaderForge.SFN_Get,id:679,x:31928,y:31720,varname:node_679,prsc:2|IN-6132-OUT;n:type:ShaderForge.SFN_Get,id:4980,x:31928,y:32096,varname:node_4980,prsc:2|IN-9640-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3288,x:32391,y:31669,ptovrint:False,ptlb:TintedShadows,ptin:_TintedShadows,varname:node_3288,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9316-OUT,B-7290-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8424,x:32368,y:32015,ptovrint:False,ptlb:TintedLight,ptin:_TintedLight,varname:node_8424,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-712-OUT,B-3469-OUT;n:type:ShaderForge.SFN_Set,id:9633,x:32554,y:31669,varname:finalShadowData,prsc:2|IN-3288-OUT;n:type:ShaderForge.SFN_Set,id:1326,x:32524,y:32015,varname:finalLightData,prsc:2|IN-8424-OUT;n:type:ShaderForge.SFN_Get,id:9951,x:31928,y:32285,varname:node_9951,prsc:2|IN-1326-OUT;n:type:ShaderForge.SFN_Get,id:1895,x:31928,y:32339,varname:node_1895,prsc:2|IN-9633-OUT;n:type:ShaderForge.SFN_Multiply,id:712,x:32153,y:32083,varname:node_712,prsc:2|A-4491-OUT,B-9567-RGB,C-4980-OUT;n:type:ShaderForge.SFN_LightColor,id:9567,x:31949,y:32149,varname:node_9567,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5291,x:32476,y:32303,varname:node_5291,prsc:2|A-5745-OUT,B-2534-OUT;n:type:ShaderForge.SFN_Multiply,id:136,x:31476,y:31414,varname:node_136,prsc:2|A-2968-OUT,B-275-OUT;n:type:ShaderForge.SFN_Get,id:275,x:31277,y:31476,varname:node_275,prsc:2|IN-6132-OUT;n:type:ShaderForge.SFN_Set,id:641,x:31637,y:31414,varname:highlights,prsc:2|IN-136-OUT;n:type:ShaderForge.SFN_Blend,id:2507,x:32642,y:32303,varname:node_2507,prsc:2,blmd:6,clmp:True|SRC-5291-OUT,DST-5117-OUT;n:type:ShaderForge.SFN_Get,id:5117,x:32455,y:32434,varname:node_5117,prsc:2|IN-5387-OUT;n:type:ShaderForge.SFN_OneMinus,id:915,x:30869,y:31954,varname:node_915,prsc:2|IN-341-OUT;n:type:ShaderForge.SFN_Get,id:8830,x:31260,y:32012,varname:node_8830,prsc:2|IN-9640-OUT;n:type:ShaderForge.SFN_Get,id:1727,x:33883,y:31052,varname:node_1727,prsc:2|IN-6080-OUT;n:type:ShaderForge.SFN_Get,id:4227,x:33883,y:31103,varname:node_4227,prsc:2|IN-6547-OUT;n:type:ShaderForge.SFN_Append,id:8706,x:34087,y:31068,varname:node_8706,prsc:2|A-1727-OUT,B-4227-OUT,C-8758-OUT;n:type:ShaderForge.SFN_Vector1,id:8758,x:33904,y:31157,varname:node_8758,prsc:2,v1:1;n:type:ShaderForge.SFN_Fresnel,id:3416,x:32115,y:32552,varname:node_3416,prsc:2|EXP-5561-OUT;n:type:ShaderForge.SFN_Slider,id:404,x:31632,y:32552,ptovrint:False,ptlb:InnerOutlineWidth,ptin:_InnerOutlineWidth,varname:node_404,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.25,max:1;n:type:ShaderForge.SFN_RemapRange,id:5561,x:31949,y:32552,varname:node_5561,prsc:2,frmn:0,frmx:1,tomn:0,tomx:15|IN-404-OUT;n:type:ShaderForge.SFN_Clamp01,id:1684,x:32271,y:32552,varname:node_1684,prsc:2|IN-3416-OUT;n:type:ShaderForge.SFN_Round,id:1795,x:32427,y:32552,varname:node_1795,prsc:2|IN-1684-OUT;n:type:ShaderForge.SFN_Multiply,id:8415,x:32605,y:32709,varname:node_8415,prsc:2|A-1795-OUT,B-8067-RGB;n:type:ShaderForge.SFN_Color,id:8067,x:32427,y:32709,ptovrint:False,ptlb:InnerOutlineColor,ptin:_InnerOutlineColor,varname:node_8067,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:4046,x:32853,y:32517,varname:node_4046,prsc:2|A-2507-OUT,B-8415-OUT,T-1795-OUT;n:type:ShaderForge.SFN_Get,id:8412,x:34753,y:32027,varname:node_8412,prsc:2|IN-4334-OUT;n:type:ShaderForge.SFN_Posterize,id:4263,x:35017,y:31957,varname:node_4263,prsc:2|IN-4267-B,STPS-8412-OUT;n:type:ShaderForge.SFN_OneMinus,id:5531,x:31949,y:31534,varname:node_5531,prsc:2|IN-4958-OUT;n:type:ShaderForge.SFN_Multiply,id:7290,x:32153,y:31550,varname:node_7290,prsc:2|A-102-RGB,B-5531-OUT;n:type:ShaderForge.SFN_AmbientLight,id:3677,x:32153,y:31799,varname:node_3677,prsc:2;proporder:7540-9944-1608-4864-2453-928-369-3601-2602-3194-5053-8401-9692-9180-2759-7214-8968-3155-9024-710-102-3288-8424-8305-3455-2913-404-8067;pass:END;sub:END;*/

Shader "Retus001/Chroma2" {
    Properties {
        _MaskingTexture ("MaskingTexture", 2D) = "white" {}
        _normalPower ("normalPower", Range(0, 1)) = 1
        _colorA ("colorA", Color) = (1,1,1,1)
        _colorB ("colorB", Color) = (1,1,1,1)
        _colorC ("colorC", Color) = (1,1,1,1)
        _colorD ("colorD", Color) = (1,1,1,1)
        _colorE ("colorE", Color) = (1,1,1,1)
        _colorF ("colorF", Color) = (1,1,1,1)
        _AmbientOcclusion_Steps ("AmbientOcclusion_Steps", Range(0, 1)) = 1
        _ColorRamp_Steps ("ColorRamp_Steps", Range(0, 1)) = 1
        _Light_Steps ("Light_Steps", Range(0, 1)) = 1
        _Shadow_Steps ("Shadow_Steps", Range(0, 1)) = 1
        _Specular_Steps ("Specular_Steps", Range(0, 1)) = 1
        _OutlineValue ("OutlineValue", Float ) = 0
        _OutlineColor ("OutlineColor", Color) = (0,0,0,1)
        _OutlineGlowPower ("OutlineGlowPower", Range(0, 1)) = 0
        _SpecularPower ("SpecularPower", Range(0, 10)) = 3.5
        _SpecularIntensity ("SpecularIntensity", Range(0, 10)) = 0
        _SpecularColor ("SpecularColor", Color) = (1,1,1,1)
        _LightColor ("LightColor", Color) = (0.7216981,0.9352189,1,1)
        _ShadowColor ("ShadowColor", Color) = (0.199849,0.1497864,0.3207547,1)
        [MaterialToggle] _TintedShadows ("TintedShadows", Float ) = 0
        [MaterialToggle] _TintedLight ("TintedLight", Float ) = 0
        _FresnelPower ("FresnelPower", Range(0, 1)) = 0
        _FresnelColor ("FresnelColor", Color) = (0.6078432,0.9734884,1,1)
        [MaterialToggle] _lightColorFresnel ("lightColorFresnel", Float ) = 0.6078432
        _InnerOutlineWidth ("InnerOutlineWidth", Range(0, 1)) = 0.25
        _InnerOutlineColor ("InnerOutlineColor", Color) = (0,0,0,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
            "CustomTag"="SF"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _OutlineColor;
            uniform float _OutlineValue;
            uniform float _OutlineGlowPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutlineValue,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4((_OutlineColor.rgb*(_OutlineGlowPower*49.0+1.0)),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MaskingTexture; uniform float4 _MaskingTexture_ST;
            uniform float4 _colorA;
            uniform float4 _colorB;
            uniform float4 _colorC;
            uniform float4 _colorD;
            uniform float4 _colorE;
            uniform float4 _colorF;
            uniform float _normalPower;
            uniform float _AmbientOcclusion_Steps;
            uniform float _ColorRamp_Steps;
            uniform float _Light_Steps;
            uniform float _Specular_Steps;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform float _FresnelPower;
            uniform float4 _FresnelColor;
            uniform float4 _SpecularColor;
            uniform fixed _lightColorFresnel;
            uniform float4 _LightColor;
            uniform float4 _ShadowColor;
            uniform float _Shadow_Steps;
            uniform fixed _TintedShadows;
            uniform fixed _TintedLight;
            uniform float _InnerOutlineWidth;
            uniform float4 _InnerOutlineColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_6778 = (i.uv0*float2(0.5,0.5));
                float2 node_7522 = (node_6778+float2(0,0));
                float4 node_4267 = tex2D(_MaskingTexture,TRANSFORM_TEX(node_7522, _MaskingTexture)); // Bottom Left
                float M_BLR = node_4267.r; // Normal_R
                float M_BLG = node_4267.g; // Normal_G
                float3 normalData = lerp(float3(0,0,1),float3(M_BLR,M_BLG,1.0),_normalPower);
                float3 normalLocal = normalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float2 node_2168 = (node_6778+float2(0.5,0));
                float4 node_6750 = tex2D(_MaskingTexture,TRANSFORM_TEX(node_2168, _MaskingTexture)); // Bottom Right
                float Q_L = round((_Light_Steps*48.0+2.0));
                float node_2376 = Q_L;
                float M_BRR = floor(node_6750.r * node_2376) / (node_2376 - 1); // Lightness
                float node_4491 = M_BRR;
                float node_5507 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float lightData = node_5507;
                float node_4980 = lightData;
                float3 finalLightData = lerp( (node_4491*_LightColor0.rgb*node_4980), (node_4491*_LightColor.rgb*node_4980), _TintedLight );
                float Q_Sh = round((_Shadow_Steps*48.0+2.0));
                float node_3 = Q_Sh;
                float M_BRR_B = floor(node_6750.r * node_3) / (node_3 - 1); // Shadows
                float node_5531 = (1.0 - M_BRR_B);
                float3 shadowData = (node_5507*_LightColor0.rgb);
                float3 finalShadowData = lerp( (node_5531*shadowData*UNITY_LIGHTMODEL_AMBIENT.rgb), (_ShadowColor.rgb*node_5531), _TintedShadows );
                float Q_Sp = round((_Specular_Steps*48.0+2.0));
                float node_8412 = Q_Sp;
                float M_BLB = floor(node_4267.b * node_8412) / (node_8412 - 1); // Specular
                float3 specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*_SpecularColor.rgb*lightData*M_BLB);
                float3 highlights = (specular*shadowData);
                float M_BRG = node_6750.g; // Mask 3 - Skin
                float2 node_2895 = (node_6778+float2(0.5,0.5));
                float4 node_5770 = tex2D(_MaskingTexture,TRANSFORM_TEX(node_2895, _MaskingTexture)); // Top Right
                float Q_CR = round((_ColorRamp_Steps*48.0+2.0));
                float node_5138 = Q_CR;
                float M_TRR = floor(node_5770.r * node_5138) / (node_5138 - 1); // Color Ramp
                float node_9872 = M_TRR;
                float node_8472 = Q_Sp;
                float M_BRB = floor(node_6750.b * node_8472) / (node_8472 - 1); // Mask 2 - Shirt
                float node_9929 = M_BRB;
                float3 node_1881 = (_colorB.rgb*node_9929*node_9872); // Shirt
                float2 node_7651 = (node_6778+float2(0,0.5));
                float4 node_3151 = tex2D(_MaskingTexture,TRANSFORM_TEX(node_7651, _MaskingTexture)); // Top Left
                float M_TLG = node_3151.g; // Mask 0 - Pants
                float node_9556 = M_TLG;
                float node_2757 = M_TRR;
                float M_TLB = node_3151.b; // Mask 4 - Hat Plate Holster
                float node_7347 = M_TLB;
                float M_TRB = node_5770.b; // Mask 5 - Glasses Platestraps
                float node_4552 = M_TRB;
                float node_8930 = M_TRR;
                float M_TRG = node_5770.g; // Mask 1 - Belt Shoes Hatdesign
                float node_7802 = M_TRG;
                float Q_AO = round((_AmbientOcclusion_Steps*48.0+2.0));
                float node_2000 = Q_AO;
                float M_TLR = floor(node_3151.r * node_2000) / (node_2000 - 1); // Ambient Occlusion
                float3 finalTinted = (lerp(lerp(lerp((_colorA.rgb*M_BRG*node_9872),node_1881,node_9929),lerp((_colorC.rgb*node_9556*node_2757),(_colorD.rgb*node_7347*node_2757),node_7347),(node_9556+node_7347)),lerp((_colorE.rgb*node_4552*node_8930),(_colorF.rgb*node_7802*node_8930),node_7802),(node_4552+node_7802))*M_TLR);
                float3 customFresnel = saturate((lerp( _FresnelColor.rgb, _LightColor0.rgb, _lightColorFresnel )*pow((1.0 - dot(normalDirection,viewDirection)),(_FresnelPower*-10.0+10.0))*_FresnelPower*lightData));
                float node_1795 = round(saturate(pow(1.0-max(0,dot(normalDirection, viewDirection)),(_InnerOutlineWidth*15.0+0.0))));
                float3 finalLight = lerp(saturate((1.0-(1.0-(saturate((1.0-(1.0-lerp(finalLightData,finalShadowData,(1.0 - lightData)))*(1.0-highlights)))*finalTinted))*(1.0-customFresnel))),(node_1795*_InnerOutlineColor.rgb),node_1795);
                float3 finalColor = finalLight;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDADD
            #define UNITY_PASS_FORWARDADD
            #endif
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MaskingTexture; uniform float4 _MaskingTexture_ST;
            uniform float4 _colorA;
            uniform float4 _colorB;
            uniform float4 _colorC;
            uniform float4 _colorD;
            uniform float4 _colorE;
            uniform float4 _colorF;
            uniform float _normalPower;
            uniform float _AmbientOcclusion_Steps;
            uniform float _ColorRamp_Steps;
            uniform float _Light_Steps;
            uniform float _Specular_Steps;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform float _FresnelPower;
            uniform float4 _FresnelColor;
            uniform float4 _SpecularColor;
            uniform fixed _lightColorFresnel;
            uniform float4 _LightColor;
            uniform float4 _ShadowColor;
            uniform float _Shadow_Steps;
            uniform fixed _TintedShadows;
            uniform fixed _TintedLight;
            uniform float _InnerOutlineWidth;
            uniform float4 _InnerOutlineColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_6778 = (i.uv0*float2(0.5,0.5));
                float2 node_7522 = (node_6778+float2(0,0));
                float4 node_4267 = tex2D(_MaskingTexture,TRANSFORM_TEX(node_7522, _MaskingTexture)); // Bottom Left
                float M_BLR = node_4267.r; // Normal_R
                float M_BLG = node_4267.g; // Normal_G
                float3 normalData = lerp(float3(0,0,1),float3(M_BLR,M_BLG,1.0),_normalPower);
                float3 normalLocal = normalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float2 node_2168 = (node_6778+float2(0.5,0));
                float4 node_6750 = tex2D(_MaskingTexture,TRANSFORM_TEX(node_2168, _MaskingTexture)); // Bottom Right
                float Q_L = round((_Light_Steps*48.0+2.0));
                float node_2376 = Q_L;
                float M_BRR = floor(node_6750.r * node_2376) / (node_2376 - 1); // Lightness
                float node_4491 = M_BRR;
                float node_5507 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float lightData = node_5507;
                float node_4980 = lightData;
                float3 finalLightData = lerp( (node_4491*_LightColor0.rgb*node_4980), (node_4491*_LightColor.rgb*node_4980), _TintedLight );
                float Q_Sh = round((_Shadow_Steps*48.0+2.0));
                float node_3 = Q_Sh;
                float M_BRR_B = floor(node_6750.r * node_3) / (node_3 - 1); // Shadows
                float node_5531 = (1.0 - M_BRR_B);
                float3 shadowData = (node_5507*_LightColor0.rgb);
                float3 finalShadowData = lerp( (node_5531*shadowData*UNITY_LIGHTMODEL_AMBIENT.rgb), (_ShadowColor.rgb*node_5531), _TintedShadows );
                float Q_Sp = round((_Specular_Steps*48.0+2.0));
                float node_8412 = Q_Sp;
                float M_BLB = floor(node_4267.b * node_8412) / (node_8412 - 1); // Specular
                float3 specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*_SpecularColor.rgb*lightData*M_BLB);
                float3 highlights = (specular*shadowData);
                float M_BRG = node_6750.g; // Mask 3 - Skin
                float2 node_2895 = (node_6778+float2(0.5,0.5));
                float4 node_5770 = tex2D(_MaskingTexture,TRANSFORM_TEX(node_2895, _MaskingTexture)); // Top Right
                float Q_CR = round((_ColorRamp_Steps*48.0+2.0));
                float node_5138 = Q_CR;
                float M_TRR = floor(node_5770.r * node_5138) / (node_5138 - 1); // Color Ramp
                float node_9872 = M_TRR;
                float node_8472 = Q_Sp;
                float M_BRB = floor(node_6750.b * node_8472) / (node_8472 - 1); // Mask 2 - Shirt
                float node_9929 = M_BRB;
                float3 node_1881 = (_colorB.rgb*node_9929*node_9872); // Shirt
                float2 node_7651 = (node_6778+float2(0,0.5));
                float4 node_3151 = tex2D(_MaskingTexture,TRANSFORM_TEX(node_7651, _MaskingTexture)); // Top Left
                float M_TLG = node_3151.g; // Mask 0 - Pants
                float node_9556 = M_TLG;
                float node_2757 = M_TRR;
                float M_TLB = node_3151.b; // Mask 4 - Hat Plate Holster
                float node_7347 = M_TLB;
                float M_TRB = node_5770.b; // Mask 5 - Glasses Platestraps
                float node_4552 = M_TRB;
                float node_8930 = M_TRR;
                float M_TRG = node_5770.g; // Mask 1 - Belt Shoes Hatdesign
                float node_7802 = M_TRG;
                float Q_AO = round((_AmbientOcclusion_Steps*48.0+2.0));
                float node_2000 = Q_AO;
                float M_TLR = floor(node_3151.r * node_2000) / (node_2000 - 1); // Ambient Occlusion
                float3 finalTinted = (lerp(lerp(lerp((_colorA.rgb*M_BRG*node_9872),node_1881,node_9929),lerp((_colorC.rgb*node_9556*node_2757),(_colorD.rgb*node_7347*node_2757),node_7347),(node_9556+node_7347)),lerp((_colorE.rgb*node_4552*node_8930),(_colorF.rgb*node_7802*node_8930),node_7802),(node_4552+node_7802))*M_TLR);
                float3 customFresnel = saturate((lerp( _FresnelColor.rgb, _LightColor0.rgb, _lightColorFresnel )*pow((1.0 - dot(normalDirection,viewDirection)),(_FresnelPower*-10.0+10.0))*_FresnelPower*lightData));
                float node_1795 = round(saturate(pow(1.0-max(0,dot(normalDirection, viewDirection)),(_InnerOutlineWidth*15.0+0.0))));
                float3 finalLight = lerp(saturate((1.0-(1.0-(saturate((1.0-(1.0-lerp(finalLightData,finalShadowData,(1.0 - lightData)))*(1.0-highlights)))*finalTinted))*(1.0-customFresnel))),(node_1795*_InnerOutlineColor.rgb),node_1795);
                float3 finalColor = finalLight;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Standard"
    CustomEditor "ShaderForgeMaterialInspector"
}
