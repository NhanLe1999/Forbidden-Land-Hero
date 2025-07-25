Shader "Funformula/Buildin/Cloud" {
	Properties {
		_Color ("Color", Vector) = (0,0,1,1)
		_EdgeColor ("EdgeColor", Vector) = (0,0,1,1)
		_MainTex ("Texture", 2D) = "white" {}
		_MainTexSpeed_U ("MainTexSpeed_U", Float) = 0
		_MainTexSpeed_V ("MainTexSpeed_V", Float) = 1
		_MaskTex ("Texture", 2D) = "white" {}
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