// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33496,y:32577,varname:node_9361,prsc:2|normal-5290-OUT,emission-2460-OUT,custl-5085-OUT,olwid-7849-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32734,y:33086,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32734,y:32952,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31858,y:32654,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31858,y:32782,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:31858,y:32933,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:32070,y:32697,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:32070,y:32871,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:32465,y:32866,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-7782-OUT,B-5267-OUT,C-4865-RGB;n:type:ShaderForge.SFN_Multiply,id:1941,x:32465,y:32693,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-544-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:32070,y:32534,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8490566,c2:0.8490566,c3:0.8490566,c4:1;n:type:ShaderForge.SFN_Exp,id:1700,x:32070,y:33054,varname:node_1700,prsc:2,et:1|IN-9978-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:31529,y:33056,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7478632,max:1;n:type:ShaderForge.SFN_Power,id:5267,x:32268,y:32940,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-1700-OUT;n:type:ShaderForge.SFN_Add,id:2159,x:32734,y:32812,cmnt:Combine,varname:node_2159,prsc:2|A-1941-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:32979,y:32952,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-2159-OUT,B-3406-RGB,C-8068-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:9978,x:31858,y:33056,varname:node_9978,prsc:2,a:1,b:11|IN-5328-OUT;n:type:ShaderForge.SFN_Color,id:4865,x:32268,y:33095,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_4865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4622642,c2:0.4622642,c3:0.4622642,c4:1;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32734,y:32646,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:32927,y:32598,cmnt:Ambient Light,varname:node_2460,prsc:2|A-544-OUT,B-7528-RGB;n:type:ShaderForge.SFN_Multiply,id:544,x:32268,y:32448,cmnt:Diffuse Color,varname:node_544,prsc:2|A-134-OUT,B-5927-RGB;n:type:ShaderForge.SFN_Set,id:3428,x:31106,y:31505,varname:DiffuseData,prsc:2|IN-9276-OUT;n:type:ShaderForge.SFN_Get,id:134,x:32070,y:32417,varname:node_134,prsc:2|IN-3428-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3979,x:30302,y:31452,ptovrint:False,ptlb:DiffuseTexture,ptin:_DiffuseTexture,varname:node_3979,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9fa24cf3a76846c4189e23decca5b07a,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7651,x:30593,y:31447,varname:node_7651,prsc:2,tex:9fa24cf3a76846c4189e23decca5b07a,ntxv:0,isnm:False|UVIN-5588-OUT,TEX-3979-TEX;n:type:ShaderForge.SFN_Tex2d,id:6469,x:30593,y:31583,varname:node_6469,prsc:2,tex:9fa24cf3a76846c4189e23decca5b07a,ntxv:0,isnm:False|UVIN-4575-OUT,TEX-3979-TEX;n:type:ShaderForge.SFN_Tex2d,id:3960,x:30593,y:31733,varname:node_3960,prsc:2,tex:9fa24cf3a76846c4189e23decca5b07a,ntxv:0,isnm:False|UVIN-4020-OUT,TEX-3979-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:4809,x:29616,y:31605,varname:node_4809,prsc:2;n:type:ShaderForge.SFN_Append,id:5588,x:30302,y:31638,varname:node_5588,prsc:2|A-7028-R,B-7028-G;n:type:ShaderForge.SFN_Append,id:4575,x:30302,y:31782,varname:node_4575,prsc:2|A-7028-B,B-7028-G;n:type:ShaderForge.SFN_Append,id:4020,x:30302,y:31909,varname:node_4020,prsc:2|A-7028-R,B-7028-B;n:type:ShaderForge.SFN_NormalVector,id:3322,x:30317,y:31255,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:8189,x:30564,y:31255,varname:node_8189,prsc:2|IN-3322-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:9276,x:30942,y:31505,varname:node_9276,prsc:2,chbt:1|M-8189-OUT,R-6469-RGB,G-3960-RGB,B-7651-RGB,BTM-5265-OUT;n:type:ShaderForge.SFN_Vector1,id:5265,x:30942,y:31658,varname:node_5265,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9943,x:29839,y:31605,varname:node_9943,prsc:2|A-4809-XYZ,B-9799-OUT;n:type:ShaderForge.SFN_Slider,id:9799,x:29726,y:31502,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_9799,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_ComponentMask,id:7028,x:30007,y:31605,varname:node_7028,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-9943-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1767,x:30302,y:32092,ptovrint:False,ptlb:NormalTexture,ptin:_NormalTexture,varname:node_1767,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6cb6caee51bd96f4b9b3604cf8fb4daa,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6112,x:30593,y:31920,varname:node_6112,prsc:2,tex:6cb6caee51bd96f4b9b3604cf8fb4daa,ntxv:0,isnm:False|UVIN-5588-OUT,TEX-1767-TEX;n:type:ShaderForge.SFN_Tex2d,id:8075,x:30593,y:32050,varname:node_8075,prsc:2,tex:6cb6caee51bd96f4b9b3604cf8fb4daa,ntxv:0,isnm:False|UVIN-4575-OUT,TEX-1767-TEX;n:type:ShaderForge.SFN_Tex2d,id:5955,x:30593,y:32196,varname:node_5955,prsc:2,tex:6cb6caee51bd96f4b9b3604cf8fb4daa,ntxv:0,isnm:False|UVIN-4020-OUT,TEX-1767-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:3060,x:30942,y:31740,varname:node_3060,prsc:2,chbt:1|M-8189-OUT,R-8075-RGB,G-5955-RGB,B-6112-RGB,BTM-5265-OUT;n:type:ShaderForge.SFN_Set,id:3324,x:31121,y:31740,varname:NormalData,prsc:2|IN-3060-OUT;n:type:ShaderForge.SFN_Get,id:5290,x:32943,y:32516,varname:node_5290,prsc:2|IN-3324-OUT;n:type:ShaderForge.SFN_Color,id:508,x:33554,y:33155,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_508,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:7849,x:33001,y:33179,ptovrint:False,ptlb:OutlineWidth,ptin:_OutlineWidth,varname:node_7849,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.01441264,max:1;proporder:5927-5328-4865-3979-9799-1767-508-7849;pass:END;sub:END;*/

Shader "JoseLuis/MeteorNoUVs" {
    Properties {
        _Color ("Color", Color) = (0.8490566,0.8490566,0.8490566,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.7478632
        _SpecColor ("Spec Color", Color) = (0.4622642,0.4622642,0.4622642,1)
        _DiffuseTexture ("DiffuseTexture", 2D) = "bump" {}
        _Scale ("Scale", Range(0, 10)) = 1
        _NormalTexture ("NormalTexture", 2D) = "bump" {}
        _OutlineColor ("OutlineColor", Color) = (1,0,0,1)
        _OutlineWidth ("OutlineWidth", Range(0, 1)) = 0.01441264
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _OutlineWidth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutlineWidth,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(float3(0,0,0),0);
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Gloss;
            uniform sampler2D _DiffuseTexture; uniform float4 _DiffuseTexture_ST;
            uniform float _Scale;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_8189 = abs(i.normalDir);
                float node_5265 = 0.0;
                float3 node_7028 = (i.posWorld.rgb*_Scale).rgb;
                float2 node_4575 = float2(node_7028.b,node_7028.g);
                float3 node_8075 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_4575, _NormalTexture)));
                float2 node_4020 = float2(node_7028.r,node_7028.b);
                float3 node_5955 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_4020, _NormalTexture)));
                float2 node_5588 = float2(node_7028.r,node_7028.g);
                float3 node_6112 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_5588, _NormalTexture)));
                float3 NormalData = (lerp( lerp( lerp( float3(node_5265,node_5265,node_5265), node_8075.rgb, node_8189.r ), node_5955.rgb, node_8189.g ), node_6112.rgb, node_8189.b ));
                float3 normalLocal = NormalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
////// Emissive:
                float4 node_6469 = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_4575, _DiffuseTexture));
                float4 node_3960 = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_4020, _DiffuseTexture));
                float4 node_7651 = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_5588, _DiffuseTexture));
                float3 DiffuseData = (lerp( lerp( lerp( float3(node_5265,node_5265,node_5265), node_6469.rgb, node_8189.r ), node_3960.rgb, node_8189.g ), node_7651.rgb, node_8189.b ));
                float3 node_544 = (DiffuseData*_Color.rgb); // Diffuse Color
                float3 emissive = (node_544*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 finalColor = emissive + (((node_544*node_7782)+(node_7782*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss)))*_SpecColor.rgb))*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Gloss;
            uniform sampler2D _DiffuseTexture; uniform float4 _DiffuseTexture_ST;
            uniform float _Scale;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_8189 = abs(i.normalDir);
                float node_5265 = 0.0;
                float3 node_7028 = (i.posWorld.rgb*_Scale).rgb;
                float2 node_4575 = float2(node_7028.b,node_7028.g);
                float3 node_8075 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_4575, _NormalTexture)));
                float2 node_4020 = float2(node_7028.r,node_7028.b);
                float3 node_5955 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_4020, _NormalTexture)));
                float2 node_5588 = float2(node_7028.r,node_7028.g);
                float3 node_6112 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_5588, _NormalTexture)));
                float3 NormalData = (lerp( lerp( lerp( float3(node_5265,node_5265,node_5265), node_8075.rgb, node_8189.r ), node_5955.rgb, node_8189.g ), node_6112.rgb, node_8189.b ));
                float3 normalLocal = NormalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float4 node_6469 = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_4575, _DiffuseTexture));
                float4 node_3960 = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_4020, _DiffuseTexture));
                float4 node_7651 = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_5588, _DiffuseTexture));
                float3 DiffuseData = (lerp( lerp( lerp( float3(node_5265,node_5265,node_5265), node_6469.rgb, node_8189.r ), node_3960.rgb, node_8189.g ), node_7651.rgb, node_8189.b ));
                float3 node_544 = (DiffuseData*_Color.rgb); // Diffuse Color
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 finalColor = (((node_544*node_7782)+(node_7782*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss)))*_SpecColor.rgb))*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
