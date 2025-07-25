Shader "EZ/Unlit/MainRole_NoNightMode" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_FuryColor ("FuryColor", Vector) = (1,1,1,1)
		_MinX ("Min X", Float) = -100000
		_MaxX ("Max X", Float) = 100000
		_MinY ("Min Y", Float) = -100000
		_MaxY ("Max Y", Float) = 100000
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
}