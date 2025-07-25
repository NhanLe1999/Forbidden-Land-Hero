Shader "Inu/Scene/T4M 4 Textures" {
	Properties {
		_RColor ("RColor", Vector) = (1,1,1,1)
		_RColorPower ("RColorPower", Float) = 1
		_Splat0 ("Layer 1", 2D) = "white" {}
		_GColor ("GColor", Vector) = (1,1,1,1)
		_GColorPower ("GColorPower", Float) = 1
		_Splat1 ("Layer 2", 2D) = "white" {}
		_BColor ("BColor", Vector) = (1,1,1,1)
		_BColorPower ("BColorPower", Float) = 1
		_Splat2 ("Layer 3", 2D) = "white" {}
		_AColor ("AColor", Vector) = (1,1,1,1)
		_AColorPower ("AColorPower", Float) = 1
		_Splat3 ("Layer 4", 2D) = "white" {}
		_Control ("Control (RGBA)", 2D) = "white" {}
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
	Fallback "Inu/Scene/VertexLit"
}