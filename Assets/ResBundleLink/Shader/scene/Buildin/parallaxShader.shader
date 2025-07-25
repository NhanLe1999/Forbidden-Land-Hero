Shader "Funformula/Buildin/parallaxShader" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
		_BaseColor ("BaseColor", Vector) = (1,1,1,1)
		_ParallaxMap ("ParallaxMap", 2D) = "black" {}
		_NormalMap ("NormapMap", 2D) = "bump" {}
		height_scale ("height_scale", Range(0, 0.2)) = 0
		_Loop ("Loop", Range(1, 16)) = 1
		_AOlPow ("AOPow", Float) = 1
		_AOlSize ("AOSize", Float) = 1
		_AO ("AO", Range(0, 1)) = 1
		_SpecSize ("SpecSize", Float) = 1
		_SpecPow ("SpecPow", Float) = 1
		_Smoothness ("Smoothness", Range(0, 1)) = 0
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "VertexLit"
	//CustomEditor "MyFXShaderEditor"
}