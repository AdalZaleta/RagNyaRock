// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|custl-9228-OUT;n:type:ShaderForge.SFN_NormalVector,id:8662,x:31131,y:32925,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2666,x:31132,y:33079,varname:node_2666,prsc:2;n:type:ShaderForge.SFN_Dot,id:6657,x:31339,y:33055,varname:node_6657,prsc:2,dt:4|A-8662-OUT,B-2666-OUT;n:type:ShaderForge.SFN_ViewVector,id:2266,x:31131,y:32783,varname:node_2266,prsc:2;n:type:ShaderForge.SFN_Dot,id:5416,x:31339,y:32773,varname:node_5416,prsc:2,dt:1|A-2266-OUT,B-8662-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:8690,x:31131,y:32641,varname:node_8690,prsc:2;n:type:ShaderForge.SFN_HalfVector,id:87,x:31131,y:32504,varname:node_87,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:6853,x:31608,y:32780,varname:node_6853,prsc:2,tex:64e7766099ad46747a07014e44d0aea1,ntxv:0,isnm:False|UVIN-170-OUT,TEX-4053-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4053,x:31339,y:32613,ptovrint:False,ptlb:BRDF_Tex,ptin:_BRDF_Tex,varname:node_4053,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:64e7766099ad46747a07014e44d0aea1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:170,x:31608,y:32923,varname:node_170,prsc:2|A-6657-OUT,B-5416-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:6721,x:31339,y:33212,varname:node_6721,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1093,x:31608,y:33106,varname:node_1093,prsc:2|A-6657-OUT,B-6721-OUT;n:type:ShaderForge.SFN_Posterize,id:7000,x:31608,y:33284,varname:node_7000,prsc:2|IN-6657-OUT,STPS-7877-OUT;n:type:ShaderForge.SFN_Slider,id:3362,x:30994,y:33384,ptovrint:False,ptlb:Posterize,ptin:_Posterize,varname:node_3362,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:20;n:type:ShaderForge.SFN_Round,id:7877,x:31318,y:33384,varname:node_7877,prsc:2|IN-3362-OUT;n:type:ShaderForge.SFN_Lerp,id:9207,x:31839,y:33284,varname:node_9207,prsc:2|A-6345-RGB,B-513-RGB,T-7000-OUT;n:type:ShaderForge.SFN_Color,id:6345,x:31608,y:33442,ptovrint:False,ptlb:Dark,ptin:_Dark,varname:node_6345,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3018868,c2:0.03559985,c3:0.03559985,c4:1;n:type:ShaderForge.SFN_Color,id:513,x:31608,y:33613,ptovrint:False,ptlb:Light,ptin:_Light,varname:_node_6345_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7819766,c3:0.6273585,c4:1;n:type:ShaderForge.SFN_Lerp,id:4959,x:32027,y:33141,varname:node_4959,prsc:2|A-56-RGB,B-9207-OUT,T-5416-OUT;n:type:ShaderForge.SFN_Color,id:56,x:31839,y:33141,ptovrint:False,ptlb:Rimlight,ptin:_Rimlight,varname:node_56,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.907214,c3:0.3915094,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:9228,x:32333,y:33039,ptovrint:False,ptlb:UseProcedural,ptin:_UseProcedural,varname:node_9228,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-6853-RGB,B-4959-OUT;proporder:4053-3362-6345-513-56-9228;pass:END;sub:END;*/

Shader "Retus001/BRDF" {
    Properties {
        _BRDF_Tex ("BRDF_Tex", 2D) = "white" {}
        _Posterize ("Posterize", Range(0, 20)) = 10
        _Dark ("Dark", Color) = (0.3018868,0.03559985,0.03559985,1)
        _Light ("Light", Color) = (1,0.7819766,0.6273585,1)
        _Rimlight ("Rimlight", Color) = (1,0.907214,0.3915094,1)
        [MaterialToggle] _UseProcedural ("UseProcedural", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
            "CustomTag"="SF"
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _BRDF_Tex; uniform float4 _BRDF_Tex_ST;
            uniform float _Posterize;
            uniform float4 _Dark;
            uniform float4 _Light;
            uniform float4 _Rimlight;
            uniform fixed _UseProcedural;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float node_6657 = 0.5*dot(i.normalDir,lightDirection)+0.5;
                float node_5416 = max(0,dot(viewDirection,i.normalDir));
                float2 node_170 = float2(node_6657,node_5416);
                float4 node_6853 = tex2D(_BRDF_Tex,TRANSFORM_TEX(node_170, _BRDF_Tex));
                float node_7877 = round(_Posterize);
                float3 finalColor = lerp( node_6853.rgb, lerp(_Rimlight.rgb,lerp(_Dark.rgb,_Light.rgb,floor(node_6657 * node_7877) / (node_7877 - 1)),node_5416), _UseProcedural );
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _BRDF_Tex; uniform float4 _BRDF_Tex_ST;
            uniform float _Posterize;
            uniform float4 _Dark;
            uniform float4 _Light;
            uniform float4 _Rimlight;
            uniform fixed _UseProcedural;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float node_6657 = 0.5*dot(i.normalDir,lightDirection)+0.5;
                float node_5416 = max(0,dot(viewDirection,i.normalDir));
                float2 node_170 = float2(node_6657,node_5416);
                float4 node_6853 = tex2D(_BRDF_Tex,TRANSFORM_TEX(node_170, _BRDF_Tex));
                float node_7877 = round(_Posterize);
                float3 finalColor = lerp( node_6853.rgb, lerp(_Rimlight.rgb,lerp(_Dark.rgb,_Light.rgb,floor(node_6657 * node_7877) / (node_7877 - 1)),node_5416), _UseProcedural );
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
