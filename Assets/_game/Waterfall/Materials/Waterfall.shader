// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32547,y:33088,varname:node_3138,prsc:2|custl-4387-OUT;n:type:ShaderForge.SFN_Tex2d,id:3149,x:30892,y:33495,ptovrint:False,ptlb:NoiseMap,ptin:_NoiseMap,varname:node_3149,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5faaf61a1fc056541a01fcc5168e57c2,ntxv:0,isnm:False|UVIN-9929-OUT;n:type:ShaderForge.SFN_Tex2d,id:5692,x:30690,y:32575,ptovrint:False,ptlb:Displacement,ptin:_Displacement,varname:node_5692,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa88289adde4d6345995d2b671b610e8,ntxv:0,isnm:False|UVIN-8210-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:4299,x:31008,y:33682,ptovrint:False,ptlb:Steps,ptin:_Steps,varname:node_4299,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Relay,id:7306,x:31104,y:33381,cmnt:NoiseMap,varname:node_7306,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:9260,x:30260,y:33581,varname:node_9260,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:9929,x:30595,y:33496,varname:node_9929,prsc:2|A-84-OUT,B-9260-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:7897,x:30907,y:32575,varname:node_7897,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5692-RGB;n:type:ShaderForge.SFN_Time,id:9038,x:30077,y:32769,varname:node_9038,prsc:2;n:type:ShaderForge.SFN_Panner,id:8210,x:30472,y:32565,varname:node_8210,prsc:2,spu:0,spv:1|UVIN-8443-UVOUT,DIST-7905-OUT;n:type:ShaderForge.SFN_TexCoord,id:8443,x:30231,y:32565,varname:node_8443,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:7305,x:30195,y:32915,ptovrint:False,ptlb:Velocity,ptin:_Velocity,varname:node_7305,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.25,max:2;n:type:ShaderForge.SFN_Multiply,id:7905,x:30337,y:32721,varname:node_7905,prsc:2|A-9038-T,B-7305-OUT;n:type:ShaderForge.SFN_Set,id:2693,x:31140,y:32575,varname:Displacement,prsc:2|IN-7897-OUT;n:type:ShaderForge.SFN_Get,id:84,x:30260,y:33489,varname:node_84,prsc:2|IN-2693-OUT;n:type:ShaderForge.SFN_Color,id:9414,x:31540,y:32708,ptovrint:False,ptlb:Light1,ptin:_Light1,varname:node_9414,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_LightVector,id:5618,x:30152,y:30538,varname:node_5618,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9338,x:30152,y:30701,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:4162,x:30336,y:30609,varname:node_4162,prsc:2,dt:1|A-5618-OUT,B-9338-OUT;n:type:ShaderForge.SFN_Set,id:1417,x:30896,y:30609,varname:node_1417,prsc:2|IN-3878-OUT;n:type:ShaderForge.SFN_LightColor,id:6180,x:30511,y:30761,varname:node_6180,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3878,x:30706,y:30609,varname:node_3878,prsc:2|A-8809-OUT,B-6180-RGB;n:type:ShaderForge.SFN_Multiply,id:8809,x:30511,y:30609,varname:node_8809,prsc:2|A-4162-OUT,B-913-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:913,x:30336,y:30761,varname:node_913,prsc:2;n:type:ShaderForge.SFN_Set,id:5374,x:30706,y:30531,varname:node_5374,prsc:2|IN-8809-OUT;n:type:ShaderForge.SFN_Color,id:9500,x:31540,y:32876,ptovrint:False,ptlb:Light2,ptin:_Light2,varname:node_9500,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4230153,c2:0.7851403,c3:0.9245283,c4:1;n:type:ShaderForge.SFN_Color,id:5862,x:31540,y:33041,ptovrint:False,ptlb:Dark1,ptin:_Dark1,varname:node_5862,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.05678178,c2:0.2316239,c3:0.4150943,c4:1;n:type:ShaderForge.SFN_Color,id:1936,x:31540,y:33202,ptovrint:False,ptlb:Dark2,ptin:_Dark2,varname:node_1936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.06915272,c2:0.3827845,c3:0.6981132,c4:1;n:type:ShaderForge.SFN_Lerp,id:4387,x:32119,y:32959,varname:node_4387,prsc:2|A-4666-OUT,B-9393-OUT,T-8685-OUT;n:type:ShaderForge.SFN_Lerp,id:9393,x:31827,y:32782,varname:node_9393,prsc:2|A-9414-RGB,B-9500-RGB,T-5570-V;n:type:ShaderForge.SFN_Lerp,id:4666,x:31845,y:33045,varname:node_4666,prsc:2|A-5862-RGB,B-1936-RGB,T-5570-V;n:type:ShaderForge.SFN_TexCoord,id:5570,x:31687,y:32913,varname:node_5570,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Posterize,id:8685,x:31347,y:33490,varname:node_8685,prsc:2|IN-3149-RGB,STPS-4299-OUT;proporder:3149-4299-5692-7305-5862-1936-9414-9500;pass:END;sub:END;*/

Shader "Shader Forge/Waterfall" {
    Properties {
        _NoiseMap ("NoiseMap", 2D) = "white" {}
        _Steps ("Steps", Float ) = 5
        _Displacement ("Displacement", 2D) = "white" {}
        _Velocity ("Velocity", Range(0, 2)) = 0.25
        _Dark1 ("Dark1", Color) = (0.05678178,0.2316239,0.4150943,1)
        _Dark2 ("Dark2", Color) = (0.06915272,0.3827845,0.6981132,1)
        _Light1 ("Light1", Color) = (1,1,1,1)
        _Light2 ("Light2", Color) = (0.4230153,0.7851403,0.9245283,1)
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _NoiseMap; uniform float4 _NoiseMap_ST;
            uniform sampler2D _Displacement; uniform float4 _Displacement_ST;
            uniform float _Steps;
            uniform float _Velocity;
            uniform float4 _Light1;
            uniform float4 _Light2;
            uniform float4 _Dark1;
            uniform float4 _Dark2;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float4 node_9038 = _Time;
                float2 node_8210 = (i.uv0+(node_9038.g*_Velocity)*float2(0,1));
                float4 _Displacement_var = tex2D(_Displacement,TRANSFORM_TEX(node_8210, _Displacement));
                float2 Displacement = _Displacement_var.rgb.rg;
                float2 node_9929 = (Displacement*i.uv0);
                float4 _NoiseMap_var = tex2D(_NoiseMap,TRANSFORM_TEX(node_9929, _NoiseMap));
                float3 finalColor = lerp(lerp(_Dark1.rgb,_Dark2.rgb,i.uv0.g),lerp(_Light1.rgb,_Light2.rgb,i.uv0.g),floor(_NoiseMap_var.rgb * _Steps) / (_Steps - 1));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
