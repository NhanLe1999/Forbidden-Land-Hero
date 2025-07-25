Shader "Inu/Scene/Tree_Leaf" {
	Properties {
		_Color ("Main Color", Vector) = (1,1,1,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_Pos ("pos center", Vector) = (1000,0,1000,0)
		_x ("x", Range(0, 1)) = 1
		_z ("z", Range(0, 1)) = 1
		_ColorPower ("Power", Float) = 1
		_Desaturate ("Desaturate", Range(0, 1)) = 0
		_WindWave ("WindWave", Range(0.1, 1)) = 1
		_WindPower ("WindPower", Range(0.1, 1)) = 0.15
		_Alpha ("Alpha", 2D) = "white" {}
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