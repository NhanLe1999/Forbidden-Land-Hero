Shader "Shader Forge/tietu_niuqu3" {
	Properties {
		_wenli ("wenli", 2D) = "black" {}
		_TintColor ("Color", Vector) = (0.5,0.5,0.5,1)
		_niuqu ("niuqu", 2D) = "white" {}
		_niuqufudu ("niuqufudu", Range(0, 1)) = 0
		_wenlisudu ("wenlisudu", Range(0, 1)) = 0
		_niuqusudu ("niuqusudu", Float) = 0
		_zhezhao ("zhezhao", 2D) = "white" {}
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