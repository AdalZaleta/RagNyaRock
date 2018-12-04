// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35558,y:32210,varname:node_3138,prsc:2|normal-9246-OUT,custl-7565-OUT;n:type:ShaderForge.SFN_Tex2d,id:9925,x:34835,y:31503,ptovrint:False,ptlb:NormalTex,ptin:_NormalTex,varname:_NormalTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:091614bcfbf9f604eb55b635d36f54fc,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:2052,x:35020,y:31483,varname:node_2052,prsc:2|A-4936-OUT,B-9925-RGB,T-7903-OUT;n:type:ShaderForge.SFN_Vector3,id:4936,x:34835,y:31392,varname:node_4936,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:7903,x:35020,y:31636,ptovrint:False,ptlb:NormalPower,ptin:_NormalPower,varname:_NormalPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Set,id:2699,x:35183,y:31483,varname:normalData,prsc:2|IN-2052-OUT;n:type:ShaderForge.SFN_Get,id:9246,x:35331,y:32270,varname:node_9246,prsc:2|IN-2699-OUT;n:type:ShaderForge.SFN_Clamp01,id:9884,x:33464,y:32152,varname:node_9884,prsc:2|IN-2897-OUT;n:type:ShaderForge.SFN_Multiply,id:3009,x:34023,y:32152,varname:node_3009,prsc:2|A-7612-OUT,B-8448-OUT,C-8136-RGB;n:type:ShaderForge.SFN_Set,id:5128,x:34183,y:32152,varname:fresnelColored,prsc:2|IN-3009-OUT;n:type:ShaderForge.SFN_Tex2d,id:8893,x:35173,y:32570,ptovrint:False,ptlb:vertexOffset,ptin:_vertexOffset,varname:node_8893,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:786e17efb1d0fa6469594f86cdba6dfd,ntxv:0,isnm:False|UVIN-2164-OUT;n:type:ShaderForge.SFN_Get,id:2164,x:34999,y:32570,varname:node_2164,prsc:2|IN-7573-OUT;n:type:ShaderForge.SFN_Multiply,id:163,x:35365,y:32570,varname:node_163,prsc:2|A-8893-RGB,B-7284-OUT,C-2428-OUT;n:type:ShaderForge.SFN_Slider,id:7284,x:35016,y:32749,ptovrint:False,ptlb:vtxOffsetPower,ptin:_vtxOffsetPower,varname:node_7284,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.1,max:1;n:type:ShaderForge.SFN_NormalVector,id:2428,x:35365,y:32704,prsc:2,pt:False;n:type:ShaderForge.SFN_TexCoord,id:2896,x:31787,y:32043,varname:node_2896,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7930,x:31989,y:32043,varname:node_7930,prsc:2,spu:1,spv:0|UVIN-2896-UVOUT,DIST-4735-OUT;n:type:ShaderForge.SFN_Time,id:755,x:31787,y:32208,varname:node_755,prsc:2;n:type:ShaderForge.SFN_Slider,id:9053,x:31832,y:32386,ptovrint:False,ptlb:vertexPannSpeed,ptin:_vertexPannSpeed,varname:_PannSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.01,max:5;n:type:ShaderForge.SFN_Multiply,id:4735,x:31989,y:32208,varname:node_4735,prsc:2|A-755-T,B-9053-OUT;n:type:ShaderForge.SFN_Set,id:7573,x:32149,y:32043,varname:vertexPannUV,prsc:2|IN-7930-UVOUT;n:type:ShaderForge.SFN_If,id:1189,x:33657,y:32241,varname:node_1189,prsc:2|A-9884-OUT,B-5006-OUT,GT-6413-OUT,EQ-6413-OUT,LT-9528-OUT;n:type:ShaderForge.SFN_Vector1,id:5006,x:33464,y:32275,varname:node_5006,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:9528,x:33464,y:32390,varname:node_9528,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6413,x:33464,y:32332,varname:node_6413,prsc:2,v1:1;n:type:ShaderForge.SFN_Fresnel,id:2897,x:33299,y:32152,varname:node_2897,prsc:2|EXP-177-OUT;n:type:ShaderForge.SFN_Slider,id:177,x:32970,y:32179,ptovrint:False,ptlb:voidEdgeWidth,ptin:_voidEdgeWidth,varname:node_177,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9293792,max:1;n:type:ShaderForge.SFN_Set,id:8585,x:35020,y:31427,varname:normalRaw,prsc:2|IN-9925-RGB;n:type:ShaderForge.SFN_Set,id:9200,x:34341,y:31735,varname:refractionData,prsc:2|IN-227-OUT;n:type:ShaderForge.SFN_Get,id:8448,x:33636,y:32369,varname:node_8448,prsc:2|IN-9200-OUT;n:type:ShaderForge.SFN_Tex2d,id:5791,x:35452,y:31767,ptovrint:False,ptlb:mainTex,ptin:_mainTex,varname:node_5791,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e3f416fd9609fd64689838598cf9767d,ntxv:0,isnm:False|UVIN-9488-OUT;n:type:ShaderForge.SFN_Color,id:1122,x:35452,y:31596,ptovrint:False,ptlb:mainColor,ptin:_mainColor,varname:node_1122,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3854,x:35665,y:31683,varname:node_3854,prsc:2|A-1122-RGB,B-5791-RGB;n:type:ShaderForge.SFN_Set,id:9471,x:34023,y:32097,varname:fresnelOpacity,prsc:2|IN-7612-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7612,x:33835,y:32152,ptovrint:False,ptlb:toonFresnel,ptin:_toonFresnel,varname:node_7612,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9884-OUT,B-1189-OUT;n:type:ShaderForge.SFN_Rotator,id:7195,x:32575,y:32167,varname:node_7195,prsc:2|UVIN-8219-UVOUT,PIV-850-OUT,ANG-1945-T,SPD-4972-OUT;n:type:ShaderForge.SFN_TexCoord,id:8219,x:32365,y:32043,varname:node_8219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector2,id:850,x:32365,y:32185,varname:node_850,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Time,id:1945,x:32365,y:32276,varname:node_1945,prsc:2;n:type:ShaderForge.SFN_Slider,id:4972,x:32208,y:32424,ptovrint:False,ptlb:uvRotationSpeed,ptin:_uvRotationSpeed,varname:node_4972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Set,id:1544,x:32741,y:32167,varname:uvRot,prsc:2|IN-7195-UVOUT;n:type:ShaderForge.SFN_NormalVector,id:7122,x:34761,y:31767,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:9640,x:34930,y:31767,varname:node_9640,prsc:2,tffrom:0,tfto:3|IN-7122-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5420,x:35098,y:31767,varname:node_5420,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9640-XYZ;n:type:ShaderForge.SFN_RemapRange,id:9488,x:35273,y:31767,varname:node_9488,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-5420-OUT;n:type:ShaderForge.SFN_Fresnel,id:6839,x:33398,y:32618,varname:node_6839,prsc:2|EXP-1182-OUT;n:type:ShaderForge.SFN_Clamp01,id:5760,x:33566,y:32618,varname:node_5760,prsc:2|IN-6839-OUT;n:type:ShaderForge.SFN_Get,id:7272,x:33180,y:33045,varname:node_7272,prsc:2|IN-9200-OUT;n:type:ShaderForge.SFN_Set,id:7013,x:33936,y:32618,varname:fresnelBlur,prsc:2|IN-2256-OUT;n:type:ShaderForge.SFN_ScreenPos,id:4239,x:33566,y:32774,varname:node_4239,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:5924,x:33752,y:32774,varname:node_5924,prsc:2|UVIN-4239-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2256,x:33752,y:32618,varname:node_2256,prsc:2|A-5760-OUT,B-1086-OUT;n:type:ShaderForge.SFN_Slider,id:1182,x:33072,y:32618,ptovrint:False,ptlb:blurAmmount,ptin:_blurAmmount,varname:node_1182,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Set,id:4378,x:35828,y:31683,varname:mainColor,prsc:2|IN-3854-OUT;n:type:ShaderForge.SFN_Add,id:4674,x:33655,y:31637,varname:node_4674,prsc:2|A-7957-UVOUT,B-6173-OUT;n:type:ShaderForge.SFN_Tex2d,id:6054,x:32929,y:31568,ptovrint:False,ptlb:refractionTex,ptin:_refractionTex,varname:_Displace,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fbb19fdb0a142c543b7d28c23d4b84b8,ntxv:3,isnm:True|UVIN-6831-OUT;n:type:ShaderForge.SFN_Slider,id:3825,x:33103,y:31774,ptovrint:False,ptlb:RefractionPower,ptin:_RefractionPower,varname:_RefractionPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:9750,x:33855,y:31735,ptovrint:False,ptlb:UseNormal,ptin:_UseNormal,varname:_UseNormal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4674-OUT,B-5840-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7957,x:33464,y:31722,varname:node_7957,prsc:2,sctp:2;n:type:ShaderForge.SFN_Multiply,id:8374,x:33464,y:31913,varname:node_8374,prsc:2|A-3825-OUT,B-9234-OUT;n:type:ShaderForge.SFN_Add,id:5840,x:33655,y:31831,varname:node_5840,prsc:2|A-8374-OUT,B-7957-UVOUT;n:type:ShaderForge.SFN_SceneColor,id:7304,x:34018,y:31735,varname:node_7304,prsc:2|UVIN-9750-OUT;n:type:ShaderForge.SFN_Get,id:9806,x:33082,y:31913,varname:node_9806,prsc:2|IN-8585-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9234,x:33260,y:31913,varname:node_9234,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9806-OUT;n:type:ShaderForge.SFN_Get,id:3364,x:33180,y:33096,varname:node_3364,prsc:2|IN-5128-OUT;n:type:ShaderForge.SFN_Set,id:2591,x:33752,y:32561,varname:blurOpacity,prsc:2|IN-5760-OUT;n:type:ShaderForge.SFN_Get,id:6213,x:33543,y:33209,varname:node_6213,prsc:2|IN-7013-OUT;n:type:ShaderForge.SFN_Lerp,id:2854,x:33564,y:33081,varname:node_2854,prsc:2|A-8251-OUT,B-705-OUT,T-6447-OUT;n:type:ShaderForge.SFN_Get,id:2056,x:33543,y:33261,varname:node_2056,prsc:2|IN-2591-OUT;n:type:ShaderForge.SFN_Set,id:7223,x:33924,y:33081,varname:finalLight,prsc:2|IN-2793-OUT;n:type:ShaderForge.SFN_Get,id:7565,x:35331,y:32410,varname:node_7565,prsc:2|IN-7223-OUT;n:type:ShaderForge.SFN_Get,id:705,x:33353,y:33209,varname:node_705,prsc:2|IN-4378-OUT;n:type:ShaderForge.SFN_Lerp,id:2793,x:33750,y:33081,varname:node_2793,prsc:2|A-2854-OUT,B-6213-OUT,T-2056-OUT;n:type:ShaderForge.SFN_Get,id:2926,x:33193,y:33261,varname:node_2926,prsc:2|IN-9471-OUT;n:type:ShaderForge.SFN_OneMinus,id:6447,x:33374,y:33261,varname:node_6447,prsc:2|IN-2926-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6139,x:33103,y:31568,varname:node_6139,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6054-RGB;n:type:ShaderForge.SFN_Clamp01,id:1086,x:33919,y:32774,varname:node_1086,prsc:2|IN-5924-RGB;n:type:ShaderForge.SFN_Clamp01,id:227,x:34184,y:31735,varname:node_227,prsc:2|IN-7304-RGB;n:type:ShaderForge.SFN_Set,id:5682,x:35452,y:31923,varname:matCapUV,prsc:2|IN-9488-OUT;n:type:ShaderForge.SFN_Get,id:6831,x:32724,y:31568,varname:node_6831,prsc:2|IN-5682-OUT;n:type:ShaderForge.SFN_Rotator,id:7578,x:32745,y:31388,varname:node_7578,prsc:2|UVIN-6831-OUT,PIV-2631-OUT,ANG-2348-T,SPD-546-OUT;n:type:ShaderForge.SFN_Vector2,id:2631,x:32535,y:31359,varname:node_2631,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Time,id:2348,x:32535,y:31452,varname:node_2348,prsc:2;n:type:ShaderForge.SFN_Slider,id:546,x:32378,y:31599,ptovrint:False,ptlb:refractionRotSpd,ptin:_refractionRotSpd,varname:node_546,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:888,x:32929,y:31388,ptovrint:False,ptlb:refractionTexOverlay,ptin:_refractionTexOverlay,varname:node_888,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:57d9319f7f4a9a54880b28c263c0df83,ntxv:3,isnm:True|UVIN-7578-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:7821,x:33103,y:31388,varname:node_7821,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-888-RGB;n:type:ShaderForge.SFN_Lerp,id:6173,x:33655,y:31438,varname:node_6173,prsc:2|A-7253-OUT,B-9731-OUT,T-8457-OUT;n:type:ShaderForge.SFN_Vector1,id:8457,x:33655,y:31564,varname:node_8457,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:9731,x:33297,y:31568,varname:node_9731,prsc:2|A-6139-OUT,B-3825-OUT;n:type:ShaderForge.SFN_Slider,id:8268,x:32946,y:31298,ptovrint:False,ptlb:RefractionOverlayPower,ptin:_RefractionOverlayPower,varname:node_8268,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7253,x:33297,y:31388,varname:node_7253,prsc:2|A-8268-OUT,B-7821-OUT;n:type:ShaderForge.SFN_Color,id:8136,x:34023,y:32307,ptovrint:False,ptlb:fresnelColor,ptin:_fresnelColor,varname:node_8136,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Blend,id:8251,x:33363,y:33042,varname:node_8251,prsc:2,blmd:10,clmp:True|SRC-7272-OUT,DST-3364-OUT;proporder:9925-7903-8893-7284-9053-177-5791-1122-7612-4972-1182-6054-3825-9750-546-888-8268-8136;pass:END;sub:END;*/

Shader "Retus001/VoidSphere" {
    Properties {
        _NormalTex ("NormalTex", 2D) = "bump" {}
        _NormalPower ("NormalPower", Range(0, 1)) = 0
        _vertexOffset ("vertexOffset", 2D) = "white" {}
        _vtxOffsetPower ("vtxOffsetPower", Range(-1, 1)) = 0.1
        _vertexPannSpeed ("vertexPannSpeed", Range(0, 5)) = 0.01
        _voidEdgeWidth ("voidEdgeWidth", Range(0, 1)) = 0.9293792
        _mainTex ("mainTex", 2D) = "white" {}
        _mainColor ("mainColor", Color) = (1,1,1,1)
        [MaterialToggle] _toonFresnel ("toonFresnel", Float ) = 0
        _uvRotationSpeed ("uvRotationSpeed", Range(0, 1)) = 0
        _blurAmmount ("blurAmmount", Range(0, 2)) = 1
        _refractionTex ("refractionTex", 2D) = "bump" {}
        _RefractionPower ("RefractionPower", Range(0, 1)) = 0.05
        [MaterialToggle] _UseNormal ("UseNormal", Float ) = 0
        _refractionRotSpd ("refractionRotSpd", Range(0, 1)) = 0
        _refractionTexOverlay ("refractionTexOverlay", 2D) = "bump" {}
        _RefractionOverlayPower ("RefractionOverlayPower", Range(0, 1)) = 0
        _fresnelColor ("fresnelColor", Color) = (1,0,1,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CustomTag"="SF"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalPower;
            uniform float _voidEdgeWidth;
            uniform sampler2D _mainTex; uniform float4 _mainTex_ST;
            uniform float4 _mainColor;
            uniform fixed _toonFresnel;
            uniform float _blurAmmount;
            uniform sampler2D _refractionTex; uniform float4 _refractionTex_ST;
            uniform float _RefractionPower;
            uniform fixed _UseNormal;
            uniform float _refractionRotSpd;
            uniform sampler2D _refractionTexOverlay; uniform float4 _refractionTexOverlay_ST;
            uniform float _RefractionOverlayPower;
            uniform float4 _fresnelColor;
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
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 normalData = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalPower);
                float3 normalLocal = normalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float4 node_2348 = _Time;
                float node_7578_ang = node_2348.g;
                float node_7578_spd = _refractionRotSpd;
                float node_7578_cos = cos(node_7578_spd*node_7578_ang);
                float node_7578_sin = sin(node_7578_spd*node_7578_ang);
                float2 node_7578_piv = float2(0.5,0.5);
                float2 node_9488 = (mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.rg*0.5+0.5);
                float2 matCapUV = node_9488;
                float2 node_6831 = matCapUV;
                float2 node_7578 = (mul(node_6831-node_7578_piv,float2x2( node_7578_cos, -node_7578_sin, node_7578_sin, node_7578_cos))+node_7578_piv);
                float3 _refractionTexOverlay_var = UnpackNormal(tex2D(_refractionTexOverlay,TRANSFORM_TEX(node_7578, _refractionTexOverlay)));
                float3 _refractionTex_var = UnpackNormal(tex2D(_refractionTex,TRANSFORM_TEX(node_6831, _refractionTex)));
                float2 node_6173 = lerp((_RefractionOverlayPower*_refractionTexOverlay_var.rgb.rg),(_refractionTex_var.rgb.rg*_RefractionPower),0.5);
                float3 normalRaw = _NormalTex_var.rgb;
                float4 node_7304 = tex2D( _GrabTexture, lerp( (sceneUVs.rg+node_6173), ((_RefractionPower*normalRaw.rg)+sceneUVs.rg), _UseNormal ));
                float3 refractionData = saturate(node_7304.rgb);
                float3 node_7272 = refractionData;
                float node_9884 = saturate(pow(1.0-max(0,dot(normalDirection, viewDirection)),_voidEdgeWidth));
                float node_1189_if_leA = step(node_9884,0.5);
                float node_1189_if_leB = step(0.5,node_9884);
                float node_6413 = 1.0;
                float _toonFresnel_var = lerp( node_9884, lerp((node_1189_if_leA*0.0)+(node_1189_if_leB*node_6413),node_6413,node_1189_if_leA*node_1189_if_leB), _toonFresnel );
                float3 fresnelColored = (_toonFresnel_var*refractionData*_fresnelColor.rgb);
                float3 node_3364 = fresnelColored;
                float4 _mainTex_var = tex2D(_mainTex,TRANSFORM_TEX(node_9488, _mainTex));
                float3 mainColor = (_mainColor.rgb*_mainTex_var.rgb);
                float fresnelOpacity = _toonFresnel_var;
                float node_5760 = saturate(pow(1.0-max(0,dot(normalDirection, viewDirection)),_blurAmmount));
                float4 node_5924 = tex2D( _GrabTexture, sceneUVs.rg);
                float3 node_2256 = (node_5760*saturate(node_5924.rgb));
                float3 fresnelBlur = node_2256;
                float blurOpacity = node_5760;
                float3 finalLight = lerp(lerp(saturate(( node_3364 > 0.5 ? (1.0-(1.0-2.0*(node_3364-0.5))*(1.0-node_7272)) : (2.0*node_3364*node_7272) )),mainColor,(1.0 - fresnelOpacity)),fresnelBlur,blurOpacity);
                float3 finalColor = finalLight;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Standard"
    CustomEditor "ShaderForgeMaterialInspector"
}
