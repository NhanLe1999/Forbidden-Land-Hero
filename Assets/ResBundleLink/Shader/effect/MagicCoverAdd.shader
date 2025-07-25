Shader "EZ/Eff_Robot_Dun" {
	Properties {
		[HDR] _LB_Color ("LB_Color", Vector) = (0.09066868,0,1,1)
		_LB_ColorVal ("LB_ColorVal", Float) = 1
		_LiangBian ("LiangBian", 2D) = "white" {}
		[HDR] _TW_Color ("TW_Color", Vector) = (0.2877358,0.4933948,1,0.3568628)
		_TW_ColorVal ("TW_ColorVal", Float) = 1
		_TuoWei ("TuoWei", 2D) = "white" {}
		_LBTW_yundong ("LB/TW_yundong", Float) = 0.1
		_WenLi ("WenLi", 2D) = "white" {}
		_WenLi_yundong ("WenLi_yundong", Float) = 0.05
		_WenLi_qiangdu ("WenLi_qiangdu", Float) = 0.1
		[HDR] _Fresnel_Color ("Fresnel_Color", Vector) = (0.1273585,0.9292454,1,1)
		_FresnelColorVal ("FresnelColorVal", Float) = 1
		_Fresnel_Val ("Fresnel_Val", Float) = 5
		[HDR] _GaoGuang_Color ("GaoGuang_Color", Vector) = (0.3088235,0.7711966,1,1)
		_GaoGuang_qiangdu ("GaoGuang_qiangdu", Float) = 0.1
		_GaoGuangFanWei ("GaoGuangFanWei", Float) = 0.5
		_Mask ("Mask", 2D) = "white" {}
		[HideInInspector] _Cutoff ("Alpha cutoff", Range(0, 1)) = 0.5
		_MinX ("Min X", Float) = -100000
		_MaxX ("Max X", Float) = 100000
		_MinY ("Min Y", Float) = -100000
		_MaxY ("Max Y", Float) = 100000
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "Diffuse"
	//CustomEditor "ShaderForgeMaterialInspector"
}