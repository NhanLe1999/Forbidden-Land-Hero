Shader "EZ/Particles/Additive_UV_Anim" {
	Properties {
		_MainTex ("Particle Texture", 2D) = "white" {}
		_Color ("Main Color", Vector) = (1,1,1,1)
		_SpeedX ("UV Offset X", Float) = 0
		_SpeedY ("UV Offset Y", Float) = 0
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