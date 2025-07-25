Shader "SS/Character/Hero_Show_Reflection" {
	Properties {
		_MainTex ("Main Texture(RGB)", 2D) = "white" {}
		_MaskTex ("Mask: R(Specular), G(NoiseTex), B(Reflect)", 2D) = "white" {}
		_SpecColor ("Specular Color", Vector) = (0,0,0,0)
		_SpecPower ("Specular Power", Float) = 10
		_SpecLevel ("Specular Level", Float) = 1
		_RampMap ("Rim Ramp Map", 2D) = "white" {}
		_AmbientColor ("Ambient Color", Vector) = (0.2,0.2,0.2,0)
		_ShadowColor ("Shadow Color", Vector) = (0.5,0.5,0.5,1)
		_LightTex ("Top Light Map(RGB)", 2D) = "white" {}
		_NormalTex ("Normal Map", 2D) = "bump" {}
		_NoiseTex ("Noise Map(RGB)", 2D) = "white" {}
		_Scroll2X ("Noise speed X", Float) = 1
		_Scroll2Y ("Noise speed Y", Float) = 0
		_NoiseColor ("Noise Color", Vector) = (1,1,1,1)
		_NoiseLevel ("Layer Multiplier", Float) = 2
		_ReflectTex ("Reflect Map(RGB)", 2D) = "white" {}
		_ReflectColor ("Reflect Color", Vector) = (1,1,1,1)
		_ReflectPower ("Reflect Power", Float) = 1
		_ReflectLevel ("Reflection Level", Float) = 2
		_ReflectScale ("Platform Reflection Y Scale", Float) = 1
		_ReflectTint ("Platform Reflection Tint Color", Vector) = (1,1,1,1)
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