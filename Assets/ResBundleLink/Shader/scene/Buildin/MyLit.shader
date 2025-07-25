Shader "Funformula/Buildin/MyLit" {
	Properties {
		_Flicker ("Flicker", Vector) = (0,0,0,0)
		[Enum(Opaque, 0, Transparent, 1)] _Surface ("SurfaceType", Float) = 0
		[Enum(Off, 0, On, 1)] _ZWriteMode ("ZWriteMode", Float) = 1
		[Enum(UnityEngine.Rendering.CullMode)] _CullMode ("CullMode", Float) = 2
		[Enum(UnityEngine.Rendering.CompareFunction)] _ZTestMode ("ZTestMode", Float) = 4
		[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
		_MainTex ("Albedo", 2D) = "white" {}
		_Color ("Color", Vector) = (1,1,1,1)
		_BlinkBaseColor ("BlinkBaseColor", Vector) = (1,1,1,1)
		_AOStrength ("AoStrength", Range(0, 1)) = 1
		_EmissionInt ("EmissionIntensity", Range(0, 3)) = 0
		_Emission ("Emission", Vector) = (1,1,1,1)
		[Toggle(_NORMALMAP)] _NORMALMAP ("NORMALMAP", Float) = 1
		[Toggle(_RECEIVE_SHADOWS_OFF)] _RECEIVE_SHADOWS_OFF ("OffReceiveShadows", Float) = 1
		_NormalSize ("NormalSize", Range(0, 2)) = 1
		_MetallicGlossMap ("Metallic", 2D) = "white" {}
		_Smoothness ("Smoothness _MetallicGlossMap.a", Range(0, 1)) = 0.5
		_Metallic ("Metallic _MetallicGlossMap.b", Range(0, 1)) = 0
		_Aniso ("Aniso", Range(0, 1)) = 0
		[Toggle(_CLIP_SWITCH)] _CLIP_SWITCH ("Clip_Off", Float) = 0
		_MyCutoff ("Clip", Float) = 0
		[Header(Cloth_____________________________________________________________)] _Cloth ("Cloth", Range(0, 1)) = 0
		[Header(SSS_______________________________________________________________)] _ScatterAmt ("ScatterAmt", Vector) = (0,0,0,0)
		[Header(ClearCoat__________________________________________________________)] _ClearCoatColor ("ClearCoatColor", Vector) = (1,1,1,1)
		_ClearCoatPower ("ClearCoatPower", Float) = 1
		_ClearCoat ("ClearCoat", Range(0, 1)) = 0
		_ClearCoatSmoothness ("ClearCoatSmoothness", Range(0, 1)) = 1
		[Header(Volumetric_________________________________________________________)] _VolumeColor ("VolumeColor", Vector) = (1,1,1,1)
		_EnvMap ("EnvMap", Cube) = "white" {}
		_RefracRoughness ("RefractionRoughness", Range(0, 1)) = 1
		_Refraction ("Refraction", Range(1, 2)) = 1
		_LayerHeightBias ("LayerHeightBias", Float) = 1
		_Layer0Tint ("Layer0Tint", Vector) = (1,1,1,1)
		_Layer0Tex ("Layer0Tex", 2D) = "black" {}
		_Layer0SpeedX ("Layer0SpeedX", Float) = 1
		_Layer0SpeedY ("Layer0SpeedY", Float) = 1
		_MarbleColor ("MarbleColor", Vector) = (1,1,1,1)
		_MarbleTex ("MarbleTex", 2D) = "white" {}
		_MarbleHeightScale ("MarbleHeightScale", Range(0, 3.5)) = 0.1
		_QueueIndex ("QueueIndex", Float) = 0
		[Toggle(_REFLECTPLANE)] _ReflectSwitch ("ReflectSwitch", Float) = 0
		_ReflectionSize ("ReflectionSize", Range(0, 1)) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	//CustomEditor "MyShaderEditor"
}