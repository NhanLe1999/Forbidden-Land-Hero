Shader "Hidden/EZ/Utility/Fresnel_NoNightMode" {
	Properties {
		_Color ("Main Color", Vector) = (1,1,1,1)
		[Toggle] _InvertFresnel ("Invert Fresnel Color", Float) = 0
		[Toggle] _ZWrite ("ZWrite On", Float) = 0
		_FresnelRange ("Fresnel Range", Range(0, 5)) = 1
		_FresnelIntensity ("Fresnel Intensity", Range(0, 5)) = 1
		_AlphaBlend ("Alpha Blend [0, 1]", Range(0, 1)) = 0
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
}