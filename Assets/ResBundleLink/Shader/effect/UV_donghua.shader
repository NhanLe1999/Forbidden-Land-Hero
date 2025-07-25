Shader "Shader Forge/UV_donghua" {
	Properties {
		_TintColor ("Color", Vector) = (0.5,0.5,0.5,1)
		_wenli ("wenli", 2D) = "black" {}
		_sudu ("sudu", Float) = 1
		_node_6829 ("node_6829", 2D) = "white" {}
		[HideInInspector] _Cutoff ("Alpha cutoff", Range(0, 1)) = 0.5
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