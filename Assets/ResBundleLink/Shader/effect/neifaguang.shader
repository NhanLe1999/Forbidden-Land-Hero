Shader "Shader Forge/neifaguang" {
	Properties {
		_node_4969 ("node_4969", Vector) = (0,0.9586205,1,1)
		_node_4768 ("node_4768", Vector) = (0.5,0.5,0.5,1)
		_node_1894 ("node_1894", Range(0, 10)) = 7.568991
		_node_1508 ("node_1508", Range(0, 10)) = 5.054118
		_node_3558 ("node_3558", 2D) = "white" {}
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
	//CustomEditor "ShaderForgeMaterialInspector"
}