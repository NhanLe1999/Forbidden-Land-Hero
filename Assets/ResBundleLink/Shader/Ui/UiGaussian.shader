Shader "EZ/UI/UiGaussian" {
	Properties {
		[PerRendererData] _StencilComp ("Stencil Comparison", Float) = 8
		[PerRendererData] _Stencil ("Stencil ID", Float) = 0
		[PerRendererData] _StencilOp ("Stencil Operation", Float) = 0
		[PerRendererData] _StencilWriteMask ("Stencil Write Mask", Float) = 255
		[PerRendererData] _StencilReadMask ("Stencil Read Mask", Float) = 255
		[PerRendererData] _ColorMask ("Color Mask", Float) = 15
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		[PerRendererData] _Color ("Tint", Vector) = (1,1,1,1)
		_GaussianRadio ("GaussianRadio", Float) = 1
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