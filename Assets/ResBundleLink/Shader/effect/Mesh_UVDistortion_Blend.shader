Shader "Fx_Shader/Mesh_UVDistortion_Blend" {
	Properties {
		_DiffiuseTex ("DiffiuseTex", 2D) = "black" {}
		_Diffiuse_Ang ("Diffiuse_Ang", Float) = 0
		_U_speed ("U_speed", Float) = 0
		_V_speed ("V_speed", Float) = 0
		_WLTex ("WLTex", 2D) = "white" {}
		_WL_V_speed ("WL_V_speed", Float) = -0.5
		_WL_U_speed ("WL_U_speed", Float) = 0.1
		_WL_Strength ("WL_Strength", Range(0, 10)) = 0.5
		_AlphaTex ("AlphaTex", 2D) = "black" {}
		_Alpha_Ang ("Alpha_Ang", Float) = 0
		_Bright ("Bright", Range(0, 10)) = 1
		_Color ("Color", Vector) = (0.5,0.5,0.5,1)
		_UnScaledTime ("UnScaledTime", Float) = 0
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = _Color.rgb;
			o.Alpha = _Color.a;
		}
		ENDCG
	}
	Fallback "Diffuse"
}