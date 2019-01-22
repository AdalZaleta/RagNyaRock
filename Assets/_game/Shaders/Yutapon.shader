// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-8169-OUT,alpha-8884-R,voffset-969-OUT;n:type:ShaderForge.SFN_Tex2d,id:1607,x:32211,y:32992,ptovrint:False,ptlb:SplitTexture,ptin:_SplitTexture,varname:node_1607,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:43acc290d5693b74cbab1ac5c908d5f1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:969,x:32461,y:33095,varname:node_969,prsc:2|A-1607-RGB,B-3883-XYZ,C-1691-OUT,D-6282-RGB;n:type:ShaderForge.SFN_Vector4Property,id:3883,x:32211,y:33172,ptovrint:False,ptlb:OffsetDirection,ptin:_OffsetDirection,varname:node_3883,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:1,v4:0;n:type:ShaderForge.SFN_Slider,id:1691,x:32054,y:33339,ptovrint:False,ptlb:OffsetPower,ptin:_OffsetPower,varname:node_1691,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:25;n:type:ShaderForge.SFN_Color,id:4026,x:32211,y:32641,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_4026,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8509804,c2:0.2745098,c3:0.3529913,c4:1;n:type:ShaderForge.SFN_Color,id:2915,x:32040,y:32813,ptovrint:False,ptlb:Highlights,ptin:_Highlights,varname:node_2915,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:8169,x:32458,y:32740,varname:node_8169,prsc:2|A-4026-RGB,B-1421-OUT,T-1607-RGB;n:type:ShaderForge.SFN_Multiply,id:1421,x:32211,y:32813,varname:node_1421,prsc:2|A-3553-OUT,B-2915-RGB;n:type:ShaderForge.SFN_Slider,id:3553,x:31883,y:32722,ptovrint:False,ptlb:HighlightsPower,ptin:_HighlightsPower,varname:node_3553,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Tex2d,id:6282,x:32211,y:33434,ptovrint:False,ptlb:NoiseTex,ptin:_NoiseTex,varname:node_6282,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0c60eef2c338ba740a2857c13a904ade,ntxv:0,isnm:False|UVIN-4523-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6378,x:31883,y:33434,varname:node_6378,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4523,x:32054,y:33434,varname:node_4523,prsc:2,spu:1,spv:1|UVIN-6378-UVOUT,DIST-1249-OUT;n:type:ShaderForge.SFN_Time,id:8296,x:31700,y:33532,varname:node_8296,prsc:2;n:type:ShaderForge.SFN_Slider,id:3456,x:31543,y:33670,ptovrint:False,ptlb:noiseSpeed,ptin:_noiseSpeed,varname:node_3456,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:1249,x:31883,y:33582,varname:node_1249,prsc:2|A-8296-TSL,B-3456-OUT;n:type:ShaderForge.SFN_Tex2d,id:8884,x:32458,y:32930,ptovrint:False,ptlb:OpacityMask,ptin:_OpacityMask,varname:node_8884,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3a5a96df060a5cf4a9cc0c59e13486b7,ntxv:0,isnm:False;proporder:1607-3883-1691-4026-2915-3553-6282-3456-8884;pass:END;sub:END;*/

Shader "Retus001/Yutapon" {
    Properties {
        _SplitTexture ("SplitTexture", 2D) = "white" {}
        _OffsetDirection ("OffsetDirection", Vector) = (0,0,1,0)
        _OffsetPower ("OffsetPower", Range(0, 25)) = 1
        _MainColor ("MainColor", Color) = (0.8509804,0.2745098,0.3529913,1)
        _Highlights ("Highlights", Color) = (1,1,1,1)
        _HighlightsPower ("HighlightsPower", Range(0, 10)) = 10
        _NoiseTex ("NoiseTex", 2D) = "white" {}
        _noiseSpeed ("noiseSpeed", Range(0, 1)) = 0.5
        _OpacityMask ("OpacityMask", 2D) = "white" {}
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
            uniform sampler2D _SplitTexture; uniform float4 _SplitTexture_ST;
            uniform float4 _OffsetDirection;
            uniform float _OffsetPower;
            uniform float4 _MainColor;
            uniform float4 _Highlights;
            uniform float _HighlightsPower;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _noiseSpeed;
            uniform sampler2D _OpacityMask; uniform float4 _OpacityMask_ST;
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
                float4 _SplitTexture_var = tex2Dlod(_SplitTexture,float4(TRANSFORM_TEX(o.uv0, _SplitTexture),0.0,0));
                float4 node_8296 = _Time;
                float2 node_4523 = (o.uv0+(node_8296.r*_noiseSpeed)*float2(1,1));
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(node_4523, _NoiseTex),0.0,0));
                float3 node_969 = (_SplitTexture_var.rgb*_OffsetDirection.rgb*_OffsetPower*_NoiseTex_var.rgb);
                v.vertex.xyz += node_969;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _SplitTexture_var = tex2D(_SplitTexture,TRANSFORM_TEX(i.uv0, _SplitTexture));
                float3 emissive = lerp(_MainColor.rgb,(_HighlightsPower*_Highlights.rgb),_SplitTexture_var.rgb);
                float3 finalColor = emissive;
                float4 _OpacityMask_var = tex2D(_OpacityMask,TRANSFORM_TEX(i.uv0, _OpacityMask));
                return fixed4(finalColor,_OpacityMask_var.r);
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
            uniform sampler2D _SplitTexture; uniform float4 _SplitTexture_ST;
            uniform float4 _OffsetDirection;
            uniform float _OffsetPower;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _noiseSpeed;
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
                float4 _SplitTexture_var = tex2Dlod(_SplitTexture,float4(TRANSFORM_TEX(o.uv0, _SplitTexture),0.0,0));
                float4 node_8296 = _Time;
                float2 node_4523 = (o.uv0+(node_8296.r*_noiseSpeed)*float2(1,1));
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(node_4523, _NoiseTex),0.0,0));
                float3 node_969 = (_SplitTexture_var.rgb*_OffsetDirection.rgb*_OffsetPower*_NoiseTex_var.rgb);
                v.vertex.xyz += node_969;
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
