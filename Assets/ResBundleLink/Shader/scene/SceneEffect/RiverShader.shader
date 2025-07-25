Shader "Funformula/Buildin/MyRiver" {
	Properties {
		_Color ("Color", Vector) = (0,0,1,1)
		_EdgeColor ("EdgeColor", Vector) = (0,0,1,1)
		[Header(___________________________________________)] _MainTex ("Texture", 2D) = "white" {}
		_MainTexSpeed_U ("MainTexSpeed_U", Float) = 0
		_MainTexSpeed_V ("MainTexSpeed_V", Float) = 1
		[Header(___________________________________________)] _RiverRE ("RiverRE", 2D) = "white" {}
		_RiverRESize ("RiverSize", Range(0, 1)) = 0
		[Header(____________________________________________)] _Speed_U ("Speed_U", Float) = 0
		_Speed_V ("Speed_V", Float) = 0
		_DistorSize ("DistorSize", Range(0, 6)) = 1
		_DistorTex ("DistorTex", 2D) = "white" {}
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