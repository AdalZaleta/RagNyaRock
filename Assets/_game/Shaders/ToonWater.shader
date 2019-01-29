// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|custl-1493-OUT,alpha-2504-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31661,y:32407,ptovrint:False,ptlb:SurfaceColor,ptin:_SurfaceColor,varname:_SurfaceColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2859558,c2:0.7239387,c3:0.9622642,c4:1;n:type:ShaderForge.SFN_Lerp,id:1079,x:31979,y:32687,varname:node_1079,prsc:2|A-7241-RGB,B-2683-RGB,T-6567-OUT;n:type:ShaderForge.SFN_Color,id:2683,x:31661,y:32626,ptovrint:False,ptlb:DepthColor,ptin:_DepthColor,varname:_DepthColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Slider,id:9595,x:31166,y:32832,ptovrint:False,ptlb:DepthBlend,ptin:_DepthBlend,varname:_DepthBlend,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6792887,max:5;n:type:ShaderForge.SFN_DepthBlend,id:8087,x:31491,y:32832,varname:node_8087,prsc:2|DIST-9595-OUT;n:type:ShaderForge.SFN_Clamp01,id:6567,x:31661,y:32832,varname:node_6567,prsc:2|IN-8087-OUT;n:type:ShaderForge.SFN_Slider,id:7585,x:31173,y:33227,ptovrint:False,ptlb:ShoreBlend,ptin:_ShoreBlend,varname:_ShoreBlend,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_DepthBlend,id:1374,x:31499,y:33227,varname:node_1374,prsc:2|DIST-7585-OUT;n:type:ShaderForge.SFN_OneMinus,id:1861,x:31669,y:33227,varname:node_1861,prsc:2|IN-1374-OUT;n:type:ShaderForge.SFN_Clamp01,id:3094,x:31836,y:33227,varname:node_3094,prsc:2|IN-1861-OUT;n:type:ShaderForge.SFN_Lerp,id:1493,x:32353,y:32867,varname:node_1493,prsc:2|A-5640-OUT,B-762-RGB,T-3094-OUT;n:type:ShaderForge.SFN_Color,id:762,x:31669,y:33005,ptovrint:False,ptlb:ShoreColor,ptin:_ShoreColor,varname:_ShoreColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8018868,c2:0.8018868,c3:0.8018868,c4:1;n:type:ShaderForge.SFN_Tex2d,id:194,x:31661,y:32210,ptovrint:False,ptlb:Caustics,ptin:_Caustics,varname:_Caustics,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ca7949f6e0c4be444992a6c96e043ed8,ntxv:0,isnm:False|UVIN-8462-UVOUT;n:type:ShaderForge.SFN_If,id:3069,x:32012,y:32213,varname:node_3069,prsc:2|A-194-RGB,B-3362-OUT,GT-3325-OUT,EQ-3325-OUT,LT-6411-OUT;n:type:ShaderForge.SFN_Slider,id:3362,x:31504,y:32010,ptovrint:False,ptlb:node_3362,ptin:_node_3362,varname:_node_3362,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Vector1,id:3325,x:31661,y:32075,varname:node_3325,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6411,x:31661,y:32132,varname:node_6411,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:5949,x:31225,y:32076,varname:node_5949,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:8462,x:31452,y:32088,varname:node_8462,prsc:2,spu:1,spv:1|UVIN-5949-UVOUT,DIST-7280-OUT;n:type:ShaderForge.SFN_Time,id:5976,x:31217,y:32245,varname:node_5976,prsc:2;n:type:ShaderForge.SFN_Color,id:9062,x:31979,y:32534,ptovrint:False,ptlb:CausticsColor,ptin:_CausticsColor,varname:_CausticsColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:5640,x:32161,y:32687,varname:node_5640,prsc:2|A-9062-RGB,B-1079-OUT,T-194-RGB;n:type:ShaderForge.SFN_ValueProperty,id:6909,x:31217,y:32441,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:7280,x:31452,y:32245,varname:node_7280,prsc:2|A-5976-TSL,B-6909-OUT;n:type:ShaderForge.SFN_Slider,id:2504,x:32196,y:33057,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:_Opacity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:7241-2683-9595-7585-762-194-9062-6909-2504;pass:END;sub:END;*/

Shader "Retus001/ToonWater" {
    Properties {
        _SurfaceColor ("SurfaceColor", Color) = (0.2859558,0.7239387,0.9622642,1)
        _DepthColor ("DepthColor", Color) = (0.07843138,0.3921569,0.7843137,1)
        _DepthBlend ("DepthBlend", Range(0, 5)) = 0.6792887
        _ShoreBlend ("ShoreBlend", Range(0, 1)) = 0
        _ShoreColor ("ShoreColor", Color) = (0.8018868,0.8018868,0.8018868,1)
        _Caustics ("Caustics", 2D) = "white" {}
        _CausticsColor ("CausticsColor", Color) = (1,1,1,1)
        _speed ("speed", Float ) = 0
        _Opacity ("Opacity", Range(0, 1)) = 0
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
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _SurfaceColor;
            uniform float4 _DepthColor;
            uniform float _DepthBlend;
            uniform float _ShoreBlend;
            uniform float4 _ShoreColor;
            uniform sampler2D _Caustics; uniform float4 _Caustics_ST;
            uniform float4 _CausticsColor;
            uniform float _speed;
            uniform float _Opacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
                float4 node_5976 = _Time;
                float2 node_8462 = (i.uv0+(node_5976.r*_speed)*float2(1,1));
                float4 _Caustics_var = tex2D(_Caustics,TRANSFORM_TEX(node_8462, _Caustics));
                float3 finalColor = lerp(lerp(_CausticsColor.rgb,lerp(_SurfaceColor.rgb,_DepthColor.rgb,saturate(saturate((sceneZ-partZ)/_DepthBlend))),_Caustics_var.rgb),_ShoreColor.rgb,saturate((1.0 - saturate((sceneZ-partZ)/_ShoreBlend))));
                return fixed4(finalColor,_Opacity);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
