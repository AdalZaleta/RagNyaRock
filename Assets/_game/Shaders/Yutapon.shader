// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33444,y:33184,varname:node_3138,prsc:2|emission-9144-OUT,alpha-7125-OUT,voffset-544-OUT;n:type:ShaderForge.SFN_Tex2d,id:1607,x:32457,y:32681,ptovrint:False,ptlb:SplitTex,ptin:_SplitTex,varname:node_1607,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2749af28092da194b9c5f08a72677d28,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:969,x:32878,y:32761,varname:node_969,prsc:2|A-7973-OUT,B-3883-XYZ,C-1691-OUT,D-6282-RGB,E-2444-RGB;n:type:ShaderForge.SFN_Vector4Property,id:3883,x:32628,y:32838,ptovrint:False,ptlb:OffsetDirection,ptin:_OffsetDirection,varname:node_3883,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:1,v4:0;n:type:ShaderForge.SFN_Slider,id:1691,x:32471,y:33005,ptovrint:False,ptlb:SlicePower,ptin:_SlicePower,varname:node_1691,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:25;n:type:ShaderForge.SFN_Color,id:4026,x:32457,y:32390,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_4026,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8509804,c2:0.2745098,c3:0.3529913,c4:1;n:type:ShaderForge.SFN_Color,id:2915,x:32457,y:32228,ptovrint:False,ptlb:Highlights,ptin:_Highlights,varname:node_2915,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1421,x:32628,y:32228,varname:node_1421,prsc:2|A-3553-OUT,B-2915-RGB;n:type:ShaderForge.SFN_Slider,id:3553,x:32300,y:32137,ptovrint:False,ptlb:HighlightsPower,ptin:_HighlightsPower,varname:node_3553,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Tex2d,id:6282,x:32628,y:33196,ptovrint:False,ptlb:NoiseTex,ptin:_NoiseTex,varname:node_6282,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0c60eef2c338ba740a2857c13a904ade,ntxv:0,isnm:False|UVIN-4523-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6378,x:32300,y:33196,varname:node_6378,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4523,x:32471,y:33196,varname:node_4523,prsc:2,spu:1,spv:1|UVIN-6378-UVOUT,DIST-1249-OUT;n:type:ShaderForge.SFN_Time,id:8296,x:32117,y:33294,varname:node_8296,prsc:2;n:type:ShaderForge.SFN_Slider,id:3456,x:31960,y:33432,ptovrint:False,ptlb:noiseSpeed,ptin:_noiseSpeed,varname:node_3456,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:1249,x:32300,y:33344,varname:node_1249,prsc:2|A-8296-TSL,B-3456-OUT;n:type:ShaderForge.SFN_Tex2d,id:8884,x:32875,y:32596,ptovrint:False,ptlb:OpacityMask,ptin:_OpacityMask,varname:node_8884,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:862aaaca92893664b88457cb6c3bc482,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:7973,x:32628,y:32681,varname:node_7973,prsc:2|IN-1607-RGB;n:type:ShaderForge.SFN_If,id:1764,x:32875,y:32306,varname:node_1764,prsc:2|A-6709-OUT,B-5499-OUT,GT-1421-OUT,EQ-228-OUT,LT-228-OUT;n:type:ShaderForge.SFN_Vector1,id:5499,x:32875,y:32252,varname:node_5499,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Set,id:122,x:33041,y:32306,varname:SlicedEmission,prsc:2|IN-1764-OUT;n:type:ShaderForge.SFN_Set,id:1203,x:33041,y:32621,varname:OpacityMask,prsc:2|IN-8884-R;n:type:ShaderForge.SFN_Set,id:4053,x:33041,y:32761,varname:SliceOffset,prsc:2|IN-969-OUT;n:type:ShaderForge.SFN_Get,id:6837,x:33037,y:33303,varname:node_6837,prsc:2|IN-122-OUT;n:type:ShaderForge.SFN_Get,id:7125,x:33218,y:33373,varname:node_7125,prsc:2|IN-1203-OUT;n:type:ShaderForge.SFN_Get,id:799,x:33037,y:33601,varname:node_799,prsc:2|IN-4053-OUT;n:type:ShaderForge.SFN_Tex2d,id:2444,x:32878,y:33263,ptovrint:False,ptlb:SliceBufferTex,ptin:_SliceBufferTex,varname:node_2444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b47f7b2c9bcf2f44c9c3bca7692bb8f6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:7170,x:33561,y:32967,varname:YutaponOffset,prsc:2|IN-6997-OUT;n:type:ShaderForge.SFN_Get,id:3249,x:33037,y:33552,varname:node_3249,prsc:2|IN-7170-OUT;n:type:ShaderForge.SFN_Multiply,id:9546,x:32878,y:32929,varname:node_9546,prsc:2|A-3883-XYZ,B-4638-OUT;n:type:ShaderForge.SFN_Slider,id:4638,x:32471,y:33098,ptovrint:False,ptlb:YutaponPower,ptin:_YutaponPower,varname:node_4638,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_If,id:544,x:33239,y:33480,varname:node_544,prsc:2|A-1153-RGB,B-1827-OUT,GT-3249-OUT,EQ-3249-OUT,LT-799-OUT;n:type:ShaderForge.SFN_Vector1,id:1827,x:32878,y:33427,varname:node_1827,prsc:2,v1:0.1;n:type:ShaderForge.SFN_If,id:9144,x:33239,y:33220,varname:node_9144,prsc:2|A-2444-RGB,B-1827-OUT,GT-6837-OUT,EQ-6837-OUT,LT-2441-OUT;n:type:ShaderForge.SFN_Get,id:2441,x:33037,y:33354,varname:node_2441,prsc:2|IN-5441-OUT;n:type:ShaderForge.SFN_Set,id:5441,x:32854,y:32474,varname:Emission,prsc:2|IN-228-OUT;n:type:ShaderForge.SFN_Tex2d,id:1153,x:32878,y:33517,ptovrint:False,ptlb:YutaponBufferTex,ptin:_YutaponBufferTex,varname:node_1153,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:afd832bc0ec91614b82338a3738dfcb9,ntxv:0,isnm:False;n:type:ShaderForge.SFN_SceneColor,id:770,x:32457,y:32536,varname:node_770,prsc:2|UVIN-3898-UVOUT;n:type:ShaderForge.SFN_Multiply,id:228,x:32628,y:32474,varname:node_228,prsc:2|A-4026-RGB,B-9369-RGB;n:type:ShaderForge.SFN_ScreenPos,id:3898,x:32287,y:32536,varname:node_3898,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2d,id:9481,x:32878,y:33086,ptovrint:False,ptlb:YutaponTex,ptin:_YutaponTex,varname:node_9481,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:948c8575d73c46e42a5ae9aec13f38be,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9369,x:32287,y:32390,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_9369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fce04cc13946c3347b173faaefc03757,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:815,x:33041,y:32840,ptovrint:False,ptlb:YutaponTiltPower,ptin:_YutaponTiltPower,varname:node_815,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:4413,x:33239,y:32967,varname:node_4413,prsc:2|A-5688-OUT,B-9546-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5688,x:33688,y:32728,varname:node_5688,prsc:2|IN-434-UVOUT,IMIN-3277-OUT,IMAX-2597-OUT,OMIN-1019-OUT,OMAX-4896-OUT;n:type:ShaderForge.SFN_TexCoord,id:434,x:33688,y:32580,varname:node_434,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1019,x:33406,y:32684,varname:node_1019,prsc:2|A-3488-OUT,B-815-OUT,C-4638-OUT;n:type:ShaderForge.SFN_Vector1,id:3488,x:33406,y:32627,varname:node_3488,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:3277,x:33406,y:32523,varname:node_3277,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2597,x:33406,y:32578,varname:node_2597,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6997,x:33406,y:32967,varname:node_6997,prsc:2|A-4413-OUT,B-9481-RGB,C-7030-OUT;n:type:ShaderForge.SFN_Vector3,id:7030,x:33406,y:33086,varname:node_7030,prsc:2,v1:-1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:4896,x:33406,y:32826,varname:node_4896,prsc:2|A-815-OUT,B-4638-OUT;n:type:ShaderForge.SFN_Tex2d,id:3381,x:32628,y:32074,ptovrint:False,ptlb:SplitEmissionTex,ptin:_SplitEmissionTex,varname:node_3381,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2749af28092da194b9c5f08a72677d28,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:6709,x:32875,y:32074,varname:node_6709,prsc:2|IN-3381-RGB;proporder:1607-3883-1691-4026-2915-3553-6282-3456-8884-2444-4638-1153-9481-9369-815-3381;pass:END;sub:END;*/

Shader "Retus001/Yutapon" {
    Properties {
        _SplitTex ("SplitTex", 2D) = "white" {}
        _OffsetDirection ("OffsetDirection", Vector) = (0,0,1,0)
        _SlicePower ("SlicePower", Range(0, 25)) = 1
        _MainColor ("MainColor", Color) = (0.8509804,0.2745098,0.3529913,1)
        _Highlights ("Highlights", Color) = (1,1,1,1)
        _HighlightsPower ("HighlightsPower", Range(0, 10)) = 10
        _NoiseTex ("NoiseTex", 2D) = "white" {}
        _noiseSpeed ("noiseSpeed", Range(0, 1)) = 0.5
        _OpacityMask ("OpacityMask", 2D) = "white" {}
        _SliceBufferTex ("SliceBufferTex", 2D) = "white" {}
        _YutaponPower ("YutaponPower", Range(0, 1)) = 1
        _YutaponBufferTex ("YutaponBufferTex", 2D) = "white" {}
        _YutaponTex ("YutaponTex", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _YutaponTiltPower ("YutaponTiltPower", Range(0, 1)) = 1
        _SplitEmissionTex ("SplitEmissionTex", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CustomTag"="SF"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
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
            uniform sampler2D _SplitTex; uniform float4 _SplitTex_ST;
            uniform float4 _OffsetDirection;
            uniform float _SlicePower;
            uniform float4 _MainColor;
            uniform float4 _Highlights;
            uniform float _HighlightsPower;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _noiseSpeed;
            uniform sampler2D _OpacityMask; uniform float4 _OpacityMask_ST;
            uniform sampler2D _SliceBufferTex; uniform float4 _SliceBufferTex_ST;
            uniform float _YutaponPower;
            uniform sampler2D _YutaponBufferTex; uniform float4 _YutaponBufferTex_ST;
            uniform sampler2D _YutaponTex; uniform float4 _YutaponTex_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _YutaponTiltPower;
            uniform sampler2D _SplitEmissionTex; uniform float4 _SplitEmissionTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 _YutaponBufferTex_var = tex2Dlod(_YutaponBufferTex,float4(TRANSFORM_TEX(o.uv0, _YutaponBufferTex),0.0,0));
                float node_1827 = 0.1;
                float node_544_if_leA = step(_YutaponBufferTex_var.rgb,node_1827);
                float node_544_if_leB = step(node_1827,_YutaponBufferTex_var.rgb);
                float4 _SplitTex_var = tex2Dlod(_SplitTex,float4(TRANSFORM_TEX(o.uv0, _SplitTex),0.0,0));
                float4 node_8296 = _Time;
                float2 node_4523 = (o.uv0+(node_8296.r*_noiseSpeed)*float2(1,1));
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(node_4523, _NoiseTex),0.0,0));
                float4 _SliceBufferTex_var = tex2Dlod(_SliceBufferTex,float4(TRANSFORM_TEX(o.uv0, _SliceBufferTex),0.0,0));
                float3 SliceOffset = ((1.0 - _SplitTex_var.rgb)*_OffsetDirection.rgb*_SlicePower*_NoiseTex_var.rgb*_SliceBufferTex_var.rgb);
                float node_3277 = 0.0;
                float node_1019 = ((-1.0)*_YutaponTiltPower*_YutaponPower);
                float4 _YutaponTex_var = tex2Dlod(_YutaponTex,float4(TRANSFORM_TEX(o.uv0, _YutaponTex),0.0,0));
                float3 YutaponOffset = ((float3((node_1019 + ( (o.uv0 - node_3277) * ((_YutaponTiltPower*_YutaponPower) - node_1019) ) / (1.0 - node_3277)),0.0)+(_OffsetDirection.rgb*_YutaponPower))*_YutaponTex_var.rgb*float3(-1,1,1));
                float3 node_3249 = YutaponOffset;
                v.vertex.xyz += lerp((node_544_if_leA*SliceOffset)+(node_544_if_leB*node_3249),node_3249,node_544_if_leA*node_544_if_leB);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _SliceBufferTex_var = tex2D(_SliceBufferTex,TRANSFORM_TEX(i.uv0, _SliceBufferTex));
                float node_1827 = 0.1;
                float node_9144_if_leA = step(_SliceBufferTex_var.rgb,node_1827);
                float node_9144_if_leB = step(node_1827,_SliceBufferTex_var.rgb);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_228 = (_MainColor.rgb*_MainTex_var.rgb);
                float3 Emission = node_228;
                float4 _SplitEmissionTex_var = tex2D(_SplitEmissionTex,TRANSFORM_TEX(i.uv0, _SplitEmissionTex));
                float node_1764_if_leA = step((1.0 - _SplitEmissionTex_var.rgb),0.5);
                float node_1764_if_leB = step(0.5,(1.0 - _SplitEmissionTex_var.rgb));
                float3 SlicedEmission = lerp((node_1764_if_leA*node_228)+(node_1764_if_leB*(_HighlightsPower*_Highlights.rgb)),node_228,node_1764_if_leA*node_1764_if_leB);
                float3 node_6837 = SlicedEmission;
                float3 emissive = lerp((node_9144_if_leA*Emission)+(node_9144_if_leB*node_6837),node_6837,node_9144_if_leA*node_9144_if_leB);
                float3 finalColor = emissive;
                float4 _OpacityMask_var = tex2D(_OpacityMask,TRANSFORM_TEX(i.uv0, _OpacityMask));
                float OpacityMask = _OpacityMask_var.r;
                return fixed4(finalColor,OpacityMask);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _SplitTex; uniform float4 _SplitTex_ST;
            uniform float4 _OffsetDirection;
            uniform float _SlicePower;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _noiseSpeed;
            uniform sampler2D _SliceBufferTex; uniform float4 _SliceBufferTex_ST;
            uniform float _YutaponPower;
            uniform sampler2D _YutaponBufferTex; uniform float4 _YutaponBufferTex_ST;
            uniform sampler2D _YutaponTex; uniform float4 _YutaponTex_ST;
            uniform float _YutaponTiltPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 _YutaponBufferTex_var = tex2Dlod(_YutaponBufferTex,float4(TRANSFORM_TEX(o.uv0, _YutaponBufferTex),0.0,0));
                float node_1827 = 0.1;
                float node_544_if_leA = step(_YutaponBufferTex_var.rgb,node_1827);
                float node_544_if_leB = step(node_1827,_YutaponBufferTex_var.rgb);
                float4 _SplitTex_var = tex2Dlod(_SplitTex,float4(TRANSFORM_TEX(o.uv0, _SplitTex),0.0,0));
                float4 node_8296 = _Time;
                float2 node_4523 = (o.uv0+(node_8296.r*_noiseSpeed)*float2(1,1));
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(node_4523, _NoiseTex),0.0,0));
                float4 _SliceBufferTex_var = tex2Dlod(_SliceBufferTex,float4(TRANSFORM_TEX(o.uv0, _SliceBufferTex),0.0,0));
                float3 SliceOffset = ((1.0 - _SplitTex_var.rgb)*_OffsetDirection.rgb*_SlicePower*_NoiseTex_var.rgb*_SliceBufferTex_var.rgb);
                float node_3277 = 0.0;
                float node_1019 = ((-1.0)*_YutaponTiltPower*_YutaponPower);
                float4 _YutaponTex_var = tex2Dlod(_YutaponTex,float4(TRANSFORM_TEX(o.uv0, _YutaponTex),0.0,0));
                float3 YutaponOffset = ((float3((node_1019 + ( (o.uv0 - node_3277) * ((_YutaponTiltPower*_YutaponPower) - node_1019) ) / (1.0 - node_3277)),0.0)+(_OffsetDirection.rgb*_YutaponPower))*_YutaponTex_var.rgb*float3(-1,1,1));
                float3 node_3249 = YutaponOffset;
                v.vertex.xyz += lerp((node_544_if_leA*SliceOffset)+(node_544_if_leB*node_3249),node_3249,node_544_if_leA*node_544_if_leB);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
