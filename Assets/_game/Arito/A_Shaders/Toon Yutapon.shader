// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35164,y:31094,varname:node_3138,prsc:2|normal-94-OUT,emission-4203-OUT,custl-8380-OUT,voffset-5635-OUT,tess-6444-OUT;n:type:ShaderForge.SFN_LightVector,id:1501,x:32319,y:31459,varname:node_1501,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2465,x:32319,y:31315,prsc:2,pt:True;n:type:ShaderForge.SFN_Set,id:8678,x:33028,y:31592,varname:lightData,prsc:2|IN-5986-OUT;n:type:ShaderForge.SFN_LightColor,id:2706,x:32506,y:31665,varname:node_2706,prsc:2;n:type:ShaderForge.SFN_Multiply,id:123,x:32506,y:31540,varname:node_123,prsc:2|A-7497-OUT,B-7929-OUT;n:type:ShaderForge.SFN_Multiply,id:8244,x:32682,y:31592,varname:node_8244,prsc:2|A-123-OUT,B-2706-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:7929,x:32319,y:31583,varname:node_7929,prsc:2;n:type:ShaderForge.SFN_Color,id:6001,x:32319,y:31819,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:7467,x:32669,y:31819,varname:Diffuse,prsc:2|IN-8746-OUT;n:type:ShaderForge.SFN_Tex2d,id:7791,x:32321,y:31988,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4297-UVOUT;n:type:ShaderForge.SFN_Dot,id:7497,x:32506,y:31386,varname:node_7497,prsc:2,dt:1|A-1501-OUT,B-2465-OUT;n:type:ShaderForge.SFN_HalfVector,id:3782,x:32319,y:31191,varname:node_3782,prsc:2;n:type:ShaderForge.SFN_Dot,id:7728,x:32506,y:31242,varname:node_7728,prsc:2,dt:1|A-3782-OUT,B-2465-OUT;n:type:ShaderForge.SFN_Set,id:3922,x:32682,y:31540,varname:Shadow,prsc:2|IN-123-OUT;n:type:ShaderForge.SFN_Set,id:1493,x:33336,y:31242,varname:Specular,prsc:2|IN-8182-OUT;n:type:ShaderForge.SFN_Power,id:5125,x:32703,y:31242,varname:node_5125,prsc:2|VAL-7728-OUT,EXP-2568-OUT;n:type:ShaderForge.SFN_Slider,id:589,x:32624,y:31018,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:_SpecularPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.5,max:10;n:type:ShaderForge.SFN_Exp,id:2568,x:32703,y:31098,varname:node_2568,prsc:2,et:0|IN-589-OUT;n:type:ShaderForge.SFN_Slider,id:6040,x:32929,y:31019,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:_SpecularIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Exp,id:6503,x:33008,y:31098,varname:node_6503,prsc:2,et:0|IN-6040-OUT;n:type:ShaderForge.SFN_Multiply,id:5055,x:33008,y:31242,varname:node_5055,prsc:2|A-5125-OUT,B-6503-OUT;n:type:ShaderForge.SFN_Multiply,id:8182,x:33179,y:31242,varname:node_8182,prsc:2|A-5055-OUT,B-6427-OUT;n:type:ShaderForge.SFN_Get,id:6427,x:32987,y:31362,varname:node_6427,prsc:2|IN-3922-OUT;n:type:ShaderForge.SFN_Tex2d,id:9925,x:32321,y:32270,ptovrint:False,ptlb:NormalTex,ptin:_NormalTex,varname:_NormalTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:2052,x:32510,y:32159,varname:node_2052,prsc:2|A-4936-OUT,B-9925-RGB,T-7903-OUT;n:type:ShaderForge.SFN_Vector3,id:4936,x:32321,y:32159,varname:node_4936,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:7903,x:32510,y:32322,ptovrint:False,ptlb:NormalPower,ptin:_NormalPower,varname:_NormalPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Set,id:2699,x:32673,y:32159,varname:normalData,prsc:2|IN-2052-OUT;n:type:ShaderForge.SFN_Multiply,id:8746,x:32506,y:31819,varname:node_8746,prsc:2|A-6001-RGB,B-7791-RGB;n:type:ShaderForge.SFN_Get,id:8224,x:33793,y:31101,varname:node_8224,prsc:2|IN-7467-OUT;n:type:ShaderForge.SFN_Get,id:5673,x:33793,y:31240,varname:node_5673,prsc:2|IN-8678-OUT;n:type:ShaderForge.SFN_Get,id:94,x:34964,y:31146,varname:node_94,prsc:2|IN-2699-OUT;n:type:ShaderForge.SFN_Multiply,id:3594,x:34001,y:31240,varname:node_3594,prsc:2|A-5673-OUT,B-1875-OUT;n:type:ShaderForge.SFN_Get,id:1875,x:33793,y:31293,varname:node_1875,prsc:2|IN-1493-OUT;n:type:ShaderForge.SFN_Multiply,id:115,x:34001,y:31101,varname:node_115,prsc:2|A-8224-OUT,B-5673-OUT;n:type:ShaderForge.SFN_Set,id:9336,x:34344,y:31014,varname:finalEmission,prsc:2|IN-5115-OUT;n:type:ShaderForge.SFN_Set,id:4582,x:34498,y:31240,varname:finalLight,prsc:2|IN-5540-OUT;n:type:ShaderForge.SFN_Get,id:4203,x:34964,y:31193,varname:node_4203,prsc:2|IN-9336-OUT;n:type:ShaderForge.SFN_Get,id:8380,x:34964,y:31334,varname:node_8380,prsc:2|IN-4582-OUT;n:type:ShaderForge.SFN_Posterize,id:820,x:34180,y:31240,varname:node_820,prsc:2|IN-3594-OUT,STPS-1959-OUT;n:type:ShaderForge.SFN_Slider,id:1387,x:33844,y:31388,ptovrint:False,ptlb:LightSteps,ptin:_LightSteps,varname:node_1387,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:5,cur:5,max:20;n:type:ShaderForge.SFN_Round,id:1959,x:34180,y:31388,varname:node_1959,prsc:2|IN-1387-OUT;n:type:ShaderForge.SFN_Desaturate,id:5540,x:34344,y:31240,varname:node_5540,prsc:2|COL-820-OUT;n:type:ShaderForge.SFN_Tex2d,id:7192,x:34180,y:31605,ptovrint:False,ptlb:YutaponHeightBuffer,ptin:_YutaponHeightBuffer,varname:node_7192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5635,x:34391,y:31678,varname:node_5635,prsc:2|A-7192-RGB,B-9495-XYZ;n:type:ShaderForge.SFN_Vector4Property,id:9495,x:34180,y:31783,ptovrint:False,ptlb:YutaponOffsetDirection,ptin:_YutaponOffsetDirection,varname:node_9495,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:1,v4:0;n:type:ShaderForge.SFN_Tex2d,id:7774,x:33606,y:30944,ptovrint:False,ptlb:YutaponCutsBuffer,ptin:_YutaponCutsBuffer,varname:node_7774,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ca542c9d59ab77d4b97e695efb3e36ef,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Blend,id:5115,x:34180,y:31014,varname:node_5115,prsc:2,blmd:6,clmp:False|SRC-1599-OUT,DST-115-OUT;n:type:ShaderForge.SFN_Slider,id:5472,x:32682,y:31744,ptovrint:False,ptlb:LightSteps_copy,ptin:_LightSteps_copy,varname:_LightSteps_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:5,cur:5,max:20;n:type:ShaderForge.SFN_Round,id:7227,x:33003,y:31744,varname:node_7227,prsc:2|IN-5472-OUT;n:type:ShaderForge.SFN_Posterize,id:5986,x:32869,y:31592,varname:node_5986,prsc:2|IN-8244-OUT,STPS-7227-OUT;n:type:ShaderForge.SFN_Lerp,id:1599,x:34001,y:30969,varname:node_1599,prsc:2|A-4548-OUT,B-9335-OUT,T-7774-R;n:type:ShaderForge.SFN_Color,id:8641,x:33606,y:30736,ptovrint:False,ptlb:SliceHighlights,ptin:_SliceHighlights,varname:node_8641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9811321,c2:0.9811321,c3:0.9811321,c4:1;n:type:ShaderForge.SFN_Vector1,id:4548,x:33606,y:30873,varname:node_4548,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9335,x:33791,y:30736,varname:node_9335,prsc:2|A-8641-RGB,B-3933-OUT;n:type:ShaderForge.SFN_Slider,id:3933,x:33449,y:30649,ptovrint:False,ptlb:SliceHighlightsPower,ptin:_SliceHighlightsPower,varname:node_3933,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_TexCoord,id:4297,x:32156,y:31988,varname:node_4297,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:6444,x:34964,y:31494,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:node_6444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:6001-7791-9925-7903-589-6040-1387-7192-9495-7774-5472-8641-3933-6444;pass:END;sub:END;*/

Shader "Retus001/ToonYutapon" {
    Properties {
        _MainColor ("Main Color", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _NormalTex ("NormalTex", 2D) = "bump" {}
        _NormalPower ("NormalPower", Range(0, 1)) = 0.5
        _SpecularPower ("SpecularPower", Range(0, 10)) = 3.5
        _SpecularIntensity ("SpecularIntensity", Range(0, 10)) = 0
        _LightSteps ("LightSteps", Range(5, 20)) = 5
        _YutaponHeightBuffer ("YutaponHeightBuffer", 2D) = "black" {}
        _YutaponOffsetDirection ("YutaponOffsetDirection", Vector) = (0,0,1,0)
        _YutaponCutsBuffer ("YutaponCutsBuffer", 2D) = "black" {}
        _LightSteps_copy ("LightSteps_copy", Range(5, 20)) = 5
        _SliceHighlights ("SliceHighlights", Color) = (0.9811321,0.9811321,0.9811321,1)
        _SliceHighlightsPower ("SliceHighlightsPower", Range(0, 10)) = 1
        _Tesselation ("Tesselation", Float ) = 0
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
            Cull Off
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalPower;
            uniform float _LightSteps;
            uniform sampler2D _YutaponHeightBuffer; uniform float4 _YutaponHeightBuffer_ST;
            uniform float4 _YutaponOffsetDirection;
            uniform sampler2D _YutaponCutsBuffer; uniform float4 _YutaponCutsBuffer_ST;
            uniform float _LightSteps_copy;
            uniform float4 _SliceHighlights;
            uniform float _SliceHighlightsPower;
            uniform float _Tesselation;
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
                float4 _YutaponHeightBuffer_var = tex2Dlod(_YutaponHeightBuffer,float4(TRANSFORM_TEX(o.uv0, _YutaponHeightBuffer),0.0,0));
                v.vertex.xyz += (_YutaponHeightBuffer_var.rgb*_YutaponOffsetDirection.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD8;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 normalData = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalPower);
                float3 normalLocal = normalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
////// Emissive:
                float node_4548 = 0.0;
                float4 _YutaponCutsBuffer_var = tex2D(_YutaponCutsBuffer,TRANSFORM_TEX(i.uv0, _YutaponCutsBuffer));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 Diffuse = (_MainColor.rgb*_MainTex_var.rgb);
                float node_123 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float node_7227 = round(_LightSteps_copy);
                float3 lightData = floor((node_123*_LightColor0.rgb) * node_7227) / (node_7227 - 1);
                float3 node_5673 = lightData;
                float3 finalEmission = (1.0-(1.0-lerp(float3(node_4548,node_4548,node_4548),(_SliceHighlights.rgb*_SliceHighlightsPower),_YutaponCutsBuffer_var.r))*(1.0-(Diffuse*node_5673)));
                float3 emissive = finalEmission;
                float Shadow = node_123;
                float Specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*Shadow);
                float node_1959 = round(_LightSteps);
                float finalLight = dot(floor((node_5673*Specular) * node_1959) / (node_1959 - 1),float3(0.3,0.59,0.11));
                float node_8380 = finalLight;
                float3 finalColor = emissive + float3(node_8380,node_8380,node_8380);
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
            Cull Off
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDADD
            #define UNITY_PASS_FORWARDADD
            #endif
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalPower;
            uniform float _LightSteps;
            uniform sampler2D _YutaponHeightBuffer; uniform float4 _YutaponHeightBuffer_ST;
            uniform float4 _YutaponOffsetDirection;
            uniform sampler2D _YutaponCutsBuffer; uniform float4 _YutaponCutsBuffer_ST;
            uniform float _LightSteps_copy;
            uniform float4 _SliceHighlights;
            uniform float _SliceHighlightsPower;
            uniform float _Tesselation;
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
                float4 _YutaponHeightBuffer_var = tex2Dlod(_YutaponHeightBuffer,float4(TRANSFORM_TEX(o.uv0, _YutaponHeightBuffer),0.0,0));
                v.vertex.xyz += (_YutaponHeightBuffer_var.rgb*_YutaponOffsetDirection.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD8;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 normalData = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalPower);
                float3 normalLocal = normalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float node_123 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float node_7227 = round(_LightSteps_copy);
                float3 lightData = floor((node_123*_LightColor0.rgb) * node_7227) / (node_7227 - 1);
                float3 node_5673 = lightData;
                float Shadow = node_123;
                float Specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*Shadow);
                float node_1959 = round(_LightSteps);
                float finalLight = dot(floor((node_5673*Specular) * node_1959) / (node_1959 - 1),float3(0.3,0.59,0.11));
                float node_8380 = finalLight;
                float3 finalColor = float3(node_8380,node_8380,node_8380);
                return fixed4(finalColor * 1,0);
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _YutaponHeightBuffer; uniform float4 _YutaponHeightBuffer_ST;
            uniform float4 _YutaponOffsetDirection;
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
                float4 _YutaponHeightBuffer_var = tex2Dlod(_YutaponHeightBuffer,float4(TRANSFORM_TEX(o.uv0, _YutaponHeightBuffer),0.0,0));
                v.vertex.xyz += (_YutaponHeightBuffer_var.rgb*_YutaponOffsetDirection.rgb);
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Standard"
    CustomEditor "ShaderForgeMaterialInspector"
}
