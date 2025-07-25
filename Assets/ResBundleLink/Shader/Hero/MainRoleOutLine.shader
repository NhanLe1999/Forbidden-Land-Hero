Shader "EZ/Unlit/MainRoleOutLine" {
	Properties {
		_MainTex ("Main Texture", 2D) = "white" {}
		_Color ("Main Color", Vector) = (1,1,1,1)
		_FuryColor ("FuryColor", Vector) = (1,1,1,1)
		[Toggle] _InvertFresnel ("Invert Fresnel Color", Float) = 0
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
}