// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34553,y:31837,varname:node_3138,prsc:2|normal-94-OUT,emission-5001-OUT,custl-4930-OUT,voffset-9326-OUT;n:type:ShaderForge.SFN_LightVector,id:1501,x:32830,y:31633,varname:node_1501,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2465,x:32830,y:31489,prsc:2,pt:True;n:type:ShaderForge.SFN_Set,id:8678,x:33365,y:31787,varname:lightData,prsc:2|IN-8244-OUT;n:type:ShaderForge.SFN_LightColor,id:2706,x:33017,y:31839,varname:node_2706,prsc:2;n:type:ShaderForge.SFN_Multiply,id:123,x:33017,y:31714,varname:node_123,prsc:2|A-7497-OUT,B-7929-OUT;n:type:ShaderForge.SFN_Multiply,id:8244,x:33209,y:31787,varname:node_8244,prsc:2|A-123-OUT,B-2706-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:7929,x:32830,y:31757,varname:node_7929,prsc:2;n:type:ShaderForge.SFN_Color,id:6001,x:33519,y:31642,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:7467,x:33865,y:31724,varname:Diffuse,prsc:2|IN-8746-OUT;n:type:ShaderForge.SFN_Tex2d,id:7791,x:33521,y:31811,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1d271d6b46075634c8d8b00174a6aa2c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Dot,id:7497,x:33017,y:31560,varname:node_7497,prsc:2,dt:1|A-1501-OUT,B-2465-OUT;n:type:ShaderForge.SFN_HalfVector,id:3782,x:32830,y:31365,varname:node_3782,prsc:2;n:type:ShaderForge.SFN_Dot,id:7728,x:33017,y:31416,varname:node_7728,prsc:2,dt:1|A-3782-OUT,B-2465-OUT;n:type:ShaderForge.SFN_Set,id:3922,x:33172,y:31714,varname:Shadow,prsc:2|IN-123-OUT;n:type:ShaderForge.SFN_Set,id:1493,x:33919,y:31416,varname:Specular,prsc:2|IN-8182-OUT;n:type:ShaderForge.SFN_Power,id:5125,x:33214,y:31416,varname:node_5125,prsc:2|VAL-7728-OUT,EXP-2568-OUT;n:type:ShaderForge.SFN_Slider,id:589,x:32887,y:31272,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:_SpecularPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.5,max:10;n:type:ShaderForge.SFN_Exp,id:2568,x:33214,y:31272,varname:node_2568,prsc:2,et:0|IN-589-OUT;n:type:ShaderForge.SFN_Slider,id:6040,x:33057,y:31183,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:_SpecularIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Exp,id:6503,x:33519,y:31272,varname:node_6503,prsc:2,et:0|IN-6040-OUT;n:type:ShaderForge.SFN_Multiply,id:5055,x:33519,y:31416,varname:node_5055,prsc:2|A-5125-OUT,B-6503-OUT;n:type:ShaderForge.SFN_Multiply,id:8182,x:33762,y:31416,varname:node_8182,prsc:2|A-5055-OUT,B-7016-OUT,C-6427-OUT;n:type:ShaderForge.SFN_Get,id:6427,x:33498,y:31539,varname:node_6427,prsc:2|IN-3922-OUT;n:type:ShaderForge.SFN_Tex2d,id:9925,x:33521,y:32092,ptovrint:False,ptlb:NormalTex,ptin:_NormalTex,varname:_NormalTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a1e2bb02c14620649aac3c23fc332454,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:2052,x:33706,y:32072,varname:node_2052,prsc:2|A-4936-OUT,B-9925-RGB,T-7903-OUT;n:type:ShaderForge.SFN_Vector3,id:4936,x:33521,y:31981,varname:node_4936,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:7903,x:33706,y:32235,ptovrint:False,ptlb:NormalPower,ptin:_NormalPower,varname:_NormalPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Set,id:2699,x:33869,y:32072,varname:normalData,prsc:2|IN-2052-OUT;n:type:ShaderForge.SFN_Color,id:2912,x:33519,y:31012,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:_SpecularColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8746,x:33702,y:31724,varname:node_8746,prsc:2|A-6001-RGB,B-7791-RGB;n:type:ShaderForge.SFN_Get,id:8224,x:34121,y:31954,varname:node_8224,prsc:2|IN-7467-OUT;n:type:ShaderForge.SFN_Get,id:5673,x:34121,y:32008,varname:node_5673,prsc:2|IN-8678-OUT;n:type:ShaderForge.SFN_Get,id:94,x:34316,y:31878,varname:node_94,prsc:2|IN-2699-OUT;n:type:ShaderForge.SFN_Multiply,id:4930,x:34337,y:32057,varname:node_4930,prsc:2|A-5673-OUT,B-5592-OUT;n:type:ShaderForge.SFN_Get,id:5592,x:34121,y:32062,varname:node_5592,prsc:2|IN-1493-OUT;n:type:ShaderForge.SFN_Multiply,id:5001,x:34337,y:31934,varname:node_5001,prsc:2|A-8224-OUT,B-5673-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7016,x:33762,y:31282,ptovrint:False,ptlb:Use Specular Light Color,ptin:_UseSpecularLightColor,varname:node_7016,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-2912-RGB,B-164-RGB;n:type:ShaderForge.SFN_LightColor,id:164,x:33519,y:31154,varname:node_164,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:2998,x:33597,y:32643,ptovrint:False,ptlb:Yutapon Heightmap,ptin:_YutaponHeightmap,varname:node_2998,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:948c8575d73c46e42a5ae9aec13f38be,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9754,x:33453,y:32481,varname:node_9754,prsc:2|IN-3483-UVOUT,IMIN-8872-OUT,IMAX-4108-OUT,OMIN-2044-OUT,OMAX-44-OUT;n:type:ShaderForge.SFN_Vector1,id:8872,x:33261,y:32461,varname:node_8872,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4108,x:33261,y:32515,varname:node_4108,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1680,x:33819,y:32802,varname:node_1680,prsc:2|IN-2998-B,IMIN-9210-OUT,IMAX-2725-OUT,OMIN-6211-OUT,OMAX-8268-OUT;n:type:ShaderForge.SFN_Vector1,id:9210,x:33597,y:32802,varname:node_9210,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2725,x:33597,y:32856,varname:node_2725,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:8268,x:33440,y:33015,ptovrint:False,ptlb:Max Vertex Offset Height,ptin:_MaxVertexOffsetHeight,varname:node_8268,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Slider,id:6211,x:33440,y:32926,ptovrint:False,ptlb:Min Vertex Offset Height,ptin:_MinVertexOffsetHeight,varname:_MaxHeight_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:0;n:type:ShaderForge.SFN_Lerp,id:4361,x:34011,y:32751,varname:node_4361,prsc:2|A-9240-OUT,B-1680-OUT,T-1949-B;n:type:ShaderForge.SFN_Vector1,id:9240,x:33819,y:32751,varname:node_9240,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:1949,x:33819,y:32947,ptovrint:False,ptlb:Yutapon Mask,ptin:_YutaponMask,varname:node_1949,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:862aaaca92893664b88457cb6c3bc482,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:44,x:33104,y:32735,ptovrint:False,ptlb:Vertex Offset Tilt,ptin:_VertexOffsetTilt,varname:node_44,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Negate,id:2044,x:33261,y:32571,varname:node_2044,prsc:2|IN-44-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9927,x:33819,y:32597,varname:node_9927,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9754-OUT;n:type:ShaderForge.SFN_Append,id:8231,x:34007,y:32597,varname:node_8231,prsc:2|A-2415-OUT,B-9927-G;n:type:ShaderForge.SFN_Negate,id:2415,x:33819,y:32473,varname:node_2415,prsc:2|IN-9927-R;n:type:ShaderForge.SFN_Multiply,id:7013,x:34170,y:32597,varname:node_7013,prsc:2|A-8231-OUT,B-1949-R;n:type:ShaderForge.SFN_TexCoord,id:3483,x:33261,y:32313,varname:node_3483,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:9326,x:34339,y:32597,varname:node_9326,prsc:2|A-7013-OUT,B-4361-OUT;proporder:6001-7791-9925-7903-2912-589-6040-7016-2998-8268-6211-1949-44;pass:END;sub:END;*/

Shader "Retus001/Default_Yutapon" {
    Properties {
        _MainColor ("Main Color", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _NormalTex ("NormalTex", 2D) = "bump" {}
        _NormalPower ("NormalPower", Range(0, 1)) = 0.5
        _SpecularColor ("SpecularColor", Color) = (1,1,1,1)
        _SpecularPower ("SpecularPower", Range(0, 10)) = 3.5
        _SpecularIntensity ("SpecularIntensity", Range(0, 10)) = 0
        [MaterialToggle] _UseSpecularLightColor ("Use Specular Light Color", Float ) = 0
        _YutaponHeightmap ("Yutapon Heightmap", 2D) = "white" {}
        _MaxVertexOffsetHeight ("Max Vertex Offset Height", Range(0, 2)) = 1
        _MinVertexOffsetHeight ("Min Vertex Offset Height", Range(-2, 0)) = 0
        _YutaponMask ("Yutapon Mask", 2D) = "white" {}
        _VertexOffsetTilt ("Vertex Offset Tilt", Range(0, 1)) = 1
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalPower;
            uniform float4 _SpecularColor;
            uniform fixed _UseSpecularLightColor;
            uniform sampler2D _YutaponHeightmap; uniform float4 _YutaponHeightmap_ST;
            uniform float _MaxVertexOffsetHeight;
            uniform float _MinVertexOffsetHeight;
            uniform sampler2D _YutaponMask; uniform float4 _YutaponMask_ST;
            uniform float _VertexOffsetTilt;
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
                float node_8872 = 0.0;
                float node_2044 = (-1*_VertexOffsetTilt);
                float2 node_9754 = (node_2044 + ( (o.uv0 - node_8872) * (_VertexOffsetTilt - node_2044) ) / (1.0 - node_8872));
                float2 node_9927 = node_9754.rg;
                float4 _YutaponMask_var = tex2Dlod(_YutaponMask,float4(TRANSFORM_TEX(o.uv0, _YutaponMask),0.0,0));
                float2 node_7013 = (float2((-1*node_9927.r),node_9927.g)*_YutaponMask_var.r);
                float4 _YutaponHeightmap_var = tex2Dlod(_YutaponHeightmap,float4(TRANSFORM_TEX(o.uv0, _YutaponHeightmap),0.0,0));
                float node_9210 = 0.0;
                float node_4361 = lerp(0.0,(_MinVertexOffsetHeight + ( (_YutaponHeightmap_var.b - node_9210) * (_MaxVertexOffsetHeight - _MinVertexOffsetHeight) ) / (1.0 - node_9210)),_YutaponMask_var.b);
                v.vertex.xyz += float3(node_7013,node_4361);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
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
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 Diffuse = (_MainColor.rgb*_MainTex_var.rgb);
                float node_123 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float3 lightData = (node_123*_LightColor0.rgb);
                float3 node_5673 = lightData;
                float3 emissive = (Diffuse*node_5673);
                float Shadow = node_123;
                float3 Specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*lerp( _SpecularColor.rgb, _LightColor0.rgb, _UseSpecularLightColor )*Shadow);
                float3 finalColor = emissive + (node_5673*Specular);
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalPower;
            uniform float4 _SpecularColor;
            uniform fixed _UseSpecularLightColor;
            uniform sampler2D _YutaponHeightmap; uniform float4 _YutaponHeightmap_ST;
            uniform float _MaxVertexOffsetHeight;
            uniform float _MinVertexOffsetHeight;
            uniform sampler2D _YutaponMask; uniform float4 _YutaponMask_ST;
            uniform float _VertexOffsetTilt;
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
                float node_8872 = 0.0;
                float node_2044 = (-1*_VertexOffsetTilt);
                float2 node_9754 = (node_2044 + ( (o.uv0 - node_8872) * (_VertexOffsetTilt - node_2044) ) / (1.0 - node_8872));
                float2 node_9927 = node_9754.rg;
                float4 _YutaponMask_var = tex2Dlod(_YutaponMask,float4(TRANSFORM_TEX(o.uv0, _YutaponMask),0.0,0));
                float2 node_7013 = (float2((-1*node_9927.r),node_9927.g)*_YutaponMask_var.r);
                float4 _YutaponHeightmap_var = tex2Dlod(_YutaponHeightmap,float4(TRANSFORM_TEX(o.uv0, _YutaponHeightmap),0.0,0));
                float node_9210 = 0.0;
                float node_4361 = lerp(0.0,(_MinVertexOffsetHeight + ( (_YutaponHeightmap_var.b - node_9210) * (_MaxVertexOffsetHeight - _MinVertexOffsetHeight) ) / (1.0 - node_9210)),_YutaponMask_var.b);
                v.vertex.xyz += float3(node_7013,node_4361);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
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
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float node_123 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float3 lightData = (node_123*_LightColor0.rgb);
                float3 node_5673 = lightData;
                float Shadow = node_123;
                float3 Specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*lerp( _SpecularColor.rgb, _LightColor0.rgb, _UseSpecularLightColor )*Shadow);
                float3 finalColor = (node_5673*Specular);
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
            uniform sampler2D _YutaponHeightmap; uniform float4 _YutaponHeightmap_ST;
            uniform float _MaxVertexOffsetHeight;
            uniform float _MinVertexOffsetHeight;
            uniform sampler2D _YutaponMask; uniform float4 _YutaponMask_ST;
            uniform float _VertexOffsetTilt;
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
                float node_8872 = 0.0;
                float node_2044 = (-1*_VertexOffsetTilt);
                float2 node_9754 = (node_2044 + ( (o.uv0 - node_8872) * (_VertexOffsetTilt - node_2044) ) / (1.0 - node_8872));
                float2 node_9927 = node_9754.rg;
                float4 _YutaponMask_var = tex2Dlod(_YutaponMask,float4(TRANSFORM_TEX(o.uv0, _YutaponMask),0.0,0));
                float2 node_7013 = (float2((-1*node_9927.r),node_9927.g)*_YutaponMask_var.r);
                float4 _YutaponHeightmap_var = tex2Dlod(_YutaponHeightmap,float4(TRANSFORM_TEX(o.uv0, _YutaponHeightmap),0.0,0));
                float node_9210 = 0.0;
                float node_4361 = lerp(0.0,(_MinVertexOffsetHeight + ( (_YutaponHeightmap_var.b - node_9210) * (_MaxVertexOffsetHeight - _MinVertexOffsetHeight) ) / (1.0 - node_9210)),_YutaponMask_var.b);
                v.vertex.xyz += float3(node_7013,node_4361);
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
    FallBack "Standard"
    CustomEditor "ShaderForgeMaterialInspector"
}
