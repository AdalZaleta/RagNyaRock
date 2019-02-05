// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32623,y:33042,varname:node_3138,prsc:2|custl-9748-OUT,alpha-1413-OUT,voffset-8541-OUT,tess-8947-OUT;n:type:ShaderForge.SFN_Tex2d,id:3149,x:30892,y:33495,ptovrint:False,ptlb:NoiseMap,ptin:_NoiseMap,varname:node_3149,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5faaf61a1fc056541a01fcc5168e57c2,ntxv:0,isnm:False|UVIN-9929-OUT;n:type:ShaderForge.SFN_Tex2d,id:5692,x:30690,y:32575,varname:node_5692,prsc:2,tex:aa88289adde4d6345995d2b671b610e8,ntxv:0,isnm:False|UVIN-8210-UVOUT,TEX-7591-TEX;n:type:ShaderForge.SFN_ValueProperty,id:4299,x:31008,y:33682,ptovrint:False,ptlb:Steps,ptin:_Steps,varname:node_4299,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Relay,id:7306,x:31104,y:33381,cmnt:NoiseMap,varname:node_7306,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:9260,x:30260,y:33581,varname:node_9260,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:9929,x:30595,y:33496,varname:node_9929,prsc:2|A-84-OUT,B-9260-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:7897,x:30907,y:32575,varname:node_7897,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5692-RGB;n:type:ShaderForge.SFN_Time,id:9038,x:29944,y:32830,varname:node_9038,prsc:2;n:type:ShaderForge.SFN_Panner,id:8210,x:30218,y:32539,varname:node_8210,prsc:2,spu:0,spv:1|UVIN-8443-UVOUT,DIST-7905-OUT;n:type:ShaderForge.SFN_TexCoord,id:8443,x:29680,y:32872,varname:node_8443,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:7305,x:30180,y:32872,ptovrint:False,ptlb:Velocity,ptin:_Velocity,varname:node_7305,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.25,max:2;n:type:ShaderForge.SFN_Multiply,id:7905,x:30230,y:32713,varname:node_7905,prsc:2|A-9038-T,B-7305-OUT;n:type:ShaderForge.SFN_Set,id:2693,x:31140,y:32575,varname:Displacement,prsc:2|IN-7897-OUT;n:type:ShaderForge.SFN_Get,id:84,x:30260,y:33489,varname:node_84,prsc:2|IN-2693-OUT;n:type:ShaderForge.SFN_Color,id:9414,x:31540,y:32708,ptovrint:False,ptlb:Light1,ptin:_Light1,varname:node_9414,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_LightVector,id:5618,x:30152,y:30538,varname:node_5618,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9338,x:30152,y:30701,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:4162,x:30336,y:30609,varname:node_4162,prsc:2,dt:1|A-5618-OUT,B-9338-OUT;n:type:ShaderForge.SFN_Set,id:1417,x:30896,y:30609,varname:node_1417,prsc:2|IN-3878-OUT;n:type:ShaderForge.SFN_LightColor,id:6180,x:30511,y:30761,varname:node_6180,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3878,x:30706,y:30609,varname:node_3878,prsc:2|A-8809-OUT,B-6180-RGB;n:type:ShaderForge.SFN_Multiply,id:8809,x:30511,y:30609,varname:node_8809,prsc:2|A-4162-OUT,B-913-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:913,x:30336,y:30761,varname:node_913,prsc:2;n:type:ShaderForge.SFN_Set,id:5374,x:30706,y:30531,varname:node_5374,prsc:2|IN-8809-OUT;n:type:ShaderForge.SFN_Color,id:9500,x:31540,y:32876,ptovrint:False,ptlb:Light2,ptin:_Light2,varname:node_9500,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4230153,c2:0.7851403,c3:0.9245283,c4:1;n:type:ShaderForge.SFN_Color,id:5862,x:31540,y:33041,ptovrint:False,ptlb:Dark1,ptin:_Dark1,varname:node_5862,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.05678178,c2:0.2316239,c3:0.4150943,c4:1;n:type:ShaderForge.SFN_Color,id:1936,x:31540,y:33202,ptovrint:False,ptlb:Dark2,ptin:_Dark2,varname:node_1936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.06915272,c2:0.3827845,c3:0.6981132,c4:1;n:type:ShaderForge.SFN_Lerp,id:4387,x:32119,y:32959,varname:node_4387,prsc:2|A-4666-OUT,B-9393-OUT,T-8685-OUT;n:type:ShaderForge.SFN_Lerp,id:9393,x:31827,y:32782,varname:node_9393,prsc:2|A-9414-RGB,B-9500-RGB,T-5570-V;n:type:ShaderForge.SFN_Lerp,id:4666,x:31845,y:33045,varname:node_4666,prsc:2|A-5862-RGB,B-1936-RGB,T-5570-V;n:type:ShaderForge.SFN_TexCoord,id:5570,x:31687,y:32913,varname:node_5570,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Posterize,id:8685,x:31347,y:33490,varname:node_8685,prsc:2|IN-3149-RGB,STPS-4299-OUT;n:type:ShaderForge.SFN_Multiply,id:4572,x:31120,y:33957,varname:node_4572,prsc:2|A-8574-OUT,B-5504-OUT;n:type:ShaderForge.SFN_Slider,id:5504,x:30615,y:34176,ptovrint:False,ptlb:OffsetMag,ptin:_OffsetMag,varname:node_8976,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:2853,x:30635,y:33955,ptovrint:False,ptlb:OffsetNoise,ptin:_OffsetNoise,varname:node_3803,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-965-UVOUT;n:type:ShaderForge.SFN_Panner,id:965,x:30445,y:33955,varname:node_965,prsc:2,spu:0,spv:1|UVIN-7961-UVOUT,DIST-7295-TSL;n:type:ShaderForge.SFN_TexCoord,id:7961,x:30227,y:33955,varname:node_7961,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:7295,x:30227,y:34134,varname:node_7295,prsc:2;n:type:ShaderForge.SFN_Append,id:8574,x:30912,y:33955,varname:node_8574,prsc:2|A-2658-OUT,B-2853-G,C-2658-OUT;n:type:ShaderForge.SFN_Set,id:4585,x:31319,y:33957,varname:Offset,prsc:2|IN-4572-OUT;n:type:ShaderForge.SFN_Vector1,id:2658,x:30646,y:33849,varname:node_2658,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:8947,x:32297,y:33682,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:node_8947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Get,id:8541,x:32203,y:33497,varname:node_8541,prsc:2|IN-4585-OUT;n:type:ShaderForge.SFN_DepthBlend,id:9228,x:30493,y:34690,varname:node_9228,prsc:2|DIST-7251-OUT;n:type:ShaderForge.SFN_Slider,id:7251,x:30141,y:34690,ptovrint:False,ptlb:DepthBlend,ptin:_DepthBlend,varname:node_7251,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.035195,max:3;n:type:ShaderForge.SFN_OneMinus,id:7289,x:30676,y:34690,varname:node_7289,prsc:2|IN-9228-OUT;n:type:ShaderForge.SFN_Clamp01,id:4651,x:30865,y:34690,varname:node_4651,prsc:2|IN-7289-OUT;n:type:ShaderForge.SFN_Set,id:2189,x:31422,y:34559,varname:Depth,prsc:2|IN-161-OUT;n:type:ShaderForge.SFN_Vector1,id:1413,x:32409,y:33350,varname:node_1413,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:9748,x:32364,y:33135,varname:node_9748,prsc:2|A-4387-OUT,B-7756-RGB,T-1209-OUT;n:type:ShaderForge.SFN_Color,id:7756,x:32106,y:33164,ptovrint:False,ptlb:FoamColor,ptin:_FoamColor,varname:node_7756,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Get,id:1209,x:32085,y:33320,varname:node_1209,prsc:2|IN-2189-OUT;n:type:ShaderForge.SFN_If,id:161,x:31231,y:34686,varname:node_161,prsc:2|A-9829-OUT,B-434-OUT,GT-1265-OUT,EQ-4765-OUT,LT-4765-OUT;n:type:ShaderForge.SFN_Vector1,id:4765,x:31017,y:34864,varname:node_4765,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1265,x:31017,y:34914,varname:node_1265,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9829,x:31051,y:34538,varname:node_9829,prsc:2|A-700-R,B-4651-OUT;n:type:ShaderForge.SFN_Vector1,id:8276,x:30754,y:34805,varname:node_8276,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:700,x:30748,y:34397,ptovrint:False,ptlb:FoamNoise,ptin:_FoamNoise,varname:node_700,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-5449-OUT;n:type:ShaderForge.SFN_Slider,id:434,x:30676,y:34898,ptovrint:False,ptlb:FoamThreshold,ptin:_FoamThreshold,varname:node_434,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:7591,x:30510,y:32872,ptovrint:False,ptlb:DisplacementTexture,ptin:_DisplacementTexture,varname:node_7591,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa88289adde4d6345995d2b671b610e8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5945,x:30734,y:33071,varname:node_5945,prsc:2,tex:aa88289adde4d6345995d2b671b610e8,ntxv:0,isnm:False|UVIN-5592-UVOUT,TEX-7591-TEX;n:type:ShaderForge.SFN_Panner,id:5592,x:30207,y:33193,varname:node_5592,prsc:2,spu:1,spv:1|UVIN-8443-UVOUT,DIST-6624-OUT;n:type:ShaderForge.SFN_Multiply,id:6624,x:30218,y:33049,varname:node_6624,prsc:2|A-9038-T,B-9164-OUT;n:type:ShaderForge.SFN_Slider,id:9164,x:30190,y:32964,ptovrint:False,ptlb:FoamPanVel,ptin:_FoamPanVel,varname:node_9164,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_ComponentMask,id:721,x:30943,y:33071,varname:node_721,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5945-RGB;n:type:ShaderForge.SFN_Set,id:2465,x:31136,y:33071,varname:FoamDisplacement,prsc:2|IN-721-OUT;n:type:ShaderForge.SFN_Get,id:5449,x:30386,y:34422,varname:node_5449,prsc:2|IN-2465-OUT;proporder:3149-4299-7305-5862-1936-9414-9500-8947-5504-2853-7251-7756-700-434-7591-9164;pass:END;sub:END;*/

Shader "Shader Forge/Kawa" {
    Properties {
        _NoiseMap ("NoiseMap", 2D) = "white" {}
        _Steps ("Steps", Float ) = 5
        _Velocity ("Velocity", Range(0, 2)) = 0.25
        _Dark1 ("Dark1", Color) = (0.05678178,0.2316239,0.4150943,1)
        _Dark2 ("Dark2", Color) = (0.06915272,0.3827845,0.6981132,1)
        _Light1 ("Light1", Color) = (1,1,1,1)
        _Light2 ("Light2", Color) = (0.4230153,0.7851403,0.9245283,1)
        _Tesselation ("Tesselation", Range(1, 10)) = 1
        _OffsetMag ("OffsetMag", Range(0, 1)) = 1
        _OffsetNoise ("OffsetNoise", 2D) = "white" {}
        _DepthBlend ("DepthBlend", Range(0, 3)) = 2.035195
        _FoamColor ("FoamColor", Color) = (1,1,1,1)
        _FoamNoise ("FoamNoise", 2D) = "white" {}
        _FoamThreshold ("FoamThreshold", Range(0, 1)) = 0
        _DisplacementTexture ("DisplacementTexture", 2D) = "white" {}
        _FoamPanVel ("FoamPanVel", Range(0, 2)) = 0
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _NoiseMap; uniform float4 _NoiseMap_ST;
            uniform float _Steps;
            uniform float _Velocity;
            uniform float4 _Light1;
            uniform float4 _Light2;
            uniform float4 _Dark1;
            uniform float4 _Dark2;
            uniform float _OffsetMag;
            uniform sampler2D _OffsetNoise; uniform float4 _OffsetNoise_ST;
            uniform float _Tesselation;
            uniform float _DepthBlend;
            uniform float4 _FoamColor;
            uniform sampler2D _FoamNoise; uniform float4 _FoamNoise_ST;
            uniform float _FoamThreshold;
            uniform sampler2D _DisplacementTexture; uniform float4 _DisplacementTexture_ST;
            uniform float _FoamPanVel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
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
                float node_2658 = 0.0;
                float4 node_7295 = _Time;
                float2 node_965 = (o.uv0+node_7295.r*float2(0,1));
                float4 _OffsetNoise_var = tex2Dlod(_OffsetNoise,float4(TRANSFORM_TEX(node_965, _OffsetNoise),0.0,0));
                float3 Offset = (float3(node_2658,_OffsetNoise_var.g,node_2658)*_OffsetMag);
                v.vertex.xyz += Offset;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD3;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
                float4 node_9038 = _Time;
                float2 node_8210 = (i.uv0+(node_9038.g*_Velocity)*float2(0,1));
                float4 node_5692 = tex2D(_DisplacementTexture,TRANSFORM_TEX(node_8210, _DisplacementTexture));
                float2 Displacement = node_5692.rgb.rg;
                float2 node_9929 = (Displacement*i.uv0);
                float4 _NoiseMap_var = tex2D(_NoiseMap,TRANSFORM_TEX(node_9929, _NoiseMap));
                float2 node_5592 = (i.uv0+(node_9038.g*_FoamPanVel)*float2(1,1));
                float4 node_5945 = tex2D(_DisplacementTexture,TRANSFORM_TEX(node_5592, _DisplacementTexture));
                float2 FoamDisplacement = node_5945.rgb.rg;
                float2 node_5449 = FoamDisplacement;
                float4 _FoamNoise_var = tex2D(_FoamNoise,TRANSFORM_TEX(node_5449, _FoamNoise));
                float node_161_if_leA = step((_FoamNoise_var.r*saturate((1.0 - saturate((sceneZ-partZ)/_DepthBlend)))),_FoamThreshold);
                float node_161_if_leB = step(_FoamThreshold,(_FoamNoise_var.r*saturate((1.0 - saturate((sceneZ-partZ)/_DepthBlend)))));
                float node_4765 = 0.0;
                float Depth = lerp((node_161_if_leA*node_4765)+(node_161_if_leB*1.0),node_4765,node_161_if_leA*node_161_if_leB);
                float3 finalColor = lerp(lerp(lerp(_Dark1.rgb,_Dark2.rgb,i.uv0.g),lerp(_Light1.rgb,_Light2.rgb,i.uv0.g),floor(_NoiseMap_var.rgb * _Steps) / (_Steps - 1)),_FoamColor.rgb,Depth);
                return fixed4(finalColor,1.0);
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #if !UNITY_PASS_SHADOWCASTER
            #define UNITY_PASS_SHADOWCASTER
            #endif
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float _OffsetMag;
            uniform sampler2D _OffsetNoise; uniform float4 _OffsetNoise_ST;
            uniform float _Tesselation;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float node_2658 = 0.0;
                float4 node_7295 = _Time;
                float2 node_965 = (o.uv0+node_7295.r*float2(0,1));
                float4 _OffsetNoise_var = tex2Dlod(_OffsetNoise,float4(TRANSFORM_TEX(node_965, _OffsetNoise),0.0,0));
                float3 Offset = (float3(node_2658,_OffsetNoise_var.g,node_2658)*_OffsetMag);
                v.vertex.xyz += Offset;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD3;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
