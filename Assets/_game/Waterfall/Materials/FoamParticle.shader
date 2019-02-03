// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33075,y:32681,varname:node_3138,prsc:2|custl-7855-OUT,alpha-6477-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32522,y:32620,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_VertexColor,id:3623,x:32395,y:33140,varname:node_3623,prsc:2;n:type:ShaderForge.SFN_FaceSign,id:9074,x:32522,y:32454,varname:node_9074,prsc:2,fstp:0;n:type:ShaderForge.SFN_Color,id:4575,x:32522,y:32795,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_4575,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.137104,c2:0.7214701,c3:0.745283,c4:1;n:type:ShaderForge.SFN_If,id:7855,x:32767,y:32600,varname:node_7855,prsc:2|A-9074-VFACE,B-7413-OUT,GT-4575-RGB,EQ-7241-RGB,LT-4575-RGB;n:type:ShaderForge.SFN_Vector1,id:7413,x:32767,y:32535,varname:node_7413,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8020,x:32395,y:32969,ptovrint:False,ptlb:DissolveMap,ptin:_DissolveMap,varname:node_8020,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_If,id:6477,x:32724,y:33046,varname:node_6477,prsc:2|A-8020-R,B-3623-A,GT-7542-OUT,EQ-7542-OUT,LT-7315-OUT;n:type:ShaderForge.SFN_Vector1,id:7542,x:32468,y:33265,varname:node_7542,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:7315,x:32468,y:33317,varname:node_7315,prsc:2,v1:1;proporder:7241-4575-8020;pass:END;sub:END;*/

Shader "Shader Forge/FoamParticle" {
    Properties {
        _Color1 ("Color1", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Color2 ("Color2", Color) = (0.137104,0.7214701,0.745283,1)
        _DissolveMap ("DissolveMap", 2D) = "white" {}
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
            Cull Off
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
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform sampler2D _DissolveMap; uniform float4 _DissolveMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
                float node_7855_if_leA = step(isFrontFace,1.0);
                float node_7855_if_leB = step(1.0,isFrontFace);
                float3 finalColor = lerp((node_7855_if_leA*_Color2.rgb)+(node_7855_if_leB*_Color2.rgb),_Color1.rgb,node_7855_if_leA*node_7855_if_leB);
                float4 _DissolveMap_var = tex2D(_DissolveMap,TRANSFORM_TEX(i.uv0, _DissolveMap));
                float node_6477_if_leA = step(_DissolveMap_var.r,i.vertexColor.a);
                float node_6477_if_leB = step(i.vertexColor.a,_DissolveMap_var.r);
                float node_7542 = 0.0;
                return fixed4(finalColor,lerp((node_6477_if_leA*1.0)+(node_6477_if_leB*node_7542),node_7542,node_6477_if_leA*node_6477_if_leB));
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_SHADOWCASTER
            #define UNITY_PASS_SHADOWCASTER
            #endif
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
