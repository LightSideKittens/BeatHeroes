// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Sprite Shaders Ultimate/Uber/URP Lit Uber"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		_MainTex("MainTex", 2D) = "white" {}
		_MaskMap("Mask Map", 2D) = "white" {}
		_NormalMap("Normal Map", 2D) = "bump" {}
		_NormalIntensity("Normal Intensity", Range( 0 , 3)) = 1
		[KeywordEnum(UV,UV_Raw,Object,Object_Scaled,World,UI_Element,Screen)] _ShaderSpace("Shader Space", Float) = 0
		_PixelsPerUnit("Pixels Per Unit", Float) = 100
		_ScreenWidthUnits("Screen Width Units", Float) = 10
		_RectWidth("Rect Width", Float) = 100
		_RectHeight("Rect Height", Float) = 100
		[KeywordEnum(Linear_Default,Linear_Scaled,Linear_FPS,Frequency,Frequency_FPS,Custom_Value)] _TimeSettings("Time Settings", Float) = 0
		_TimeScale("Time Scale", Float) = 1
		_TimeFrequency("Time Frequency", Float) = 2
		_TimeRange("Time Range", Float) = 0.5
		_TimeFPS("Time FPS", Float) = 5
		_TimeValue("Time Value", Float) = 0
		[KeywordEnum(None,Full,Mask,Dissolve,Spread)] _UberFading("Uber Fading", Float) = 0
		_FullFade("Full Fade", Range( 0 , 1)) = 1
		_UberPosition("Uber Position", Vector) = (0,0,0,0)
		_UberNoiseFactor("Uber Noise Factor", Float) = 0.2
		_UberNoiseScale("Uber Noise Scale", Vector) = (0.2,0.2,0,0)
		_UberWidth("Uber Width", Float) = 0.3
		_UberMask("Uber Mask", 2D) = "white" {}
		_UberNoiseTexture("Uber Noise Texture", 2D) = "white" {}
		[Toggle(_ENABLESTRONGTINT_ON)] _EnableStrongTint("Enable Strong Tint", Float) = 0
		_StrongTintFade("Strong Tint: Fade", Range( 0 , 1)) = 1
		[HDR]_StrongTintTint("Strong Tint: Tint", Color) = (1,1,1,1)
		_StrongTintContrast("Strong Tint: Contrast", Float) = 0
		[Toggle(_ENABLEADDCOLOR_ON)] _EnableAddColor("Enable Add Color", Float) = 0
		_AddColorFade("Add Color: Fade", Range( 0 , 1)) = 1
		[HDR]_AddColorColor("Add Color: Color", Color) = (4,0,0,0)
		_AddColorContrast("Add Color: Contrast", Float) = 0.5
		[Toggle(_ENABLEALPHATINT_ON)] _EnableAlphaTint("Enable Alpha Tint", Float) = 0
		_AlphaTintFade("Alpha Tint: Fade", Range( 0 , 1)) = 1
		[HDR]_AlphaTintColor("Alpha Tint: Color", Color) = (23.96863,1.254902,23.96863,0)
		_AlphaTintPower("Alpha Tint: Power", Float) = 1
		_AlphaTintMinAlpha("Alpha Tint: Min Alpha", Range( 0 , 1)) = 0.05
		[Toggle(_ENABLEBRIGHTNESS_ON)] _EnableBrightness("Enable Brightness", Float) = 0
		_Brightness("Brightness", Float) = 1
		[Toggle(_ENABLECONTRAST_ON)] _EnableContrast("Enable Contrast", Float) = 0
		_Contrast("Contrast", Float) = 1
		[Toggle(_ENABLESATURATION_ON)] _EnableSaturation("Enable Saturation", Float) = 0
		_Saturation("Saturation", Float) = 1
		[Toggle(_ENABLEHUE_ON)] _EnableHue("Enable Hue", Float) = 0
		_Hue("Hue", Range( -1 , 1)) = 0
		[Toggle(_ENABLERECOLOR_ON)] _EnableRecolor("Enable Recolor", Float) = 0
		_RecolorFade("Recolor: Fade", Range( 0 , 1)) = 1
		_RecolorTintAreas("Recolor: Tint Areas", 2D) = "white" {}
		[HDR]_RecolorRedTint("Recolor: Red Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorYellowTint("Recolor: Yellow Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorGreenTint("Recolor: Green Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorCyanTint("Recolor: Cyan Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorBlueTint("Recolor: Blue Tint", Color) = (1,1,1,0.5019608)
		[HDR]_RecolorPurpleTint("Recolor: Purple Tint", Color) = (1,1,1,0.5019608)
		[Toggle(_ENABLEINNEROUTLINE_ON)] _EnableInnerOutline("Enable Inner Outline", Float) = 0
		_InnerOutlineFade("Inner Outline: Fade", Range( 0 , 1)) = 1
		[HDR]_InnerOutlineColor("Inner Outline: Color", Color) = (11.98431,1.254902,1.254902,1)
		_InnerOutlineWidth("Inner Outline: Width", Float) = 0.02
		[Toggle(_INNEROUTLINEDISTORTIONTOGGLE_ON)] _InnerOutlineDistortionToggle("Inner Outline: Distortion Toggle", Float) = 0
		_InnerOutlineDistortionIntensity("Inner Outline: Distortion Intensity", Vector) = (0.01,0.01,0,0)
		_InnerOutlineNoiseScale("Inner Outline: Noise Scale", Vector) = (4,4,0,0)
		_InnerOutlineNoiseSpeed("Inner Outline: Noise Speed", Vector) = (0,0.1,0,0)
		[Toggle(_ENABLEOUTEROUTLINE_ON)] _EnableOuterOutline("Enable Outer Outline", Float) = 0
		_OuterOutlineFade("Outer Outline: Fade", Range( 0 , 1)) = 1
		[HDR]_OuterOutlineColor("Outer Outline: Color", Color) = (0,0,0,1)
		_OuterOutlineWidth("Outer Outline: Width", Float) = 0.04
		[Toggle(_OUTEROUTLINEDISTORTIONTOGGLE_ON)] _OuterOutlineDistortionToggle("Outer Outline: Distortion Toggle", Float) = 0
		_OuterOutlineDistortionIntensity("Outer Outline: Distortion Intensity", Vector) = (0.01,0.01,0,0)
		_OuterOutlineNoiseScale("Outer Outline: Noise Scale", Vector) = (4,4,0,0)
		_OuterOutlineNoiseSpeed("Outer Outline: Noise Speed", Vector) = (0,0.1,0,0)
		[Toggle(_ENABLEADDHUE_ON)] _EnableAddHue("Enable Add Hue", Float) = 0
		_AddHueFade("Add Hue: Fade", Range( 0 , 1)) = 1
		_AddHueShaderMask("Add Hue: Shader Mask", 2D) = "white" {}
		_AddHueBrightness("Add Hue: Brightness", Float) = 2
		_AddHueContrast("Add Hue: Contrast", Float) = 1
		_AddHueSaturation("Add Hue: Saturation", Range( 0 , 1)) = 1
		_AddHueSpeed("Add Hue: Speed", Float) = 1
		[Toggle(_ENABLESHIFTHUE_ON)] _EnableShiftHue("Enable Shift Hue", Float) = 0
		_ShiftHueFade("Shift Hue: Fade", Range( 0 , 1)) = 1
		_ShiftHueShaderMask("Shift Hue: Shader Mask", 2D) = "white" {}
		_ShiftHueSpeed("Shift Hue: Speed", Float) = 0.5
		[Toggle(_ENABLEINKSPREAD_ON)] _EnableInkSpread("Enable Ink Spread", Float) = 0
		_InkSpreadFade("Ink Spread: Fade", Range( 0 , 1)) = 1
		[HDR]_InkSpreadColor("Ink Spread: Color", Color) = (8.47419,5.013525,0.08873497,0)
		_InkSpreadContrast("Ink Spread: Contrast", Float) = 2
		_InkSpreadPosition("Ink Spread: Position", Vector) = (0.5,-1,0,0)
		_InkSpreadDistance("Ink Spread: Distance", Float) = 3
		_InkSpreadWidth("Ink Spread: Width", Float) = 0.2
		_InkSpreadNoiseScale("Ink Spread: Noise Scale", Vector) = (0.4,0.4,0,0)
		_InkSpreadNoiseFactor("Ink Spread: Noise Factor", Float) = 0.5
		[Toggle(_ENABLEBLACKTINT_ON)] _EnableBlackTint("Enable Black Tint", Float) = 0
		_BlackTintFade("Black Tint: Fade", Range( 0 , 1)) = 1
		[HDR]_BlackTintColor("Black Tint: Color", Color) = (1,0,0,0)
		_BlackTintPower("Black Tint: Power", Float) = 2
		[Toggle(_ENABLESINEGLOW_ON)] _EnableSineGlow("Enable Sine Glow", Float) = 0
		_SineGlowFade("Sine Glow: Fade", Range( 0 , 1)) = 1
		_SineGlowShaderMask("Sine Glow: Shader Mask", 2D) = "white" {}
		[HDR]_SineGlowColor("Sine Glow: Color", Color) = (0,2.007843,2.996078,0)
		_SineGlowContrast("Sine Glow: Contrast", Float) = 1
		_SineGlowFrequency("Sine Glow: Frequency", Float) = 4
		_SineGlowMin("Sine Glow: Min", Float) = 0
		_SineGlowMax("Sine Glow: Max", Float) = 1
		[Toggle(_ENABLESPLITTONING_ON)] _EnableSplitToning("Enable Split Toning", Float) = 0
		_SplitToningFade("Split Toning: Fade", Range( 0 , 1)) = 1
		[HDR]_SplitToningHighlightsColor("Split Toning: Highlights Color", Color) = (1,0.1,0.1,0)
		[HDR]_SplitToningShadowsColor("Split Toning: Shadows Color", Color) = (0.1,0.4000002,1,0)
		_SplitToningContrast("Split Toning: Contrast", Float) = 1
		_SplitToningBalance("Split Toning: Balance", Float) = 1
		_SplitToningShift("Split Toning: Shift", Range( -1 , 1)) = 0
		[Toggle(_ENABLECOLORREPLACE_ON)] _EnableColorReplace("Enable Color Replace", Float) = 0
		_ColorReplaceFade("Color Replace: Fade", Range( 0 , 1)) = 1
		_ColorReplaceTargetColor("Color Replace: Target Color", Color) = (0,0,0,0)
		_ColorReplaceBias("Color Replace: Bias", Float) = 1
		[HDR]_ColorReplaceColor("Color Replace: Color", Color) = (1,0,0,0)
		_ColorReplaceContrast("Color Replace: Contrast", Float) = 1
		_ColorReplaceHueTolerance("Color Replace: Hue Tolerance", Float) = 1
		_ColorReplaceSaturationTolerance("Color Replace: Saturation Tolerance", Float) = 1
		_ColorReplaceBrightnessTolerance("Color Replace: Brightness Tolerance", Float) = 1
		[Toggle(_ENABLEHOLOGRAM_ON)] _EnableHologram("Enable Hologram", Float) = 0
		_HologramFade("Hologram: Fade", Range( 0 , 1)) = 1
		[HDR]_HologramTint("Hologram: Tint", Color) = (0.3137255,1.662745,2.996078,1)
		_HologramContrast("Hologram: Contrast", Float) = 1
		_HologramLineFrequency("Hologram: Line Frequency", Float) = 500
		_HologramLineGap("Hologram: Line Gap", Range( 0 , 5)) = 3
		_HologramLineSpeed("Hologram: Line Speed", Float) = 0.01
		_HologramMinAlpha("Hologram: Min Alpha", Range( 0 , 1)) = 0.2
		_HologramDistortionOffset("Hologram: Distortion Offset", Float) = 0.5
		_HologramDistortionSpeed("Hologram: Distortion Speed", Float) = 2
		_HologramDistortionDensity("Hologram: Distortion Density", Float) = 0.5
		_HologramDistortionScale("Hologram: Distortion Scale", Float) = 10
		[Toggle(_ENABLEGLITCH_ON)] _EnableGlitch("Enable Glitch", Float) = 0
		_GlitchFade("Glitch: Fade", Range( 0 , 1)) = 1
		_GlitchMaskMin("Glitch: Mask Min", Range( 0 , 1)) = 0.4
		_GlitchMaskScale("Glitch: Mask Scale", Vector) = (0,0.2,0,0)
		_GlitchMaskSpeed("Glitch: Mask Speed", Vector) = (0,4,0,0)
		_GlitchHueSpeed("Glitch: Hue Speed", Float) = 1
		_GlitchBrightness("Glitch: Brightness", Float) = 4
		_GlitchNoiseScale("Glitch: Noise Scale", Vector) = (0,3,0,0)
		_GlitchNoiseSpeed("Glitch: Noise Speed", Vector) = (0,1,0,0)
		_GlitchDistortion("Glitch: Distortion", Vector) = (0.1,0,0,0)
		_GlitchDistortionScale("Glitch: Distortion Scale", Vector) = (0,3,0,0)
		_GlitchDistortionSpeed("Glitch: Distortion Speed", Vector) = (0,1,0,0)
		[Toggle(_ENABLEFROZEN_ON)] _EnableFrozen("Enable Frozen", Float) = 0
		_FrozenFade("Frozen: Fade", Range( 0 , 1)) = 1
		[HDR]_FrozenTint("Frozen: Tint", Color) = (1.819608,4.611765,5.992157,0)
		_FrozenContrast("Frozen: Contrast", Float) = 2
		[HDR]_FrozenSnowColor("Frozen: Snow Color", Color) = (1.123529,1.373203,1.498039,0)
		_FrozenSnowContrast("Frozen: Snow Contrast", Float) = 1
		_FrozenSnowDensity("Frozen: Snow Density", Range( 0 , 1)) = 0.25
		_FrozenSnowScale("Frozen: Snow Scale", Vector) = (0.1,0.1,0,0)
		[HDR]_FrozenHighlightColor("Frozen: Highlight Color", Color) = (1.797647,4.604501,5.992157,1)
		_FrozenHighlightContrast("Frozen: Highlight Contrast", Float) = 2
		_FrozenHighlightDensity("Frozen: Highlight Density", Range( 0 , 1)) = 1
		_FrozenHighlightSpeed("Frozen: Highlight Speed", Vector) = (0.1,0.1,0,0)
		_FrozenHighlightScale("Frozen: Highlight Scale", Vector) = (0.2,0.2,0,0)
		_FrozenHighlightDistortion("Frozen: Highlight Distortion", Vector) = (0.5,0.5,0,0)
		_FrozenHighlightDistortionSpeed("Frozen: Highlight Distortion Speed", Vector) = (-0.05,-0.05,0,0)
		_FrozenHighlightDistortionScale("Frozen: Highlight Distortion Scale", Vector) = (0.2,0.2,0,0)
		[Toggle(_ENABLERAINBOW_ON)] _EnableRainbow("Enable Rainbow", Float) = 0
		_RainbowFade("Rainbow: Fade", Range( 0 , 1)) = 1
		_RainbowMask("Rainbow: Shader Mask", 2D) = "white" {}
		_RainbowBrightness("Rainbow: Brightness", Float) = 2
		_RainbowSaturation("Rainbow: Saturation", Range( 0 , 1)) = 1
		_RainbowContrast("Rainbow: Contrast", Float) = 1
		_RainbowSpeed("Rainbow: Speed", Float) = 1
		_RainbowDensity("Rainbow: Density", Float) = 0.5
		_RainbowCenter("Rainbow: Center", Vector) = (0,0,0,0)
		_RainbowNoiseScale("Rainbow: Noise Scale", Vector) = (0.2,0.2,0,0)
		_RainbowNoiseFactor("Rainbow: Noise Factor", Float) = 0.2
		[Toggle(_ENABLECAMOUFLAGE_ON)] _EnableCamouflage("Enable Camouflage", Float) = 0
		_CamouflageFade("Camouflage: Fade", Range( 0 , 1)) = 1
		[NoScaleOffset]_CamouflageShaderMask("Camouflage: Shader Mask", 2D) = "white" {}
		_CamouflageBaseColor("Camouflage: Base Color", Color) = (0.7450981,0.7254902,0.5686275,0)
		_CamouflageContrast("Camouflage: Contrast", Float) = 1
		_CamouflageColorA("Camouflage: Color A", Color) = (0.627451,0.5882353,0.4313726,0)
		_CamouflageDensityA("Camouflage: Density A", Range( 0 , 1)) = 0.4
		_CamouflageSmoothnessA("Camouflage: Smoothness A", Range( 0 , 1)) = 0.2
		_CamouflageNoiseScaleA("Camouflage: Noise Scale A", Vector) = (0.25,0.25,0,0)
		_CamouflageColorB("Camouflage: Color B", Color) = (0.4705882,0.4313726,0.3137255,0)
		_CamouflageDensityB("Camouflage: Density B", Range( 0 , 1)) = 0.4
		_CamouflageSmoothnessB("Camouflage: Smoothness B", Range( 0 , 1)) = 0.2
		_CamouflageNoiseScaleB("Camouflage: Noise Scale B", Vector) = (0.25,0.25,0,0)
		[Toggle]_CamouflageAnimated("Camouflage: Animated", Float) = 0
		_CamouflageAnimationSpeed("Camouflage: Animation Speed", Vector) = (0.1,0.1,0,0)
		_CamouflageDistortionIntensity("Camouflage: Distortion Intensity", Vector) = (0.1,0.1,0,0)
		_CamouflageDistortionScale("Camouflage: Distortion Scale", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEMETAL_ON)] _EnableMetal("Enable Metal", Float) = 0
		_MetalFade("Metal: Fade", Range( 0 , 1)) = 1
		[NoScaleOffset]_MetalShaderMask("Metal: Shader Mask", 2D) = "white" {}
		[HDR]_MetalColor("Metal: Color", Color) = (5.992157,3.639216,0.3137255,1)
		_MetalContrast("Metal: Contrast", Float) = 2
		[HDR]_MetalHighlightColor("Metal: Highlight Color", Color) = (5.992157,3.796078,0.6588235,1)
		_MetalHighlightDensity("Metal: Highlight Density", Range( 0 , 1)) = 1
		_MetalHighlightContrast("Metal: Highlight Contrast", Float) = 2
		_MetalNoiseScale("Metal: Noise Scale", Vector) = (0.25,0.25,0,0)
		_MetalNoiseSpeed("Metal: Noise Speed", Vector) = (0.05,0.05,0,0)
		_MetalNoiseDistortionScale("Metal: Noise Distortion Scale", Vector) = (0.2,0.2,0,0)
		_MetalNoiseDistortionSpeed("Metal: Noise Distortion Speed", Vector) = (-0.05,-0.05,0,0)
		_MetalNoiseDistortion("Metal: Noise Distortion", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLESHINE_ON)] _EnableShine("Enable Shine", Float) = 0
		_ShineFade("Shine: Fade", Range( 0 , 1)) = 1
		[NoScaleOffset]_ShineShaderMask("Shine: Shader Mask", 2D) = "white" {}
		[HDR]_ShineColor("Shine: Color", Color) = (11.98431,11.98431,11.98431,0)
		_ShineSaturation("Shine: Saturation", Range( 0 , 1)) = 0.5
		_ShineContrast("Shine: Contrast", Float) = 2
		_ShineSmoothness("Shine: Smoothness", Float) = 2
		_ShineSpeed("Shine: Speed", Float) = 0.1
		_ShineScale("Shine: Scale", Float) = 0.05
		_ShineWidth("Shine: Width", Range( 0 , 2)) = 0.1
		_ShineRotation("Shine: Rotation", Range( 0 , 360)) = 0
		[Toggle(_ENABLEBURN_ON)] _EnableBurn("Enable Burn", Float) = 0
		_BurnFade("Burn: Fade", Range( 0 , 1)) = 1
		_BurnPosition("Burn: Position", Vector) = (0,5,0,0)
		_BurnRadius("Burn: Radius", Float) = 5
		[HDR]_BurnEdgeColor("Burn: Edge Color", Color) = (11.98431,1.129412,0.1254902,0)
		_BurnWidth("Burn: Width", Float) = 0.1
		_BurnEdgeNoiseScale("Burn: Edge Noise Scale", Vector) = (0.3,0.3,0,0)
		_BurnEdgeNoiseFactor("Burn: Edge Noise Factor", Float) = 0.5
		[HDR]_BurnInsideColor("Burn: Inside Color", Color) = (0.75,0.5625,0.525,0)
		_BurnInsideContrast("Burn: Inside Contrast", Float) = 2
		[HDR]_BurnInsideNoiseColor("Burn: Inside Noise Color", Color) = (3084.047,257.0039,0,0)
		_BurnInsideNoiseFactor("Burn: Inside Noise Factor", Float) = 0.05
		_BurnInsideNoiseScale("Burn: Inside Noise Scale", Vector) = (0.5,0.5,0,0)
		_BurnSwirlFactor("Burn: Swirl Factor", Float) = 1
		_BurnSwirlNoiseScale("Burn: Swirl Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLEPOISON_ON)] _EnablePoison("Enable Poison", Float) = 0
		_PoisonFade("Poison: Fade", Range( 0 , 1)) = 1
		[HDR]_PoisonColor("Poison: Color", Color) = (0.3137255,2.996078,0.3137255,0)
		_PoisonDensity("Poison: Density", Float) = 3
		_PoisonRecolorFactor("Poison: Recolor Factor", Range( 0 , 1)) = 0.5
		_PoisonShiftSpeed("Poison: Shift Speed", Float) = 0.2
		_PoisonNoiseBrightness("Poison: Noise Brightness", Float) = 1
		_PoisonNoiseScale("Poison: Noise Scale", Vector) = (0.2,0.2,0,0)
		_PoisonNoiseSpeed("Poison: Noise Speed", Vector) = (0,-0.2,0,0)
		[Toggle(_ENABLEFULLALPHADISSOLVE_ON)] _EnableFullAlphaDissolve("Enable Full Alpha Dissolve", Float) = 0
		_FullAlphaDissolveFade("Full Alpha Dissolve: Fade", Range( 0 , 1)) = 0.5
		_FullAlphaDissolveWidth("Full Alpha Dissolve: Width", Float) = 0.5
		_FullAlphaDissolveNoiseScale("Full Alpha Dissolve: Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLEFULLGLOWDISSOLVE_ON)] _EnableFullGlowDissolve("Enable Full Glow Dissolve", Float) = 0
		_FullGlowDissolveFade("Full Glow Dissolve: Fade", Range( 0 , 1)) = 0.5
		_FullGlowDissolveWidth("Full Glow Dissolve: Width", Float) = 0.5
		[HDR]_FullGlowDissolveEdgeColor("Full Glow Dissolve: Edge Color", Color) = (11.98431,0.627451,0.627451,0)
		_FullGlowDissolveNoiseScale("Full Glow Dissolve: Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLESOURCEALPHADISSOLVE_ON)] _EnableSourceAlphaDissolve("Enable Source Alpha Dissolve", Float) = 0
		_SourceAlphaDissolveFade("Source Alpha Dissolve: Fade", Float) = 1
		_SourceAlphaDissolvePosition("Source Alpha Dissolve: Position", Vector) = (0,0,0,0)
		_SourceAlphaDissolveWidth("Source Alpha Dissolve: Width", Float) = 0.2
		_SourceAlphaDissolveNoiseScale("Source Alpha Dissolve: Noise Scale", Vector) = (0.3,0.3,0,0)
		_SourceAlphaDissolveNoiseFactor("Source Alpha Dissolve: Noise Factor", Float) = 0.2
		[Toggle]_SourceAlphaDissolveInvert("Source Alpha Dissolve: Invert", Float) = 0
		[Toggle(_ENABLESOURCEGLOWDISSOLVE_ON)] _EnableSourceGlowDissolve("Enable Source Glow Dissolve", Float) = 0
		_SourceGlowDissolveFade("Source Glow Dissolve: Fade", Float) = 1
		_SourceGlowDissolvePosition("Source Glow Dissolve: Position", Vector) = (0,0,0,0)
		_SourceGlowDissolveWidth("Source Glow Dissolve: Width", Float) = 0.1
		[HDR]_SourceGlowDissolveEdgeColor("Source Glow Dissolve: Edge Color", Color) = (11.98431,0.627451,0.627451,0)
		_SourceGlowDissolveNoiseScale("Source Glow Dissolve: Noise Scale", Vector) = (0.3,0.3,0,0)
		_SourceGlowDissolveNoiseFactor("Source Glow Dissolve: Noise Factor", Float) = 0.2
		[Toggle]_SourceGlowDissolveInvert("Source Glow Dissolve: Invert", Float) = 0
		[Toggle(_ENABLEHALFTONE_ON)] _EnableHalftone("Enable Halftone", Float) = 0
		_HalftoneFade("Halftone: Fade", Float) = 1
		_HalftonePosition("Halftone: Position", Vector) = (0,0,0,0)
		_HalftoneTiling("Halftone: Tiling", Float) = 4
		_HalftoneFadeWidth("Halftone: Width", Float) = 1.5
		[Toggle]_HalftoneInvert("Halftone: Invert", Float) = 0
		[Toggle(_ENABLEDIRECTIONALALPHAFADE_ON)] _EnableDirectionalAlphaFade("Enable Directional Alpha Fade", Float) = 0
		_DirectionalAlphaFadeFade("Directional Alpha Fade: Fade", Float) = 0
		_DirectionalAlphaFadeRotation("Directional Alpha Fade: Rotation", Range( 0 , 360)) = 0
		_DirectionalAlphaFadeWidth("Directional Alpha Fade: Width", Float) = 0.2
		_DirectionalAlphaFadeNoiseScale("Directional Alpha Fade: Noise Scale", Vector) = (0.3,0.3,0,0)
		_DirectionalAlphaFadeNoiseFactor("Directional Alpha Fade: Noise Factor", Float) = 0.2
		[Toggle]_DirectionalAlphaFadeInvert("Directional Alpha Fade: Invert", Float) = 0
		[Toggle(_ENABLEDIRECTIONALGLOWFADE_ON)] _EnableDirectionalGlowFade("Enable Directional Glow Fade", Float) = 0
		_DirectionalGlowFadeFade("Directional Glow Fade: Fade", Float) = 0
		_DirectionalGlowFadeRotation("Directional Glow Fade: Rotation", Range( 0 , 360)) = 0
		[HDR]_DirectionalGlowFadeEdgeColor("Directional Glow Fade: Edge Color", Color) = (11.98431,0.6901961,0.6901961,0)
		_DirectionalGlowFadeWidth("Directional Glow Fade: Width", Float) = 0.1
		_DirectionalGlowFadeNoiseScale("Directional Glow Fade: Noise Scale", Vector) = (0.4,0.4,0,0)
		_DirectionalGlowFadeNoiseFactor("Directional Glow Fade: Noise Factor", Float) = 0.2
		[Toggle]_DirectionalGlowFadeInvert("Directional Glow Fade: Invert", Float) = 0
		[Toggle(_ENABLEDIRECTIONALDISTORTION_ON)] _EnableDirectionalDistortion("Enable Directional Distortion", Float) = 0
		_DirectionalDistortionFade("Directional Distortion: Fade", Float) = 0
		_DirectionalDistortionRotation("Directional Distortion: Rotation", Range( 0 , 360)) = 0
		_DirectionalDistortionWidth("Directional Distortion: Width", Float) = 0.5
		_DirectionalDistortionNoiseScale("Directional Distortion: Noise Scale", Vector) = (0.4,0.4,0,0)
		_DirectionalDistortionNoiseFactor("Directional Distortion: Noise Factor", Float) = 0.2
		_DirectionalDistortionDistortion("Directional Distortion: Distortion", Vector) = (0,0.1,0,0)
		_DirectionalDistortionRandomDirection("Directional Distortion: Random Direction", Range( 0 , 1)) = 0.1
		_DirectionalDistortionDistortionScale("Directional Distortion: Distortion Scale", Vector) = (1,1,0,0)
		[Toggle]_DirectionalDistortionInvert("Directional Distortion: Invert", Float) = 0
		[Toggle(_ENABLEFULLDISTORTION_ON)] _EnableFullDistortion("Enable Full Distortion", Float) = 0
		_FullDistortionFade("Full Distortion: Fade", Range( 0 , 1)) = 1
		_FullDistortionDistortion("Full Distortion: Distortion", Vector) = (0.2,0.2,0,0)
		_FullDistortionNoiseScale("Full Distortion: Noise Scale", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEPIXELATE_ON)] _EnablePixelate("Enable Pixelate", Float) = 0
		_PixelateFade("Pixelate: Fade", Range( 0 , 1)) = 1
		_PixelatePixelDensity("Pixelate: Pixel Density", Float) = 16
		[Toggle(_ENABLESQUEEZE_ON)] _EnableSqueeze("Enable Squeeze", Float) = 0
		_SqueezeFade("Squeeze: Fade", Range( 0 , 1)) = 1
		_SqueezeScale("Squeeze: Scale", Vector) = (2,0,0,0)
		_SqueezePower("Squeeze: Power", Float) = 1
		_SqueezeCenter("Squeeze: Center", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEUVDISTORT_ON)] _EnableUVDistort("Enable UV Distort", Float) = 0
		_UVDistortFade("UV Distort: Fade", Range( 0 , 1)) = 1
		[NoScaleOffset]_UVDistortShaderMask("UV Distort: Shader Mask", 2D) = "white" {}
		_UVDistortFrom("UV Distort: From", Vector) = (-0.02,-0.02,0,0)
		_UVDistortTo("UV Distort: To", Vector) = (0.02,0.02,0,0)
		_UVDistortSpeed("UV Distort: Speed", Vector) = (2,2,0,0)
		_UVDistortNoiseScale("UV Distort: Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLEUVSCROLL_ON)] _EnableUVScroll("Enable UV Scroll", Float) = 0
		_UVScrollSpeed("UV Scroll: Speed", Vector) = (0.2,0,0,0)
		[Toggle(_ENABLEUVROTATE_ON)] _EnableUVRotate("Enable UV Rotate", Float) = 0
		_UVRotateSpeed("UV Rotate: Speed", Float) = 1
		_UVRotatePivot("UV Rotate: Pivot", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLESINEROTATE_ON)] _EnableSineRotate("Enable Sine Rotate", Float) = 0
		_SineRotateFade("Sine Rotate: Fade", Range( 0 , 1)) = 1
		_SineRotateAngle("Sine Rotate: Angle", Float) = 15
		_SineRotateFrequency("Sine Rotate: Frequency", Float) = 1
		_SineRotatePivot("Sine Rotate: Pivot", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEUVSCALE_ON)] _EnableUVScale("Enable UV Scale", Float) = 0
		_UVScaleScale("UV Scale: Scale", Vector) = (1,1,0,0)
		_UVScalePivot("UV Scale: Pivot", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLESINEMOVE_ON)] _EnableSineMove("Enable Sine Move", Float) = 0
		_SineMoveFade("Sine Move: Fade", Range( 0 , 1)) = 1
		_SineMoveOffset("Sine Move: Offset", Vector) = (0,0.5,0,0)
		_SineMoveFrequency("Sine Move: Frequency", Vector) = (1,1,0,0)
		[Toggle(_ENABLEVIBRATE_ON)] _EnableVibrate("Enable Vibrate", Float) = 0
		_VibrateFade("Vibrate: Fade", Range( 0 , 1)) = 1
		_VibrateOffset("Vibrate: Offset", Float) = 0.04
		_VibrateFrequency("Vibrate: Frequency", Float) = 100
		_VibrateRotation("Vibrate: Rotation", Float) = 4
		[Toggle(_ENABLEWIND_ON)] _EnableWind("Enable Wind", Float) = 0
		_WindRotation("Wind: Rotation", Float) = 0
		_WindMaxRotation("Wind: Max Rotation", Float) = 2
		_WindRotationWindFactor("Wind: Rotation Wind Factor", Float) = 1
		_WindSquishFactor("Wind: Squish Factor", Float) = 0.3
		_WindSquishWindFactor("Wind: Squish Wind Factor", Range( 0 , 1)) = 0
		[Toggle(_WINDISPARALLAX_ON)] _WindIsParallax("Wind: Is Parallax", Float) = 0
		_WindXPosition("Wind: X Position", Float) = 0
		_WindFlip("Wind: Flip", Float) = 0
		[Toggle(_ENABLESQUISH2_ON)] _EnableSquish2("Enable Squish", Float) = 0
		_SquishFade("Squish: Fade", Range( 0 , 1)) = 1
		_SquishStretch("Squish: Stretch", Float) = 0.1
		_SquishSquish("Squish: Squish", Float) = 0.1
		_SquishFlip("Squish: Flip", Float) = 0
		[Toggle(_ENABLECHECKERBOARD_ON)] _EnableCheckerboard("Enable Checkerboard", Float) = 0
		_CheckerboardDarken("Checkerboard: Darken", Range( 0 , 1)) = 0.5
		_CheckerboardTiling("Checkerboard: Tiling", Float) = 1
		[Toggle(_ENABLEFLAME_ON)] _EnableFlame("Enable Flame", Float) = 0
		_FlameBrightness("Flame: Brightness", Float) = 10
		_FlameSmooth("Flame: Smooth", Float) = 2
		_FlameRadius("Flame: Radius", Float) = 0.2
		_FlameSpeed("Flame: Speed", Vector) = (0,-0.5,0,0)
		_FlameNoiseFactor("Flame: Noise Factor", Float) = 2.5
		_FlameNoiseHeightFactor("Flame: Noise Height Factor", Float) = 1.5
		_FlameNoiseScale("Flame: Noise Scale", Vector) = (1.2,0.8,0,0)
		[Toggle(_ENABLESMOKE_ON)] _EnableSmoke("Enable Smoke", Float) = 0
		_SmokeAlpha("Smoke: Alpha", Range( 0 , 1)) = 1
		_SmokeSmoothness("Smoke: Smoothness", Float) = 1
		_SmokeNoiseScale("Smoke: Noise Scale", Float) = 0.5
		_SmokeNoiseFactor("Smoke: Noise Factor", Range( 0 , 1)) = 0.4
		_SmokeDarkEdge("Smoke: Dark Edge", Range( 0 , 1.5)) = 1
		[Toggle]_SmokeVertexSeed("Smoke: Vertex Seed", Float) = 0
		[Toggle(_ENABLECUSTOMFADE_ON)] _EnableCustomFade("Enable Custom Fade", Float) = 0
		_CustomFadeFadeMask("Custom Fade: Fade Mask", 2D) = "white" {}
		_CustomFadeSmoothness("Custom Fade: Smoothness", Float) = 2
		_CustomFadeNoiseScale("Custom Fade: Noise Scale", Vector) = (1,1,0,0)
		_CustomFadeNoiseFactor("Custom Fade: Noise Factor", Range( 0 , 0.5)) = 0
		[ASEEnd]_CustomFadeAlpha("Custom Fade: Alpha", Range( 0 , 1)) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Transparent" "Queue"="Transparent" }

		Cull Off
		HLSLINCLUDE
		#pragma target 2.0
		ENDHLSL

		
		Pass
		{
			Name "Sprite Lit"
			Tags { "LightMode"="Universal2D" }
			
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZTest LEqual
			ZWrite Off
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define ASE_SRP_VERSION 70301

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#pragma multi_compile _ ETC1_EXTERNAL_ALPHA
			#pragma multi_compile _ USE_SHAPE_LIGHT_TYPE_0
			#pragma multi_compile _ USE_SHAPE_LIGHT_TYPE_1
			#pragma multi_compile _ USE_SHAPE_LIGHT_TYPE_2
			#pragma multi_compile _ USE_SHAPE_LIGHT_TYPE_3

			#define _SURFACE_TYPE_TRANSPARENT 1
			#define SHADERPASS_SPRITELIT

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Shaders/2D/Include/LightingUtility.hlsl"
			
			#if USE_SHAPE_LIGHT_TYPE_0
			SHAPE_LIGHT(0)
			#endif

			#if USE_SHAPE_LIGHT_TYPE_1
			SHAPE_LIGHT(1)
			#endif

			#if USE_SHAPE_LIGHT_TYPE_2
			SHAPE_LIGHT(2)
			#endif

			#if USE_SHAPE_LIGHT_TYPE_3
			SHAPE_LIGHT(3)
			#endif

			#include "Packages/com.unity.render-pipelines.universal/Shaders/2D/Include/CombinedShapeLightShared.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _UBERFADING_NONE _UBERFADING_FULL _UBERFADING_MASK _UBERFADING_DISSOLVE _UBERFADING_SPREAD
			#pragma shader_feature_local _ENABLEVIBRATE_ON
			#pragma shader_feature_local _ENABLESINEMOVE_ON
			#pragma shader_feature_local _ENABLESQUISH2_ON
			#pragma shader_feature _TIMESETTINGS_LINEAR_DEFAULT _TIMESETTINGS_LINEAR_SCALED _TIMESETTINGS_LINEAR_FPS _TIMESETTINGS_FREQUENCY _TIMESETTINGS_FREQUENCY_FPS _TIMESETTINGS_CUSTOM_VALUE
			#pragma shader_feature _SHADERSPACE_UV _SHADERSPACE_UV_RAW _SHADERSPACE_OBJECT _SHADERSPACE_OBJECT_SCALED _SHADERSPACE_WORLD _SHADERSPACE_UI_ELEMENT _SHADERSPACE_SCREEN
			#pragma shader_feature_local _ENABLESTRONGTINT_ON
			#pragma shader_feature_local _ENABLEALPHATINT_ON
			#pragma shader_feature_local _ENABLEADDCOLOR_ON
			#pragma shader_feature_local _ENABLEHALFTONE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALGLOWFADE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALALPHAFADE_ON
			#pragma shader_feature_local _ENABLESOURCEGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLESOURCEALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALDISTORTION_ON
			#pragma shader_feature_local _ENABLEFULLDISTORTION_ON
			#pragma shader_feature_local _ENABLEPOISON_ON
			#pragma shader_feature_local _ENABLESHINE_ON
			#pragma shader_feature_local _ENABLERAINBOW_ON
			#pragma shader_feature_local _ENABLEBURN_ON
			#pragma shader_feature_local _ENABLEFROZEN_ON
			#pragma shader_feature_local _ENABLEMETAL_ON
			#pragma shader_feature_local _ENABLECAMOUFLAGE_ON
			#pragma shader_feature_local _ENABLEGLITCH_ON
			#pragma shader_feature_local _ENABLEHOLOGRAM_ON
			#pragma shader_feature_local _ENABLEOUTEROUTLINE_ON
			#pragma shader_feature_local _ENABLEINNEROUTLINE_ON
			#pragma shader_feature_local _ENABLESATURATION_ON
			#pragma shader_feature_local _ENABLESINEGLOW_ON
			#pragma shader_feature_local _ENABLEADDHUE_ON
			#pragma shader_feature_local _ENABLESHIFTHUE_ON
			#pragma shader_feature_local _ENABLEINKSPREAD_ON
			#pragma shader_feature_local _ENABLERECOLOR_ON
			#pragma shader_feature_local _ENABLEBLACKTINT_ON
			#pragma shader_feature_local _ENABLESPLITTONING_ON
			#pragma shader_feature_local _ENABLEHUE_ON
			#pragma shader_feature_local _ENABLEBRIGHTNESS_ON
			#pragma shader_feature_local _ENABLECONTRAST_ON
			#pragma shader_feature_local _ENABLECOLORREPLACE_ON
			#pragma shader_feature_local _ENABLEFLAME_ON
			#pragma shader_feature_local _ENABLECHECKERBOARD_ON
			#pragma shader_feature_local _ENABLECUSTOMFADE_ON
			#pragma shader_feature_local _ENABLESMOKE_ON
			#pragma shader_feature_local _ENABLEUVSCALE_ON
			#pragma shader_feature_local _ENABLEPIXELATE_ON
			#pragma shader_feature_local _ENABLEUVSCROLL_ON
			#pragma shader_feature_local _ENABLEUVROTATE_ON
			#pragma shader_feature_local _ENABLESINEROTATE_ON
			#pragma shader_feature_local _ENABLESQUEEZE_ON
			#pragma shader_feature_local _ENABLEUVDISTORT_ON
			#pragma shader_feature_local _ENABLEWIND_ON
			#pragma shader_feature_local _WINDISPARALLAX_ON
			#pragma shader_feature_local _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma shader_feature_local _OUTEROUTLINEDISTORTIONTOGGLE_ON


			sampler2D _UberMask;
			sampler2D _UberNoiseTexture;
			sampler2D _MainTex;
			float WindMinIntensity;
			float WindMaxIntensity;
			float WindNoiseSpeed;
			float WindNoiseScale;
			sampler2D _UVDistortShaderMask;
			sampler2D _CustomFadeFadeMask;
			sampler2D _RecolorTintAreas;
			sampler2D _ShiftHueShaderMask;
			sampler2D _AddHueShaderMask;
			sampler2D _SineGlowShaderMask;
			sampler2D _CamouflageShaderMask;
			sampler2D _MetalShaderMask;
			sampler2D _RainbowMask;
			sampler2D _ShineShaderMask;
			sampler2D _MaskMap;
			sampler2D _NormalMap;
			CBUFFER_START( UnityPerMaterial )
			float4 _ColorReplaceTargetColor;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _MetalHighlightColor;
			float4 _BurnInsideNoiseColor;
			float4 _ShiftHueShaderMask_ST;
			float4 _FrozenHighlightColor;
			float4 _MetalColor;
			float4 _FrozenSnowColor;
			float4 _ColorReplaceColor;
			float4 _RainbowMask_ST;
			float4 _SplitToningShadowsColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _HologramTint;
			float4 _MetalShaderMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _ShineColor;
			float4 _CamouflageShaderMask_ST;
			float4 _FrozenTint;
			float4 _OuterOutlineColor;
			float4 _SineGlowShaderMask_ST;
			float4 _SineGlowColor;
			float4 _PoisonColor;
			float4 _SplitToningHighlightsColor;
			float4 _InnerOutlineColor;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _InkSpreadColor;
			float4 _FullGlowDissolveEdgeColor;
			float4 _CamouflageColorB;
			float4 _RecolorRedTint;
			float4 _AlphaTintColor;
			float4 _RecolorYellowTint;
			float4 _RecolorGreenTint;
			float4 _RecolorCyanTint;
			float4 _RecolorBlueTint;
			float4 _BurnEdgeColor;
			float4 _RecolorPurpleTint;
			float4 _AddColorColor;
			float4 _RecolorTintAreas_ST;
			float4 _BlackTintColor;
			float4 _UberMask_ST;
			float4 _CamouflageColorA;
			float4 _CamouflageBaseColor;
			float4 _MainTex_TexelSize;
			float4 _BurnInsideColor;
			float4 _ShineShaderMask_ST;
			float2 _UVRotatePivot;
			float2 _UVScrollSpeed;
			float2 _FrozenSnowScale;
			float2 _UVScalePivot;
			float2 _PoisonNoiseScale;
			float2 _PoisonNoiseSpeed;
			float2 _UVScaleScale;
			float2 _InnerOutlineNoiseSpeed;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _FrozenHighlightDistortionScale;
			float2 _FrozenHighlightDistortion;
			float2 _FlameSpeed;
			float2 _FlameNoiseScale;
			float2 _FrozenHighlightSpeed;
			float2 _FrozenHighlightScale;
			float2 _RainbowNoiseScale;
			float2 _RainbowCenter;
			float2 _BurnSwirlNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _BurnEdgeNoiseScale;
			float2 _BurnPosition;
			float2 _InkSpreadPosition;
			float2 _CustomFadeNoiseScale;
			float2 _SineRotatePivot;
			float2 _SqueezeCenter;
			float2 _InnerOutlineNoiseScale;
			float2 _DirectionalDistortionDistortionScale;
			float2 _FullDistortionDistortion;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _MetalNoiseScale;
			float2 _GlitchNoiseSpeed;
			float2 _UberPosition;
			float2 _UberNoiseScale;
			float2 _GlitchNoiseScale;
			float2 _MetalNoiseSpeed;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _MetalNoiseDistortion;
			float2 _MetalNoiseDistortionScale;
			float2 _CamouflageAnimationSpeed;
			float2 _HalftonePosition;
			float2 _CamouflageDistortionScale;
			float2 _SineMoveOffset;
			float2 _SineMoveFrequency;
			float2 _CamouflageDistortionIntensity;
			float2 _CamouflageNoiseScaleA;
			float2 _MetalNoiseDistortionSpeed;
			float2 _CamouflageNoiseScaleB;
			float2 _DirectionalDistortionDistortion;
			float2 _OuterOutlineDistortionIntensity;
			float2 _FullDistortionNoiseScale;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _SqueezeScale;
			float2 _FullGlowDissolveNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _UVDistortNoiseScale;
			float2 _UVDistortSpeed;
			float2 _UVDistortTo;
			float2 _UVDistortFrom;
			float2 _GlitchMaskScale;
			float2 _GlitchMaskSpeed;
			float2 _GlitchDistortion;
			float2 _DirectionalDistortionNoiseScale;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortionScale;
			float2 _BurnInsideNoiseScale;
			float2 _SourceAlphaDissolvePosition;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _OuterOutlineNoiseSpeed;
			float2 _SourceGlowDissolvePosition;
			float2 _OuterOutlineNoiseScale;
			float _MetalHighlightDensity;
			float _FrozenSnowContrast;
			float _MetalFade;
			float _FrozenSnowDensity;
			float _FrozenHighlightContrast;
			float _FrozenContrast;
			float _FrozenFade;
			float _MetalHighlightContrast;
			float _FrozenHighlightDensity;
			float _BurnInsideContrast;
			float _MetalContrast;
			float _BurnInsideNoiseFactor;
			float _ShineRotation;
			float _BurnRadius;
			float _SourceAlphaDissolveWidth;
			float _SourceGlowDissolveNoiseFactor;
			float _SourceGlowDissolveFade;
			float _SourceGlowDissolveWidth;
			float _SourceGlowDissolveInvert;
			float _DirectionalAlphaFadeInvert;
			float _DirectionalAlphaFadeRotation;
			float _DirectionalAlphaFadeFade;
			float _DirectionalAlphaFadeNoiseFactor;
			float _DirectionalAlphaFadeWidth;
			float _DirectionalGlowFadeInvert;
			float _DirectionalGlowFadeRotation;
			float _DirectionalGlowFadeFade;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeWidth;
			float _HalftoneInvert;
			float _HalftoneTiling;
			float _HalftoneFade;
			float _HalftoneFadeWidth;
			float _AddColorContrast;
			float _AddColorFade;
			float _AlphaTintPower;
			float _AlphaTintFade;
			float _AlphaTintMinAlpha;
			float _StrongTintContrast;
			float _SourceAlphaDissolveNoiseFactor;
			float _BurnSwirlFactor;
			float _SourceAlphaDissolveFade;
			float _FullGlowDissolveWidth;
			float _BurnEdgeNoiseFactor;
			float _BurnWidth;
			float _BurnFade;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineSaturation;
			float _ShineContrast;
			float _ShineSpeed;
			float _ShineScale;
			float _ShineWidth;
			float _ShineSmoothness;
			float _ShineFade;
			float _PoisonShiftSpeed;
			float _PoisonDensity;
			float _PoisonFade;
			float _PoisonNoiseBrightness;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			float _FullGlowDissolveFade;
			float _SourceAlphaDissolveInvert;
			float _CamouflageFade;
			float _SquishStretch;
			float _CamouflageSmoothnessB;
			float _DirectionalDistortionRotation;
			float _DirectionalDistortionFade;
			float _DirectionalDistortionNoiseFactor;
			float _DirectionalDistortionWidth;
			float _HologramDistortionSpeed;
			float _HologramDistortionDensity;
			float _HologramDistortionScale;
			float _HologramDistortionOffset;
			float _HologramFade;
			float _GlitchMaskMin;
			float _GlitchFade;
			float _UVDistortFade;
			float _DirectionalDistortionInvert;
			float _SqueezePower;
			float _SineRotateFrequency;
			float _SineRotateAngle;
			float _SineRotateFade;
			float _UVRotateSpeed;
			float _PixelatePixelDensity;
			float _PixelateFade;
			float _SmokeVertexSeed;
			float _SmokeNoiseScale;
			float _SmokeNoiseFactor;
			float _SmokeSmoothness;
			float _SmokeDarkEdge;
			float _SmokeAlpha;
			float _SqueezeFade;
			float _CustomFadeNoiseFactor;
			float _DirectionalDistortionRandomDirection;
			float _WindSquishWindFactor;
			float _SquishFade;
			float _SquishFlip;
			float _SquishSquish;
			float _TimeScale;
			float _TimeFPS;
			float _TimeFrequency;
			float _TimeRange;
			float _TimeValue;
			float _SineMoveFade;
			float _VibrateFrequency;
			float _VibrateOffset;
			float _VibrateFade;
			float _FullDistortionFade;
			float _VibrateRotation;
			float _UberWidth;
			float _PixelsPerUnit;
			float _RectWidth;
			float _RectHeight;
			float _ScreenWidthUnits;
			float _UberNoiseFactor;
			float _WindRotationWindFactor;
			float _WindXPosition;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _FullFade;
			float _CamouflageContrast;
			float _CustomFadeSmoothness;
			float _CheckerboardDarken;
			float _AddHueSaturation;
			float _AddHueBrightness;
			float _AddHueContrast;
			float _AddHueFade;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _Saturation;
			float _InnerOutlineFade;
			float _StrongTintFade;
			float _AddHueSpeed;
			float _InnerOutlineWidth;
			float _OuterOutlineWidth;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _HologramLineFrequency;
			float _HologramLineGap;
			float _HologramMinAlpha;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
			float _CamouflageDensityA;
			float _CamouflageAnimated;
			float _CamouflageSmoothnessA;
			float _CamouflageDensityB;
			float _OuterOutlineFade;
			float _CustomFadeAlpha;
			float _ShiftHueFade;
			float _InkSpreadWidth;
			float _CheckerboardTiling;
			float _FlameNoiseHeightFactor;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _FlameBrightness;
			float _ColorReplaceContrast;
			float _ColorReplaceHueTolerance;
			float _ColorReplaceSaturationTolerance;
			float _ColorReplaceBrightnessTolerance;
			float _ColorReplaceBias;
			float _ColorReplaceFade;
			float _ShiftHueSpeed;
			float _Contrast;
			float _Hue;
			float _SplitToningShift;
			float _SplitToningBalance;
			float _SplitToningContrast;
			float _SplitToningFade;
			float _BlackTintPower;
			float _BlackTintFade;
			float _RecolorFade;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			float _InkSpreadNoiseFactor;
			float _Brightness;
			float _NormalIntensity;
			CBUFFER_END


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 color : COLOR;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 texCoord0 : TEXCOORD0;
				float4 color : TEXCOORD1;
				float4 screenPosition : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#if ETC1_EXTERNAL_ALPHA
				TEXTURE2D(_AlphaTex); SAMPLER(sampler_AlphaTex);
				float _EnableAlphaTexture;
			#endif

			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			float FastNoise101_g3863( float x )
			{
				float i = floor(x);
				float f = frac(x);
				float s = sign(frac(x/2.0)-0.5);
				    
				float k = 0.5+0.5*sin(i);
				return s*f*(f-1.0)*((16.0*k-4.0)*f*(f-1.0)-1.0);
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			VertexOutput vert ( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 _ZeroVector = float2(0,0);
				float2 texCoord83_g4006 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g4006 = texCoord83_g4006;
				float2 appendResult72_g4006 = (float2(( _SquishStretch * ( break77_g4006.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g4006.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH2_ON
				float2 staticSwitch198 = ( appendResult72_g4006 + _ZeroVector );
				#else
				float2 staticSwitch198 = _ZeroVector;
				#endif
				float2 temp_output_2_0_g4018 = staticSwitch198;
				float mulTime5_g3867 = _TimeParameters.x * _TimeScale;
				float mulTime7_g3867 = _TimeParameters.x * _TimeFrequency;
				#if defined(_TIMESETTINGS_LINEAR_DEFAULT)
				float staticSwitch1_g3867 = _TimeParameters.x;
				#elif defined(_TIMESETTINGS_LINEAR_SCALED)
				float staticSwitch1_g3867 = mulTime5_g3867;
				#elif defined(_TIMESETTINGS_LINEAR_FPS)
				float staticSwitch1_g3867 = ( _TimeScale * ( floor( ( _TimeParameters.x * _TimeFPS ) ) / _TimeFPS ) );
				#elif defined(_TIMESETTINGS_FREQUENCY)
				float staticSwitch1_g3867 = ( ( sin( mulTime7_g3867 ) * _TimeRange ) + 100.0 );
				#elif defined(_TIMESETTINGS_FREQUENCY_FPS)
				float staticSwitch1_g3867 = ( ( _TimeRange * sin( ( _TimeFrequency * ( floor( ( _TimeFPS * _TimeParameters.x ) ) / _TimeFPS ) ) ) ) + 100.0 );
				#elif defined(_TIMESETTINGS_CUSTOM_VALUE)
				float staticSwitch1_g3867 = _TimeValue;
				#else
				float staticSwitch1_g3867 = _TimeParameters.x;
				#endif
				float shaderTime237 = staticSwitch1_g3867;
				float temp_output_8_0_g4018 = shaderTime237;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g4018 = ( ( sin( ( temp_output_8_0_g4018 * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g4018 );
				#else
				float2 staticSwitch4_g4018 = temp_output_2_0_g4018;
				#endif
				float temp_output_30_0_g4020 = temp_output_8_0_g4018;
				float3 rotatedValue21_g4020 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( temp_output_30_0_g4020 * _VibrateRotation ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g4018 = ( ( sin( ( _VibrateFrequency * temp_output_30_0_g4020 ) ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g4020).xy ) + staticSwitch4_g4018 );
				#else
				float2 staticSwitch6_g4018 = staticSwitch4_g4018;
				#endif
				float2 temp_output_250_0 = staticSwitch6_g4018;
				float2 uv_UberMask = v.uv0.xy * _UberMask_ST.xy + _UberMask_ST.zw;
				float4 tex2DNode3_g3887 = tex2Dlod( _UberMask, float4( uv_UberMask, 0, 0.0) );
				float temp_output_4_0_g3883 = max( _UberWidth , 0.001 );
				float2 texCoord2_g3767 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord22_g3767 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float2 texCoord23_g3767 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 appendResult28_g3767 = (float2(_RectWidth , _RectHeight));
				float4 ase_clipPos = TransformObjectToHClip((v.vertex).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_SHADERSPACE_UV)
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#elif defined(_SHADERSPACE_UV_RAW)
				float2 staticSwitch1_g3767 = texCoord22_g3767;
				#elif defined(_SHADERSPACE_OBJECT)
				float2 staticSwitch1_g3767 = (v.vertex.xyz).xy;
				#elif defined(_SHADERSPACE_OBJECT_SCALED)
				float2 staticSwitch1_g3767 = ( (v.vertex.xyz).xy * (ase_objectScale).xy );
				#elif defined(_SHADERSPACE_WORLD)
				float2 staticSwitch1_g3767 = (ase_worldPos).xy;
				#elif defined(_SHADERSPACE_UI_ELEMENT)
				float2 staticSwitch1_g3767 = ( texCoord23_g3767 * ( appendResult28_g3767 / _PixelsPerUnit ) );
				#elif defined(_SHADERSPACE_SCREEN)
				float2 staticSwitch1_g3767 = ( ( (ase_screenPosNorm).xy * (_ScreenParams).xy ) / ( _ScreenParams.x / _ScreenWidthUnits ) );
				#else
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#endif
				float2 shaderPosition235 = staticSwitch1_g3767;
				float clampResult14_g3883 = clamp( ( ( ( _FullFade * ( 1.0 + temp_output_4_0_g3883 ) ) - tex2Dlod( _UberNoiseTexture, float4( ( shaderPosition235 * _UberNoiseScale ), 0, 0.0) ).r ) / temp_output_4_0_g3883 ) , 0.0 , 1.0 );
				float2 temp_output_27_0_g3885 = shaderPosition235;
				float clampResult3_g3885 = clamp( ( ( _FullFade - ( distance( _UberPosition , temp_output_27_0_g3885 ) + ( tex2Dlod( _UberNoiseTexture, float4( ( temp_output_27_0_g3885 * _UberNoiseScale ), 0, 0.0) ).r * _UberNoiseFactor ) ) ) / max( _UberWidth , 0.001 ) ) , 0.0 , 1.0 );
				#if defined(_UBERFADING_NONE)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_FULL)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_MASK)
				float staticSwitch139 = ( _FullFade * ( tex2DNode3_g3887.r * tex2DNode3_g3887.a ) );
				#elif defined(_UBERFADING_DISSOLVE)
				float staticSwitch139 = clampResult14_g3883;
				#elif defined(_UBERFADING_SPREAD)
				float staticSwitch139 = clampResult3_g3885;
				#else
				float staticSwitch139 = _FullFade;
				#endif
				float fullFade123 = staticSwitch139;
				float2 lerpResult121 = lerp( float2( 0,0 ) , temp_output_250_0 , fullFade123);
				#if defined(_UBERFADING_NONE)
				float2 staticSwitch142 = temp_output_250_0;
				#elif defined(_UBERFADING_FULL)
				float2 staticSwitch142 = lerpResult121;
				#elif defined(_UBERFADING_MASK)
				float2 staticSwitch142 = lerpResult121;
				#elif defined(_UBERFADING_DISSOLVE)
				float2 staticSwitch142 = lerpResult121;
				#elif defined(_UBERFADING_SPREAD)
				float2 staticSwitch142 = lerpResult121;
				#else
				float2 staticSwitch142 = temp_output_250_0;
				#endif
				
				o.ase_texcoord4.xyz = ase_worldPos;
				o.ase_texcoord5 = screenPos;
				
				o.ase_texcoord3 = v.vertex;
				o.ase_color = v.color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = float3( staticSwitch142 ,  0.0 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.normal = v.normal;
				v.tangent.xyz = v.tangent.xyz;

				VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);

				o.texCoord0 = v.uv0;
				o.color = v.color;
				o.clipPos = vertexInput.positionCS;
				o.screenPosition = ComputeScreenPos( o.clipPos, _ProjectionParams.x );
				return o;
			}

			half4 frag ( VertexOutput IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				float2 texCoord39 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g3862 = texCoord39;
				float4 transform62_g3863 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				#ifdef _WINDISPARALLAX_ON
				float staticSwitch111_g3863 = _WindXPosition;
				#else
				float staticSwitch111_g3863 = transform62_g3863.x;
				#endif
				float x101_g3863 = ( ( staticSwitch111_g3863 + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale );
				float localFastNoise101_g3863 = FastNoise101_g3863( x101_g3863 );
				float lerpResult86_g3863 = lerp( WindMinIntensity , WindMaxIntensity , ( localFastNoise101_g3863 + 0.5 ));
				float clampResult29_g3863 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g3863 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g3863 = temp_output_3_0_g3862;
				float temp_output_39_0_g3863 = ( temp_output_1_0_g3863.y + _WindFlip );
				float3 appendResult43_g3863 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g3863 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g3863 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g3863 )));
				float3 rotatedValue19_g3863 = RotateAroundAxis( appendResult43_g3863, float3( ( appendResult27_g3863 + temp_output_1_0_g3863 ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g3863 * temp_output_39_0_g3863 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g3862 = (rotatedValue19_g3863).xy;
				#else
				float2 staticSwitch4_g3862 = temp_output_3_0_g3862;
				#endif
				float2 texCoord2_g3767 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord22_g3767 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float3 ase_worldPos = IN.ase_texcoord4.xyz;
				float2 texCoord23_g3767 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 appendResult28_g3767 = (float2(_RectWidth , _RectHeight));
				float4 screenPos = IN.ase_texcoord5;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_SHADERSPACE_UV)
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#elif defined(_SHADERSPACE_UV_RAW)
				float2 staticSwitch1_g3767 = texCoord22_g3767;
				#elif defined(_SHADERSPACE_OBJECT)
				float2 staticSwitch1_g3767 = (IN.ase_texcoord3.xyz).xy;
				#elif defined(_SHADERSPACE_OBJECT_SCALED)
				float2 staticSwitch1_g3767 = ( (IN.ase_texcoord3.xyz).xy * (ase_objectScale).xy );
				#elif defined(_SHADERSPACE_WORLD)
				float2 staticSwitch1_g3767 = (ase_worldPos).xy;
				#elif defined(_SHADERSPACE_UI_ELEMENT)
				float2 staticSwitch1_g3767 = ( texCoord23_g3767 * ( appendResult28_g3767 / _PixelsPerUnit ) );
				#elif defined(_SHADERSPACE_SCREEN)
				float2 staticSwitch1_g3767 = ( ( (ase_screenPosNorm).xy * (_ScreenParams).xy ) / ( _ScreenParams.x / _ScreenWidthUnits ) );
				#else
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#endif
				float2 shaderPosition235 = staticSwitch1_g3767;
				float2 temp_output_195_0_g3864 = shaderPosition235;
				float2 appendResult189_g3864 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_195_0_g3864 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_195_0_g3864 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch4_g3862 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g3864 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch4_g3862;
				#endif
				float2 temp_output_182_0_g3868 = shaderPosition235;
				float3 rotatedValue168_g3868 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_182_0_g3868 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g3868 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_182_0_g3868 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g3868 = rotatedValue136_g3868;
				float clampResult154_g3868 = clamp( ( ( break130_g3868.x + break130_g3868.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_182_0_g3868 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g3868).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g3868 ) ):( clampResult154_g3868 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float mulTime5_g3867 = _TimeParameters.x * _TimeScale;
				float mulTime7_g3867 = _TimeParameters.x * _TimeFrequency;
				#if defined(_TIMESETTINGS_LINEAR_DEFAULT)
				float staticSwitch1_g3867 = _TimeParameters.x;
				#elif defined(_TIMESETTINGS_LINEAR_SCALED)
				float staticSwitch1_g3867 = mulTime5_g3867;
				#elif defined(_TIMESETTINGS_LINEAR_FPS)
				float staticSwitch1_g3867 = ( _TimeScale * ( floor( ( _TimeParameters.x * _TimeFPS ) ) / _TimeFPS ) );
				#elif defined(_TIMESETTINGS_FREQUENCY)
				float staticSwitch1_g3867 = ( ( sin( mulTime7_g3867 ) * _TimeRange ) + 100.0 );
				#elif defined(_TIMESETTINGS_FREQUENCY_FPS)
				float staticSwitch1_g3867 = ( ( _TimeRange * sin( ( _TimeFrequency * ( floor( ( _TimeFPS * _TimeParameters.x ) ) / _TimeFPS ) ) ) ) + 100.0 );
				#elif defined(_TIMESETTINGS_CUSTOM_VALUE)
				float staticSwitch1_g3867 = _TimeValue;
				#else
				float staticSwitch1_g3867 = _TimeParameters.x;
				#endif
				float shaderTime237 = staticSwitch1_g3867;
				float temp_output_8_0_g3873 = ( ( ( shaderTime237 * _HologramDistortionSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y );
				float2 temp_cast_3 = (temp_output_8_0_g3873).xx;
				float2 temp_cast_4 = (_HologramDistortionDensity).xx;
				float clampResult75_g3873 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_3 * temp_cast_4 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_5 = (temp_output_8_0_g3873).xx;
				float2 temp_cast_6 = (_HologramDistortionScale).xx;
				float2 appendResult2_g3874 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float hologramFade182 = _HologramFade;
				float2 appendResult44_g3873 = (float2(( ( ( clampResult75_g3873 * ( tex2D( _UberNoiseTexture, ( temp_cast_5 * temp_cast_6 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g3874 ).x ) * hologramFade182 ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g3873 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 temp_output_18_0_g3871 = shaderPosition235;
				float2 glitchPosition154 = temp_output_18_0_g3871;
				float glitchFade152 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_18_0_g3871 + ( _GlitchMaskSpeed * shaderTime237 ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( glitchPosition154 + ( _GlitchDistortionSpeed * shaderTime237 ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * glitchFade152 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float2 temp_output_1_0_g3890 = staticSwitch62;
				float temp_output_25_0_g3890 = shaderTime237;
				float2 lerpResult21_g3891 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( shaderPosition235 + ( _UVDistortSpeed * temp_output_25_0_g3890 ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g3893 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.texCoord0.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g3894 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g3890 = ( temp_output_1_0_g3890 + ( lerpResult21_g3891 * ( 100.0 / appendResult2_g3893 ) * ( _UVDistortFade * ( tex2DNode3_g3894.r * tex2DNode3_g3894.a ) ) ) );
				#else
				float2 staticSwitch5_g3890 = temp_output_1_0_g3890;
				#endif
				float2 temp_output_1_0_g3895 = staticSwitch5_g3890;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g3890 = ( temp_output_1_0_g3895 + ( ( temp_output_1_0_g3895 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g3895 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g3890 = staticSwitch5_g3890;
				#endif
				float3 rotatedValue36_g3896 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g3890 ,  0.0 ), float3( 0,0,1 ), ( sin( ( temp_output_25_0_g3890 * _SineRotateFrequency ) ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g3890 = (rotatedValue36_g3896).xy;
				#else
				float2 staticSwitch9_g3890 = staticSwitch7_g3890;
				#endif
				float3 rotatedValue8_g3897 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g3890 ,  0.0 ), float3( 0,0,1 ), ( temp_output_25_0_g3890 * _UVRotateSpeed * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g3890 = (rotatedValue8_g3897).xy;
				#else
				float2 staticSwitch16_g3890 = staticSwitch9_g3890;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g3890 = ( ( ( _UVScrollSpeed * temp_output_25_0_g3890 ) + staticSwitch16_g3890 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g3890 = staticSwitch16_g3890;
				#endif
				float2 appendResult2_g3900 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 MultFactor30_g3899 = ( _PixelatePixelDensity * ( float2( 1,1 ) / ( 100.0 / appendResult2_g3900 ) ) * ( 1.0 / max( _PixelateFade , 0.0001 ) ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g3890 = ( round( ( MultFactor30_g3899 * staticSwitch14_g3890 ) ) / MultFactor30_g3899 );
				#else
				float2 staticSwitch4_g3890 = staticSwitch14_g3890;
				#endif
				#ifdef _ENABLEUVSCALE_ON
				float2 staticSwitch24_g3890 = ( ( ( staticSwitch4_g3890 - _UVScalePivot ) / _UVScaleScale ) + _UVScalePivot );
				#else
				float2 staticSwitch24_g3890 = staticSwitch4_g3890;
				#endif
				float2 temp_output_257_0 = staticSwitch24_g3890;
				float2 texCoord131 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 uv_UberMask = IN.texCoord0.xy * _UberMask_ST.xy + _UberMask_ST.zw;
				float4 tex2DNode3_g3887 = tex2D( _UberMask, uv_UberMask );
				float temp_output_4_0_g3883 = max( _UberWidth , 0.001 );
				float clampResult14_g3883 = clamp( ( ( ( _FullFade * ( 1.0 + temp_output_4_0_g3883 ) ) - tex2D( _UberNoiseTexture, ( shaderPosition235 * _UberNoiseScale ) ).r ) / temp_output_4_0_g3883 ) , 0.0 , 1.0 );
				float2 temp_output_27_0_g3885 = shaderPosition235;
				float clampResult3_g3885 = clamp( ( ( _FullFade - ( distance( _UberPosition , temp_output_27_0_g3885 ) + ( tex2D( _UberNoiseTexture, ( temp_output_27_0_g3885 * _UberNoiseScale ) ).r * _UberNoiseFactor ) ) ) / max( _UberWidth , 0.001 ) ) , 0.0 , 1.0 );
				#if defined(_UBERFADING_NONE)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_FULL)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_MASK)
				float staticSwitch139 = ( _FullFade * ( tex2DNode3_g3887.r * tex2DNode3_g3887.a ) );
				#elif defined(_UBERFADING_DISSOLVE)
				float staticSwitch139 = clampResult14_g3883;
				#elif defined(_UBERFADING_SPREAD)
				float staticSwitch139 = clampResult3_g3885;
				#else
				float staticSwitch139 = _FullFade;
				#endif
				float fullFade123 = staticSwitch139;
				float2 lerpResult130 = lerp( texCoord131 , temp_output_257_0 , fullFade123);
				#if defined(_UBERFADING_NONE)
				float2 staticSwitch145 = temp_output_257_0;
				#elif defined(_UBERFADING_FULL)
				float2 staticSwitch145 = lerpResult130;
				#elif defined(_UBERFADING_MASK)
				float2 staticSwitch145 = lerpResult130;
				#elif defined(_UBERFADING_DISSOLVE)
				float2 staticSwitch145 = lerpResult130;
				#elif defined(_UBERFADING_SPREAD)
				float2 staticSwitch145 = lerpResult130;
				#else
				float2 staticSwitch145 = temp_output_257_0;
				#endif
				float2 finalUV146 = staticSwitch145;
				float4 originalColor191 = tex2D( _MainTex, finalUV146 );
				float4 temp_output_1_0_g3902 = originalColor191;
				float4 temp_output_1_0_g3905 = temp_output_1_0_g3902;
				float2 temp_output_7_0_g3902 = finalUV146;
				float2 temp_output_43_0_g3905 = temp_output_7_0_g3902;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g3905 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.ase_color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g3905 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.ase_color.a / 2.5 ) - distance( temp_output_43_0_g3905 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g3905 = lerp( ( (temp_output_1_0_g3905).rgb * (IN.ase_color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g3905 ) * _SmokeDarkEdge ));
				float4 appendResult31_g3905 = (float4(lerpResult34_g3905 , ( clampResult28_g3905 * _SmokeAlpha * temp_output_1_0_g3905.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g3902 = appendResult31_g3905;
				#else
				float4 staticSwitch2_g3902 = temp_output_1_0_g3902;
				#endif
				float4 temp_output_1_0_g3903 = staticSwitch2_g3902;
				float2 temp_output_57_0_g3903 = temp_output_7_0_g3902;
				float4 tex2DNode3_g3903 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g3903 );
				float clampResult37_g3903 = clamp( ( ( ( IN.ase_color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g3903.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g3903 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g3903 = (float4(( float4( (IN.ase_color).rgb , 0.0 ) * temp_output_1_0_g3903 ).rgb , ( temp_output_1_0_g3903.a * pow( clampResult37_g3903 , ( _CustomFadeSmoothness / max( tex2DNode3_g3903.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g3902 = appendResult13_g3903;
				#else
				float4 staticSwitch3_g3902 = staticSwitch2_g3902;
				#endif
				float4 temp_output_1_0_g3907 = staticSwitch3_g3902;
				float4 temp_output_1_0_g3908 = temp_output_1_0_g3907;
				float2 appendResult4_g3908 = (float2(ase_worldPos.x , ase_worldPos.y));
				float2 temp_output_44_0_g3908 = ( appendResult4_g3908 * _CheckerboardTiling * 0.5 );
				float2 break12_g3908 = step( ( ceil( temp_output_44_0_g3908 ) - temp_output_44_0_g3908 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g3908.x + break12_g3908.y ) ) )).xxx;
				float4 appendResult42_g3908 = (float4(( (temp_output_1_0_g3908).rgb - temp_cast_16 ) , temp_output_1_0_g3908.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g3907 = appendResult42_g3908;
				#else
				float4 staticSwitch2_g3907 = temp_output_1_0_g3907;
				#endif
				float2 temp_output_75_0_g3909 = finalUV146;
				float saferPower57_g3909 = max( max( ( temp_output_75_0_g3909.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g3909 = max( _FlameRadius , 0.01 );
				float clampResult70_g3909 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( shaderTime237 * _FlameSpeed ) + temp_output_75_0_g3909 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g3909 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g3909 - distance( temp_output_75_0_g3909 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g3909 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g3909 = ( clampResult70_g3909 * _FlameBrightness );
				float4 appendResult31_g3909 = (float4(temp_output_63_0_g3909 , temp_output_63_0_g3909 , temp_output_63_0_g3909 , clampResult70_g3909));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g3907 = ( appendResult31_g3909 * staticSwitch2_g3907 );
				#else
				float4 staticSwitch6_g3907 = staticSwitch2_g3907;
				#endif
				float4 temp_output_3_0_g3911 = staticSwitch6_g3907;
				float4 temp_output_1_0_g3943 = temp_output_3_0_g3911;
				float3 temp_output_2_0_g3943 = (temp_output_1_0_g3943).rgb;
				float4 break2_g3944 = float4( temp_output_2_0_g3943 , 0.0 );
				float temp_output_9_0_g3945 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g3945 = max( ( ( ( break2_g3944.x + break2_g3944.y + break2_g3944.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3945 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g3943 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g3943 = RGBToHSV( temp_output_2_0_g3943 );
				float clampResult35_g3943 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g3943.x , hsvTorgb5_g3943.x ) , distance( hsvTorgb7_g3943.x , ( hsvTorgb5_g3943.x + 1.0 ) ) ) , distance( hsvTorgb7_g3943.x , ( hsvTorgb5_g3943.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g3943 = clamp( ( 1.0 - ( distance( hsvTorgb7_g3943.y , hsvTorgb5_g3943.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g3943 = clamp( ( 1.0 - ( distance( hsvTorgb7_g3943.z , hsvTorgb5_g3943.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g3943 = max( ( clampResult35_g3943 * clampResult30_g3943 * clampResult40_g3943 ) , 0.0001 );
				float3 lerpResult23_g3943 = lerp( temp_output_2_0_g3943 , ( pow( saferPower7_g3945 , temp_output_9_0_g3945 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g3943 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g3943 = (float4(lerpResult23_g3943 , temp_output_1_0_g3943.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g3911 = appendResult4_g3943;
				#else
				float4 staticSwitch29_g3911 = temp_output_3_0_g3911;
				#endif
				float4 temp_output_1_0_g3936 = staticSwitch29_g3911;
				float3 saferPower5_g3936 = max( (temp_output_1_0_g3936).rgb , 0.0001 );
				float3 temp_cast_22 = (_Contrast).xxx;
				float4 appendResult4_g3936 = (float4(pow( saferPower5_g3936 , temp_cast_22 ) , temp_output_1_0_g3936.a));
				#ifdef _ENABLECONTRAST_ON
				float4 staticSwitch32_g3911 = appendResult4_g3936;
				#else
				float4 staticSwitch32_g3911 = staticSwitch29_g3911;
				#endif
				float4 temp_output_2_0_g3935 = staticSwitch32_g3911;
				float4 appendResult6_g3935 = (float4(( (temp_output_2_0_g3935).rgb * _Brightness ) , temp_output_2_0_g3935.a));
				#ifdef _ENABLEBRIGHTNESS_ON
				float4 staticSwitch33_g3911 = appendResult6_g3935;
				#else
				float4 staticSwitch33_g3911 = staticSwitch32_g3911;
				#endif
				float4 temp_output_2_0_g3934 = staticSwitch33_g3911;
				float3 hsvTorgb1_g3934 = RGBToHSV( temp_output_2_0_g3934.rgb );
				float3 hsvTorgb3_g3934 = HSVToRGB( float3(( hsvTorgb1_g3934.x + _Hue ),hsvTorgb1_g3934.y,hsvTorgb1_g3934.z) );
				float4 appendResult8_g3934 = (float4(hsvTorgb3_g3934 , temp_output_2_0_g3934.a));
				#ifdef _ENABLEHUE_ON
				float4 staticSwitch36_g3911 = appendResult8_g3934;
				#else
				float4 staticSwitch36_g3911 = staticSwitch33_g3911;
				#endif
				float4 temp_output_1_0_g3937 = staticSwitch36_g3911;
				float4 break2_g3938 = temp_output_1_0_g3937;
				float temp_output_3_0_g3937 = ( ( break2_g3938.x + break2_g3938.y + break2_g3938.z ) / 3.0 );
				float clampResult25_g3937 = clamp( ( ( ( ( temp_output_3_0_g3937 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g3937 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g3937);
				float temp_output_9_0_g3939 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g3939 = max( ( temp_output_3_0_g3937 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3939 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g3937 = lerp( (temp_output_1_0_g3937).rgb , ( lerpResult6_g3937 * pow( saferPower7_g3939 , temp_output_9_0_g3939 ) ) , _SplitToningFade);
				float4 appendResult18_g3937 = (float4(lerpResult11_g3937 , temp_output_1_0_g3937.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g3911 = appendResult18_g3937;
				#else
				float4 staticSwitch30_g3911 = staticSwitch36_g3911;
				#endif
				float4 temp_output_1_0_g3942 = staticSwitch30_g3911;
				float3 temp_output_4_0_g3942 = (temp_output_1_0_g3942).rgb;
				float4 break12_g3942 = temp_output_1_0_g3942;
				float3 lerpResult7_g3942 = lerp( temp_output_4_0_g3942 , ( temp_output_4_0_g3942 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g3942.r , break12_g3942.g ) , break12_g3942.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g3942 = lerp( temp_output_4_0_g3942 , lerpResult7_g3942 , _BlackTintFade);
				float4 appendResult11_g3942 = (float4(lerpResult13_g3942 , break12_g3942.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g3911 = appendResult11_g3942;
				#else
				float4 staticSwitch20_g3911 = staticSwitch30_g3911;
				#endif
				float4 temp_output_1_0_g3940 = staticSwitch20_g3911;
				float2 uv_RecolorTintAreas = IN.texCoord0.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g3940 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g3940 = ( ( hsvTorgb33_g3940.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g3940 = 0;
				if( temp_output_43_0_g3940 >= 0.8333333 )
				ifLocalVar46_g3940 = _RecolorPurpleTint;
				else
				ifLocalVar46_g3940 = _RecolorBlueTint;
				float4 ifLocalVar44_g3940 = 0;
				if( temp_output_43_0_g3940 <= 0.6666667 )
				ifLocalVar44_g3940 = _RecolorCyanTint;
				else
				ifLocalVar44_g3940 = ifLocalVar46_g3940;
				float4 ifLocalVar47_g3940 = 0;
				if( temp_output_43_0_g3940 <= 0.3333333 )
				ifLocalVar47_g3940 = _RecolorYellowTint;
				else
				ifLocalVar47_g3940 = _RecolorGreenTint;
				float4 ifLocalVar45_g3940 = 0;
				if( temp_output_43_0_g3940 <= 0.1666667 )
				ifLocalVar45_g3940 = _RecolorRedTint;
				else
				ifLocalVar45_g3940 = ifLocalVar47_g3940;
				float4 ifLocalVar35_g3940 = 0;
				if( temp_output_43_0_g3940 >= 0.5 )
				ifLocalVar35_g3940 = ifLocalVar44_g3940;
				else
				ifLocalVar35_g3940 = ifLocalVar45_g3940;
				float4 break55_g3940 = ifLocalVar35_g3940;
				float3 appendResult56_g3940 = (float3(break55_g3940.r , break55_g3940.g , break55_g3940.b));
				float4 break2_g3941 = temp_output_1_0_g3940;
				float saferPower57_g3940 = max( ( ( break2_g3941.x + break2_g3941.y + break2_g3941.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g3940 = lerp( (temp_output_1_0_g3940).rgb , ( appendResult56_g3940 * pow( saferPower57_g3940 , max( ( break55_g3940.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g3940.z * _RecolorFade ));
				float4 appendResult30_g3940 = (float4(lerpResult26_g3940 , temp_output_1_0_g3940.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g3911 = appendResult30_g3940;
				#else
				float4 staticSwitch9_g3911 = staticSwitch20_g3911;
				#endif
				float4 temp_output_1_0_g3920 = staticSwitch9_g3911;
				float4 break2_g3922 = temp_output_1_0_g3920;
				float temp_output_9_0_g3921 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g3921 = max( ( ( ( break2_g3922.x + break2_g3922.y + break2_g3922.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3921 ) , 0.0 ) ) ) , 0.0001 );
				float2 temp_output_65_0_g3920 = shaderPosition235;
				float clampResult53_g3920 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_65_0_g3920 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_65_0_g3920 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g3920 = lerp( (temp_output_1_0_g3920).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g3921 , temp_output_9_0_g3921 ) ) , ( _InkSpreadFade * clampResult53_g3920 ));
				float4 appendResult9_g3920 = (float4(lerpResult7_g3920 , (temp_output_1_0_g3920).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g3911 = appendResult9_g3920;
				#else
				float4 staticSwitch17_g3911 = staticSwitch9_g3911;
				#endif
				float4 temp_output_1_0_g3918 = staticSwitch17_g3911;
				float3 temp_output_34_0_g3918 = (temp_output_1_0_g3918).rgb;
				float temp_output_39_0_g3911 = shaderTime237;
				float3 hsvTorgb15_g3918 = RGBToHSV( temp_output_34_0_g3918 );
				float3 hsvTorgb19_g3918 = HSVToRGB( float3(( ( temp_output_39_0_g3911 * _ShiftHueSpeed ) + hsvTorgb15_g3918.x ),hsvTorgb15_g3918.y,hsvTorgb15_g3918.z) );
				float2 uv_ShiftHueShaderMask = IN.texCoord0.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g3919 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g3918 = lerp( temp_output_34_0_g3918 , hsvTorgb19_g3918 , ( _ShiftHueFade * ( tex2DNode3_g3919.r * tex2DNode3_g3919.a ) ));
				float4 appendResult6_g3918 = (float4(lerpResult33_g3918 , temp_output_1_0_g3918.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g3911 = appendResult6_g3918;
				#else
				float4 staticSwitch19_g3911 = staticSwitch17_g3911;
				#endif
				float3 hsvTorgb3_g3931 = HSVToRGB( float3(( temp_output_39_0_g3911 * _AddHueSpeed ),1.0,1.0) );
				float3 hsvTorgb15_g3930 = RGBToHSV( hsvTorgb3_g3931 );
				float3 hsvTorgb19_g3930 = HSVToRGB( float3(hsvTorgb15_g3930.x,_AddHueSaturation,( hsvTorgb15_g3930.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g3930 = staticSwitch19_g3911;
				float4 break2_g3933 = temp_output_1_0_g3930;
				float saferPower27_g3930 = max( ( ( break2_g3933.x + break2_g3933.y + break2_g3933.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.texCoord0.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g3932 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g3930 = (float4(( ( hsvTorgb19_g3930 * pow( saferPower27_g3930 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g3932.r * tex2DNode3_g3932.a ) ) ) + (temp_output_1_0_g3930).rgb ) , temp_output_1_0_g3930.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g3911 = appendResult6_g3930;
				#else
				float4 staticSwitch23_g3911 = staticSwitch19_g3911;
				#endif
				float4 temp_output_1_0_g3912 = staticSwitch23_g3911;
				float4 break2_g3913 = temp_output_1_0_g3912;
				float temp_output_9_0_g3914 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g3914 = max( ( ( ( break2_g3913.x + break2_g3913.y + break2_g3913.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3914 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.texCoord0.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g3915 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float4 appendResult21_g3912 = (float4(( (temp_output_1_0_g3912).rgb + ( pow( saferPower7_g3914 , temp_output_9_0_g3914 ) * ( _SineGlowFade * ( tex2DNode3_g3915.r * tex2DNode3_g3915.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( ( temp_output_39_0_g3911 * _SineGlowFrequency ) ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g3912.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g3911 = appendResult21_g3912;
				#else
				float4 staticSwitch28_g3911 = staticSwitch23_g3911;
				#endif
				float4 temp_output_1_0_g3916 = staticSwitch28_g3911;
				float4 break2_g3917 = temp_output_1_0_g3916;
				float3 temp_cast_41 = (( ( break2_g3917.x + break2_g3917.y + break2_g3917.z ) / 3.0 )).xxx;
				float3 lerpResult5_g3916 = lerp( temp_cast_41 , (temp_output_1_0_g3916).rgb , _Saturation);
				float4 appendResult8_g3916 = (float4(lerpResult5_g3916 , temp_output_1_0_g3916.a));
				#ifdef _ENABLESATURATION_ON
				float4 staticSwitch38_g3911 = appendResult8_g3916;
				#else
				float4 staticSwitch38_g3911 = staticSwitch28_g3911;
				#endif
				float4 temp_output_15_0_g3927 = staticSwitch38_g3911;
				float2 temp_output_1_0_g3911 = finalUV146;
				float2 temp_output_7_0_g3927 = temp_output_1_0_g3911;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g3927 = ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_39_0_g3911 * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g3927 ) * _InnerOutlineNoiseScale ) ).r - 0.5 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g3927 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g3927 = ( staticSwitch169_g3927 + temp_output_7_0_g3927 );
				float2 appendResult2_g3929 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g3927 = ( 100.0 / appendResult2_g3929 );
				float3 lerpResult176_g3927 = lerp( (temp_output_15_0_g3927).rgb , (_InnerOutlineColor).rgb , ( _InnerOutlineFade * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g3927 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) ) ));
				float4 appendResult177_g3927 = (float4(lerpResult176_g3927 , temp_output_15_0_g3927.a));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g3911 = appendResult177_g3927;
				#else
				float4 staticSwitch12_g3911 = staticSwitch38_g3911;
				#endif
				float4 temp_output_15_0_g3924 = staticSwitch12_g3911;
				float3 temp_output_82_0_g3924 = (_OuterOutlineColor).rgb;
				float temp_output_182_0_g3924 = ( ( 1.0 - temp_output_15_0_g3924.a ) * min( ( _OuterOutlineFade * 3.0 ) , 1.0 ) );
				float3 lerpResult178_g3924 = lerp( (temp_output_15_0_g3924).rgb , temp_output_82_0_g3924 , temp_output_182_0_g3924);
				float3 lerpResult170_g3924 = lerp( lerpResult178_g3924 , temp_output_82_0_g3924 , temp_output_182_0_g3924);
				float2 temp_output_7_0_g3924 = temp_output_1_0_g3911;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g3924 = ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_39_0_g3911 * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g3924 ) * _OuterOutlineNoiseScale ) ).r - 0.5 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g3924 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g3924 = ( staticSwitch157_g3924 + temp_output_7_0_g3924 );
				float2 appendResult2_g3926 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g3924 = ( 100.0 / appendResult2_g3926 );
				float lerpResult168_g3924 = lerp( temp_output_15_0_g3924.a , min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g3924 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) * 3.0 ) , 1.0 ) , _OuterOutlineFade);
				float4 appendResult174_g3924 = (float4(lerpResult170_g3924 , lerpResult168_g3924));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g3911 = appendResult174_g3924;
				#else
				float4 staticSwitch13_g3911 = staticSwitch12_g3911;
				#endif
				float4 temp_output_241_0 = staticSwitch13_g3911;
				float4 temp_output_1_0_g3946 = temp_output_241_0;
				float4 break2_g3947 = temp_output_1_0_g3946;
				float temp_output_9_0_g3948 = max( _HologramContrast , 0.0 );
				float saferPower7_g3948 = max( ( ( ( break2_g3947.x + break2_g3947.y + break2_g3947.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3948 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g3946 = (float4(( (_HologramTint).rgb * pow( saferPower7_g3948 , temp_output_9_0_g3948 ) ) , ( max( pow( abs( sin( ( ( ( ( shaderTime237 * _HologramLineSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g3946.a )));
				float4 lerpResult37_g3946 = lerp( temp_output_1_0_g3946 , appendResult22_g3946 , hologramFade182);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g3946;
				#else
				float4 staticSwitch56 = temp_output_241_0;
				#endif
				float4 temp_output_1_0_g3949 = staticSwitch56;
				float4 break2_g3951 = temp_output_1_0_g3949;
				float temp_output_34_0_g3949 = shaderTime237;
				float3 hsvTorgb3_g3952 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( glitchPosition154 + ( _GlitchNoiseSpeed * temp_output_34_0_g3949 ) ) * _GlitchNoiseScale ) ).r + ( temp_output_34_0_g3949 * _GlitchHueSpeed ) ),1.0,1.0) );
				float3 lerpResult23_g3949 = lerp( (temp_output_1_0_g3949).rgb , ( ( ( break2_g3951.x + break2_g3951.y + break2_g3951.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g3952 ) , glitchFade152);
				float4 appendResult27_g3949 = (float4(lerpResult23_g3949 , temp_output_1_0_g3949.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g3949;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g3953 = staticSwitch57;
				float4 temp_output_1_0_g3957 = temp_output_3_0_g3953;
				float2 temp_output_41_0_g3953 = shaderPosition235;
				float2 temp_output_99_0_g3957 = temp_output_41_0_g3953;
				float temp_output_40_0_g3953 = shaderTime237;
				float clampResult52_g3957 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_40_0_g3953 * _CamouflageAnimationSpeed ) + temp_output_99_0_g3957 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_99_0_g3957 ) ):( temp_output_99_0_g3957 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g3957 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g3957 ) , clampResult52_g3957);
				float clampResult65_g3957 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_40_0_g3953 * _CamouflageAnimationSpeed ) + temp_output_99_0_g3957 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_99_0_g3957 ) ):( temp_output_99_0_g3957 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g3957 = lerp( lerpResult55_g3957 , ( _CamouflageColorB * clampResult65_g3957 ) , clampResult65_g3957);
				float4 break2_g3960 = temp_output_1_0_g3957;
				float temp_output_9_0_g3959 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g3959 = max( ( ( ( break2_g3960.x + break2_g3960.y + break2_g3960.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3959 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.texCoord0.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g3961 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g3957 = lerp( (temp_output_1_0_g3957).rgb , ( (lerpResult68_g3957).rgb * pow( saferPower7_g3959 , temp_output_9_0_g3959 ) ) , ( _CamouflageFade * ( tex2DNode3_g3961.r * tex2DNode3_g3961.a ) ));
				float4 appendResult7_g3957 = (float4(lerpResult4_g3957 , temp_output_1_0_g3957.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g3953 = appendResult7_g3957;
				#else
				float4 staticSwitch26_g3953 = temp_output_3_0_g3953;
				#endif
				float4 temp_output_1_0_g3964 = staticSwitch26_g3953;
				float temp_output_59_0_g3964 = temp_output_40_0_g3953;
				float2 temp_output_58_0_g3964 = temp_output_41_0_g3953;
				float4 break2_g3966 = temp_output_1_0_g3964;
				float temp_output_5_0_g3964 = ( ( break2_g3966.x + break2_g3966.y + break2_g3966.z ) / 3.0 );
				float temp_output_9_0_g3969 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g3969 = max( ( temp_output_5_0_g3964 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3969 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g3964 = max( temp_output_5_0_g3964 , 0.0001 );
				float2 uv_MetalShaderMask = IN.texCoord0.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g3965 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g3964 = lerp( temp_output_1_0_g3964 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_59_0_g3964 * _MetalNoiseDistortionSpeed ) + temp_output_58_0_g3964 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( temp_output_59_0_g3964 * _MetalNoiseSpeed ) + temp_output_58_0_g3964 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g3969 , temp_output_9_0_g3969 ) ) + ( pow( saferPower2_g3964 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g3965.r * tex2DNode3_g3965.a ) ));
				float4 appendResult8_g3964 = (float4((lerpResult45_g3964).rgb , (temp_output_1_0_g3964).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g3953 = appendResult8_g3964;
				#else
				float4 staticSwitch28_g3953 = staticSwitch26_g3953;
				#endif
				float4 temp_output_1_0_g3970 = staticSwitch28_g3953;
				float4 break2_g3973 = temp_output_1_0_g3970;
				float temp_output_7_0_g3970 = ( ( break2_g3973.x + break2_g3973.y + break2_g3973.z ) / 3.0 );
				float temp_output_9_0_g3975 = max( _FrozenContrast , 0.0 );
				float saferPower7_g3975 = max( ( temp_output_7_0_g3970 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3975 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g3970 = max( temp_output_7_0_g3970 , 0.0001 );
				float2 temp_output_72_0_g3970 = temp_output_41_0_g3953;
				float temp_output_73_0_g3970 = temp_output_40_0_g3953;
				float saferPower42_g3970 = max( temp_output_7_0_g3970 , 0.0001 );
				float3 lerpResult57_g3970 = lerp( (temp_output_1_0_g3970).rgb , ( ( pow( saferPower7_g3975 , temp_output_9_0_g3975 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g3970 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_72_0_g3970 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_73_0_g3970 * _FrozenHighlightDistortionSpeed ) + temp_output_72_0_g3970 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( temp_output_73_0_g3970 * _FrozenHighlightSpeed ) + temp_output_72_0_g3970 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g3970 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g3970 = (float4(lerpResult57_g3970 , temp_output_1_0_g3970.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g3953 = appendResult26_g3970;
				#else
				float4 staticSwitch29_g3953 = staticSwitch28_g3953;
				#endif
				float4 temp_output_1_0_g3976 = staticSwitch29_g3953;
				float3 temp_output_28_0_g3976 = (temp_output_1_0_g3976).rgb;
				float4 break2_g3977 = float4( temp_output_28_0_g3976 , 0.0 );
				float saferPower21_g3976 = max( ( ( break2_g3977.x + break2_g3977.y + break2_g3977.z ) / 3.0 ) , 0.0001 );
				float2 temp_output_72_0_g3976 = temp_output_41_0_g3953;
				float clampResult68_g3976 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_72_0_g3976 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_72_0_g3976 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g3976 = ( ( ( _BurnRadius - distance( temp_output_72_0_g3976 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_72_0_g3976 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g3976 = clamp( temp_output_15_0_g3976 , 0.0 , 1.0 );
				float3 lerpResult29_g3976 = lerp( temp_output_28_0_g3976 , ( pow( saferPower21_g3976 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g3976 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g3976);
				float3 lerpResult40_g3976 = lerp( temp_output_28_0_g3976 , ( lerpResult29_g3976 + ( ( step( temp_output_15_0_g3976 , 1.0 ) * step( 0.0 , temp_output_15_0_g3976 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g3976 = (float4(lerpResult40_g3976 , temp_output_1_0_g3976.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g3953 = appendResult43_g3976;
				#else
				float4 staticSwitch32_g3953 = staticSwitch29_g3953;
				#endif
				float2 temp_output_42_0_g3981 = temp_output_41_0_g3953;
				float3 hsvTorgb3_g3983 = HSVToRGB( float3(( ( ( distance( temp_output_42_0_g3981 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_42_0_g3981 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + ( _RainbowSpeed * temp_output_40_0_g3953 ) ),1.0,1.0) );
				float3 hsvTorgb36_g3981 = RGBToHSV( hsvTorgb3_g3983 );
				float3 hsvTorgb37_g3981 = HSVToRGB( float3(hsvTorgb36_g3981.x,_RainbowSaturation,( hsvTorgb36_g3981.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g3981 = staticSwitch32_g3953;
				float4 break2_g3982 = temp_output_1_0_g3981;
				float saferPower24_g3981 = max( ( ( break2_g3982.x + break2_g3982.y + break2_g3982.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.texCoord0.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g3984 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g3981 = (float4(( ( hsvTorgb37_g3981 * pow( saferPower24_g3981 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g3984.r * tex2DNode3_g3984.a ) ) ) + (temp_output_1_0_g3981).rgb ) , temp_output_1_0_g3981.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g3953 = appendResult29_g3981;
				#else
				float4 staticSwitch34_g3953 = staticSwitch32_g3953;
				#endif
				float4 temp_output_1_0_g3986 = staticSwitch34_g3953;
				float3 temp_output_57_0_g3986 = (temp_output_1_0_g3986).rgb;
				float4 break2_g3987 = temp_output_1_0_g3986;
				float3 temp_cast_61 = (( ( break2_g3987.x + break2_g3987.y + break2_g3987.z ) / 3.0 )).xxx;
				float3 lerpResult92_g3986 = lerp( temp_cast_61 , temp_output_57_0_g3986 , _ShineSaturation);
				float3 saferPower83_g3986 = max( lerpResult92_g3986 , 0.0001 );
				float3 temp_cast_62 = (max( _ShineContrast , 0.001 )).xxx;
				float3 rotatedValue69_g3986 = RotateAroundAxis( float3( 0,0,0 ), float3( ( ( temp_output_40_0_g3953 * _ShineSpeed ) + ( _ShineScale * temp_output_41_0_g3953 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g3986 = rotatedValue69_g3986;
				float temp_output_97_0_g3986 = ( _ShineWidth + -1.0 );
				float clampResult80_g3986 = clamp( ( ( ( sin( ( ( break67_g3986.x + break67_g3986.y ) * 10.0 ) ) + temp_output_97_0_g3986 ) * ( 2.0 - temp_output_97_0_g3986 ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.texCoord0.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g3988 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g3986 = (float4(( temp_output_57_0_g3986 + ( ( pow( saferPower83_g3986 , temp_cast_62 ) * (_ShineColor).rgb ) * clampResult80_g3986 * ( _ShineFade * ( tex2DNode3_g3988.r * tex2DNode3_g3988.a ) ) ) ) , (temp_output_1_0_g3986).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g3953 = appendResult8_g3986;
				#else
				float4 staticSwitch36_g3953 = staticSwitch34_g3953;
				#endif
				float temp_output_41_0_g3954 = temp_output_40_0_g3953;
				float saferPower19_g3954 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_41_0_g3954 * _PoisonNoiseSpeed ) + temp_output_41_0_g3953 ) * _PoisonNoiseScale ) ).r + ( temp_output_41_0_g3954 * _PoisonShiftSpeed ) ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g3954 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g3954 = staticSwitch36_g3953;
				float3 temp_output_28_0_g3954 = (temp_output_1_0_g3954).rgb;
				float4 break2_g3956 = float4( temp_output_28_0_g3954 , 0.0 );
				float3 lerpResult32_g3954 = lerp( temp_output_28_0_g3954 , ( temp_output_24_0_g3954 * ( ( break2_g3956.x + break2_g3956.y + break2_g3956.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g3954 = (float4(( ( max( pow( saferPower19_g3954 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g3954 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g3954 ) , temp_output_1_0_g3954.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g3953 = appendResult27_g3954;
				#else
				float4 staticSwitch39_g3953 = staticSwitch36_g3953;
				#endif
				float4 temp_output_245_0 = staticSwitch39_g3953;
				float4 break4_g3989 = temp_output_245_0;
				float fullDistortionAlpha164 = _FullDistortionFade;
				float4 appendResult5_g3989 = (float4(break4_g3989.r , break4_g3989.g , break4_g3989.b , ( break4_g3989.a * fullDistortionAlpha164 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g3989;
				#else
				float4 staticSwitch77 = temp_output_245_0;
				#endif
				float4 break4_g3990 = staticSwitch77;
				float directionalDistortionAlpha167 = (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g3868 ) ):( clampResult154_g3868 ));
				float4 appendResult5_g3990 = (float4(break4_g3990.r , break4_g3990.g , break4_g3990.b , ( break4_g3990.a * directionalDistortionAlpha167 )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g3990;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g3991 = staticSwitch75;
				float4 temp_output_1_0_g3992 = temp_output_1_0_g3991;
				float temp_output_53_0_g3992 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 temp_output_18_0_g3991 = shaderPosition235;
				float clampResult17_g3992 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g3992 ) ) - tex2D( _UberNoiseTexture, ( temp_output_18_0_g3991 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g3992 ) , 0.0 , 1.0 );
				float4 appendResult3_g3992 = (float4((temp_output_1_0_g3992).rgb , ( temp_output_1_0_g3992.a * clampResult17_g3992 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g3991 = appendResult3_g3992;
				#else
				float4 staticSwitch3_g3991 = temp_output_1_0_g3991;
				#endif
				float temp_output_5_0_g4000 = tex2D( _UberNoiseTexture, ( temp_output_18_0_g3991 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g4000 = step( temp_output_5_0_g4000 , _FullGlowDissolveFade );
				float temp_output_53_0_g4000 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g4000 = staticSwitch3_g3991;
				float4 appendResult3_g4000 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g4000 - step( temp_output_5_0_g4000 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g4000 ) ) - temp_output_53_0_g4000 ) ) ) ) + (temp_output_1_0_g4000).rgb ) , ( temp_output_1_0_g4000.a * temp_output_61_0_g4000 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g3991 = appendResult3_g4000;
				#else
				float4 staticSwitch5_g3991 = staticSwitch3_g3991;
				#endif
				float4 temp_output_1_0_g4002 = staticSwitch5_g3991;
				float2 temp_output_76_0_g4002 = temp_output_18_0_g3991;
				float clampResult17_g4002 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_76_0_g4002 ) + ( tex2D( _UberNoiseTexture, ( temp_output_76_0_g4002 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g4002 = (float4((temp_output_1_0_g4002).rgb , ( temp_output_1_0_g4002.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g4002 ) ):( clampResult17_g4002 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g3991 = appendResult3_g4002;
				#else
				float4 staticSwitch8_g3991 = staticSwitch5_g3991;
				#endif
				float2 temp_output_90_0_g3998 = temp_output_18_0_g3991;
				float temp_output_65_0_g3998 = ( distance( _SourceGlowDissolvePosition , temp_output_90_0_g3998 ) + ( tex2D( _UberNoiseTexture, ( temp_output_90_0_g3998 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g3998 = step( temp_output_65_0_g3998 , _SourceGlowDissolveFade );
				float temp_output_76_0_g3998 = step( temp_output_65_0_g3998 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g3998 = staticSwitch8_g3991;
				float4 appendResult3_g3998 = (float4(( ( max( ( temp_output_75_0_g3998 - temp_output_76_0_g3998 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g3998).rgb ) , ( temp_output_1_0_g3998.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g3998 ) ):( temp_output_75_0_g3998 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g3991 = appendResult3_g3998;
				#else
				float4 staticSwitch9_g3991 = staticSwitch8_g3991;
				#endif
				float4 temp_output_1_0_g3994 = staticSwitch9_g3991;
				float2 temp_output_161_0_g3994 = temp_output_18_0_g3991;
				float3 rotatedValue136_g3994 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_161_0_g3994 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g3994 = rotatedValue136_g3994;
				float clampResult154_g3994 = clamp( ( ( break130_g3994.x + break130_g3994.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_161_0_g3994 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g3994 = (float4((temp_output_1_0_g3994).rgb , ( temp_output_1_0_g3994.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g3994 ) ):( clampResult154_g3994 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g3991 = appendResult3_g3994;
				#else
				float4 staticSwitch11_g3991 = staticSwitch9_g3991;
				#endif
				float2 temp_output_171_0_g3996 = temp_output_18_0_g3991;
				float3 rotatedValue136_g3996 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_171_0_g3996 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g3996 = rotatedValue136_g3996;
				float temp_output_168_0_g3996 = max( ( ( break130_g3996.x + break130_g3996.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_171_0_g3996 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g3996 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g3996 ) ):( temp_output_168_0_g3996 )) );
				float4 temp_output_1_0_g3996 = staticSwitch11_g3991;
				float clampResult154_g3996 = clamp( temp_output_161_0_g3996 , 0.0 , 1.0 );
				float4 appendResult3_g3996 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g3996 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g3996 ) ):( temp_output_168_0_g3996 )) ) ) ) + (temp_output_1_0_g3996).rgb ) , ( temp_output_1_0_g3996.a * clampResult154_g3996 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g3991 = appendResult3_g3996;
				#else
				float4 staticSwitch15_g3991 = staticSwitch11_g3991;
				#endif
				float4 temp_output_1_0_g4004 = staticSwitch15_g3991;
				float2 temp_output_126_0_g4004 = temp_output_18_0_g3991;
				float temp_output_121_0_g4004 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_126_0_g4004 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g4005 = (float2(temp_output_121_0_g4004 , temp_output_121_0_g4004));
				float temp_output_17_0_g4005 = length( ( (( ( abs( temp_output_126_0_g4004 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g4005 ) );
				float clampResult17_g4004 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g4005 ) / fwidth( temp_output_17_0_g4005 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g4004 = (float4((temp_output_1_0_g4004).rgb , ( temp_output_1_0_g4004.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g4004 ) ):( clampResult17_g4004 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g3991 = appendResult3_g4004;
				#else
				float4 staticSwitch13_g3991 = staticSwitch15_g3991;
				#endif
				float4 temp_output_1_0_g4008 = staticSwitch13_g3991;
				float4 break2_g4010 = temp_output_1_0_g4008;
				float temp_output_9_0_g4009 = max( _AddColorContrast , 0.0 );
				float saferPower7_g4009 = max( ( ( ( break2_g4010.x + break2_g4010.y + break2_g4010.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g4009 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g4008 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g4009 , temp_output_9_0_g4009 ) * _AddColorFade ) + (temp_output_1_0_g4008).rgb ) , temp_output_1_0_g4008.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g4007 = appendResult6_g4008;
				#else
				float4 staticSwitch5_g4007 = staticSwitch13_g3991;
				#endif
				float4 temp_output_1_0_g4011 = staticSwitch5_g4007;
				float saferPower11_g4011 = max( ( 1.0 - temp_output_1_0_g4011.a ) , 0.0001 );
				float3 lerpResult4_g4011 = lerp( (temp_output_1_0_g4011).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g4011 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g4011.a ) ));
				float4 appendResult13_g4011 = (float4(lerpResult4_g4011 , temp_output_1_0_g4011.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g4007 = appendResult13_g4011;
				#else
				float4 staticSwitch11_g4007 = staticSwitch5_g4007;
				#endif
				float4 temp_output_1_0_g4012 = staticSwitch11_g4007;
				float4 break2_g4013 = temp_output_1_0_g4012;
				float temp_output_9_0_g4014 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g4014 = max( ( ( ( break2_g4013.x + break2_g4013.y + break2_g4013.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g4014 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g4012 = lerp( (temp_output_1_0_g4012).rgb , ( pow( saferPower7_g4014 , temp_output_9_0_g4014 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g4012 = (float4(lerpResult7_g4012 , (temp_output_1_0_g4012).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g4007 = appendResult9_g4012;
				#else
				float4 staticSwitch7_g4007 = staticSwitch11_g4007;
				#endif
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g3902 = _White;
				#else
				float4 staticSwitch8_g3902 = IN.ase_color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g3902 = _White;
				#else
				float4 staticSwitch9_g3902 = staticSwitch8_g3902;
				#endif
				float4 customVertexTint193 = staticSwitch9_g3902;
				float4 temp_output_119_0 = ( staticSwitch7_g4007 * customVertexTint193 );
				float4 lerpResult125 = lerp( ( originalColor191 * IN.ase_color ) , temp_output_119_0 , fullFade123);
				#if defined(_UBERFADING_NONE)
				float4 staticSwitch143 = temp_output_119_0;
				#elif defined(_UBERFADING_FULL)
				float4 staticSwitch143 = lerpResult125;
				#elif defined(_UBERFADING_MASK)
				float4 staticSwitch143 = lerpResult125;
				#elif defined(_UBERFADING_DISSOLVE)
				float4 staticSwitch143 = lerpResult125;
				#elif defined(_UBERFADING_SPREAD)
				float4 staticSwitch143 = lerpResult125;
				#else
				float4 staticSwitch143 = temp_output_119_0;
				#endif
				
				float2 temp_output_8_0_g4021 = finalUV146;
				
				float3 unpack14_g4021 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g4021 ), _NormalIntensity );
				unpack14_g4021.z = lerp( 1, unpack14_g4021.z, saturate(_NormalIntensity) );
				
				float4 Color = staticSwitch143;
				float Mask = tex2D( _MaskMap, temp_output_8_0_g4021 ).r;
				float3 Normal = unpack14_g4021;

				#if ETC1_EXTERNAL_ALPHA
					float4 alpha = SAMPLE_TEXTURE2D(_AlphaTex, sampler_AlphaTex, IN.texCoord0.xy);
					Color.a = lerp ( Color.a, alpha.r, _EnableAlphaTexture);
				#endif

                                SurfaceData2D surfaceData;
				InputData2D inputData;
				surfaceData.albedo = Color.rgb;
				surfaceData.alpha = Color.a;
				surfaceData.mask = Mask;
				inputData.uv = temp_output_8_0_g4021;
				inputData.lightingUV = IN.screenPosition.xy / IN.screenPosition.w;
				return CombinedShapeLightShared(surfaceData, inputData);
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Sprite Normal"
			Tags { "LightMode"="NormalsRendering" }
			
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZTest LEqual
			ZWrite Off
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define ASE_SRP_VERSION 70301

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define _SURFACE_TYPE_TRANSPARENT 1
			#define SHADERPASS_SPRITENORMAL

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Shaders/2D/Include/NormalsRenderingShared.hlsl"
			
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _UBERFADING_NONE _UBERFADING_FULL _UBERFADING_MASK _UBERFADING_DISSOLVE _UBERFADING_SPREAD
			#pragma shader_feature_local _ENABLEVIBRATE_ON
			#pragma shader_feature_local _ENABLESINEMOVE_ON
			#pragma shader_feature_local _ENABLESQUISH2_ON
			#pragma shader_feature _TIMESETTINGS_LINEAR_DEFAULT _TIMESETTINGS_LINEAR_SCALED _TIMESETTINGS_LINEAR_FPS _TIMESETTINGS_FREQUENCY _TIMESETTINGS_FREQUENCY_FPS _TIMESETTINGS_CUSTOM_VALUE
			#pragma shader_feature _SHADERSPACE_UV _SHADERSPACE_UV_RAW _SHADERSPACE_OBJECT _SHADERSPACE_OBJECT_SCALED _SHADERSPACE_WORLD _SHADERSPACE_UI_ELEMENT _SHADERSPACE_SCREEN
			#pragma shader_feature_local _ENABLESTRONGTINT_ON
			#pragma shader_feature_local _ENABLEALPHATINT_ON
			#pragma shader_feature_local _ENABLEADDCOLOR_ON
			#pragma shader_feature_local _ENABLEHALFTONE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALGLOWFADE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALALPHAFADE_ON
			#pragma shader_feature_local _ENABLESOURCEGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLESOURCEALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALDISTORTION_ON
			#pragma shader_feature_local _ENABLEFULLDISTORTION_ON
			#pragma shader_feature_local _ENABLEPOISON_ON
			#pragma shader_feature_local _ENABLESHINE_ON
			#pragma shader_feature_local _ENABLERAINBOW_ON
			#pragma shader_feature_local _ENABLEBURN_ON
			#pragma shader_feature_local _ENABLEFROZEN_ON
			#pragma shader_feature_local _ENABLEMETAL_ON
			#pragma shader_feature_local _ENABLECAMOUFLAGE_ON
			#pragma shader_feature_local _ENABLEGLITCH_ON
			#pragma shader_feature_local _ENABLEHOLOGRAM_ON
			#pragma shader_feature_local _ENABLEOUTEROUTLINE_ON
			#pragma shader_feature_local _ENABLEINNEROUTLINE_ON
			#pragma shader_feature_local _ENABLESATURATION_ON
			#pragma shader_feature_local _ENABLESINEGLOW_ON
			#pragma shader_feature_local _ENABLEADDHUE_ON
			#pragma shader_feature_local _ENABLESHIFTHUE_ON
			#pragma shader_feature_local _ENABLEINKSPREAD_ON
			#pragma shader_feature_local _ENABLERECOLOR_ON
			#pragma shader_feature_local _ENABLEBLACKTINT_ON
			#pragma shader_feature_local _ENABLESPLITTONING_ON
			#pragma shader_feature_local _ENABLEHUE_ON
			#pragma shader_feature_local _ENABLEBRIGHTNESS_ON
			#pragma shader_feature_local _ENABLECONTRAST_ON
			#pragma shader_feature_local _ENABLECOLORREPLACE_ON
			#pragma shader_feature_local _ENABLEFLAME_ON
			#pragma shader_feature_local _ENABLECHECKERBOARD_ON
			#pragma shader_feature_local _ENABLECUSTOMFADE_ON
			#pragma shader_feature_local _ENABLESMOKE_ON
			#pragma shader_feature_local _ENABLEUVSCALE_ON
			#pragma shader_feature_local _ENABLEPIXELATE_ON
			#pragma shader_feature_local _ENABLEUVSCROLL_ON
			#pragma shader_feature_local _ENABLEUVROTATE_ON
			#pragma shader_feature_local _ENABLESINEROTATE_ON
			#pragma shader_feature_local _ENABLESQUEEZE_ON
			#pragma shader_feature_local _ENABLEUVDISTORT_ON
			#pragma shader_feature_local _ENABLEWIND_ON
			#pragma shader_feature_local _WINDISPARALLAX_ON
			#pragma shader_feature_local _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma shader_feature_local _OUTEROUTLINEDISTORTIONTOGGLE_ON


			sampler2D _UberMask;
			sampler2D _UberNoiseTexture;
			sampler2D _MainTex;
			float WindMinIntensity;
			float WindMaxIntensity;
			float WindNoiseSpeed;
			float WindNoiseScale;
			sampler2D _UVDistortShaderMask;
			sampler2D _CustomFadeFadeMask;
			sampler2D _RecolorTintAreas;
			sampler2D _ShiftHueShaderMask;
			sampler2D _AddHueShaderMask;
			sampler2D _SineGlowShaderMask;
			sampler2D _CamouflageShaderMask;
			sampler2D _MetalShaderMask;
			sampler2D _RainbowMask;
			sampler2D _ShineShaderMask;
			sampler2D _NormalMap;
			CBUFFER_START( UnityPerMaterial )
			float4 _ColorReplaceTargetColor;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _MetalHighlightColor;
			float4 _BurnInsideNoiseColor;
			float4 _ShiftHueShaderMask_ST;
			float4 _FrozenHighlightColor;
			float4 _MetalColor;
			float4 _FrozenSnowColor;
			float4 _ColorReplaceColor;
			float4 _RainbowMask_ST;
			float4 _SplitToningShadowsColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _HologramTint;
			float4 _MetalShaderMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _ShineColor;
			float4 _CamouflageShaderMask_ST;
			float4 _FrozenTint;
			float4 _OuterOutlineColor;
			float4 _SineGlowShaderMask_ST;
			float4 _SineGlowColor;
			float4 _PoisonColor;
			float4 _SplitToningHighlightsColor;
			float4 _InnerOutlineColor;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _InkSpreadColor;
			float4 _FullGlowDissolveEdgeColor;
			float4 _CamouflageColorB;
			float4 _RecolorRedTint;
			float4 _AlphaTintColor;
			float4 _RecolorYellowTint;
			float4 _RecolorGreenTint;
			float4 _RecolorCyanTint;
			float4 _RecolorBlueTint;
			float4 _BurnEdgeColor;
			float4 _RecolorPurpleTint;
			float4 _AddColorColor;
			float4 _RecolorTintAreas_ST;
			float4 _BlackTintColor;
			float4 _UberMask_ST;
			float4 _CamouflageColorA;
			float4 _CamouflageBaseColor;
			float4 _MainTex_TexelSize;
			float4 _BurnInsideColor;
			float4 _ShineShaderMask_ST;
			float2 _UVRotatePivot;
			float2 _UVScrollSpeed;
			float2 _FrozenSnowScale;
			float2 _UVScalePivot;
			float2 _PoisonNoiseScale;
			float2 _PoisonNoiseSpeed;
			float2 _UVScaleScale;
			float2 _InnerOutlineNoiseSpeed;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _FrozenHighlightDistortionScale;
			float2 _FrozenHighlightDistortion;
			float2 _FlameSpeed;
			float2 _FlameNoiseScale;
			float2 _FrozenHighlightSpeed;
			float2 _FrozenHighlightScale;
			float2 _RainbowNoiseScale;
			float2 _RainbowCenter;
			float2 _BurnSwirlNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _BurnEdgeNoiseScale;
			float2 _BurnPosition;
			float2 _InkSpreadPosition;
			float2 _CustomFadeNoiseScale;
			float2 _SineRotatePivot;
			float2 _SqueezeCenter;
			float2 _InnerOutlineNoiseScale;
			float2 _DirectionalDistortionDistortionScale;
			float2 _FullDistortionDistortion;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _MetalNoiseScale;
			float2 _GlitchNoiseSpeed;
			float2 _UberPosition;
			float2 _UberNoiseScale;
			float2 _GlitchNoiseScale;
			float2 _MetalNoiseSpeed;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _MetalNoiseDistortion;
			float2 _MetalNoiseDistortionScale;
			float2 _CamouflageAnimationSpeed;
			float2 _HalftonePosition;
			float2 _CamouflageDistortionScale;
			float2 _SineMoveOffset;
			float2 _SineMoveFrequency;
			float2 _CamouflageDistortionIntensity;
			float2 _CamouflageNoiseScaleA;
			float2 _MetalNoiseDistortionSpeed;
			float2 _CamouflageNoiseScaleB;
			float2 _DirectionalDistortionDistortion;
			float2 _OuterOutlineDistortionIntensity;
			float2 _FullDistortionNoiseScale;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _SqueezeScale;
			float2 _FullGlowDissolveNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _UVDistortNoiseScale;
			float2 _UVDistortSpeed;
			float2 _UVDistortTo;
			float2 _UVDistortFrom;
			float2 _GlitchMaskScale;
			float2 _GlitchMaskSpeed;
			float2 _GlitchDistortion;
			float2 _DirectionalDistortionNoiseScale;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortionScale;
			float2 _BurnInsideNoiseScale;
			float2 _SourceAlphaDissolvePosition;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _OuterOutlineNoiseSpeed;
			float2 _SourceGlowDissolvePosition;
			float2 _OuterOutlineNoiseScale;
			float _MetalHighlightDensity;
			float _FrozenSnowContrast;
			float _MetalFade;
			float _FrozenSnowDensity;
			float _FrozenHighlightContrast;
			float _FrozenContrast;
			float _FrozenFade;
			float _MetalHighlightContrast;
			float _FrozenHighlightDensity;
			float _BurnInsideContrast;
			float _MetalContrast;
			float _BurnInsideNoiseFactor;
			float _ShineRotation;
			float _BurnRadius;
			float _SourceAlphaDissolveWidth;
			float _SourceGlowDissolveNoiseFactor;
			float _SourceGlowDissolveFade;
			float _SourceGlowDissolveWidth;
			float _SourceGlowDissolveInvert;
			float _DirectionalAlphaFadeInvert;
			float _DirectionalAlphaFadeRotation;
			float _DirectionalAlphaFadeFade;
			float _DirectionalAlphaFadeNoiseFactor;
			float _DirectionalAlphaFadeWidth;
			float _DirectionalGlowFadeInvert;
			float _DirectionalGlowFadeRotation;
			float _DirectionalGlowFadeFade;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeWidth;
			float _HalftoneInvert;
			float _HalftoneTiling;
			float _HalftoneFade;
			float _HalftoneFadeWidth;
			float _AddColorContrast;
			float _AddColorFade;
			float _AlphaTintPower;
			float _AlphaTintFade;
			float _AlphaTintMinAlpha;
			float _StrongTintContrast;
			float _SourceAlphaDissolveNoiseFactor;
			float _BurnSwirlFactor;
			float _SourceAlphaDissolveFade;
			float _FullGlowDissolveWidth;
			float _BurnEdgeNoiseFactor;
			float _BurnWidth;
			float _BurnFade;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineSaturation;
			float _ShineContrast;
			float _ShineSpeed;
			float _ShineScale;
			float _ShineWidth;
			float _ShineSmoothness;
			float _ShineFade;
			float _PoisonShiftSpeed;
			float _PoisonDensity;
			float _PoisonFade;
			float _PoisonNoiseBrightness;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			float _FullGlowDissolveFade;
			float _SourceAlphaDissolveInvert;
			float _CamouflageFade;
			float _SquishStretch;
			float _CamouflageSmoothnessB;
			float _DirectionalDistortionRotation;
			float _DirectionalDistortionFade;
			float _DirectionalDistortionNoiseFactor;
			float _DirectionalDistortionWidth;
			float _HologramDistortionSpeed;
			float _HologramDistortionDensity;
			float _HologramDistortionScale;
			float _HologramDistortionOffset;
			float _HologramFade;
			float _GlitchMaskMin;
			float _GlitchFade;
			float _UVDistortFade;
			float _DirectionalDistortionInvert;
			float _SqueezePower;
			float _SineRotateFrequency;
			float _SineRotateAngle;
			float _SineRotateFade;
			float _UVRotateSpeed;
			float _PixelatePixelDensity;
			float _PixelateFade;
			float _SmokeVertexSeed;
			float _SmokeNoiseScale;
			float _SmokeNoiseFactor;
			float _SmokeSmoothness;
			float _SmokeDarkEdge;
			float _SmokeAlpha;
			float _SqueezeFade;
			float _CustomFadeNoiseFactor;
			float _DirectionalDistortionRandomDirection;
			float _WindSquishWindFactor;
			float _SquishFade;
			float _SquishFlip;
			float _SquishSquish;
			float _TimeScale;
			float _TimeFPS;
			float _TimeFrequency;
			float _TimeRange;
			float _TimeValue;
			float _SineMoveFade;
			float _VibrateFrequency;
			float _VibrateOffset;
			float _VibrateFade;
			float _FullDistortionFade;
			float _VibrateRotation;
			float _UberWidth;
			float _PixelsPerUnit;
			float _RectWidth;
			float _RectHeight;
			float _ScreenWidthUnits;
			float _UberNoiseFactor;
			float _WindRotationWindFactor;
			float _WindXPosition;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _FullFade;
			float _CamouflageContrast;
			float _CustomFadeSmoothness;
			float _CheckerboardDarken;
			float _AddHueSaturation;
			float _AddHueBrightness;
			float _AddHueContrast;
			float _AddHueFade;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _Saturation;
			float _InnerOutlineFade;
			float _StrongTintFade;
			float _AddHueSpeed;
			float _InnerOutlineWidth;
			float _OuterOutlineWidth;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _HologramLineFrequency;
			float _HologramLineGap;
			float _HologramMinAlpha;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
			float _CamouflageDensityA;
			float _CamouflageAnimated;
			float _CamouflageSmoothnessA;
			float _CamouflageDensityB;
			float _OuterOutlineFade;
			float _CustomFadeAlpha;
			float _ShiftHueFade;
			float _InkSpreadWidth;
			float _CheckerboardTiling;
			float _FlameNoiseHeightFactor;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _FlameBrightness;
			float _ColorReplaceContrast;
			float _ColorReplaceHueTolerance;
			float _ColorReplaceSaturationTolerance;
			float _ColorReplaceBrightnessTolerance;
			float _ColorReplaceBias;
			float _ColorReplaceFade;
			float _ShiftHueSpeed;
			float _Contrast;
			float _Hue;
			float _SplitToningShift;
			float _SplitToningBalance;
			float _SplitToningContrast;
			float _SplitToningFade;
			float _BlackTintPower;
			float _BlackTintFade;
			float _RecolorFade;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			float _InkSpreadNoiseFactor;
			float _Brightness;
			float _NormalIntensity;
			CBUFFER_END


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 color : COLOR;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 texCoord0 : TEXCOORD0;
				float4 color : TEXCOORD1;
				float3 normalWS : TEXCOORD2;
				float4 tangentWS : TEXCOORD3;
				float3 bitangentWS : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			float FastNoise101_g3863( float x )
			{
				float i = floor(x);
				float f = frac(x);
				float s = sign(frac(x/2.0)-0.5);
				    
				float k = 0.5+0.5*sin(i);
				return s*f*(f-1.0)*((16.0*k-4.0)*f*(f-1.0)-1.0);
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			VertexOutput vert ( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 _ZeroVector = float2(0,0);
				float2 texCoord83_g4006 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g4006 = texCoord83_g4006;
				float2 appendResult72_g4006 = (float2(( _SquishStretch * ( break77_g4006.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g4006.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH2_ON
				float2 staticSwitch198 = ( appendResult72_g4006 + _ZeroVector );
				#else
				float2 staticSwitch198 = _ZeroVector;
				#endif
				float2 temp_output_2_0_g4018 = staticSwitch198;
				float mulTime5_g3867 = _TimeParameters.x * _TimeScale;
				float mulTime7_g3867 = _TimeParameters.x * _TimeFrequency;
				#if defined(_TIMESETTINGS_LINEAR_DEFAULT)
				float staticSwitch1_g3867 = _TimeParameters.x;
				#elif defined(_TIMESETTINGS_LINEAR_SCALED)
				float staticSwitch1_g3867 = mulTime5_g3867;
				#elif defined(_TIMESETTINGS_LINEAR_FPS)
				float staticSwitch1_g3867 = ( _TimeScale * ( floor( ( _TimeParameters.x * _TimeFPS ) ) / _TimeFPS ) );
				#elif defined(_TIMESETTINGS_FREQUENCY)
				float staticSwitch1_g3867 = ( ( sin( mulTime7_g3867 ) * _TimeRange ) + 100.0 );
				#elif defined(_TIMESETTINGS_FREQUENCY_FPS)
				float staticSwitch1_g3867 = ( ( _TimeRange * sin( ( _TimeFrequency * ( floor( ( _TimeFPS * _TimeParameters.x ) ) / _TimeFPS ) ) ) ) + 100.0 );
				#elif defined(_TIMESETTINGS_CUSTOM_VALUE)
				float staticSwitch1_g3867 = _TimeValue;
				#else
				float staticSwitch1_g3867 = _TimeParameters.x;
				#endif
				float shaderTime237 = staticSwitch1_g3867;
				float temp_output_8_0_g4018 = shaderTime237;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g4018 = ( ( sin( ( temp_output_8_0_g4018 * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g4018 );
				#else
				float2 staticSwitch4_g4018 = temp_output_2_0_g4018;
				#endif
				float temp_output_30_0_g4020 = temp_output_8_0_g4018;
				float3 rotatedValue21_g4020 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( temp_output_30_0_g4020 * _VibrateRotation ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g4018 = ( ( sin( ( _VibrateFrequency * temp_output_30_0_g4020 ) ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g4020).xy ) + staticSwitch4_g4018 );
				#else
				float2 staticSwitch6_g4018 = staticSwitch4_g4018;
				#endif
				float2 temp_output_250_0 = staticSwitch6_g4018;
				float2 uv_UberMask = v.uv0.xy * _UberMask_ST.xy + _UberMask_ST.zw;
				float4 tex2DNode3_g3887 = tex2Dlod( _UberMask, float4( uv_UberMask, 0, 0.0) );
				float temp_output_4_0_g3883 = max( _UberWidth , 0.001 );
				float2 texCoord2_g3767 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord22_g3767 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float2 texCoord23_g3767 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 appendResult28_g3767 = (float2(_RectWidth , _RectHeight));
				float4 ase_clipPos = TransformObjectToHClip((v.vertex).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_SHADERSPACE_UV)
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#elif defined(_SHADERSPACE_UV_RAW)
				float2 staticSwitch1_g3767 = texCoord22_g3767;
				#elif defined(_SHADERSPACE_OBJECT)
				float2 staticSwitch1_g3767 = (v.vertex.xyz).xy;
				#elif defined(_SHADERSPACE_OBJECT_SCALED)
				float2 staticSwitch1_g3767 = ( (v.vertex.xyz).xy * (ase_objectScale).xy );
				#elif defined(_SHADERSPACE_WORLD)
				float2 staticSwitch1_g3767 = (ase_worldPos).xy;
				#elif defined(_SHADERSPACE_UI_ELEMENT)
				float2 staticSwitch1_g3767 = ( texCoord23_g3767 * ( appendResult28_g3767 / _PixelsPerUnit ) );
				#elif defined(_SHADERSPACE_SCREEN)
				float2 staticSwitch1_g3767 = ( ( (ase_screenPosNorm).xy * (_ScreenParams).xy ) / ( _ScreenParams.x / _ScreenWidthUnits ) );
				#else
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#endif
				float2 shaderPosition235 = staticSwitch1_g3767;
				float clampResult14_g3883 = clamp( ( ( ( _FullFade * ( 1.0 + temp_output_4_0_g3883 ) ) - tex2Dlod( _UberNoiseTexture, float4( ( shaderPosition235 * _UberNoiseScale ), 0, 0.0) ).r ) / temp_output_4_0_g3883 ) , 0.0 , 1.0 );
				float2 temp_output_27_0_g3885 = shaderPosition235;
				float clampResult3_g3885 = clamp( ( ( _FullFade - ( distance( _UberPosition , temp_output_27_0_g3885 ) + ( tex2Dlod( _UberNoiseTexture, float4( ( temp_output_27_0_g3885 * _UberNoiseScale ), 0, 0.0) ).r * _UberNoiseFactor ) ) ) / max( _UberWidth , 0.001 ) ) , 0.0 , 1.0 );
				#if defined(_UBERFADING_NONE)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_FULL)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_MASK)
				float staticSwitch139 = ( _FullFade * ( tex2DNode3_g3887.r * tex2DNode3_g3887.a ) );
				#elif defined(_UBERFADING_DISSOLVE)
				float staticSwitch139 = clampResult14_g3883;
				#elif defined(_UBERFADING_SPREAD)
				float staticSwitch139 = clampResult3_g3885;
				#else
				float staticSwitch139 = _FullFade;
				#endif
				float fullFade123 = staticSwitch139;
				float2 lerpResult121 = lerp( float2( 0,0 ) , temp_output_250_0 , fullFade123);
				#if defined(_UBERFADING_NONE)
				float2 staticSwitch142 = temp_output_250_0;
				#elif defined(_UBERFADING_FULL)
				float2 staticSwitch142 = lerpResult121;
				#elif defined(_UBERFADING_MASK)
				float2 staticSwitch142 = lerpResult121;
				#elif defined(_UBERFADING_DISSOLVE)
				float2 staticSwitch142 = lerpResult121;
				#elif defined(_UBERFADING_SPREAD)
				float2 staticSwitch142 = lerpResult121;
				#else
				float2 staticSwitch142 = temp_output_250_0;
				#endif
				
				o.ase_texcoord6.xyz = ase_worldPos;
				o.ase_texcoord7 = screenPos;
				
				o.ase_texcoord5 = v.vertex;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord6.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = float3( staticSwitch142 ,  0.0 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.normal = v.normal;
				v.tangent.xyz = v.tangent.xyz;

				VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);

				o.texCoord0 = v.uv0;
				o.color = v.color;
				o.clipPos = vertexInput.positionCS;

				float3 normalWS = TransformObjectToWorldNormal( v.normal );
				o.normalWS = NormalizeNormalPerVertex( normalWS );
				float4 tangentWS = float4( TransformObjectToWorldDir( v.tangent.xyz ), v.tangent.w );
				o.tangentWS = normalize( tangentWS );
				o.bitangentWS = cross( normalWS, tangentWS.xyz ) * tangentWS.w;
				return o;
			}

			half4 frag ( VertexOutput IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				float2 texCoord39 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g3862 = texCoord39;
				float4 transform62_g3863 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				#ifdef _WINDISPARALLAX_ON
				float staticSwitch111_g3863 = _WindXPosition;
				#else
				float staticSwitch111_g3863 = transform62_g3863.x;
				#endif
				float x101_g3863 = ( ( staticSwitch111_g3863 + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale );
				float localFastNoise101_g3863 = FastNoise101_g3863( x101_g3863 );
				float lerpResult86_g3863 = lerp( WindMinIntensity , WindMaxIntensity , ( localFastNoise101_g3863 + 0.5 ));
				float clampResult29_g3863 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g3863 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g3863 = temp_output_3_0_g3862;
				float temp_output_39_0_g3863 = ( temp_output_1_0_g3863.y + _WindFlip );
				float3 appendResult43_g3863 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g3863 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g3863 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g3863 )));
				float3 rotatedValue19_g3863 = RotateAroundAxis( appendResult43_g3863, float3( ( appendResult27_g3863 + temp_output_1_0_g3863 ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g3863 * temp_output_39_0_g3863 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g3862 = (rotatedValue19_g3863).xy;
				#else
				float2 staticSwitch4_g3862 = temp_output_3_0_g3862;
				#endif
				float2 texCoord2_g3767 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord22_g3767 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float3 ase_worldPos = IN.ase_texcoord6.xyz;
				float2 texCoord23_g3767 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 appendResult28_g3767 = (float2(_RectWidth , _RectHeight));
				float4 screenPos = IN.ase_texcoord7;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_SHADERSPACE_UV)
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#elif defined(_SHADERSPACE_UV_RAW)
				float2 staticSwitch1_g3767 = texCoord22_g3767;
				#elif defined(_SHADERSPACE_OBJECT)
				float2 staticSwitch1_g3767 = (IN.ase_texcoord5.xyz).xy;
				#elif defined(_SHADERSPACE_OBJECT_SCALED)
				float2 staticSwitch1_g3767 = ( (IN.ase_texcoord5.xyz).xy * (ase_objectScale).xy );
				#elif defined(_SHADERSPACE_WORLD)
				float2 staticSwitch1_g3767 = (ase_worldPos).xy;
				#elif defined(_SHADERSPACE_UI_ELEMENT)
				float2 staticSwitch1_g3767 = ( texCoord23_g3767 * ( appendResult28_g3767 / _PixelsPerUnit ) );
				#elif defined(_SHADERSPACE_SCREEN)
				float2 staticSwitch1_g3767 = ( ( (ase_screenPosNorm).xy * (_ScreenParams).xy ) / ( _ScreenParams.x / _ScreenWidthUnits ) );
				#else
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#endif
				float2 shaderPosition235 = staticSwitch1_g3767;
				float2 temp_output_195_0_g3864 = shaderPosition235;
				float2 appendResult189_g3864 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_195_0_g3864 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_195_0_g3864 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch4_g3862 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g3864 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch4_g3862;
				#endif
				float2 temp_output_182_0_g3868 = shaderPosition235;
				float3 rotatedValue168_g3868 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_182_0_g3868 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g3868 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_182_0_g3868 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g3868 = rotatedValue136_g3868;
				float clampResult154_g3868 = clamp( ( ( break130_g3868.x + break130_g3868.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_182_0_g3868 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g3868).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g3868 ) ):( clampResult154_g3868 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float mulTime5_g3867 = _TimeParameters.x * _TimeScale;
				float mulTime7_g3867 = _TimeParameters.x * _TimeFrequency;
				#if defined(_TIMESETTINGS_LINEAR_DEFAULT)
				float staticSwitch1_g3867 = _TimeParameters.x;
				#elif defined(_TIMESETTINGS_LINEAR_SCALED)
				float staticSwitch1_g3867 = mulTime5_g3867;
				#elif defined(_TIMESETTINGS_LINEAR_FPS)
				float staticSwitch1_g3867 = ( _TimeScale * ( floor( ( _TimeParameters.x * _TimeFPS ) ) / _TimeFPS ) );
				#elif defined(_TIMESETTINGS_FREQUENCY)
				float staticSwitch1_g3867 = ( ( sin( mulTime7_g3867 ) * _TimeRange ) + 100.0 );
				#elif defined(_TIMESETTINGS_FREQUENCY_FPS)
				float staticSwitch1_g3867 = ( ( _TimeRange * sin( ( _TimeFrequency * ( floor( ( _TimeFPS * _TimeParameters.x ) ) / _TimeFPS ) ) ) ) + 100.0 );
				#elif defined(_TIMESETTINGS_CUSTOM_VALUE)
				float staticSwitch1_g3867 = _TimeValue;
				#else
				float staticSwitch1_g3867 = _TimeParameters.x;
				#endif
				float shaderTime237 = staticSwitch1_g3867;
				float temp_output_8_0_g3873 = ( ( ( shaderTime237 * _HologramDistortionSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y );
				float2 temp_cast_3 = (temp_output_8_0_g3873).xx;
				float2 temp_cast_4 = (_HologramDistortionDensity).xx;
				float clampResult75_g3873 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_3 * temp_cast_4 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_5 = (temp_output_8_0_g3873).xx;
				float2 temp_cast_6 = (_HologramDistortionScale).xx;
				float2 appendResult2_g3874 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float hologramFade182 = _HologramFade;
				float2 appendResult44_g3873 = (float2(( ( ( clampResult75_g3873 * ( tex2D( _UberNoiseTexture, ( temp_cast_5 * temp_cast_6 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g3874 ).x ) * hologramFade182 ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g3873 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 temp_output_18_0_g3871 = shaderPosition235;
				float2 glitchPosition154 = temp_output_18_0_g3871;
				float glitchFade152 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_18_0_g3871 + ( _GlitchMaskSpeed * shaderTime237 ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( glitchPosition154 + ( _GlitchDistortionSpeed * shaderTime237 ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * glitchFade152 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float2 temp_output_1_0_g3890 = staticSwitch62;
				float temp_output_25_0_g3890 = shaderTime237;
				float2 lerpResult21_g3891 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( shaderPosition235 + ( _UVDistortSpeed * temp_output_25_0_g3890 ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g3893 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.texCoord0.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g3894 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g3890 = ( temp_output_1_0_g3890 + ( lerpResult21_g3891 * ( 100.0 / appendResult2_g3893 ) * ( _UVDistortFade * ( tex2DNode3_g3894.r * tex2DNode3_g3894.a ) ) ) );
				#else
				float2 staticSwitch5_g3890 = temp_output_1_0_g3890;
				#endif
				float2 temp_output_1_0_g3895 = staticSwitch5_g3890;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g3890 = ( temp_output_1_0_g3895 + ( ( temp_output_1_0_g3895 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g3895 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g3890 = staticSwitch5_g3890;
				#endif
				float3 rotatedValue36_g3896 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g3890 ,  0.0 ), float3( 0,0,1 ), ( sin( ( temp_output_25_0_g3890 * _SineRotateFrequency ) ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g3890 = (rotatedValue36_g3896).xy;
				#else
				float2 staticSwitch9_g3890 = staticSwitch7_g3890;
				#endif
				float3 rotatedValue8_g3897 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g3890 ,  0.0 ), float3( 0,0,1 ), ( temp_output_25_0_g3890 * _UVRotateSpeed * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g3890 = (rotatedValue8_g3897).xy;
				#else
				float2 staticSwitch16_g3890 = staticSwitch9_g3890;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g3890 = ( ( ( _UVScrollSpeed * temp_output_25_0_g3890 ) + staticSwitch16_g3890 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g3890 = staticSwitch16_g3890;
				#endif
				float2 appendResult2_g3900 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 MultFactor30_g3899 = ( _PixelatePixelDensity * ( float2( 1,1 ) / ( 100.0 / appendResult2_g3900 ) ) * ( 1.0 / max( _PixelateFade , 0.0001 ) ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g3890 = ( round( ( MultFactor30_g3899 * staticSwitch14_g3890 ) ) / MultFactor30_g3899 );
				#else
				float2 staticSwitch4_g3890 = staticSwitch14_g3890;
				#endif
				#ifdef _ENABLEUVSCALE_ON
				float2 staticSwitch24_g3890 = ( ( ( staticSwitch4_g3890 - _UVScalePivot ) / _UVScaleScale ) + _UVScalePivot );
				#else
				float2 staticSwitch24_g3890 = staticSwitch4_g3890;
				#endif
				float2 temp_output_257_0 = staticSwitch24_g3890;
				float2 texCoord131 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 uv_UberMask = IN.texCoord0.xy * _UberMask_ST.xy + _UberMask_ST.zw;
				float4 tex2DNode3_g3887 = tex2D( _UberMask, uv_UberMask );
				float temp_output_4_0_g3883 = max( _UberWidth , 0.001 );
				float clampResult14_g3883 = clamp( ( ( ( _FullFade * ( 1.0 + temp_output_4_0_g3883 ) ) - tex2D( _UberNoiseTexture, ( shaderPosition235 * _UberNoiseScale ) ).r ) / temp_output_4_0_g3883 ) , 0.0 , 1.0 );
				float2 temp_output_27_0_g3885 = shaderPosition235;
				float clampResult3_g3885 = clamp( ( ( _FullFade - ( distance( _UberPosition , temp_output_27_0_g3885 ) + ( tex2D( _UberNoiseTexture, ( temp_output_27_0_g3885 * _UberNoiseScale ) ).r * _UberNoiseFactor ) ) ) / max( _UberWidth , 0.001 ) ) , 0.0 , 1.0 );
				#if defined(_UBERFADING_NONE)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_FULL)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_MASK)
				float staticSwitch139 = ( _FullFade * ( tex2DNode3_g3887.r * tex2DNode3_g3887.a ) );
				#elif defined(_UBERFADING_DISSOLVE)
				float staticSwitch139 = clampResult14_g3883;
				#elif defined(_UBERFADING_SPREAD)
				float staticSwitch139 = clampResult3_g3885;
				#else
				float staticSwitch139 = _FullFade;
				#endif
				float fullFade123 = staticSwitch139;
				float2 lerpResult130 = lerp( texCoord131 , temp_output_257_0 , fullFade123);
				#if defined(_UBERFADING_NONE)
				float2 staticSwitch145 = temp_output_257_0;
				#elif defined(_UBERFADING_FULL)
				float2 staticSwitch145 = lerpResult130;
				#elif defined(_UBERFADING_MASK)
				float2 staticSwitch145 = lerpResult130;
				#elif defined(_UBERFADING_DISSOLVE)
				float2 staticSwitch145 = lerpResult130;
				#elif defined(_UBERFADING_SPREAD)
				float2 staticSwitch145 = lerpResult130;
				#else
				float2 staticSwitch145 = temp_output_257_0;
				#endif
				float2 finalUV146 = staticSwitch145;
				float4 originalColor191 = tex2D( _MainTex, finalUV146 );
				float4 temp_output_1_0_g3902 = originalColor191;
				float4 temp_output_1_0_g3905 = temp_output_1_0_g3902;
				float2 temp_output_7_0_g3902 = finalUV146;
				float2 temp_output_43_0_g3905 = temp_output_7_0_g3902;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g3905 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g3905 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.color.a / 2.5 ) - distance( temp_output_43_0_g3905 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g3905 = lerp( ( (temp_output_1_0_g3905).rgb * (IN.color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g3905 ) * _SmokeDarkEdge ));
				float4 appendResult31_g3905 = (float4(lerpResult34_g3905 , ( clampResult28_g3905 * _SmokeAlpha * temp_output_1_0_g3905.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g3902 = appendResult31_g3905;
				#else
				float4 staticSwitch2_g3902 = temp_output_1_0_g3902;
				#endif
				float4 temp_output_1_0_g3903 = staticSwitch2_g3902;
				float2 temp_output_57_0_g3903 = temp_output_7_0_g3902;
				float4 tex2DNode3_g3903 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g3903 );
				float clampResult37_g3903 = clamp( ( ( ( IN.color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g3903.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g3903 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g3903 = (float4(( float4( (IN.color).rgb , 0.0 ) * temp_output_1_0_g3903 ).rgb , ( temp_output_1_0_g3903.a * pow( clampResult37_g3903 , ( _CustomFadeSmoothness / max( tex2DNode3_g3903.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g3902 = appendResult13_g3903;
				#else
				float4 staticSwitch3_g3902 = staticSwitch2_g3902;
				#endif
				float4 temp_output_1_0_g3907 = staticSwitch3_g3902;
				float4 temp_output_1_0_g3908 = temp_output_1_0_g3907;
				float2 appendResult4_g3908 = (float2(ase_worldPos.x , ase_worldPos.y));
				float2 temp_output_44_0_g3908 = ( appendResult4_g3908 * _CheckerboardTiling * 0.5 );
				float2 break12_g3908 = step( ( ceil( temp_output_44_0_g3908 ) - temp_output_44_0_g3908 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g3908.x + break12_g3908.y ) ) )).xxx;
				float4 appendResult42_g3908 = (float4(( (temp_output_1_0_g3908).rgb - temp_cast_16 ) , temp_output_1_0_g3908.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g3907 = appendResult42_g3908;
				#else
				float4 staticSwitch2_g3907 = temp_output_1_0_g3907;
				#endif
				float2 temp_output_75_0_g3909 = finalUV146;
				float saferPower57_g3909 = max( max( ( temp_output_75_0_g3909.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g3909 = max( _FlameRadius , 0.01 );
				float clampResult70_g3909 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( shaderTime237 * _FlameSpeed ) + temp_output_75_0_g3909 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g3909 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g3909 - distance( temp_output_75_0_g3909 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g3909 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g3909 = ( clampResult70_g3909 * _FlameBrightness );
				float4 appendResult31_g3909 = (float4(temp_output_63_0_g3909 , temp_output_63_0_g3909 , temp_output_63_0_g3909 , clampResult70_g3909));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g3907 = ( appendResult31_g3909 * staticSwitch2_g3907 );
				#else
				float4 staticSwitch6_g3907 = staticSwitch2_g3907;
				#endif
				float4 temp_output_3_0_g3911 = staticSwitch6_g3907;
				float4 temp_output_1_0_g3943 = temp_output_3_0_g3911;
				float3 temp_output_2_0_g3943 = (temp_output_1_0_g3943).rgb;
				float4 break2_g3944 = float4( temp_output_2_0_g3943 , 0.0 );
				float temp_output_9_0_g3945 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g3945 = max( ( ( ( break2_g3944.x + break2_g3944.y + break2_g3944.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3945 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g3943 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g3943 = RGBToHSV( temp_output_2_0_g3943 );
				float clampResult35_g3943 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g3943.x , hsvTorgb5_g3943.x ) , distance( hsvTorgb7_g3943.x , ( hsvTorgb5_g3943.x + 1.0 ) ) ) , distance( hsvTorgb7_g3943.x , ( hsvTorgb5_g3943.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g3943 = clamp( ( 1.0 - ( distance( hsvTorgb7_g3943.y , hsvTorgb5_g3943.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g3943 = clamp( ( 1.0 - ( distance( hsvTorgb7_g3943.z , hsvTorgb5_g3943.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g3943 = max( ( clampResult35_g3943 * clampResult30_g3943 * clampResult40_g3943 ) , 0.0001 );
				float3 lerpResult23_g3943 = lerp( temp_output_2_0_g3943 , ( pow( saferPower7_g3945 , temp_output_9_0_g3945 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g3943 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g3943 = (float4(lerpResult23_g3943 , temp_output_1_0_g3943.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g3911 = appendResult4_g3943;
				#else
				float4 staticSwitch29_g3911 = temp_output_3_0_g3911;
				#endif
				float4 temp_output_1_0_g3936 = staticSwitch29_g3911;
				float3 saferPower5_g3936 = max( (temp_output_1_0_g3936).rgb , 0.0001 );
				float3 temp_cast_22 = (_Contrast).xxx;
				float4 appendResult4_g3936 = (float4(pow( saferPower5_g3936 , temp_cast_22 ) , temp_output_1_0_g3936.a));
				#ifdef _ENABLECONTRAST_ON
				float4 staticSwitch32_g3911 = appendResult4_g3936;
				#else
				float4 staticSwitch32_g3911 = staticSwitch29_g3911;
				#endif
				float4 temp_output_2_0_g3935 = staticSwitch32_g3911;
				float4 appendResult6_g3935 = (float4(( (temp_output_2_0_g3935).rgb * _Brightness ) , temp_output_2_0_g3935.a));
				#ifdef _ENABLEBRIGHTNESS_ON
				float4 staticSwitch33_g3911 = appendResult6_g3935;
				#else
				float4 staticSwitch33_g3911 = staticSwitch32_g3911;
				#endif
				float4 temp_output_2_0_g3934 = staticSwitch33_g3911;
				float3 hsvTorgb1_g3934 = RGBToHSV( temp_output_2_0_g3934.rgb );
				float3 hsvTorgb3_g3934 = HSVToRGB( float3(( hsvTorgb1_g3934.x + _Hue ),hsvTorgb1_g3934.y,hsvTorgb1_g3934.z) );
				float4 appendResult8_g3934 = (float4(hsvTorgb3_g3934 , temp_output_2_0_g3934.a));
				#ifdef _ENABLEHUE_ON
				float4 staticSwitch36_g3911 = appendResult8_g3934;
				#else
				float4 staticSwitch36_g3911 = staticSwitch33_g3911;
				#endif
				float4 temp_output_1_0_g3937 = staticSwitch36_g3911;
				float4 break2_g3938 = temp_output_1_0_g3937;
				float temp_output_3_0_g3937 = ( ( break2_g3938.x + break2_g3938.y + break2_g3938.z ) / 3.0 );
				float clampResult25_g3937 = clamp( ( ( ( ( temp_output_3_0_g3937 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g3937 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g3937);
				float temp_output_9_0_g3939 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g3939 = max( ( temp_output_3_0_g3937 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3939 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g3937 = lerp( (temp_output_1_0_g3937).rgb , ( lerpResult6_g3937 * pow( saferPower7_g3939 , temp_output_9_0_g3939 ) ) , _SplitToningFade);
				float4 appendResult18_g3937 = (float4(lerpResult11_g3937 , temp_output_1_0_g3937.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g3911 = appendResult18_g3937;
				#else
				float4 staticSwitch30_g3911 = staticSwitch36_g3911;
				#endif
				float4 temp_output_1_0_g3942 = staticSwitch30_g3911;
				float3 temp_output_4_0_g3942 = (temp_output_1_0_g3942).rgb;
				float4 break12_g3942 = temp_output_1_0_g3942;
				float3 lerpResult7_g3942 = lerp( temp_output_4_0_g3942 , ( temp_output_4_0_g3942 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g3942.r , break12_g3942.g ) , break12_g3942.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g3942 = lerp( temp_output_4_0_g3942 , lerpResult7_g3942 , _BlackTintFade);
				float4 appendResult11_g3942 = (float4(lerpResult13_g3942 , break12_g3942.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g3911 = appendResult11_g3942;
				#else
				float4 staticSwitch20_g3911 = staticSwitch30_g3911;
				#endif
				float4 temp_output_1_0_g3940 = staticSwitch20_g3911;
				float2 uv_RecolorTintAreas = IN.texCoord0.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g3940 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g3940 = ( ( hsvTorgb33_g3940.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g3940 = 0;
				if( temp_output_43_0_g3940 >= 0.8333333 )
				ifLocalVar46_g3940 = _RecolorPurpleTint;
				else
				ifLocalVar46_g3940 = _RecolorBlueTint;
				float4 ifLocalVar44_g3940 = 0;
				if( temp_output_43_0_g3940 <= 0.6666667 )
				ifLocalVar44_g3940 = _RecolorCyanTint;
				else
				ifLocalVar44_g3940 = ifLocalVar46_g3940;
				float4 ifLocalVar47_g3940 = 0;
				if( temp_output_43_0_g3940 <= 0.3333333 )
				ifLocalVar47_g3940 = _RecolorYellowTint;
				else
				ifLocalVar47_g3940 = _RecolorGreenTint;
				float4 ifLocalVar45_g3940 = 0;
				if( temp_output_43_0_g3940 <= 0.1666667 )
				ifLocalVar45_g3940 = _RecolorRedTint;
				else
				ifLocalVar45_g3940 = ifLocalVar47_g3940;
				float4 ifLocalVar35_g3940 = 0;
				if( temp_output_43_0_g3940 >= 0.5 )
				ifLocalVar35_g3940 = ifLocalVar44_g3940;
				else
				ifLocalVar35_g3940 = ifLocalVar45_g3940;
				float4 break55_g3940 = ifLocalVar35_g3940;
				float3 appendResult56_g3940 = (float3(break55_g3940.r , break55_g3940.g , break55_g3940.b));
				float4 break2_g3941 = temp_output_1_0_g3940;
				float saferPower57_g3940 = max( ( ( break2_g3941.x + break2_g3941.y + break2_g3941.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g3940 = lerp( (temp_output_1_0_g3940).rgb , ( appendResult56_g3940 * pow( saferPower57_g3940 , max( ( break55_g3940.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g3940.z * _RecolorFade ));
				float4 appendResult30_g3940 = (float4(lerpResult26_g3940 , temp_output_1_0_g3940.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g3911 = appendResult30_g3940;
				#else
				float4 staticSwitch9_g3911 = staticSwitch20_g3911;
				#endif
				float4 temp_output_1_0_g3920 = staticSwitch9_g3911;
				float4 break2_g3922 = temp_output_1_0_g3920;
				float temp_output_9_0_g3921 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g3921 = max( ( ( ( break2_g3922.x + break2_g3922.y + break2_g3922.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3921 ) , 0.0 ) ) ) , 0.0001 );
				float2 temp_output_65_0_g3920 = shaderPosition235;
				float clampResult53_g3920 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_65_0_g3920 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_65_0_g3920 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g3920 = lerp( (temp_output_1_0_g3920).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g3921 , temp_output_9_0_g3921 ) ) , ( _InkSpreadFade * clampResult53_g3920 ));
				float4 appendResult9_g3920 = (float4(lerpResult7_g3920 , (temp_output_1_0_g3920).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g3911 = appendResult9_g3920;
				#else
				float4 staticSwitch17_g3911 = staticSwitch9_g3911;
				#endif
				float4 temp_output_1_0_g3918 = staticSwitch17_g3911;
				float3 temp_output_34_0_g3918 = (temp_output_1_0_g3918).rgb;
				float temp_output_39_0_g3911 = shaderTime237;
				float3 hsvTorgb15_g3918 = RGBToHSV( temp_output_34_0_g3918 );
				float3 hsvTorgb19_g3918 = HSVToRGB( float3(( ( temp_output_39_0_g3911 * _ShiftHueSpeed ) + hsvTorgb15_g3918.x ),hsvTorgb15_g3918.y,hsvTorgb15_g3918.z) );
				float2 uv_ShiftHueShaderMask = IN.texCoord0.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g3919 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g3918 = lerp( temp_output_34_0_g3918 , hsvTorgb19_g3918 , ( _ShiftHueFade * ( tex2DNode3_g3919.r * tex2DNode3_g3919.a ) ));
				float4 appendResult6_g3918 = (float4(lerpResult33_g3918 , temp_output_1_0_g3918.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g3911 = appendResult6_g3918;
				#else
				float4 staticSwitch19_g3911 = staticSwitch17_g3911;
				#endif
				float3 hsvTorgb3_g3931 = HSVToRGB( float3(( temp_output_39_0_g3911 * _AddHueSpeed ),1.0,1.0) );
				float3 hsvTorgb15_g3930 = RGBToHSV( hsvTorgb3_g3931 );
				float3 hsvTorgb19_g3930 = HSVToRGB( float3(hsvTorgb15_g3930.x,_AddHueSaturation,( hsvTorgb15_g3930.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g3930 = staticSwitch19_g3911;
				float4 break2_g3933 = temp_output_1_0_g3930;
				float saferPower27_g3930 = max( ( ( break2_g3933.x + break2_g3933.y + break2_g3933.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.texCoord0.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g3932 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g3930 = (float4(( ( hsvTorgb19_g3930 * pow( saferPower27_g3930 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g3932.r * tex2DNode3_g3932.a ) ) ) + (temp_output_1_0_g3930).rgb ) , temp_output_1_0_g3930.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g3911 = appendResult6_g3930;
				#else
				float4 staticSwitch23_g3911 = staticSwitch19_g3911;
				#endif
				float4 temp_output_1_0_g3912 = staticSwitch23_g3911;
				float4 break2_g3913 = temp_output_1_0_g3912;
				float temp_output_9_0_g3914 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g3914 = max( ( ( ( break2_g3913.x + break2_g3913.y + break2_g3913.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3914 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.texCoord0.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g3915 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float4 appendResult21_g3912 = (float4(( (temp_output_1_0_g3912).rgb + ( pow( saferPower7_g3914 , temp_output_9_0_g3914 ) * ( _SineGlowFade * ( tex2DNode3_g3915.r * tex2DNode3_g3915.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( ( temp_output_39_0_g3911 * _SineGlowFrequency ) ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g3912.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g3911 = appendResult21_g3912;
				#else
				float4 staticSwitch28_g3911 = staticSwitch23_g3911;
				#endif
				float4 temp_output_1_0_g3916 = staticSwitch28_g3911;
				float4 break2_g3917 = temp_output_1_0_g3916;
				float3 temp_cast_41 = (( ( break2_g3917.x + break2_g3917.y + break2_g3917.z ) / 3.0 )).xxx;
				float3 lerpResult5_g3916 = lerp( temp_cast_41 , (temp_output_1_0_g3916).rgb , _Saturation);
				float4 appendResult8_g3916 = (float4(lerpResult5_g3916 , temp_output_1_0_g3916.a));
				#ifdef _ENABLESATURATION_ON
				float4 staticSwitch38_g3911 = appendResult8_g3916;
				#else
				float4 staticSwitch38_g3911 = staticSwitch28_g3911;
				#endif
				float4 temp_output_15_0_g3927 = staticSwitch38_g3911;
				float2 temp_output_1_0_g3911 = finalUV146;
				float2 temp_output_7_0_g3927 = temp_output_1_0_g3911;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g3927 = ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_39_0_g3911 * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g3927 ) * _InnerOutlineNoiseScale ) ).r - 0.5 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g3927 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g3927 = ( staticSwitch169_g3927 + temp_output_7_0_g3927 );
				float2 appendResult2_g3929 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g3927 = ( 100.0 / appendResult2_g3929 );
				float3 lerpResult176_g3927 = lerp( (temp_output_15_0_g3927).rgb , (_InnerOutlineColor).rgb , ( _InnerOutlineFade * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g3927 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) ) ));
				float4 appendResult177_g3927 = (float4(lerpResult176_g3927 , temp_output_15_0_g3927.a));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g3911 = appendResult177_g3927;
				#else
				float4 staticSwitch12_g3911 = staticSwitch38_g3911;
				#endif
				float4 temp_output_15_0_g3924 = staticSwitch12_g3911;
				float3 temp_output_82_0_g3924 = (_OuterOutlineColor).rgb;
				float temp_output_182_0_g3924 = ( ( 1.0 - temp_output_15_0_g3924.a ) * min( ( _OuterOutlineFade * 3.0 ) , 1.0 ) );
				float3 lerpResult178_g3924 = lerp( (temp_output_15_0_g3924).rgb , temp_output_82_0_g3924 , temp_output_182_0_g3924);
				float3 lerpResult170_g3924 = lerp( lerpResult178_g3924 , temp_output_82_0_g3924 , temp_output_182_0_g3924);
				float2 temp_output_7_0_g3924 = temp_output_1_0_g3911;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g3924 = ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_39_0_g3911 * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g3924 ) * _OuterOutlineNoiseScale ) ).r - 0.5 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g3924 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g3924 = ( staticSwitch157_g3924 + temp_output_7_0_g3924 );
				float2 appendResult2_g3926 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g3924 = ( 100.0 / appendResult2_g3926 );
				float lerpResult168_g3924 = lerp( temp_output_15_0_g3924.a , min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g3924 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) * 3.0 ) , 1.0 ) , _OuterOutlineFade);
				float4 appendResult174_g3924 = (float4(lerpResult170_g3924 , lerpResult168_g3924));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g3911 = appendResult174_g3924;
				#else
				float4 staticSwitch13_g3911 = staticSwitch12_g3911;
				#endif
				float4 temp_output_241_0 = staticSwitch13_g3911;
				float4 temp_output_1_0_g3946 = temp_output_241_0;
				float4 break2_g3947 = temp_output_1_0_g3946;
				float temp_output_9_0_g3948 = max( _HologramContrast , 0.0 );
				float saferPower7_g3948 = max( ( ( ( break2_g3947.x + break2_g3947.y + break2_g3947.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3948 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g3946 = (float4(( (_HologramTint).rgb * pow( saferPower7_g3948 , temp_output_9_0_g3948 ) ) , ( max( pow( abs( sin( ( ( ( ( shaderTime237 * _HologramLineSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g3946.a )));
				float4 lerpResult37_g3946 = lerp( temp_output_1_0_g3946 , appendResult22_g3946 , hologramFade182);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g3946;
				#else
				float4 staticSwitch56 = temp_output_241_0;
				#endif
				float4 temp_output_1_0_g3949 = staticSwitch56;
				float4 break2_g3951 = temp_output_1_0_g3949;
				float temp_output_34_0_g3949 = shaderTime237;
				float3 hsvTorgb3_g3952 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( glitchPosition154 + ( _GlitchNoiseSpeed * temp_output_34_0_g3949 ) ) * _GlitchNoiseScale ) ).r + ( temp_output_34_0_g3949 * _GlitchHueSpeed ) ),1.0,1.0) );
				float3 lerpResult23_g3949 = lerp( (temp_output_1_0_g3949).rgb , ( ( ( break2_g3951.x + break2_g3951.y + break2_g3951.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g3952 ) , glitchFade152);
				float4 appendResult27_g3949 = (float4(lerpResult23_g3949 , temp_output_1_0_g3949.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g3949;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g3953 = staticSwitch57;
				float4 temp_output_1_0_g3957 = temp_output_3_0_g3953;
				float2 temp_output_41_0_g3953 = shaderPosition235;
				float2 temp_output_99_0_g3957 = temp_output_41_0_g3953;
				float temp_output_40_0_g3953 = shaderTime237;
				float clampResult52_g3957 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_40_0_g3953 * _CamouflageAnimationSpeed ) + temp_output_99_0_g3957 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_99_0_g3957 ) ):( temp_output_99_0_g3957 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g3957 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g3957 ) , clampResult52_g3957);
				float clampResult65_g3957 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_40_0_g3953 * _CamouflageAnimationSpeed ) + temp_output_99_0_g3957 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_99_0_g3957 ) ):( temp_output_99_0_g3957 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g3957 = lerp( lerpResult55_g3957 , ( _CamouflageColorB * clampResult65_g3957 ) , clampResult65_g3957);
				float4 break2_g3960 = temp_output_1_0_g3957;
				float temp_output_9_0_g3959 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g3959 = max( ( ( ( break2_g3960.x + break2_g3960.y + break2_g3960.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3959 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.texCoord0.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g3961 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g3957 = lerp( (temp_output_1_0_g3957).rgb , ( (lerpResult68_g3957).rgb * pow( saferPower7_g3959 , temp_output_9_0_g3959 ) ) , ( _CamouflageFade * ( tex2DNode3_g3961.r * tex2DNode3_g3961.a ) ));
				float4 appendResult7_g3957 = (float4(lerpResult4_g3957 , temp_output_1_0_g3957.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g3953 = appendResult7_g3957;
				#else
				float4 staticSwitch26_g3953 = temp_output_3_0_g3953;
				#endif
				float4 temp_output_1_0_g3964 = staticSwitch26_g3953;
				float temp_output_59_0_g3964 = temp_output_40_0_g3953;
				float2 temp_output_58_0_g3964 = temp_output_41_0_g3953;
				float4 break2_g3966 = temp_output_1_0_g3964;
				float temp_output_5_0_g3964 = ( ( break2_g3966.x + break2_g3966.y + break2_g3966.z ) / 3.0 );
				float temp_output_9_0_g3969 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g3969 = max( ( temp_output_5_0_g3964 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3969 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g3964 = max( temp_output_5_0_g3964 , 0.0001 );
				float2 uv_MetalShaderMask = IN.texCoord0.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g3965 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g3964 = lerp( temp_output_1_0_g3964 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_59_0_g3964 * _MetalNoiseDistortionSpeed ) + temp_output_58_0_g3964 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( temp_output_59_0_g3964 * _MetalNoiseSpeed ) + temp_output_58_0_g3964 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g3969 , temp_output_9_0_g3969 ) ) + ( pow( saferPower2_g3964 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g3965.r * tex2DNode3_g3965.a ) ));
				float4 appendResult8_g3964 = (float4((lerpResult45_g3964).rgb , (temp_output_1_0_g3964).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g3953 = appendResult8_g3964;
				#else
				float4 staticSwitch28_g3953 = staticSwitch26_g3953;
				#endif
				float4 temp_output_1_0_g3970 = staticSwitch28_g3953;
				float4 break2_g3973 = temp_output_1_0_g3970;
				float temp_output_7_0_g3970 = ( ( break2_g3973.x + break2_g3973.y + break2_g3973.z ) / 3.0 );
				float temp_output_9_0_g3975 = max( _FrozenContrast , 0.0 );
				float saferPower7_g3975 = max( ( temp_output_7_0_g3970 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3975 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g3970 = max( temp_output_7_0_g3970 , 0.0001 );
				float2 temp_output_72_0_g3970 = temp_output_41_0_g3953;
				float temp_output_73_0_g3970 = temp_output_40_0_g3953;
				float saferPower42_g3970 = max( temp_output_7_0_g3970 , 0.0001 );
				float3 lerpResult57_g3970 = lerp( (temp_output_1_0_g3970).rgb , ( ( pow( saferPower7_g3975 , temp_output_9_0_g3975 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g3970 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_72_0_g3970 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_73_0_g3970 * _FrozenHighlightDistortionSpeed ) + temp_output_72_0_g3970 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( temp_output_73_0_g3970 * _FrozenHighlightSpeed ) + temp_output_72_0_g3970 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g3970 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g3970 = (float4(lerpResult57_g3970 , temp_output_1_0_g3970.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g3953 = appendResult26_g3970;
				#else
				float4 staticSwitch29_g3953 = staticSwitch28_g3953;
				#endif
				float4 temp_output_1_0_g3976 = staticSwitch29_g3953;
				float3 temp_output_28_0_g3976 = (temp_output_1_0_g3976).rgb;
				float4 break2_g3977 = float4( temp_output_28_0_g3976 , 0.0 );
				float saferPower21_g3976 = max( ( ( break2_g3977.x + break2_g3977.y + break2_g3977.z ) / 3.0 ) , 0.0001 );
				float2 temp_output_72_0_g3976 = temp_output_41_0_g3953;
				float clampResult68_g3976 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_72_0_g3976 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_72_0_g3976 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g3976 = ( ( ( _BurnRadius - distance( temp_output_72_0_g3976 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_72_0_g3976 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g3976 = clamp( temp_output_15_0_g3976 , 0.0 , 1.0 );
				float3 lerpResult29_g3976 = lerp( temp_output_28_0_g3976 , ( pow( saferPower21_g3976 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g3976 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g3976);
				float3 lerpResult40_g3976 = lerp( temp_output_28_0_g3976 , ( lerpResult29_g3976 + ( ( step( temp_output_15_0_g3976 , 1.0 ) * step( 0.0 , temp_output_15_0_g3976 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g3976 = (float4(lerpResult40_g3976 , temp_output_1_0_g3976.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g3953 = appendResult43_g3976;
				#else
				float4 staticSwitch32_g3953 = staticSwitch29_g3953;
				#endif
				float2 temp_output_42_0_g3981 = temp_output_41_0_g3953;
				float3 hsvTorgb3_g3983 = HSVToRGB( float3(( ( ( distance( temp_output_42_0_g3981 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_42_0_g3981 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + ( _RainbowSpeed * temp_output_40_0_g3953 ) ),1.0,1.0) );
				float3 hsvTorgb36_g3981 = RGBToHSV( hsvTorgb3_g3983 );
				float3 hsvTorgb37_g3981 = HSVToRGB( float3(hsvTorgb36_g3981.x,_RainbowSaturation,( hsvTorgb36_g3981.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g3981 = staticSwitch32_g3953;
				float4 break2_g3982 = temp_output_1_0_g3981;
				float saferPower24_g3981 = max( ( ( break2_g3982.x + break2_g3982.y + break2_g3982.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.texCoord0.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g3984 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g3981 = (float4(( ( hsvTorgb37_g3981 * pow( saferPower24_g3981 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g3984.r * tex2DNode3_g3984.a ) ) ) + (temp_output_1_0_g3981).rgb ) , temp_output_1_0_g3981.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g3953 = appendResult29_g3981;
				#else
				float4 staticSwitch34_g3953 = staticSwitch32_g3953;
				#endif
				float4 temp_output_1_0_g3986 = staticSwitch34_g3953;
				float3 temp_output_57_0_g3986 = (temp_output_1_0_g3986).rgb;
				float4 break2_g3987 = temp_output_1_0_g3986;
				float3 temp_cast_61 = (( ( break2_g3987.x + break2_g3987.y + break2_g3987.z ) / 3.0 )).xxx;
				float3 lerpResult92_g3986 = lerp( temp_cast_61 , temp_output_57_0_g3986 , _ShineSaturation);
				float3 saferPower83_g3986 = max( lerpResult92_g3986 , 0.0001 );
				float3 temp_cast_62 = (max( _ShineContrast , 0.001 )).xxx;
				float3 rotatedValue69_g3986 = RotateAroundAxis( float3( 0,0,0 ), float3( ( ( temp_output_40_0_g3953 * _ShineSpeed ) + ( _ShineScale * temp_output_41_0_g3953 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g3986 = rotatedValue69_g3986;
				float temp_output_97_0_g3986 = ( _ShineWidth + -1.0 );
				float clampResult80_g3986 = clamp( ( ( ( sin( ( ( break67_g3986.x + break67_g3986.y ) * 10.0 ) ) + temp_output_97_0_g3986 ) * ( 2.0 - temp_output_97_0_g3986 ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.texCoord0.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g3988 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g3986 = (float4(( temp_output_57_0_g3986 + ( ( pow( saferPower83_g3986 , temp_cast_62 ) * (_ShineColor).rgb ) * clampResult80_g3986 * ( _ShineFade * ( tex2DNode3_g3988.r * tex2DNode3_g3988.a ) ) ) ) , (temp_output_1_0_g3986).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g3953 = appendResult8_g3986;
				#else
				float4 staticSwitch36_g3953 = staticSwitch34_g3953;
				#endif
				float temp_output_41_0_g3954 = temp_output_40_0_g3953;
				float saferPower19_g3954 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_41_0_g3954 * _PoisonNoiseSpeed ) + temp_output_41_0_g3953 ) * _PoisonNoiseScale ) ).r + ( temp_output_41_0_g3954 * _PoisonShiftSpeed ) ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g3954 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g3954 = staticSwitch36_g3953;
				float3 temp_output_28_0_g3954 = (temp_output_1_0_g3954).rgb;
				float4 break2_g3956 = float4( temp_output_28_0_g3954 , 0.0 );
				float3 lerpResult32_g3954 = lerp( temp_output_28_0_g3954 , ( temp_output_24_0_g3954 * ( ( break2_g3956.x + break2_g3956.y + break2_g3956.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g3954 = (float4(( ( max( pow( saferPower19_g3954 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g3954 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g3954 ) , temp_output_1_0_g3954.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g3953 = appendResult27_g3954;
				#else
				float4 staticSwitch39_g3953 = staticSwitch36_g3953;
				#endif
				float4 temp_output_245_0 = staticSwitch39_g3953;
				float4 break4_g3989 = temp_output_245_0;
				float fullDistortionAlpha164 = _FullDistortionFade;
				float4 appendResult5_g3989 = (float4(break4_g3989.r , break4_g3989.g , break4_g3989.b , ( break4_g3989.a * fullDistortionAlpha164 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g3989;
				#else
				float4 staticSwitch77 = temp_output_245_0;
				#endif
				float4 break4_g3990 = staticSwitch77;
				float directionalDistortionAlpha167 = (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g3868 ) ):( clampResult154_g3868 ));
				float4 appendResult5_g3990 = (float4(break4_g3990.r , break4_g3990.g , break4_g3990.b , ( break4_g3990.a * directionalDistortionAlpha167 )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g3990;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g3991 = staticSwitch75;
				float4 temp_output_1_0_g3992 = temp_output_1_0_g3991;
				float temp_output_53_0_g3992 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 temp_output_18_0_g3991 = shaderPosition235;
				float clampResult17_g3992 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g3992 ) ) - tex2D( _UberNoiseTexture, ( temp_output_18_0_g3991 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g3992 ) , 0.0 , 1.0 );
				float4 appendResult3_g3992 = (float4((temp_output_1_0_g3992).rgb , ( temp_output_1_0_g3992.a * clampResult17_g3992 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g3991 = appendResult3_g3992;
				#else
				float4 staticSwitch3_g3991 = temp_output_1_0_g3991;
				#endif
				float temp_output_5_0_g4000 = tex2D( _UberNoiseTexture, ( temp_output_18_0_g3991 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g4000 = step( temp_output_5_0_g4000 , _FullGlowDissolveFade );
				float temp_output_53_0_g4000 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g4000 = staticSwitch3_g3991;
				float4 appendResult3_g4000 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g4000 - step( temp_output_5_0_g4000 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g4000 ) ) - temp_output_53_0_g4000 ) ) ) ) + (temp_output_1_0_g4000).rgb ) , ( temp_output_1_0_g4000.a * temp_output_61_0_g4000 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g3991 = appendResult3_g4000;
				#else
				float4 staticSwitch5_g3991 = staticSwitch3_g3991;
				#endif
				float4 temp_output_1_0_g4002 = staticSwitch5_g3991;
				float2 temp_output_76_0_g4002 = temp_output_18_0_g3991;
				float clampResult17_g4002 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_76_0_g4002 ) + ( tex2D( _UberNoiseTexture, ( temp_output_76_0_g4002 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g4002 = (float4((temp_output_1_0_g4002).rgb , ( temp_output_1_0_g4002.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g4002 ) ):( clampResult17_g4002 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g3991 = appendResult3_g4002;
				#else
				float4 staticSwitch8_g3991 = staticSwitch5_g3991;
				#endif
				float2 temp_output_90_0_g3998 = temp_output_18_0_g3991;
				float temp_output_65_0_g3998 = ( distance( _SourceGlowDissolvePosition , temp_output_90_0_g3998 ) + ( tex2D( _UberNoiseTexture, ( temp_output_90_0_g3998 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g3998 = step( temp_output_65_0_g3998 , _SourceGlowDissolveFade );
				float temp_output_76_0_g3998 = step( temp_output_65_0_g3998 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g3998 = staticSwitch8_g3991;
				float4 appendResult3_g3998 = (float4(( ( max( ( temp_output_75_0_g3998 - temp_output_76_0_g3998 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g3998).rgb ) , ( temp_output_1_0_g3998.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g3998 ) ):( temp_output_75_0_g3998 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g3991 = appendResult3_g3998;
				#else
				float4 staticSwitch9_g3991 = staticSwitch8_g3991;
				#endif
				float4 temp_output_1_0_g3994 = staticSwitch9_g3991;
				float2 temp_output_161_0_g3994 = temp_output_18_0_g3991;
				float3 rotatedValue136_g3994 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_161_0_g3994 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g3994 = rotatedValue136_g3994;
				float clampResult154_g3994 = clamp( ( ( break130_g3994.x + break130_g3994.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_161_0_g3994 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g3994 = (float4((temp_output_1_0_g3994).rgb , ( temp_output_1_0_g3994.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g3994 ) ):( clampResult154_g3994 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g3991 = appendResult3_g3994;
				#else
				float4 staticSwitch11_g3991 = staticSwitch9_g3991;
				#endif
				float2 temp_output_171_0_g3996 = temp_output_18_0_g3991;
				float3 rotatedValue136_g3996 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_171_0_g3996 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g3996 = rotatedValue136_g3996;
				float temp_output_168_0_g3996 = max( ( ( break130_g3996.x + break130_g3996.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_171_0_g3996 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g3996 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g3996 ) ):( temp_output_168_0_g3996 )) );
				float4 temp_output_1_0_g3996 = staticSwitch11_g3991;
				float clampResult154_g3996 = clamp( temp_output_161_0_g3996 , 0.0 , 1.0 );
				float4 appendResult3_g3996 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g3996 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g3996 ) ):( temp_output_168_0_g3996 )) ) ) ) + (temp_output_1_0_g3996).rgb ) , ( temp_output_1_0_g3996.a * clampResult154_g3996 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g3991 = appendResult3_g3996;
				#else
				float4 staticSwitch15_g3991 = staticSwitch11_g3991;
				#endif
				float4 temp_output_1_0_g4004 = staticSwitch15_g3991;
				float2 temp_output_126_0_g4004 = temp_output_18_0_g3991;
				float temp_output_121_0_g4004 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_126_0_g4004 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g4005 = (float2(temp_output_121_0_g4004 , temp_output_121_0_g4004));
				float temp_output_17_0_g4005 = length( ( (( ( abs( temp_output_126_0_g4004 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g4005 ) );
				float clampResult17_g4004 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g4005 ) / fwidth( temp_output_17_0_g4005 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g4004 = (float4((temp_output_1_0_g4004).rgb , ( temp_output_1_0_g4004.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g4004 ) ):( clampResult17_g4004 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g3991 = appendResult3_g4004;
				#else
				float4 staticSwitch13_g3991 = staticSwitch15_g3991;
				#endif
				float4 temp_output_1_0_g4008 = staticSwitch13_g3991;
				float4 break2_g4010 = temp_output_1_0_g4008;
				float temp_output_9_0_g4009 = max( _AddColorContrast , 0.0 );
				float saferPower7_g4009 = max( ( ( ( break2_g4010.x + break2_g4010.y + break2_g4010.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g4009 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g4008 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g4009 , temp_output_9_0_g4009 ) * _AddColorFade ) + (temp_output_1_0_g4008).rgb ) , temp_output_1_0_g4008.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g4007 = appendResult6_g4008;
				#else
				float4 staticSwitch5_g4007 = staticSwitch13_g3991;
				#endif
				float4 temp_output_1_0_g4011 = staticSwitch5_g4007;
				float saferPower11_g4011 = max( ( 1.0 - temp_output_1_0_g4011.a ) , 0.0001 );
				float3 lerpResult4_g4011 = lerp( (temp_output_1_0_g4011).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g4011 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g4011.a ) ));
				float4 appendResult13_g4011 = (float4(lerpResult4_g4011 , temp_output_1_0_g4011.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g4007 = appendResult13_g4011;
				#else
				float4 staticSwitch11_g4007 = staticSwitch5_g4007;
				#endif
				float4 temp_output_1_0_g4012 = staticSwitch11_g4007;
				float4 break2_g4013 = temp_output_1_0_g4012;
				float temp_output_9_0_g4014 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g4014 = max( ( ( ( break2_g4013.x + break2_g4013.y + break2_g4013.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g4014 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g4012 = lerp( (temp_output_1_0_g4012).rgb , ( pow( saferPower7_g4014 , temp_output_9_0_g4014 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g4012 = (float4(lerpResult7_g4012 , (temp_output_1_0_g4012).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g4007 = appendResult9_g4012;
				#else
				float4 staticSwitch7_g4007 = staticSwitch11_g4007;
				#endif
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g3902 = _White;
				#else
				float4 staticSwitch8_g3902 = IN.color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g3902 = _White;
				#else
				float4 staticSwitch9_g3902 = staticSwitch8_g3902;
				#endif
				float4 customVertexTint193 = staticSwitch9_g3902;
				float4 temp_output_119_0 = ( staticSwitch7_g4007 * customVertexTint193 );
				float4 lerpResult125 = lerp( ( originalColor191 * IN.color ) , temp_output_119_0 , fullFade123);
				#if defined(_UBERFADING_NONE)
				float4 staticSwitch143 = temp_output_119_0;
				#elif defined(_UBERFADING_FULL)
				float4 staticSwitch143 = lerpResult125;
				#elif defined(_UBERFADING_MASK)
				float4 staticSwitch143 = lerpResult125;
				#elif defined(_UBERFADING_DISSOLVE)
				float4 staticSwitch143 = lerpResult125;
				#elif defined(_UBERFADING_SPREAD)
				float4 staticSwitch143 = lerpResult125;
				#else
				float4 staticSwitch143 = temp_output_119_0;
				#endif
				
				float2 temp_output_8_0_g4021 = finalUV146;
				float3 unpack14_g4021 = UnpackNormalScale( tex2D( _NormalMap, temp_output_8_0_g4021 ), _NormalIntensity );
				unpack14_g4021.z = lerp( 1, unpack14_g4021.z, saturate(_NormalIntensity) );
				
				float4 Color = staticSwitch143;
				float3 Normal = unpack14_g4021;
				
				Color *= IN.color;

				return NormalsRenderingShared( Color, Normal, IN.tangentWS.xyz, IN.bitangentWS, IN.normalWS);
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Sprite Forward"
			Tags { "LightMode"="UniversalForward" }

			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZTest LEqual
			ZWrite Off
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define ASE_SRP_VERSION 70301

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#pragma multi_compile _ ETC1_EXTERNAL_ALPHA

			#define _SURFACE_TYPE_TRANSPARENT 1
			#define SHADERPASS_SPRITEFORWARD

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _UBERFADING_NONE _UBERFADING_FULL _UBERFADING_MASK _UBERFADING_DISSOLVE _UBERFADING_SPREAD
			#pragma shader_feature_local _ENABLEVIBRATE_ON
			#pragma shader_feature_local _ENABLESINEMOVE_ON
			#pragma shader_feature_local _ENABLESQUISH2_ON
			#pragma shader_feature _TIMESETTINGS_LINEAR_DEFAULT _TIMESETTINGS_LINEAR_SCALED _TIMESETTINGS_LINEAR_FPS _TIMESETTINGS_FREQUENCY _TIMESETTINGS_FREQUENCY_FPS _TIMESETTINGS_CUSTOM_VALUE
			#pragma shader_feature _SHADERSPACE_UV _SHADERSPACE_UV_RAW _SHADERSPACE_OBJECT _SHADERSPACE_OBJECT_SCALED _SHADERSPACE_WORLD _SHADERSPACE_UI_ELEMENT _SHADERSPACE_SCREEN
			#pragma shader_feature_local _ENABLESTRONGTINT_ON
			#pragma shader_feature_local _ENABLEALPHATINT_ON
			#pragma shader_feature_local _ENABLEADDCOLOR_ON
			#pragma shader_feature_local _ENABLEHALFTONE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALGLOWFADE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALALPHAFADE_ON
			#pragma shader_feature_local _ENABLESOURCEGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLESOURCEALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLGLOWDISSOLVE_ON
			#pragma shader_feature_local _ENABLEFULLALPHADISSOLVE_ON
			#pragma shader_feature_local _ENABLEDIRECTIONALDISTORTION_ON
			#pragma shader_feature_local _ENABLEFULLDISTORTION_ON
			#pragma shader_feature_local _ENABLEPOISON_ON
			#pragma shader_feature_local _ENABLESHINE_ON
			#pragma shader_feature_local _ENABLERAINBOW_ON
			#pragma shader_feature_local _ENABLEBURN_ON
			#pragma shader_feature_local _ENABLEFROZEN_ON
			#pragma shader_feature_local _ENABLEMETAL_ON
			#pragma shader_feature_local _ENABLECAMOUFLAGE_ON
			#pragma shader_feature_local _ENABLEGLITCH_ON
			#pragma shader_feature_local _ENABLEHOLOGRAM_ON
			#pragma shader_feature_local _ENABLEOUTEROUTLINE_ON
			#pragma shader_feature_local _ENABLEINNEROUTLINE_ON
			#pragma shader_feature_local _ENABLESATURATION_ON
			#pragma shader_feature_local _ENABLESINEGLOW_ON
			#pragma shader_feature_local _ENABLEADDHUE_ON
			#pragma shader_feature_local _ENABLESHIFTHUE_ON
			#pragma shader_feature_local _ENABLEINKSPREAD_ON
			#pragma shader_feature_local _ENABLERECOLOR_ON
			#pragma shader_feature_local _ENABLEBLACKTINT_ON
			#pragma shader_feature_local _ENABLESPLITTONING_ON
			#pragma shader_feature_local _ENABLEHUE_ON
			#pragma shader_feature_local _ENABLEBRIGHTNESS_ON
			#pragma shader_feature_local _ENABLECONTRAST_ON
			#pragma shader_feature_local _ENABLECOLORREPLACE_ON
			#pragma shader_feature_local _ENABLEFLAME_ON
			#pragma shader_feature_local _ENABLECHECKERBOARD_ON
			#pragma shader_feature_local _ENABLECUSTOMFADE_ON
			#pragma shader_feature_local _ENABLESMOKE_ON
			#pragma shader_feature_local _ENABLEUVSCALE_ON
			#pragma shader_feature_local _ENABLEPIXELATE_ON
			#pragma shader_feature_local _ENABLEUVSCROLL_ON
			#pragma shader_feature_local _ENABLEUVROTATE_ON
			#pragma shader_feature_local _ENABLESINEROTATE_ON
			#pragma shader_feature_local _ENABLESQUEEZE_ON
			#pragma shader_feature_local _ENABLEUVDISTORT_ON
			#pragma shader_feature_local _ENABLEWIND_ON
			#pragma shader_feature_local _WINDISPARALLAX_ON
			#pragma shader_feature_local _INNEROUTLINEDISTORTIONTOGGLE_ON
			#pragma shader_feature_local _OUTEROUTLINEDISTORTIONTOGGLE_ON


			sampler2D _UberMask;
			sampler2D _UberNoiseTexture;
			sampler2D _MainTex;
			float WindMinIntensity;
			float WindMaxIntensity;
			float WindNoiseSpeed;
			float WindNoiseScale;
			sampler2D _UVDistortShaderMask;
			sampler2D _CustomFadeFadeMask;
			sampler2D _RecolorTintAreas;
			sampler2D _ShiftHueShaderMask;
			sampler2D _AddHueShaderMask;
			sampler2D _SineGlowShaderMask;
			sampler2D _CamouflageShaderMask;
			sampler2D _MetalShaderMask;
			sampler2D _RainbowMask;
			sampler2D _ShineShaderMask;
			CBUFFER_START( UnityPerMaterial )
			float4 _ColorReplaceTargetColor;
			float4 _DirectionalGlowFadeEdgeColor;
			float4 _MetalHighlightColor;
			float4 _BurnInsideNoiseColor;
			float4 _ShiftHueShaderMask_ST;
			float4 _FrozenHighlightColor;
			float4 _MetalColor;
			float4 _FrozenSnowColor;
			float4 _ColorReplaceColor;
			float4 _RainbowMask_ST;
			float4 _SplitToningShadowsColor;
			float4 _SourceGlowDissolveEdgeColor;
			float4 _HologramTint;
			float4 _MetalShaderMask_ST;
			float4 _AddHueShaderMask_ST;
			float4 _ShineColor;
			float4 _CamouflageShaderMask_ST;
			float4 _FrozenTint;
			float4 _OuterOutlineColor;
			float4 _SineGlowShaderMask_ST;
			float4 _SineGlowColor;
			float4 _PoisonColor;
			float4 _SplitToningHighlightsColor;
			float4 _InnerOutlineColor;
			float4 _UVDistortShaderMask_ST;
			float4 _StrongTintTint;
			float4 _InkSpreadColor;
			float4 _FullGlowDissolveEdgeColor;
			float4 _CamouflageColorB;
			float4 _RecolorRedTint;
			float4 _AlphaTintColor;
			float4 _RecolorYellowTint;
			float4 _RecolorGreenTint;
			float4 _RecolorCyanTint;
			float4 _RecolorBlueTint;
			float4 _BurnEdgeColor;
			float4 _RecolorPurpleTint;
			float4 _AddColorColor;
			float4 _RecolorTintAreas_ST;
			float4 _BlackTintColor;
			float4 _UberMask_ST;
			float4 _CamouflageColorA;
			float4 _CamouflageBaseColor;
			float4 _MainTex_TexelSize;
			float4 _BurnInsideColor;
			float4 _ShineShaderMask_ST;
			float2 _UVRotatePivot;
			float2 _UVScrollSpeed;
			float2 _FrozenSnowScale;
			float2 _UVScalePivot;
			float2 _PoisonNoiseScale;
			float2 _PoisonNoiseSpeed;
			float2 _UVScaleScale;
			float2 _InnerOutlineNoiseSpeed;
			float2 _FrozenHighlightDistortionSpeed;
			float2 _FrozenHighlightDistortionScale;
			float2 _FrozenHighlightDistortion;
			float2 _FlameSpeed;
			float2 _FlameNoiseScale;
			float2 _FrozenHighlightSpeed;
			float2 _FrozenHighlightScale;
			float2 _RainbowNoiseScale;
			float2 _RainbowCenter;
			float2 _BurnSwirlNoiseScale;
			float2 _InkSpreadNoiseScale;
			float2 _BurnEdgeNoiseScale;
			float2 _BurnPosition;
			float2 _InkSpreadPosition;
			float2 _CustomFadeNoiseScale;
			float2 _SineRotatePivot;
			float2 _SqueezeCenter;
			float2 _InnerOutlineNoiseScale;
			float2 _DirectionalDistortionDistortionScale;
			float2 _FullDistortionDistortion;
			float2 _DirectionalAlphaFadeNoiseScale;
			float2 _MetalNoiseScale;
			float2 _GlitchNoiseSpeed;
			float2 _UberPosition;
			float2 _UberNoiseScale;
			float2 _GlitchNoiseScale;
			float2 _MetalNoiseSpeed;
			float2 _DirectionalGlowFadeNoiseScale;
			float2 _MetalNoiseDistortion;
			float2 _MetalNoiseDistortionScale;
			float2 _CamouflageAnimationSpeed;
			float2 _HalftonePosition;
			float2 _CamouflageDistortionScale;
			float2 _SineMoveOffset;
			float2 _SineMoveFrequency;
			float2 _CamouflageDistortionIntensity;
			float2 _CamouflageNoiseScaleA;
			float2 _MetalNoiseDistortionSpeed;
			float2 _CamouflageNoiseScaleB;
			float2 _DirectionalDistortionDistortion;
			float2 _OuterOutlineDistortionIntensity;
			float2 _FullDistortionNoiseScale;
			float2 _SourceGlowDissolveNoiseScale;
			float2 _FullAlphaDissolveNoiseScale;
			float2 _SqueezeScale;
			float2 _FullGlowDissolveNoiseScale;
			float2 _InnerOutlineDistortionIntensity;
			float2 _UVDistortNoiseScale;
			float2 _UVDistortSpeed;
			float2 _UVDistortTo;
			float2 _UVDistortFrom;
			float2 _GlitchMaskScale;
			float2 _GlitchMaskSpeed;
			float2 _GlitchDistortion;
			float2 _DirectionalDistortionNoiseScale;
			float2 _GlitchDistortionSpeed;
			float2 _GlitchDistortionScale;
			float2 _BurnInsideNoiseScale;
			float2 _SourceAlphaDissolvePosition;
			float2 _SourceAlphaDissolveNoiseScale;
			float2 _OuterOutlineNoiseSpeed;
			float2 _SourceGlowDissolvePosition;
			float2 _OuterOutlineNoiseScale;
			float _MetalHighlightDensity;
			float _FrozenSnowContrast;
			float _MetalFade;
			float _FrozenSnowDensity;
			float _FrozenHighlightContrast;
			float _FrozenContrast;
			float _FrozenFade;
			float _MetalHighlightContrast;
			float _FrozenHighlightDensity;
			float _BurnInsideContrast;
			float _MetalContrast;
			float _BurnInsideNoiseFactor;
			float _ShineRotation;
			float _BurnRadius;
			float _SourceAlphaDissolveWidth;
			float _SourceGlowDissolveNoiseFactor;
			float _SourceGlowDissolveFade;
			float _SourceGlowDissolveWidth;
			float _SourceGlowDissolveInvert;
			float _DirectionalAlphaFadeInvert;
			float _DirectionalAlphaFadeRotation;
			float _DirectionalAlphaFadeFade;
			float _DirectionalAlphaFadeNoiseFactor;
			float _DirectionalAlphaFadeWidth;
			float _DirectionalGlowFadeInvert;
			float _DirectionalGlowFadeRotation;
			float _DirectionalGlowFadeFade;
			float _DirectionalGlowFadeNoiseFactor;
			float _DirectionalGlowFadeWidth;
			float _HalftoneInvert;
			float _HalftoneTiling;
			float _HalftoneFade;
			float _HalftoneFadeWidth;
			float _AddColorContrast;
			float _AddColorFade;
			float _AlphaTintPower;
			float _AlphaTintFade;
			float _AlphaTintMinAlpha;
			float _StrongTintContrast;
			float _SourceAlphaDissolveNoiseFactor;
			float _BurnSwirlFactor;
			float _SourceAlphaDissolveFade;
			float _FullGlowDissolveWidth;
			float _BurnEdgeNoiseFactor;
			float _BurnWidth;
			float _BurnFade;
			float _RainbowNoiseFactor;
			float _RainbowDensity;
			float _RainbowSpeed;
			float _RainbowSaturation;
			float _RainbowBrightness;
			float _RainbowContrast;
			float _RainbowFade;
			float _ShineSaturation;
			float _ShineContrast;
			float _ShineSpeed;
			float _ShineScale;
			float _ShineWidth;
			float _ShineSmoothness;
			float _ShineFade;
			float _PoisonShiftSpeed;
			float _PoisonDensity;
			float _PoisonFade;
			float _PoisonNoiseBrightness;
			float _PoisonRecolorFactor;
			float _FullAlphaDissolveFade;
			float _FullAlphaDissolveWidth;
			float _FullGlowDissolveFade;
			float _SourceAlphaDissolveInvert;
			float _CamouflageFade;
			float _SquishStretch;
			float _CamouflageSmoothnessB;
			float _DirectionalDistortionRotation;
			float _DirectionalDistortionFade;
			float _DirectionalDistortionNoiseFactor;
			float _DirectionalDistortionWidth;
			float _HologramDistortionSpeed;
			float _HologramDistortionDensity;
			float _HologramDistortionScale;
			float _HologramDistortionOffset;
			float _HologramFade;
			float _GlitchMaskMin;
			float _GlitchFade;
			float _UVDistortFade;
			float _DirectionalDistortionInvert;
			float _SqueezePower;
			float _SineRotateFrequency;
			float _SineRotateAngle;
			float _SineRotateFade;
			float _UVRotateSpeed;
			float _PixelatePixelDensity;
			float _PixelateFade;
			float _SmokeVertexSeed;
			float _SmokeNoiseScale;
			float _SmokeNoiseFactor;
			float _SmokeSmoothness;
			float _SmokeDarkEdge;
			float _SmokeAlpha;
			float _SqueezeFade;
			float _CustomFadeNoiseFactor;
			float _DirectionalDistortionRandomDirection;
			float _WindSquishWindFactor;
			float _SquishFade;
			float _SquishFlip;
			float _SquishSquish;
			float _TimeScale;
			float _TimeFPS;
			float _TimeFrequency;
			float _TimeRange;
			float _TimeValue;
			float _SineMoveFade;
			float _VibrateFrequency;
			float _VibrateOffset;
			float _VibrateFade;
			float _FullDistortionFade;
			float _VibrateRotation;
			float _UberWidth;
			float _PixelsPerUnit;
			float _RectWidth;
			float _RectHeight;
			float _ScreenWidthUnits;
			float _UberNoiseFactor;
			float _WindRotationWindFactor;
			float _WindXPosition;
			float _WindRotation;
			float _WindMaxRotation;
			float _WindFlip;
			float _WindSquishFactor;
			float _FullFade;
			float _CamouflageContrast;
			float _CustomFadeSmoothness;
			float _CheckerboardDarken;
			float _AddHueSaturation;
			float _AddHueBrightness;
			float _AddHueContrast;
			float _AddHueFade;
			float _SineGlowContrast;
			float _SineGlowFade;
			float _SineGlowFrequency;
			float _SineGlowMax;
			float _SineGlowMin;
			float _Saturation;
			float _InnerOutlineFade;
			float _StrongTintFade;
			float _AddHueSpeed;
			float _InnerOutlineWidth;
			float _OuterOutlineWidth;
			float _HologramContrast;
			float _HologramLineSpeed;
			float _HologramLineFrequency;
			float _HologramLineGap;
			float _HologramMinAlpha;
			float _GlitchBrightness;
			float _GlitchHueSpeed;
			float _CamouflageDensityA;
			float _CamouflageAnimated;
			float _CamouflageSmoothnessA;
			float _CamouflageDensityB;
			float _OuterOutlineFade;
			float _CustomFadeAlpha;
			float _ShiftHueFade;
			float _InkSpreadWidth;
			float _CheckerboardTiling;
			float _FlameNoiseHeightFactor;
			float _FlameNoiseFactor;
			float _FlameRadius;
			float _FlameSmooth;
			float _FlameBrightness;
			float _ColorReplaceContrast;
			float _ColorReplaceHueTolerance;
			float _ColorReplaceSaturationTolerance;
			float _ColorReplaceBrightnessTolerance;
			float _ColorReplaceBias;
			float _ColorReplaceFade;
			float _ShiftHueSpeed;
			float _Contrast;
			float _Hue;
			float _SplitToningShift;
			float _SplitToningBalance;
			float _SplitToningContrast;
			float _SplitToningFade;
			float _BlackTintPower;
			float _BlackTintFade;
			float _RecolorFade;
			float _InkSpreadContrast;
			float _InkSpreadFade;
			float _InkSpreadDistance;
			float _InkSpreadNoiseFactor;
			float _Brightness;
			float _NormalIntensity;
			CBUFFER_END


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 color : COLOR;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 texCoord0 : TEXCOORD0;
				float4 color : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#if ETC1_EXTERNAL_ALPHA
				TEXTURE2D( _AlphaTex ); SAMPLER( sampler_AlphaTex );
				float _EnableAlphaTexture;
			#endif

			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			float FastNoise101_g3863( float x )
			{
				float i = floor(x);
				float f = frac(x);
				float s = sign(frac(x/2.0)-0.5);
				    
				float k = 0.5+0.5*sin(i);
				return s*f*(f-1.0)*((16.0*k-4.0)*f*(f-1.0)-1.0);
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			VertexOutput vert( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 _ZeroVector = float2(0,0);
				float2 texCoord83_g4006 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 break77_g4006 = texCoord83_g4006;
				float2 appendResult72_g4006 = (float2(( _SquishStretch * ( break77_g4006.x - 0.5 ) * _SquishFade ) , ( _SquishFade * ( break77_g4006.y + _SquishFlip ) * -_SquishSquish )));
				#ifdef _ENABLESQUISH2_ON
				float2 staticSwitch198 = ( appendResult72_g4006 + _ZeroVector );
				#else
				float2 staticSwitch198 = _ZeroVector;
				#endif
				float2 temp_output_2_0_g4018 = staticSwitch198;
				float mulTime5_g3867 = _TimeParameters.x * _TimeScale;
				float mulTime7_g3867 = _TimeParameters.x * _TimeFrequency;
				#if defined(_TIMESETTINGS_LINEAR_DEFAULT)
				float staticSwitch1_g3867 = _TimeParameters.x;
				#elif defined(_TIMESETTINGS_LINEAR_SCALED)
				float staticSwitch1_g3867 = mulTime5_g3867;
				#elif defined(_TIMESETTINGS_LINEAR_FPS)
				float staticSwitch1_g3867 = ( _TimeScale * ( floor( ( _TimeParameters.x * _TimeFPS ) ) / _TimeFPS ) );
				#elif defined(_TIMESETTINGS_FREQUENCY)
				float staticSwitch1_g3867 = ( ( sin( mulTime7_g3867 ) * _TimeRange ) + 100.0 );
				#elif defined(_TIMESETTINGS_FREQUENCY_FPS)
				float staticSwitch1_g3867 = ( ( _TimeRange * sin( ( _TimeFrequency * ( floor( ( _TimeFPS * _TimeParameters.x ) ) / _TimeFPS ) ) ) ) + 100.0 );
				#elif defined(_TIMESETTINGS_CUSTOM_VALUE)
				float staticSwitch1_g3867 = _TimeValue;
				#else
				float staticSwitch1_g3867 = _TimeParameters.x;
				#endif
				float shaderTime237 = staticSwitch1_g3867;
				float temp_output_8_0_g4018 = shaderTime237;
				#ifdef _ENABLESINEMOVE_ON
				float2 staticSwitch4_g4018 = ( ( sin( ( temp_output_8_0_g4018 * _SineMoveFrequency ) ) * _SineMoveOffset * _SineMoveFade ) + temp_output_2_0_g4018 );
				#else
				float2 staticSwitch4_g4018 = temp_output_2_0_g4018;
				#endif
				float temp_output_30_0_g4020 = temp_output_8_0_g4018;
				float3 rotatedValue21_g4020 = RotateAroundAxis( float3( 0,0,0 ), float3( 0,1,0 ), float3( 0,0,1 ), ( temp_output_30_0_g4020 * _VibrateRotation ) );
				#ifdef _ENABLEVIBRATE_ON
				float2 staticSwitch6_g4018 = ( ( sin( ( _VibrateFrequency * temp_output_30_0_g4020 ) ) * _VibrateOffset * _VibrateFade * (rotatedValue21_g4020).xy ) + staticSwitch4_g4018 );
				#else
				float2 staticSwitch6_g4018 = staticSwitch4_g4018;
				#endif
				float2 temp_output_250_0 = staticSwitch6_g4018;
				float2 uv_UberMask = v.uv0.xy * _UberMask_ST.xy + _UberMask_ST.zw;
				float4 tex2DNode3_g3887 = tex2Dlod( _UberMask, float4( uv_UberMask, 0, 0.0) );
				float temp_output_4_0_g3883 = max( _UberWidth , 0.001 );
				float2 texCoord2_g3767 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord22_g3767 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float2 texCoord23_g3767 = v.uv0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 appendResult28_g3767 = (float2(_RectWidth , _RectHeight));
				float4 ase_clipPos = TransformObjectToHClip((v.vertex).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_SHADERSPACE_UV)
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#elif defined(_SHADERSPACE_UV_RAW)
				float2 staticSwitch1_g3767 = texCoord22_g3767;
				#elif defined(_SHADERSPACE_OBJECT)
				float2 staticSwitch1_g3767 = (v.vertex.xyz).xy;
				#elif defined(_SHADERSPACE_OBJECT_SCALED)
				float2 staticSwitch1_g3767 = ( (v.vertex.xyz).xy * (ase_objectScale).xy );
				#elif defined(_SHADERSPACE_WORLD)
				float2 staticSwitch1_g3767 = (ase_worldPos).xy;
				#elif defined(_SHADERSPACE_UI_ELEMENT)
				float2 staticSwitch1_g3767 = ( texCoord23_g3767 * ( appendResult28_g3767 / _PixelsPerUnit ) );
				#elif defined(_SHADERSPACE_SCREEN)
				float2 staticSwitch1_g3767 = ( ( (ase_screenPosNorm).xy * (_ScreenParams).xy ) / ( _ScreenParams.x / _ScreenWidthUnits ) );
				#else
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#endif
				float2 shaderPosition235 = staticSwitch1_g3767;
				float clampResult14_g3883 = clamp( ( ( ( _FullFade * ( 1.0 + temp_output_4_0_g3883 ) ) - tex2Dlod( _UberNoiseTexture, float4( ( shaderPosition235 * _UberNoiseScale ), 0, 0.0) ).r ) / temp_output_4_0_g3883 ) , 0.0 , 1.0 );
				float2 temp_output_27_0_g3885 = shaderPosition235;
				float clampResult3_g3885 = clamp( ( ( _FullFade - ( distance( _UberPosition , temp_output_27_0_g3885 ) + ( tex2Dlod( _UberNoiseTexture, float4( ( temp_output_27_0_g3885 * _UberNoiseScale ), 0, 0.0) ).r * _UberNoiseFactor ) ) ) / max( _UberWidth , 0.001 ) ) , 0.0 , 1.0 );
				#if defined(_UBERFADING_NONE)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_FULL)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_MASK)
				float staticSwitch139 = ( _FullFade * ( tex2DNode3_g3887.r * tex2DNode3_g3887.a ) );
				#elif defined(_UBERFADING_DISSOLVE)
				float staticSwitch139 = clampResult14_g3883;
				#elif defined(_UBERFADING_SPREAD)
				float staticSwitch139 = clampResult3_g3885;
				#else
				float staticSwitch139 = _FullFade;
				#endif
				float fullFade123 = staticSwitch139;
				float2 lerpResult121 = lerp( float2( 0,0 ) , temp_output_250_0 , fullFade123);
				#if defined(_UBERFADING_NONE)
				float2 staticSwitch142 = temp_output_250_0;
				#elif defined(_UBERFADING_FULL)
				float2 staticSwitch142 = lerpResult121;
				#elif defined(_UBERFADING_MASK)
				float2 staticSwitch142 = lerpResult121;
				#elif defined(_UBERFADING_DISSOLVE)
				float2 staticSwitch142 = lerpResult121;
				#elif defined(_UBERFADING_SPREAD)
				float2 staticSwitch142 = lerpResult121;
				#else
				float2 staticSwitch142 = temp_output_250_0;
				#endif
				
				o.ase_texcoord3.xyz = ase_worldPos;
				o.ase_texcoord4 = screenPos;
				
				o.ase_texcoord2 = v.vertex;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = float3( staticSwitch142 ,  0.0 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.normal = v.normal;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.vertex.xyz );

				o.texCoord0 = v.uv0;
				o.color = v.color;
				o.clipPos = vertexInput.positionCS;

				return o;
			}

			half4 frag( VertexOutput IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				float2 texCoord39 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_3_0_g3862 = texCoord39;
				float4 transform62_g3863 = mul(GetWorldToObjectMatrix(),float4( 0,0,0,1 ));
				#ifdef _WINDISPARALLAX_ON
				float staticSwitch111_g3863 = _WindXPosition;
				#else
				float staticSwitch111_g3863 = transform62_g3863.x;
				#endif
				float x101_g3863 = ( ( staticSwitch111_g3863 + ( _TimeParameters.x * WindNoiseSpeed ) ) * WindNoiseScale );
				float localFastNoise101_g3863 = FastNoise101_g3863( x101_g3863 );
				float lerpResult86_g3863 = lerp( WindMinIntensity , WindMaxIntensity , ( localFastNoise101_g3863 + 0.5 ));
				float clampResult29_g3863 = clamp( ( ( _WindRotationWindFactor * lerpResult86_g3863 ) + _WindRotation ) , -_WindMaxRotation , _WindMaxRotation );
				float2 temp_output_1_0_g3863 = temp_output_3_0_g3862;
				float temp_output_39_0_g3863 = ( temp_output_1_0_g3863.y + _WindFlip );
				float3 appendResult43_g3863 = (float3(0.5 , -_WindFlip , 0.0));
				float2 appendResult27_g3863 = (float2(0.0 , ( _WindSquishFactor * min( ( ( _WindSquishWindFactor * abs( lerpResult86_g3863 ) ) + abs( _WindRotation ) ) , _WindMaxRotation ) * temp_output_39_0_g3863 )));
				float3 rotatedValue19_g3863 = RotateAroundAxis( appendResult43_g3863, float3( ( appendResult27_g3863 + temp_output_1_0_g3863 ) ,  0.0 ), float3( 0,0,1 ), ( clampResult29_g3863 * temp_output_39_0_g3863 ) );
				#ifdef _ENABLEWIND_ON
				float2 staticSwitch4_g3862 = (rotatedValue19_g3863).xy;
				#else
				float2 staticSwitch4_g3862 = temp_output_3_0_g3862;
				#endif
				float2 texCoord2_g3767 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord22_g3767 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float3 ase_worldPos = IN.ase_texcoord3.xyz;
				float2 texCoord23_g3767 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 appendResult28_g3767 = (float2(_RectWidth , _RectHeight));
				float4 screenPos = IN.ase_texcoord4;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_SHADERSPACE_UV)
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#elif defined(_SHADERSPACE_UV_RAW)
				float2 staticSwitch1_g3767 = texCoord22_g3767;
				#elif defined(_SHADERSPACE_OBJECT)
				float2 staticSwitch1_g3767 = (IN.ase_texcoord2.xyz).xy;
				#elif defined(_SHADERSPACE_OBJECT_SCALED)
				float2 staticSwitch1_g3767 = ( (IN.ase_texcoord2.xyz).xy * (ase_objectScale).xy );
				#elif defined(_SHADERSPACE_WORLD)
				float2 staticSwitch1_g3767 = (ase_worldPos).xy;
				#elif defined(_SHADERSPACE_UI_ELEMENT)
				float2 staticSwitch1_g3767 = ( texCoord23_g3767 * ( appendResult28_g3767 / _PixelsPerUnit ) );
				#elif defined(_SHADERSPACE_SCREEN)
				float2 staticSwitch1_g3767 = ( ( (ase_screenPosNorm).xy * (_ScreenParams).xy ) / ( _ScreenParams.x / _ScreenWidthUnits ) );
				#else
				float2 staticSwitch1_g3767 = ( texCoord2_g3767 / ( _PixelsPerUnit * (_MainTex_TexelSize).xy ) );
				#endif
				float2 shaderPosition235 = staticSwitch1_g3767;
				float2 temp_output_195_0_g3864 = shaderPosition235;
				float2 appendResult189_g3864 = (float2(( tex2D( _UberNoiseTexture, ( temp_output_195_0_g3864 * _FullDistortionNoiseScale ) ).r - 0.5 ) , ( tex2D( _UberNoiseTexture, ( ( temp_output_195_0_g3864 + float2( 0.321,0.321 ) ) * _FullDistortionNoiseScale ) ).r - 0.5 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float2 staticSwitch83 = ( staticSwitch4_g3862 + ( ( 1.0 - _FullDistortionFade ) * appendResult189_g3864 * _FullDistortionDistortion ) );
				#else
				float2 staticSwitch83 = staticSwitch4_g3862;
				#endif
				float2 temp_output_182_0_g3868 = shaderPosition235;
				float3 rotatedValue168_g3868 = RotateAroundAxis( float3( 0,0,0 ), float3( _DirectionalDistortionDistortion ,  0.0 ), float3( 0,0,1 ), ( ( ( tex2D( _UberNoiseTexture, ( temp_output_182_0_g3868 * _DirectionalDistortionDistortionScale ) ).r - 0.5 ) * 2.0 * _DirectionalDistortionRandomDirection ) * PI ) );
				float3 rotatedValue136_g3868 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_182_0_g3868 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalDistortionRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g3868 = rotatedValue136_g3868;
				float clampResult154_g3868 = clamp( ( ( break130_g3868.x + break130_g3868.y + _DirectionalDistortionFade + ( tex2D( _UberNoiseTexture, ( temp_output_182_0_g3868 * _DirectionalDistortionNoiseScale ) ).r * _DirectionalDistortionNoiseFactor ) ) / max( _DirectionalDistortionWidth , 0.001 ) ) , 0.0 , 1.0 );
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float2 staticSwitch82 = ( staticSwitch83 + ( (rotatedValue168_g3868).xy * ( 1.0 - (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g3868 ) ):( clampResult154_g3868 )) ) ) );
				#else
				float2 staticSwitch82 = staticSwitch83;
				#endif
				float mulTime5_g3867 = _TimeParameters.x * _TimeScale;
				float mulTime7_g3867 = _TimeParameters.x * _TimeFrequency;
				#if defined(_TIMESETTINGS_LINEAR_DEFAULT)
				float staticSwitch1_g3867 = _TimeParameters.x;
				#elif defined(_TIMESETTINGS_LINEAR_SCALED)
				float staticSwitch1_g3867 = mulTime5_g3867;
				#elif defined(_TIMESETTINGS_LINEAR_FPS)
				float staticSwitch1_g3867 = ( _TimeScale * ( floor( ( _TimeParameters.x * _TimeFPS ) ) / _TimeFPS ) );
				#elif defined(_TIMESETTINGS_FREQUENCY)
				float staticSwitch1_g3867 = ( ( sin( mulTime7_g3867 ) * _TimeRange ) + 100.0 );
				#elif defined(_TIMESETTINGS_FREQUENCY_FPS)
				float staticSwitch1_g3867 = ( ( _TimeRange * sin( ( _TimeFrequency * ( floor( ( _TimeFPS * _TimeParameters.x ) ) / _TimeFPS ) ) ) ) + 100.0 );
				#elif defined(_TIMESETTINGS_CUSTOM_VALUE)
				float staticSwitch1_g3867 = _TimeValue;
				#else
				float staticSwitch1_g3867 = _TimeParameters.x;
				#endif
				float shaderTime237 = staticSwitch1_g3867;
				float temp_output_8_0_g3873 = ( ( ( shaderTime237 * _HologramDistortionSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y );
				float2 temp_cast_3 = (temp_output_8_0_g3873).xx;
				float2 temp_cast_4 = (_HologramDistortionDensity).xx;
				float clampResult75_g3873 = clamp( tex2D( _UberNoiseTexture, ( temp_cast_3 * temp_cast_4 ) ).r , 0.075 , 0.6 );
				float2 temp_cast_5 = (temp_output_8_0_g3873).xx;
				float2 temp_cast_6 = (_HologramDistortionScale).xx;
				float2 appendResult2_g3874 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float hologramFade182 = _HologramFade;
				float2 appendResult44_g3873 = (float2(( ( ( clampResult75_g3873 * ( tex2D( _UberNoiseTexture, ( temp_cast_5 * temp_cast_6 ) ).r - 0.25 ) ) * _HologramDistortionOffset * ( 100.0 / appendResult2_g3874 ).x ) * hologramFade182 ) , 0.0));
				#ifdef _ENABLEHOLOGRAM_ON
				float2 staticSwitch59 = ( staticSwitch82 + appendResult44_g3873 );
				#else
				float2 staticSwitch59 = staticSwitch82;
				#endif
				float2 temp_output_18_0_g3871 = shaderPosition235;
				float2 glitchPosition154 = temp_output_18_0_g3871;
				float glitchFade152 = ( max( tex2D( _UberNoiseTexture, ( ( temp_output_18_0_g3871 + ( _GlitchMaskSpeed * shaderTime237 ) ) * _GlitchMaskScale ) ).r , _GlitchMaskMin ) * _GlitchFade );
				#ifdef _ENABLEGLITCH_ON
				float2 staticSwitch62 = ( staticSwitch59 + ( ( tex2D( _UberNoiseTexture, ( ( glitchPosition154 + ( _GlitchDistortionSpeed * shaderTime237 ) ) * _GlitchDistortionScale ) ).r - 0.5 ) * _GlitchDistortion * glitchFade152 ) );
				#else
				float2 staticSwitch62 = staticSwitch59;
				#endif
				float2 temp_output_1_0_g3890 = staticSwitch62;
				float temp_output_25_0_g3890 = shaderTime237;
				float2 lerpResult21_g3891 = lerp( _UVDistortFrom , _UVDistortTo , tex2D( _UberNoiseTexture, ( ( shaderPosition235 + ( _UVDistortSpeed * temp_output_25_0_g3890 ) ) * _UVDistortNoiseScale ) ).r);
				float2 appendResult2_g3893 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 uv_UVDistortShaderMask = IN.texCoord0.xy * _UVDistortShaderMask_ST.xy + _UVDistortShaderMask_ST.zw;
				float4 tex2DNode3_g3894 = tex2D( _UVDistortShaderMask, uv_UVDistortShaderMask );
				#ifdef _ENABLEUVDISTORT_ON
				float2 staticSwitch5_g3890 = ( temp_output_1_0_g3890 + ( lerpResult21_g3891 * ( 100.0 / appendResult2_g3893 ) * ( _UVDistortFade * ( tex2DNode3_g3894.r * tex2DNode3_g3894.a ) ) ) );
				#else
				float2 staticSwitch5_g3890 = temp_output_1_0_g3890;
				#endif
				float2 temp_output_1_0_g3895 = staticSwitch5_g3890;
				#ifdef _ENABLESQUEEZE_ON
				float2 staticSwitch7_g3890 = ( temp_output_1_0_g3895 + ( ( temp_output_1_0_g3895 - _SqueezeCenter ) * pow( distance( temp_output_1_0_g3895 , _SqueezeCenter ) , _SqueezePower ) * _SqueezeScale * _SqueezeFade ) );
				#else
				float2 staticSwitch7_g3890 = staticSwitch5_g3890;
				#endif
				float3 rotatedValue36_g3896 = RotateAroundAxis( float3( _SineRotatePivot ,  0.0 ), float3( staticSwitch7_g3890 ,  0.0 ), float3( 0,0,1 ), ( sin( ( temp_output_25_0_g3890 * _SineRotateFrequency ) ) * ( ( _SineRotateAngle / 360.0 ) * PI ) * _SineRotateFade ) );
				#ifdef _ENABLESINEROTATE_ON
				float2 staticSwitch9_g3890 = (rotatedValue36_g3896).xy;
				#else
				float2 staticSwitch9_g3890 = staticSwitch7_g3890;
				#endif
				float3 rotatedValue8_g3897 = RotateAroundAxis( float3( _UVRotatePivot ,  0.0 ), float3( staticSwitch9_g3890 ,  0.0 ), float3( 0,0,1 ), ( temp_output_25_0_g3890 * _UVRotateSpeed * PI ) );
				#ifdef _ENABLEUVROTATE_ON
				float2 staticSwitch16_g3890 = (rotatedValue8_g3897).xy;
				#else
				float2 staticSwitch16_g3890 = staticSwitch9_g3890;
				#endif
				#ifdef _ENABLEUVSCROLL_ON
				float2 staticSwitch14_g3890 = ( ( ( _UVScrollSpeed * temp_output_25_0_g3890 ) + staticSwitch16_g3890 ) % float2( 1,1 ) );
				#else
				float2 staticSwitch14_g3890 = staticSwitch16_g3890;
				#endif
				float2 appendResult2_g3900 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 MultFactor30_g3899 = ( _PixelatePixelDensity * ( float2( 1,1 ) / ( 100.0 / appendResult2_g3900 ) ) * ( 1.0 / max( _PixelateFade , 0.0001 ) ) );
				#ifdef _ENABLEPIXELATE_ON
				float2 staticSwitch4_g3890 = ( round( ( MultFactor30_g3899 * staticSwitch14_g3890 ) ) / MultFactor30_g3899 );
				#else
				float2 staticSwitch4_g3890 = staticSwitch14_g3890;
				#endif
				#ifdef _ENABLEUVSCALE_ON
				float2 staticSwitch24_g3890 = ( ( ( staticSwitch4_g3890 - _UVScalePivot ) / _UVScaleScale ) + _UVScalePivot );
				#else
				float2 staticSwitch24_g3890 = staticSwitch4_g3890;
				#endif
				float2 temp_output_257_0 = staticSwitch24_g3890;
				float2 texCoord131 = IN.texCoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float2 uv_UberMask = IN.texCoord0.xy * _UberMask_ST.xy + _UberMask_ST.zw;
				float4 tex2DNode3_g3887 = tex2D( _UberMask, uv_UberMask );
				float temp_output_4_0_g3883 = max( _UberWidth , 0.001 );
				float clampResult14_g3883 = clamp( ( ( ( _FullFade * ( 1.0 + temp_output_4_0_g3883 ) ) - tex2D( _UberNoiseTexture, ( shaderPosition235 * _UberNoiseScale ) ).r ) / temp_output_4_0_g3883 ) , 0.0 , 1.0 );
				float2 temp_output_27_0_g3885 = shaderPosition235;
				float clampResult3_g3885 = clamp( ( ( _FullFade - ( distance( _UberPosition , temp_output_27_0_g3885 ) + ( tex2D( _UberNoiseTexture, ( temp_output_27_0_g3885 * _UberNoiseScale ) ).r * _UberNoiseFactor ) ) ) / max( _UberWidth , 0.001 ) ) , 0.0 , 1.0 );
				#if defined(_UBERFADING_NONE)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_FULL)
				float staticSwitch139 = _FullFade;
				#elif defined(_UBERFADING_MASK)
				float staticSwitch139 = ( _FullFade * ( tex2DNode3_g3887.r * tex2DNode3_g3887.a ) );
				#elif defined(_UBERFADING_DISSOLVE)
				float staticSwitch139 = clampResult14_g3883;
				#elif defined(_UBERFADING_SPREAD)
				float staticSwitch139 = clampResult3_g3885;
				#else
				float staticSwitch139 = _FullFade;
				#endif
				float fullFade123 = staticSwitch139;
				float2 lerpResult130 = lerp( texCoord131 , temp_output_257_0 , fullFade123);
				#if defined(_UBERFADING_NONE)
				float2 staticSwitch145 = temp_output_257_0;
				#elif defined(_UBERFADING_FULL)
				float2 staticSwitch145 = lerpResult130;
				#elif defined(_UBERFADING_MASK)
				float2 staticSwitch145 = lerpResult130;
				#elif defined(_UBERFADING_DISSOLVE)
				float2 staticSwitch145 = lerpResult130;
				#elif defined(_UBERFADING_SPREAD)
				float2 staticSwitch145 = lerpResult130;
				#else
				float2 staticSwitch145 = temp_output_257_0;
				#endif
				float2 finalUV146 = staticSwitch145;
				float4 originalColor191 = tex2D( _MainTex, finalUV146 );
				float4 temp_output_1_0_g3902 = originalColor191;
				float4 temp_output_1_0_g3905 = temp_output_1_0_g3902;
				float2 temp_output_7_0_g3902 = finalUV146;
				float2 temp_output_43_0_g3905 = temp_output_7_0_g3902;
				float2 temp_cast_11 = (_SmokeNoiseScale).xx;
				float clampResult28_g3905 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( IN.color.r * (( _SmokeVertexSeed )?( 5.0 ):( 0.0 )) ) + temp_output_43_0_g3905 ) * temp_cast_11 ) ).r - 1.0 ) * _SmokeNoiseFactor ) + ( ( ( IN.color.a / 2.5 ) - distance( temp_output_43_0_g3905 , float2( 0.5,0.5 ) ) ) * 2.5 * _SmokeSmoothness ) ) , 0.0 , 1.0 );
				float3 lerpResult34_g3905 = lerp( ( (temp_output_1_0_g3905).rgb * (IN.color).rgb ) , float3( 0,0,0 ) , ( ( 1.0 - clampResult28_g3905 ) * _SmokeDarkEdge ));
				float4 appendResult31_g3905 = (float4(lerpResult34_g3905 , ( clampResult28_g3905 * _SmokeAlpha * temp_output_1_0_g3905.a )));
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch2_g3902 = appendResult31_g3905;
				#else
				float4 staticSwitch2_g3902 = temp_output_1_0_g3902;
				#endif
				float4 temp_output_1_0_g3903 = staticSwitch2_g3902;
				float2 temp_output_57_0_g3903 = temp_output_7_0_g3902;
				float4 tex2DNode3_g3903 = tex2D( _CustomFadeFadeMask, temp_output_57_0_g3903 );
				float clampResult37_g3903 = clamp( ( ( ( IN.color.a * 2.0 ) - 1.0 ) + ( tex2DNode3_g3903.r + ( tex2D( _UberNoiseTexture, ( temp_output_57_0_g3903 * _CustomFadeNoiseScale ) ).r * _CustomFadeNoiseFactor ) ) ) , 0.0 , 1.0 );
				float4 appendResult13_g3903 = (float4(( float4( (IN.color).rgb , 0.0 ) * temp_output_1_0_g3903 ).rgb , ( temp_output_1_0_g3903.a * pow( clampResult37_g3903 , ( _CustomFadeSmoothness / max( tex2DNode3_g3903.r , 0.05 ) ) ) * _CustomFadeAlpha )));
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch3_g3902 = appendResult13_g3903;
				#else
				float4 staticSwitch3_g3902 = staticSwitch2_g3902;
				#endif
				float4 temp_output_1_0_g3907 = staticSwitch3_g3902;
				float4 temp_output_1_0_g3908 = temp_output_1_0_g3907;
				float2 appendResult4_g3908 = (float2(ase_worldPos.x , ase_worldPos.y));
				float2 temp_output_44_0_g3908 = ( appendResult4_g3908 * _CheckerboardTiling * 0.5 );
				float2 break12_g3908 = step( ( ceil( temp_output_44_0_g3908 ) - temp_output_44_0_g3908 ) , float2( 0.5,0.5 ) );
				float3 temp_cast_16 = (( _CheckerboardDarken * abs( ( -break12_g3908.x + break12_g3908.y ) ) )).xxx;
				float4 appendResult42_g3908 = (float4(( (temp_output_1_0_g3908).rgb - temp_cast_16 ) , temp_output_1_0_g3908.a));
				#ifdef _ENABLECHECKERBOARD_ON
				float4 staticSwitch2_g3907 = appendResult42_g3908;
				#else
				float4 staticSwitch2_g3907 = temp_output_1_0_g3907;
				#endif
				float2 temp_output_75_0_g3909 = finalUV146;
				float saferPower57_g3909 = max( max( ( temp_output_75_0_g3909.y - 0.2 ) , 0.0 ) , 0.0001 );
				float temp_output_47_0_g3909 = max( _FlameRadius , 0.01 );
				float clampResult70_g3909 = clamp( ( ( ( tex2D( _UberNoiseTexture, ( ( ( shaderTime237 * _FlameSpeed ) + temp_output_75_0_g3909 ) * _FlameNoiseScale ) ).r * pow( saferPower57_g3909 , _FlameNoiseHeightFactor ) * _FlameNoiseFactor ) + ( ( temp_output_47_0_g3909 - distance( temp_output_75_0_g3909 , float2( 0.5,0.4 ) ) ) / temp_output_47_0_g3909 ) ) * _FlameSmooth ) , 0.0 , 1.0 );
				float temp_output_63_0_g3909 = ( clampResult70_g3909 * _FlameBrightness );
				float4 appendResult31_g3909 = (float4(temp_output_63_0_g3909 , temp_output_63_0_g3909 , temp_output_63_0_g3909 , clampResult70_g3909));
				#ifdef _ENABLEFLAME_ON
				float4 staticSwitch6_g3907 = ( appendResult31_g3909 * staticSwitch2_g3907 );
				#else
				float4 staticSwitch6_g3907 = staticSwitch2_g3907;
				#endif
				float4 temp_output_3_0_g3911 = staticSwitch6_g3907;
				float4 temp_output_1_0_g3943 = temp_output_3_0_g3911;
				float3 temp_output_2_0_g3943 = (temp_output_1_0_g3943).rgb;
				float4 break2_g3944 = float4( temp_output_2_0_g3943 , 0.0 );
				float temp_output_9_0_g3945 = max( _ColorReplaceContrast , 0.0 );
				float saferPower7_g3945 = max( ( ( ( break2_g3944.x + break2_g3944.y + break2_g3944.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3945 ) , 0.0 ) ) ) , 0.0001 );
				float3 hsvTorgb7_g3943 = RGBToHSV( (_ColorReplaceTargetColor).rgb );
				float3 hsvTorgb5_g3943 = RGBToHSV( temp_output_2_0_g3943 );
				float clampResult35_g3943 = clamp( ( 1.0 - ( min( min( distance( hsvTorgb7_g3943.x , hsvTorgb5_g3943.x ) , distance( hsvTorgb7_g3943.x , ( hsvTorgb5_g3943.x + 1.0 ) ) ) , distance( hsvTorgb7_g3943.x , ( hsvTorgb5_g3943.x + -1.0 ) ) ) / max( ( _ColorReplaceHueTolerance * 0.15 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult30_g3943 = clamp( ( 1.0 - ( distance( hsvTorgb7_g3943.y , hsvTorgb5_g3943.y ) / max( ( _ColorReplaceSaturationTolerance * 2.0 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float clampResult40_g3943 = clamp( ( 1.0 - ( distance( hsvTorgb7_g3943.z , hsvTorgb5_g3943.z ) / max( ( _ColorReplaceBrightnessTolerance * 1.5 ) , 0.001 ) ) ) , 0.0 , 1.0 );
				float saferPower48_g3943 = max( ( clampResult35_g3943 * clampResult30_g3943 * clampResult40_g3943 ) , 0.0001 );
				float3 lerpResult23_g3943 = lerp( temp_output_2_0_g3943 , ( pow( saferPower7_g3945 , temp_output_9_0_g3945 ) * (_ColorReplaceColor).rgb ) , ( pow( saferPower48_g3943 , max( _ColorReplaceBias , 0.001 ) ) * _ColorReplaceFade ));
				float4 appendResult4_g3943 = (float4(lerpResult23_g3943 , temp_output_1_0_g3943.a));
				#ifdef _ENABLECOLORREPLACE_ON
				float4 staticSwitch29_g3911 = appendResult4_g3943;
				#else
				float4 staticSwitch29_g3911 = temp_output_3_0_g3911;
				#endif
				float4 temp_output_1_0_g3936 = staticSwitch29_g3911;
				float3 saferPower5_g3936 = max( (temp_output_1_0_g3936).rgb , 0.0001 );
				float3 temp_cast_22 = (_Contrast).xxx;
				float4 appendResult4_g3936 = (float4(pow( saferPower5_g3936 , temp_cast_22 ) , temp_output_1_0_g3936.a));
				#ifdef _ENABLECONTRAST_ON
				float4 staticSwitch32_g3911 = appendResult4_g3936;
				#else
				float4 staticSwitch32_g3911 = staticSwitch29_g3911;
				#endif
				float4 temp_output_2_0_g3935 = staticSwitch32_g3911;
				float4 appendResult6_g3935 = (float4(( (temp_output_2_0_g3935).rgb * _Brightness ) , temp_output_2_0_g3935.a));
				#ifdef _ENABLEBRIGHTNESS_ON
				float4 staticSwitch33_g3911 = appendResult6_g3935;
				#else
				float4 staticSwitch33_g3911 = staticSwitch32_g3911;
				#endif
				float4 temp_output_2_0_g3934 = staticSwitch33_g3911;
				float3 hsvTorgb1_g3934 = RGBToHSV( temp_output_2_0_g3934.rgb );
				float3 hsvTorgb3_g3934 = HSVToRGB( float3(( hsvTorgb1_g3934.x + _Hue ),hsvTorgb1_g3934.y,hsvTorgb1_g3934.z) );
				float4 appendResult8_g3934 = (float4(hsvTorgb3_g3934 , temp_output_2_0_g3934.a));
				#ifdef _ENABLEHUE_ON
				float4 staticSwitch36_g3911 = appendResult8_g3934;
				#else
				float4 staticSwitch36_g3911 = staticSwitch33_g3911;
				#endif
				float4 temp_output_1_0_g3937 = staticSwitch36_g3911;
				float4 break2_g3938 = temp_output_1_0_g3937;
				float temp_output_3_0_g3937 = ( ( break2_g3938.x + break2_g3938.y + break2_g3938.z ) / 3.0 );
				float clampResult25_g3937 = clamp( ( ( ( ( temp_output_3_0_g3937 + _SplitToningShift ) - 0.5 ) * _SplitToningBalance ) + 0.5 ) , 0.0 , 1.0 );
				float3 lerpResult6_g3937 = lerp( (_SplitToningShadowsColor).rgb , (_SplitToningHighlightsColor).rgb , clampResult25_g3937);
				float temp_output_9_0_g3939 = max( _SplitToningContrast , 0.0 );
				float saferPower7_g3939 = max( ( temp_output_3_0_g3937 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3939 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult11_g3937 = lerp( (temp_output_1_0_g3937).rgb , ( lerpResult6_g3937 * pow( saferPower7_g3939 , temp_output_9_0_g3939 ) ) , _SplitToningFade);
				float4 appendResult18_g3937 = (float4(lerpResult11_g3937 , temp_output_1_0_g3937.a));
				#ifdef _ENABLESPLITTONING_ON
				float4 staticSwitch30_g3911 = appendResult18_g3937;
				#else
				float4 staticSwitch30_g3911 = staticSwitch36_g3911;
				#endif
				float4 temp_output_1_0_g3942 = staticSwitch30_g3911;
				float3 temp_output_4_0_g3942 = (temp_output_1_0_g3942).rgb;
				float4 break12_g3942 = temp_output_1_0_g3942;
				float3 lerpResult7_g3942 = lerp( temp_output_4_0_g3942 , ( temp_output_4_0_g3942 + (_BlackTintColor).rgb ) , pow( ( 1.0 - min( max( max( break12_g3942.r , break12_g3942.g ) , break12_g3942.b ) , 1.0 ) ) , max( _BlackTintPower , 0.001 ) ));
				float3 lerpResult13_g3942 = lerp( temp_output_4_0_g3942 , lerpResult7_g3942 , _BlackTintFade);
				float4 appendResult11_g3942 = (float4(lerpResult13_g3942 , break12_g3942.a));
				#ifdef _ENABLEBLACKTINT_ON
				float4 staticSwitch20_g3911 = appendResult11_g3942;
				#else
				float4 staticSwitch20_g3911 = staticSwitch30_g3911;
				#endif
				float4 temp_output_1_0_g3940 = staticSwitch20_g3911;
				float2 uv_RecolorTintAreas = IN.texCoord0.xy * _RecolorTintAreas_ST.xy + _RecolorTintAreas_ST.zw;
				float3 hsvTorgb33_g3940 = RGBToHSV( tex2D( _RecolorTintAreas, uv_RecolorTintAreas ).rgb );
				float temp_output_43_0_g3940 = ( ( hsvTorgb33_g3940.x + 0.08333334 ) % 1.0 );
				float4 ifLocalVar46_g3940 = 0;
				if( temp_output_43_0_g3940 >= 0.8333333 )
				ifLocalVar46_g3940 = _RecolorPurpleTint;
				else
				ifLocalVar46_g3940 = _RecolorBlueTint;
				float4 ifLocalVar44_g3940 = 0;
				if( temp_output_43_0_g3940 <= 0.6666667 )
				ifLocalVar44_g3940 = _RecolorCyanTint;
				else
				ifLocalVar44_g3940 = ifLocalVar46_g3940;
				float4 ifLocalVar47_g3940 = 0;
				if( temp_output_43_0_g3940 <= 0.3333333 )
				ifLocalVar47_g3940 = _RecolorYellowTint;
				else
				ifLocalVar47_g3940 = _RecolorGreenTint;
				float4 ifLocalVar45_g3940 = 0;
				if( temp_output_43_0_g3940 <= 0.1666667 )
				ifLocalVar45_g3940 = _RecolorRedTint;
				else
				ifLocalVar45_g3940 = ifLocalVar47_g3940;
				float4 ifLocalVar35_g3940 = 0;
				if( temp_output_43_0_g3940 >= 0.5 )
				ifLocalVar35_g3940 = ifLocalVar44_g3940;
				else
				ifLocalVar35_g3940 = ifLocalVar45_g3940;
				float4 break55_g3940 = ifLocalVar35_g3940;
				float3 appendResult56_g3940 = (float3(break55_g3940.r , break55_g3940.g , break55_g3940.b));
				float4 break2_g3941 = temp_output_1_0_g3940;
				float saferPower57_g3940 = max( ( ( break2_g3941.x + break2_g3941.y + break2_g3941.z ) / 3.0 ) , 0.0001 );
				float3 lerpResult26_g3940 = lerp( (temp_output_1_0_g3940).rgb , ( appendResult56_g3940 * pow( saferPower57_g3940 , max( ( break55_g3940.a * 2.0 ) , 0.01 ) ) ) , ( hsvTorgb33_g3940.z * _RecolorFade ));
				float4 appendResult30_g3940 = (float4(lerpResult26_g3940 , temp_output_1_0_g3940.a));
				#ifdef _ENABLERECOLOR_ON
				float4 staticSwitch9_g3911 = appendResult30_g3940;
				#else
				float4 staticSwitch9_g3911 = staticSwitch20_g3911;
				#endif
				float4 temp_output_1_0_g3920 = staticSwitch9_g3911;
				float4 break2_g3922 = temp_output_1_0_g3920;
				float temp_output_9_0_g3921 = max( _InkSpreadContrast , 0.0 );
				float saferPower7_g3921 = max( ( ( ( break2_g3922.x + break2_g3922.y + break2_g3922.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3921 ) , 0.0 ) ) ) , 0.0001 );
				float2 temp_output_65_0_g3920 = shaderPosition235;
				float clampResult53_g3920 = clamp( ( ( ( _InkSpreadDistance - distance( _InkSpreadPosition , temp_output_65_0_g3920 ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_65_0_g3920 * _InkSpreadNoiseScale ) ).r * _InkSpreadNoiseFactor ) ) / max( _InkSpreadWidth , 0.001 ) ) , 0.0 , 1.0 );
				float3 lerpResult7_g3920 = lerp( (temp_output_1_0_g3920).rgb , ( (_InkSpreadColor).rgb * pow( saferPower7_g3921 , temp_output_9_0_g3921 ) ) , ( _InkSpreadFade * clampResult53_g3920 ));
				float4 appendResult9_g3920 = (float4(lerpResult7_g3920 , (temp_output_1_0_g3920).a));
				#ifdef _ENABLEINKSPREAD_ON
				float4 staticSwitch17_g3911 = appendResult9_g3920;
				#else
				float4 staticSwitch17_g3911 = staticSwitch9_g3911;
				#endif
				float4 temp_output_1_0_g3918 = staticSwitch17_g3911;
				float3 temp_output_34_0_g3918 = (temp_output_1_0_g3918).rgb;
				float temp_output_39_0_g3911 = shaderTime237;
				float3 hsvTorgb15_g3918 = RGBToHSV( temp_output_34_0_g3918 );
				float3 hsvTorgb19_g3918 = HSVToRGB( float3(( ( temp_output_39_0_g3911 * _ShiftHueSpeed ) + hsvTorgb15_g3918.x ),hsvTorgb15_g3918.y,hsvTorgb15_g3918.z) );
				float2 uv_ShiftHueShaderMask = IN.texCoord0.xy * _ShiftHueShaderMask_ST.xy + _ShiftHueShaderMask_ST.zw;
				float4 tex2DNode3_g3919 = tex2D( _ShiftHueShaderMask, uv_ShiftHueShaderMask );
				float3 lerpResult33_g3918 = lerp( temp_output_34_0_g3918 , hsvTorgb19_g3918 , ( _ShiftHueFade * ( tex2DNode3_g3919.r * tex2DNode3_g3919.a ) ));
				float4 appendResult6_g3918 = (float4(lerpResult33_g3918 , temp_output_1_0_g3918.a));
				#ifdef _ENABLESHIFTHUE_ON
				float4 staticSwitch19_g3911 = appendResult6_g3918;
				#else
				float4 staticSwitch19_g3911 = staticSwitch17_g3911;
				#endif
				float3 hsvTorgb3_g3931 = HSVToRGB( float3(( temp_output_39_0_g3911 * _AddHueSpeed ),1.0,1.0) );
				float3 hsvTorgb15_g3930 = RGBToHSV( hsvTorgb3_g3931 );
				float3 hsvTorgb19_g3930 = HSVToRGB( float3(hsvTorgb15_g3930.x,_AddHueSaturation,( hsvTorgb15_g3930.z * _AddHueBrightness )) );
				float4 temp_output_1_0_g3930 = staticSwitch19_g3911;
				float4 break2_g3933 = temp_output_1_0_g3930;
				float saferPower27_g3930 = max( ( ( break2_g3933.x + break2_g3933.y + break2_g3933.z ) / 3.0 ) , 0.0001 );
				float2 uv_AddHueShaderMask = IN.texCoord0.xy * _AddHueShaderMask_ST.xy + _AddHueShaderMask_ST.zw;
				float4 tex2DNode3_g3932 = tex2D( _AddHueShaderMask, uv_AddHueShaderMask );
				float4 appendResult6_g3930 = (float4(( ( hsvTorgb19_g3930 * pow( saferPower27_g3930 , max( _AddHueContrast , 0.001 ) ) * ( _AddHueFade * ( tex2DNode3_g3932.r * tex2DNode3_g3932.a ) ) ) + (temp_output_1_0_g3930).rgb ) , temp_output_1_0_g3930.a));
				#ifdef _ENABLEADDHUE_ON
				float4 staticSwitch23_g3911 = appendResult6_g3930;
				#else
				float4 staticSwitch23_g3911 = staticSwitch19_g3911;
				#endif
				float4 temp_output_1_0_g3912 = staticSwitch23_g3911;
				float4 break2_g3913 = temp_output_1_0_g3912;
				float temp_output_9_0_g3914 = max( _SineGlowContrast , 0.0 );
				float saferPower7_g3914 = max( ( ( ( break2_g3913.x + break2_g3913.y + break2_g3913.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3914 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_SineGlowShaderMask = IN.texCoord0.xy * _SineGlowShaderMask_ST.xy + _SineGlowShaderMask_ST.zw;
				float4 tex2DNode3_g3915 = tex2D( _SineGlowShaderMask, uv_SineGlowShaderMask );
				float4 appendResult21_g3912 = (float4(( (temp_output_1_0_g3912).rgb + ( pow( saferPower7_g3914 , temp_output_9_0_g3914 ) * ( _SineGlowFade * ( tex2DNode3_g3915.r * tex2DNode3_g3915.a ) ) * (_SineGlowColor).rgb * ( ( ( sin( ( temp_output_39_0_g3911 * _SineGlowFrequency ) ) + 1.0 ) * ( _SineGlowMax - _SineGlowMin ) ) + _SineGlowMin ) ) ) , temp_output_1_0_g3912.a));
				#ifdef _ENABLESINEGLOW_ON
				float4 staticSwitch28_g3911 = appendResult21_g3912;
				#else
				float4 staticSwitch28_g3911 = staticSwitch23_g3911;
				#endif
				float4 temp_output_1_0_g3916 = staticSwitch28_g3911;
				float4 break2_g3917 = temp_output_1_0_g3916;
				float3 temp_cast_41 = (( ( break2_g3917.x + break2_g3917.y + break2_g3917.z ) / 3.0 )).xxx;
				float3 lerpResult5_g3916 = lerp( temp_cast_41 , (temp_output_1_0_g3916).rgb , _Saturation);
				float4 appendResult8_g3916 = (float4(lerpResult5_g3916 , temp_output_1_0_g3916.a));
				#ifdef _ENABLESATURATION_ON
				float4 staticSwitch38_g3911 = appendResult8_g3916;
				#else
				float4 staticSwitch38_g3911 = staticSwitch28_g3911;
				#endif
				float4 temp_output_15_0_g3927 = staticSwitch38_g3911;
				float2 temp_output_1_0_g3911 = finalUV146;
				float2 temp_output_7_0_g3927 = temp_output_1_0_g3911;
				#ifdef _INNEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch169_g3927 = ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_39_0_g3911 * _InnerOutlineNoiseSpeed ) + temp_output_7_0_g3927 ) * _InnerOutlineNoiseScale ) ).r - 0.5 ) * _InnerOutlineDistortionIntensity );
				#else
				float2 staticSwitch169_g3927 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g3927 = ( staticSwitch169_g3927 + temp_output_7_0_g3927 );
				float2 appendResult2_g3929 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g3927 = ( 100.0 / appendResult2_g3929 );
				float3 lerpResult176_g3927 = lerp( (temp_output_15_0_g3927).rgb , (_InnerOutlineColor).rgb , ( _InnerOutlineFade * ( 1.0 - min( min( min( min( min( min( min( tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g3927 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3927 + ( ( _InnerOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g3927 ) ) ).a ) ) ));
				float4 appendResult177_g3927 = (float4(lerpResult176_g3927 , temp_output_15_0_g3927.a));
				#ifdef _ENABLEINNEROUTLINE_ON
				float4 staticSwitch12_g3911 = appendResult177_g3927;
				#else
				float4 staticSwitch12_g3911 = staticSwitch38_g3911;
				#endif
				float4 temp_output_15_0_g3924 = staticSwitch12_g3911;
				float3 temp_output_82_0_g3924 = (_OuterOutlineColor).rgb;
				float temp_output_182_0_g3924 = ( ( 1.0 - temp_output_15_0_g3924.a ) * min( ( _OuterOutlineFade * 3.0 ) , 1.0 ) );
				float3 lerpResult178_g3924 = lerp( (temp_output_15_0_g3924).rgb , temp_output_82_0_g3924 , temp_output_182_0_g3924);
				float3 lerpResult170_g3924 = lerp( lerpResult178_g3924 , temp_output_82_0_g3924 , temp_output_182_0_g3924);
				float2 temp_output_7_0_g3924 = temp_output_1_0_g3911;
				#ifdef _OUTEROUTLINEDISTORTIONTOGGLE_ON
				float2 staticSwitch157_g3924 = ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_39_0_g3911 * _OuterOutlineNoiseSpeed ) + temp_output_7_0_g3924 ) * _OuterOutlineNoiseScale ) ).r - 0.5 ) * _OuterOutlineDistortionIntensity );
				#else
				float2 staticSwitch157_g3924 = float2( 0,0 );
				#endif
				float2 temp_output_131_0_g3924 = ( staticSwitch157_g3924 + temp_output_7_0_g3924 );
				float2 appendResult2_g3926 = (float2(_MainTex_TexelSize.z , _MainTex_TexelSize.w));
				float2 temp_output_25_0_g3924 = ( 100.0 / appendResult2_g3926 );
				float lerpResult168_g3924 = lerp( temp_output_15_0_g3924.a , min( ( max( max( max( max( max( max( max( tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0,-1 ) ) * temp_output_25_0_g3924 ) ) ).a , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0,1 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( -1,0 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 1,0 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0.705,0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( -0.705,0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( 0.705,-0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) , tex2D( _MainTex, ( temp_output_131_0_g3924 + ( ( _OuterOutlineWidth * float2( -0.705,-0.705 ) ) * temp_output_25_0_g3924 ) ) ).a ) * 3.0 ) , 1.0 ) , _OuterOutlineFade);
				float4 appendResult174_g3924 = (float4(lerpResult170_g3924 , lerpResult168_g3924));
				#ifdef _ENABLEOUTEROUTLINE_ON
				float4 staticSwitch13_g3911 = appendResult174_g3924;
				#else
				float4 staticSwitch13_g3911 = staticSwitch12_g3911;
				#endif
				float4 temp_output_241_0 = staticSwitch13_g3911;
				float4 temp_output_1_0_g3946 = temp_output_241_0;
				float4 break2_g3947 = temp_output_1_0_g3946;
				float temp_output_9_0_g3948 = max( _HologramContrast , 0.0 );
				float saferPower7_g3948 = max( ( ( ( break2_g3947.x + break2_g3947.y + break2_g3947.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3948 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult22_g3946 = (float4(( (_HologramTint).rgb * pow( saferPower7_g3948 , temp_output_9_0_g3948 ) ) , ( max( pow( abs( sin( ( ( ( ( shaderTime237 * _HologramLineSpeed ) + ase_worldPos.y ) / unity_OrthoParams.y ) * _HologramLineFrequency ) ) ) , _HologramLineGap ) , _HologramMinAlpha ) * temp_output_1_0_g3946.a )));
				float4 lerpResult37_g3946 = lerp( temp_output_1_0_g3946 , appendResult22_g3946 , hologramFade182);
				#ifdef _ENABLEHOLOGRAM_ON
				float4 staticSwitch56 = lerpResult37_g3946;
				#else
				float4 staticSwitch56 = temp_output_241_0;
				#endif
				float4 temp_output_1_0_g3949 = staticSwitch56;
				float4 break2_g3951 = temp_output_1_0_g3949;
				float temp_output_34_0_g3949 = shaderTime237;
				float3 hsvTorgb3_g3952 = HSVToRGB( float3(( tex2D( _UberNoiseTexture, ( ( glitchPosition154 + ( _GlitchNoiseSpeed * temp_output_34_0_g3949 ) ) * _GlitchNoiseScale ) ).r + ( temp_output_34_0_g3949 * _GlitchHueSpeed ) ),1.0,1.0) );
				float3 lerpResult23_g3949 = lerp( (temp_output_1_0_g3949).rgb , ( ( ( break2_g3951.x + break2_g3951.y + break2_g3951.z ) / 3.0 ) * _GlitchBrightness * hsvTorgb3_g3952 ) , glitchFade152);
				float4 appendResult27_g3949 = (float4(lerpResult23_g3949 , temp_output_1_0_g3949.a));
				#ifdef _ENABLEGLITCH_ON
				float4 staticSwitch57 = appendResult27_g3949;
				#else
				float4 staticSwitch57 = staticSwitch56;
				#endif
				float4 temp_output_3_0_g3953 = staticSwitch57;
				float4 temp_output_1_0_g3957 = temp_output_3_0_g3953;
				float2 temp_output_41_0_g3953 = shaderPosition235;
				float2 temp_output_99_0_g3957 = temp_output_41_0_g3953;
				float temp_output_40_0_g3953 = shaderTime237;
				float clampResult52_g3957 = clamp( ( ( _CamouflageDensityA - tex2D( _UberNoiseTexture, ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_40_0_g3953 * _CamouflageAnimationSpeed ) + temp_output_99_0_g3957 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_99_0_g3957 ) ):( temp_output_99_0_g3957 )) * _CamouflageNoiseScaleA ) ).r ) / max( _CamouflageSmoothnessA , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult55_g3957 = lerp( _CamouflageBaseColor , ( _CamouflageColorA * clampResult52_g3957 ) , clampResult52_g3957);
				float clampResult65_g3957 = clamp( ( ( _CamouflageDensityB - tex2D( _UberNoiseTexture, ( ( (( _CamouflageAnimated )?( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_40_0_g3953 * _CamouflageAnimationSpeed ) + temp_output_99_0_g3957 ) * _CamouflageDistortionScale ) ).r - 0.25 ) * _CamouflageDistortionIntensity ) + temp_output_99_0_g3957 ) ):( temp_output_99_0_g3957 )) + float2( 12.3,12.3 ) ) * _CamouflageNoiseScaleB ) ).r ) / max( _CamouflageSmoothnessB , 0.005 ) ) , 0.0 , 1.0 );
				float4 lerpResult68_g3957 = lerp( lerpResult55_g3957 , ( _CamouflageColorB * clampResult65_g3957 ) , clampResult65_g3957);
				float4 break2_g3960 = temp_output_1_0_g3957;
				float temp_output_9_0_g3959 = max( _CamouflageContrast , 0.0 );
				float saferPower7_g3959 = max( ( ( ( break2_g3960.x + break2_g3960.y + break2_g3960.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3959 ) , 0.0 ) ) ) , 0.0001 );
				float2 uv_CamouflageShaderMask = IN.texCoord0.xy * _CamouflageShaderMask_ST.xy + _CamouflageShaderMask_ST.zw;
				float4 tex2DNode3_g3961 = tex2D( _CamouflageShaderMask, uv_CamouflageShaderMask );
				float3 lerpResult4_g3957 = lerp( (temp_output_1_0_g3957).rgb , ( (lerpResult68_g3957).rgb * pow( saferPower7_g3959 , temp_output_9_0_g3959 ) ) , ( _CamouflageFade * ( tex2DNode3_g3961.r * tex2DNode3_g3961.a ) ));
				float4 appendResult7_g3957 = (float4(lerpResult4_g3957 , temp_output_1_0_g3957.a));
				#ifdef _ENABLECAMOUFLAGE_ON
				float4 staticSwitch26_g3953 = appendResult7_g3957;
				#else
				float4 staticSwitch26_g3953 = temp_output_3_0_g3953;
				#endif
				float4 temp_output_1_0_g3964 = staticSwitch26_g3953;
				float temp_output_59_0_g3964 = temp_output_40_0_g3953;
				float2 temp_output_58_0_g3964 = temp_output_41_0_g3953;
				float4 break2_g3966 = temp_output_1_0_g3964;
				float temp_output_5_0_g3964 = ( ( break2_g3966.x + break2_g3966.y + break2_g3966.z ) / 3.0 );
				float temp_output_9_0_g3969 = max( _MetalHighlightContrast , 0.0 );
				float saferPower7_g3969 = max( ( temp_output_5_0_g3964 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3969 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower2_g3964 = max( temp_output_5_0_g3964 , 0.0001 );
				float2 uv_MetalShaderMask = IN.texCoord0.xy * _MetalShaderMask_ST.xy + _MetalShaderMask_ST.zw;
				float4 tex2DNode3_g3965 = tex2D( _MetalShaderMask, uv_MetalShaderMask );
				float4 lerpResult45_g3964 = lerp( temp_output_1_0_g3964 , ( ( max( ( ( _MetalHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_59_0_g3964 * _MetalNoiseDistortionSpeed ) + temp_output_58_0_g3964 ) * _MetalNoiseDistortionScale ) ).r - 0.25 ) * _MetalNoiseDistortion ) + ( ( temp_output_59_0_g3964 * _MetalNoiseSpeed ) + temp_output_58_0_g3964 ) ) * _MetalNoiseScale ) ).r ) / max( _MetalHighlightDensity , 0.01 ) ) , 0.0 ) * _MetalHighlightColor * pow( saferPower7_g3969 , temp_output_9_0_g3969 ) ) + ( pow( saferPower2_g3964 , _MetalContrast ) * _MetalColor ) ) , ( _MetalFade * ( tex2DNode3_g3965.r * tex2DNode3_g3965.a ) ));
				float4 appendResult8_g3964 = (float4((lerpResult45_g3964).rgb , (temp_output_1_0_g3964).a));
				#ifdef _ENABLEMETAL_ON
				float4 staticSwitch28_g3953 = appendResult8_g3964;
				#else
				float4 staticSwitch28_g3953 = staticSwitch26_g3953;
				#endif
				float4 temp_output_1_0_g3970 = staticSwitch28_g3953;
				float4 break2_g3973 = temp_output_1_0_g3970;
				float temp_output_7_0_g3970 = ( ( break2_g3973.x + break2_g3973.y + break2_g3973.z ) / 3.0 );
				float temp_output_9_0_g3975 = max( _FrozenContrast , 0.0 );
				float saferPower7_g3975 = max( ( temp_output_7_0_g3970 + ( 0.1 * max( ( 1.0 - temp_output_9_0_g3975 ) , 0.0 ) ) ) , 0.0001 );
				float saferPower20_g3970 = max( temp_output_7_0_g3970 , 0.0001 );
				float2 temp_output_72_0_g3970 = temp_output_41_0_g3953;
				float temp_output_73_0_g3970 = temp_output_40_0_g3953;
				float saferPower42_g3970 = max( temp_output_7_0_g3970 , 0.0001 );
				float3 lerpResult57_g3970 = lerp( (temp_output_1_0_g3970).rgb , ( ( pow( saferPower7_g3975 , temp_output_9_0_g3975 ) * (_FrozenTint).rgb ) + ( pow( saferPower20_g3970 , _FrozenSnowContrast ) * ( (_FrozenSnowColor).rgb * max( ( _FrozenSnowDensity - tex2D( _UberNoiseTexture, ( temp_output_72_0_g3970 * _FrozenSnowScale ) ).r ) , 0.0 ) ) ) + (( max( ( ( _FrozenHighlightDensity - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_73_0_g3970 * _FrozenHighlightDistortionSpeed ) + temp_output_72_0_g3970 ) * _FrozenHighlightDistortionScale ) ).r - 0.25 ) * _FrozenHighlightDistortion ) + ( ( temp_output_73_0_g3970 * _FrozenHighlightSpeed ) + temp_output_72_0_g3970 ) ) * _FrozenHighlightScale ) ).r ) / max( _FrozenHighlightDensity , 0.01 ) ) , 0.0 ) * _FrozenHighlightColor * pow( saferPower42_g3970 , _FrozenHighlightContrast ) )).rgb ) , _FrozenFade);
				float4 appendResult26_g3970 = (float4(lerpResult57_g3970 , temp_output_1_0_g3970.a));
				#ifdef _ENABLEFROZEN_ON
				float4 staticSwitch29_g3953 = appendResult26_g3970;
				#else
				float4 staticSwitch29_g3953 = staticSwitch28_g3953;
				#endif
				float4 temp_output_1_0_g3976 = staticSwitch29_g3953;
				float3 temp_output_28_0_g3976 = (temp_output_1_0_g3976).rgb;
				float4 break2_g3977 = float4( temp_output_28_0_g3976 , 0.0 );
				float saferPower21_g3976 = max( ( ( break2_g3977.x + break2_g3977.y + break2_g3977.z ) / 3.0 ) , 0.0001 );
				float2 temp_output_72_0_g3976 = temp_output_41_0_g3953;
				float clampResult68_g3976 = clamp( ( _BurnInsideNoiseFactor - tex2D( _UberNoiseTexture, ( ( ( ( tex2D( _UberNoiseTexture, ( temp_output_72_0_g3976 * _BurnSwirlNoiseScale ) ).r - 0.5 ) * float2( 1,1 ) * _BurnSwirlFactor ) + temp_output_72_0_g3976 ) * _BurnInsideNoiseScale ) ).r ) , 0.0 , 1.0 );
				float temp_output_15_0_g3976 = ( ( ( _BurnRadius - distance( temp_output_72_0_g3976 , _BurnPosition ) ) + ( tex2D( _UberNoiseTexture, ( temp_output_72_0_g3976 * _BurnEdgeNoiseScale ) ).r * _BurnEdgeNoiseFactor ) ) / max( _BurnWidth , 0.01 ) );
				float clampResult18_g3976 = clamp( temp_output_15_0_g3976 , 0.0 , 1.0 );
				float3 lerpResult29_g3976 = lerp( temp_output_28_0_g3976 , ( pow( saferPower21_g3976 , max( _BurnInsideContrast , 0.001 ) ) * ( ( (_BurnInsideNoiseColor).rgb * clampResult68_g3976 ) + (_BurnInsideColor).rgb ) ) , clampResult18_g3976);
				float3 lerpResult40_g3976 = lerp( temp_output_28_0_g3976 , ( lerpResult29_g3976 + ( ( step( temp_output_15_0_g3976 , 1.0 ) * step( 0.0 , temp_output_15_0_g3976 ) ) * (_BurnEdgeColor).rgb ) ) , _BurnFade);
				float4 appendResult43_g3976 = (float4(lerpResult40_g3976 , temp_output_1_0_g3976.a));
				#ifdef _ENABLEBURN_ON
				float4 staticSwitch32_g3953 = appendResult43_g3976;
				#else
				float4 staticSwitch32_g3953 = staticSwitch29_g3953;
				#endif
				float2 temp_output_42_0_g3981 = temp_output_41_0_g3953;
				float3 hsvTorgb3_g3983 = HSVToRGB( float3(( ( ( distance( temp_output_42_0_g3981 , _RainbowCenter ) + ( tex2D( _UberNoiseTexture, ( temp_output_42_0_g3981 * _RainbowNoiseScale ) ).r * _RainbowNoiseFactor ) ) * _RainbowDensity ) + ( _RainbowSpeed * temp_output_40_0_g3953 ) ),1.0,1.0) );
				float3 hsvTorgb36_g3981 = RGBToHSV( hsvTorgb3_g3983 );
				float3 hsvTorgb37_g3981 = HSVToRGB( float3(hsvTorgb36_g3981.x,_RainbowSaturation,( hsvTorgb36_g3981.z * _RainbowBrightness )) );
				float4 temp_output_1_0_g3981 = staticSwitch32_g3953;
				float4 break2_g3982 = temp_output_1_0_g3981;
				float saferPower24_g3981 = max( ( ( break2_g3982.x + break2_g3982.y + break2_g3982.z ) / 3.0 ) , 0.0001 );
				float2 uv_RainbowMask = IN.texCoord0.xy * _RainbowMask_ST.xy + _RainbowMask_ST.zw;
				float4 tex2DNode3_g3984 = tex2D( _RainbowMask, uv_RainbowMask );
				float4 appendResult29_g3981 = (float4(( ( hsvTorgb37_g3981 * pow( saferPower24_g3981 , max( _RainbowContrast , 0.001 ) ) * ( _RainbowFade * ( tex2DNode3_g3984.r * tex2DNode3_g3984.a ) ) ) + (temp_output_1_0_g3981).rgb ) , temp_output_1_0_g3981.a));
				#ifdef _ENABLERAINBOW_ON
				float4 staticSwitch34_g3953 = appendResult29_g3981;
				#else
				float4 staticSwitch34_g3953 = staticSwitch32_g3953;
				#endif
				float4 temp_output_1_0_g3986 = staticSwitch34_g3953;
				float3 temp_output_57_0_g3986 = (temp_output_1_0_g3986).rgb;
				float4 break2_g3987 = temp_output_1_0_g3986;
				float3 temp_cast_61 = (( ( break2_g3987.x + break2_g3987.y + break2_g3987.z ) / 3.0 )).xxx;
				float3 lerpResult92_g3986 = lerp( temp_cast_61 , temp_output_57_0_g3986 , _ShineSaturation);
				float3 saferPower83_g3986 = max( lerpResult92_g3986 , 0.0001 );
				float3 temp_cast_62 = (max( _ShineContrast , 0.001 )).xxx;
				float3 rotatedValue69_g3986 = RotateAroundAxis( float3( 0,0,0 ), float3( ( ( temp_output_40_0_g3953 * _ShineSpeed ) + ( _ShineScale * temp_output_41_0_g3953 ) ) ,  0.0 ), float3( 0,0,1 ), ( ( _ShineRotation / 360.0 ) * PI ) );
				float3 break67_g3986 = rotatedValue69_g3986;
				float temp_output_97_0_g3986 = ( _ShineWidth + -1.0 );
				float clampResult80_g3986 = clamp( ( ( ( sin( ( ( break67_g3986.x + break67_g3986.y ) * 10.0 ) ) + temp_output_97_0_g3986 ) * ( 2.0 - temp_output_97_0_g3986 ) ) * _ShineSmoothness ) , 0.0 , 1.0 );
				float2 uv_ShineShaderMask = IN.texCoord0.xy * _ShineShaderMask_ST.xy + _ShineShaderMask_ST.zw;
				float4 tex2DNode3_g3988 = tex2D( _ShineShaderMask, uv_ShineShaderMask );
				float4 appendResult8_g3986 = (float4(( temp_output_57_0_g3986 + ( ( pow( saferPower83_g3986 , temp_cast_62 ) * (_ShineColor).rgb ) * clampResult80_g3986 * ( _ShineFade * ( tex2DNode3_g3988.r * tex2DNode3_g3988.a ) ) ) ) , (temp_output_1_0_g3986).a));
				#ifdef _ENABLESHINE_ON
				float4 staticSwitch36_g3953 = appendResult8_g3986;
				#else
				float4 staticSwitch36_g3953 = staticSwitch34_g3953;
				#endif
				float temp_output_41_0_g3954 = temp_output_40_0_g3953;
				float saferPower19_g3954 = max( abs( ( ( ( tex2D( _UberNoiseTexture, ( ( ( temp_output_41_0_g3954 * _PoisonNoiseSpeed ) + temp_output_41_0_g3953 ) * _PoisonNoiseScale ) ).r + ( temp_output_41_0_g3954 * _PoisonShiftSpeed ) ) % 1.0 ) + -0.5 ) ) , 0.0001 );
				float3 temp_output_24_0_g3954 = (_PoisonColor).rgb;
				float4 temp_output_1_0_g3954 = staticSwitch36_g3953;
				float3 temp_output_28_0_g3954 = (temp_output_1_0_g3954).rgb;
				float4 break2_g3956 = float4( temp_output_28_0_g3954 , 0.0 );
				float3 lerpResult32_g3954 = lerp( temp_output_28_0_g3954 , ( temp_output_24_0_g3954 * ( ( break2_g3956.x + break2_g3956.y + break2_g3956.z ) / 3.0 ) ) , ( _PoisonFade * _PoisonRecolorFactor ));
				float4 appendResult27_g3954 = (float4(( ( max( pow( saferPower19_g3954 , _PoisonDensity ) , 0.0 ) * temp_output_24_0_g3954 * _PoisonFade * _PoisonNoiseBrightness ) + lerpResult32_g3954 ) , temp_output_1_0_g3954.a));
				#ifdef _ENABLEPOISON_ON
				float4 staticSwitch39_g3953 = appendResult27_g3954;
				#else
				float4 staticSwitch39_g3953 = staticSwitch36_g3953;
				#endif
				float4 temp_output_245_0 = staticSwitch39_g3953;
				float4 break4_g3989 = temp_output_245_0;
				float fullDistortionAlpha164 = _FullDistortionFade;
				float4 appendResult5_g3989 = (float4(break4_g3989.r , break4_g3989.g , break4_g3989.b , ( break4_g3989.a * fullDistortionAlpha164 )));
				#ifdef _ENABLEFULLDISTORTION_ON
				float4 staticSwitch77 = appendResult5_g3989;
				#else
				float4 staticSwitch77 = temp_output_245_0;
				#endif
				float4 break4_g3990 = staticSwitch77;
				float directionalDistortionAlpha167 = (( _DirectionalDistortionInvert )?( ( 1.0 - clampResult154_g3868 ) ):( clampResult154_g3868 ));
				float4 appendResult5_g3990 = (float4(break4_g3990.r , break4_g3990.g , break4_g3990.b , ( break4_g3990.a * directionalDistortionAlpha167 )));
				#ifdef _ENABLEDIRECTIONALDISTORTION_ON
				float4 staticSwitch75 = appendResult5_g3990;
				#else
				float4 staticSwitch75 = staticSwitch77;
				#endif
				float4 temp_output_1_0_g3991 = staticSwitch75;
				float4 temp_output_1_0_g3992 = temp_output_1_0_g3991;
				float temp_output_53_0_g3992 = max( _FullAlphaDissolveWidth , 0.001 );
				float2 temp_output_18_0_g3991 = shaderPosition235;
				float clampResult17_g3992 = clamp( ( ( ( _FullAlphaDissolveFade * ( 1.0 + temp_output_53_0_g3992 ) ) - tex2D( _UberNoiseTexture, ( temp_output_18_0_g3991 * _FullAlphaDissolveNoiseScale ) ).r ) / temp_output_53_0_g3992 ) , 0.0 , 1.0 );
				float4 appendResult3_g3992 = (float4((temp_output_1_0_g3992).rgb , ( temp_output_1_0_g3992.a * clampResult17_g3992 )));
				#ifdef _ENABLEFULLALPHADISSOLVE_ON
				float4 staticSwitch3_g3991 = appendResult3_g3992;
				#else
				float4 staticSwitch3_g3991 = temp_output_1_0_g3991;
				#endif
				float temp_output_5_0_g4000 = tex2D( _UberNoiseTexture, ( temp_output_18_0_g3991 * _FullGlowDissolveNoiseScale ) ).r;
				float temp_output_61_0_g4000 = step( temp_output_5_0_g4000 , _FullGlowDissolveFade );
				float temp_output_53_0_g4000 = max( ( _FullGlowDissolveFade * _FullGlowDissolveWidth ) , 0.001 );
				float4 temp_output_1_0_g4000 = staticSwitch3_g3991;
				float4 appendResult3_g4000 = (float4(( ( (_FullGlowDissolveEdgeColor).rgb * ( temp_output_61_0_g4000 - step( temp_output_5_0_g4000 , ( ( _FullGlowDissolveFade * ( 1.01 + temp_output_53_0_g4000 ) ) - temp_output_53_0_g4000 ) ) ) ) + (temp_output_1_0_g4000).rgb ) , ( temp_output_1_0_g4000.a * temp_output_61_0_g4000 )));
				#ifdef _ENABLEFULLGLOWDISSOLVE_ON
				float4 staticSwitch5_g3991 = appendResult3_g4000;
				#else
				float4 staticSwitch5_g3991 = staticSwitch3_g3991;
				#endif
				float4 temp_output_1_0_g4002 = staticSwitch5_g3991;
				float2 temp_output_76_0_g4002 = temp_output_18_0_g3991;
				float clampResult17_g4002 = clamp( ( ( _SourceAlphaDissolveFade - ( distance( _SourceAlphaDissolvePosition , temp_output_76_0_g4002 ) + ( tex2D( _UberNoiseTexture, ( temp_output_76_0_g4002 * _SourceAlphaDissolveNoiseScale ) ).r * _SourceAlphaDissolveNoiseFactor ) ) ) / max( _SourceAlphaDissolveWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g4002 = (float4((temp_output_1_0_g4002).rgb , ( temp_output_1_0_g4002.a * (( _SourceAlphaDissolveInvert )?( ( 1.0 - clampResult17_g4002 ) ):( clampResult17_g4002 )) )));
				#ifdef _ENABLESOURCEALPHADISSOLVE_ON
				float4 staticSwitch8_g3991 = appendResult3_g4002;
				#else
				float4 staticSwitch8_g3991 = staticSwitch5_g3991;
				#endif
				float2 temp_output_90_0_g3998 = temp_output_18_0_g3991;
				float temp_output_65_0_g3998 = ( distance( _SourceGlowDissolvePosition , temp_output_90_0_g3998 ) + ( tex2D( _UberNoiseTexture, ( temp_output_90_0_g3998 * _SourceGlowDissolveNoiseScale ) ).r * _SourceGlowDissolveNoiseFactor ) );
				float temp_output_75_0_g3998 = step( temp_output_65_0_g3998 , _SourceGlowDissolveFade );
				float temp_output_76_0_g3998 = step( temp_output_65_0_g3998 , ( _SourceGlowDissolveFade - max( _SourceGlowDissolveWidth , 0.001 ) ) );
				float4 temp_output_1_0_g3998 = staticSwitch8_g3991;
				float4 appendResult3_g3998 = (float4(( ( max( ( temp_output_75_0_g3998 - temp_output_76_0_g3998 ) , 0.0 ) * (_SourceGlowDissolveEdgeColor).rgb ) + (temp_output_1_0_g3998).rgb ) , ( temp_output_1_0_g3998.a * (( _SourceGlowDissolveInvert )?( ( 1.0 - temp_output_76_0_g3998 ) ):( temp_output_75_0_g3998 )) )));
				#ifdef _ENABLESOURCEGLOWDISSOLVE_ON
				float4 staticSwitch9_g3991 = appendResult3_g3998;
				#else
				float4 staticSwitch9_g3991 = staticSwitch8_g3991;
				#endif
				float4 temp_output_1_0_g3994 = staticSwitch9_g3991;
				float2 temp_output_161_0_g3994 = temp_output_18_0_g3991;
				float3 rotatedValue136_g3994 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_161_0_g3994 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalAlphaFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g3994 = rotatedValue136_g3994;
				float clampResult154_g3994 = clamp( ( ( break130_g3994.x + break130_g3994.y + _DirectionalAlphaFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_161_0_g3994 * _DirectionalAlphaFadeNoiseScale ) ).r * _DirectionalAlphaFadeNoiseFactor ) ) / max( _DirectionalAlphaFadeWidth , 0.001 ) ) , 0.0 , 1.0 );
				float4 appendResult3_g3994 = (float4((temp_output_1_0_g3994).rgb , ( temp_output_1_0_g3994.a * (( _DirectionalAlphaFadeInvert )?( ( 1.0 - clampResult154_g3994 ) ):( clampResult154_g3994 )) )));
				#ifdef _ENABLEDIRECTIONALALPHAFADE_ON
				float4 staticSwitch11_g3991 = appendResult3_g3994;
				#else
				float4 staticSwitch11_g3991 = staticSwitch9_g3991;
				#endif
				float2 temp_output_171_0_g3996 = temp_output_18_0_g3991;
				float3 rotatedValue136_g3996 = RotateAroundAxis( float3( 0,0,0 ), float3( temp_output_171_0_g3996 ,  0.0 ), float3( 0,0,1 ), ( ( ( _DirectionalGlowFadeRotation / 360.0 ) + -0.25 ) * PI ) );
				float3 break130_g3996 = rotatedValue136_g3996;
				float temp_output_168_0_g3996 = max( ( ( break130_g3996.x + break130_g3996.y + _DirectionalGlowFadeFade + ( tex2D( _UberNoiseTexture, ( temp_output_171_0_g3996 * _DirectionalGlowFadeNoiseScale ) ).r * _DirectionalGlowFadeNoiseFactor ) ) / max( _DirectionalGlowFadeWidth , 0.001 ) ) , 0.0 );
				float temp_output_161_0_g3996 = step( 0.1 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g3996 ) ):( temp_output_168_0_g3996 )) );
				float4 temp_output_1_0_g3996 = staticSwitch11_g3991;
				float clampResult154_g3996 = clamp( temp_output_161_0_g3996 , 0.0 , 1.0 );
				float4 appendResult3_g3996 = (float4(( ( (_DirectionalGlowFadeEdgeColor).rgb * ( temp_output_161_0_g3996 - step( 1.0 , (( _DirectionalGlowFadeInvert )?( ( 1.0 - temp_output_168_0_g3996 ) ):( temp_output_168_0_g3996 )) ) ) ) + (temp_output_1_0_g3996).rgb ) , ( temp_output_1_0_g3996.a * clampResult154_g3996 )));
				#ifdef _ENABLEDIRECTIONALGLOWFADE_ON
				float4 staticSwitch15_g3991 = appendResult3_g3996;
				#else
				float4 staticSwitch15_g3991 = staticSwitch11_g3991;
				#endif
				float4 temp_output_1_0_g4004 = staticSwitch15_g3991;
				float2 temp_output_126_0_g4004 = temp_output_18_0_g3991;
				float temp_output_121_0_g4004 = max( ( ( _HalftoneFade - distance( _HalftonePosition , temp_output_126_0_g4004 ) ) / max( 0.01 , _HalftoneFadeWidth ) ) , 0.0 );
				float2 appendResult11_g4005 = (float2(temp_output_121_0_g4004 , temp_output_121_0_g4004));
				float temp_output_17_0_g4005 = length( ( (( ( abs( temp_output_126_0_g4004 ) * _HalftoneTiling ) % float2( 1,1 ) )*2.0 + -1.0) / appendResult11_g4005 ) );
				float clampResult17_g4004 = clamp( saturate( ( ( 1.0 - temp_output_17_0_g4005 ) / fwidth( temp_output_17_0_g4005 ) ) ) , 0.0 , 1.0 );
				float4 appendResult3_g4004 = (float4((temp_output_1_0_g4004).rgb , ( temp_output_1_0_g4004.a * (( _HalftoneInvert )?( ( 1.0 - clampResult17_g4004 ) ):( clampResult17_g4004 )) )));
				#ifdef _ENABLEHALFTONE_ON
				float4 staticSwitch13_g3991 = appendResult3_g4004;
				#else
				float4 staticSwitch13_g3991 = staticSwitch15_g3991;
				#endif
				float4 temp_output_1_0_g4008 = staticSwitch13_g3991;
				float4 break2_g4010 = temp_output_1_0_g4008;
				float temp_output_9_0_g4009 = max( _AddColorContrast , 0.0 );
				float saferPower7_g4009 = max( ( ( ( break2_g4010.x + break2_g4010.y + break2_g4010.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g4009 ) , 0.0 ) ) ) , 0.0001 );
				float4 appendResult6_g4008 = (float4(( ( (_AddColorColor).rgb * pow( saferPower7_g4009 , temp_output_9_0_g4009 ) * _AddColorFade ) + (temp_output_1_0_g4008).rgb ) , temp_output_1_0_g4008.a));
				#ifdef _ENABLEADDCOLOR_ON
				float4 staticSwitch5_g4007 = appendResult6_g4008;
				#else
				float4 staticSwitch5_g4007 = staticSwitch13_g3991;
				#endif
				float4 temp_output_1_0_g4011 = staticSwitch5_g4007;
				float saferPower11_g4011 = max( ( 1.0 - temp_output_1_0_g4011.a ) , 0.0001 );
				float3 lerpResult4_g4011 = lerp( (temp_output_1_0_g4011).rgb , (_AlphaTintColor).rgb , ( pow( saferPower11_g4011 , _AlphaTintPower ) * _AlphaTintFade * step( _AlphaTintMinAlpha , temp_output_1_0_g4011.a ) ));
				float4 appendResult13_g4011 = (float4(lerpResult4_g4011 , temp_output_1_0_g4011.a));
				#ifdef _ENABLEALPHATINT_ON
				float4 staticSwitch11_g4007 = appendResult13_g4011;
				#else
				float4 staticSwitch11_g4007 = staticSwitch5_g4007;
				#endif
				float4 temp_output_1_0_g4012 = staticSwitch11_g4007;
				float4 break2_g4013 = temp_output_1_0_g4012;
				float temp_output_9_0_g4014 = max( _StrongTintContrast , 0.0 );
				float saferPower7_g4014 = max( ( ( ( break2_g4013.x + break2_g4013.y + break2_g4013.z ) / 3.0 ) + ( 0.1 * max( ( 1.0 - temp_output_9_0_g4014 ) , 0.0 ) ) ) , 0.0001 );
				float3 lerpResult7_g4012 = lerp( (temp_output_1_0_g4012).rgb , ( pow( saferPower7_g4014 , temp_output_9_0_g4014 ) * (_StrongTintTint).rgb ) , _StrongTintFade);
				float4 appendResult9_g4012 = (float4(lerpResult7_g4012 , (temp_output_1_0_g4012).a));
				#ifdef _ENABLESTRONGTINT_ON
				float4 staticSwitch7_g4007 = appendResult9_g4012;
				#else
				float4 staticSwitch7_g4007 = staticSwitch11_g4007;
				#endif
				float4 _White = float4(1,1,1,1);
				#ifdef _ENABLECUSTOMFADE_ON
				float4 staticSwitch8_g3902 = _White;
				#else
				float4 staticSwitch8_g3902 = IN.color;
				#endif
				#ifdef _ENABLESMOKE_ON
				float4 staticSwitch9_g3902 = _White;
				#else
				float4 staticSwitch9_g3902 = staticSwitch8_g3902;
				#endif
				float4 customVertexTint193 = staticSwitch9_g3902;
				float4 temp_output_119_0 = ( staticSwitch7_g4007 * customVertexTint193 );
				float4 lerpResult125 = lerp( ( originalColor191 * IN.color ) , temp_output_119_0 , fullFade123);
				#if defined(_UBERFADING_NONE)
				float4 staticSwitch143 = temp_output_119_0;
				#elif defined(_UBERFADING_FULL)
				float4 staticSwitch143 = lerpResult125;
				#elif defined(_UBERFADING_MASK)
				float4 staticSwitch143 = lerpResult125;
				#elif defined(_UBERFADING_DISSOLVE)
				float4 staticSwitch143 = lerpResult125;
				#elif defined(_UBERFADING_SPREAD)
				float4 staticSwitch143 = lerpResult125;
				#else
				float4 staticSwitch143 = temp_output_119_0;
				#endif
				
				float4 Color = staticSwitch143;

				#if ETC1_EXTERNAL_ALPHA
					float4 alpha = SAMPLE_TEXTURE2D( _AlphaTex, sampler_AlphaTex, IN.texCoord0.xy );
					Color.a = lerp( Color.a, alpha.r, _EnableAlphaTexture );
				#endif

				Color *= IN.color;

				return Color;
			}

			ENDHLSL
		}
		
	}
	CustomEditor "SpriteShadersUltimate.UberShaderGUI"
	
	
}
/*ASEBEGIN
Version=18900
199;334;1413;606;-4298.3;-1229.907;1.332036;True;False
Node;AmplifyShaderEditor.TexturePropertyNode;263;2199.457,1082.016;Inherit;True;Property;_MainTex;MainTex;0;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RelayNode;105;2480.531,1162.85;Inherit;False;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.TexturePropertyNode;101;2238.417,1562.63;Inherit;True;Property;_UberNoiseTexture;Uber Noise Texture;26;0;Create;True;0;0;0;False;0;False;6b7b4a61603088549ac748de5e4e6d8c;6b7b4a61603088549ac748de5e4e6d8c;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TextureCoordinatesNode;39;-971.0388,-3307.638;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RelayNode;99;2560.903,1662.005;Inherit;False;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.FunctionNode;234;2688.881,1400.934;Inherit;False;ShaderSpace;5;;3767;be729ef05db9c224caec82a3516038dc;0;1;3;SAMPLER2D;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;252;-619.6618,-3290.079;Inherit;False;_UberInteractive;408;;3862;f8a4d7008519ad249b29e4a9381f963f;0;1;3;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;159;2700.32,1813.519;Inherit;False;uberNoiseTexture;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;235;2963.426,1431.844;Inherit;False;shaderPosition;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;253;-334.9839,-3014.146;Inherit;False;235;shaderPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RelayNode;84;-261.5299,-3244.649;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;184;-340.3444,-2931.6;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.FunctionNode;79;-47.4363,-2946.944;Inherit;False;_FullDistortion;354;;3864;62960fe27c1c398408207bb462ffd10e;0;3;195;FLOAT2;0,0;False;160;FLOAT2;0,0;False;194;SAMPLER2D;;False;2;FLOAT2;174;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;238;2716.61,1541.034;Inherit;False;ShaderTime;11;;3867;06a15e67904f217499045f361bad56e7;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;254;496.0161,-2937.146;Inherit;False;235;shaderPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;83;355.5295,-3077.305;Inherit;False;Property;_EnableShine;Enable Shine;353;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;77;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;188;476.926,-2831.78;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;237;2948.598,1594.428;Inherit;False;shaderTime;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;81;747.3577,-2918.135;Inherit;False;_DirectionalDistortion;342;;3868;30e6ac39427ee11419083602d572972f;0;3;182;FLOAT2;0,0;False;160;FLOAT2;0,0;False;181;SAMPLER2D;;False;2;FLOAT2;174;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;160;658.3505,-580.0461;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;243;665.8691,-664.6964;Inherit;False;235;shaderPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;53;1165.579,-2580.498;Inherit;False;Property;_HologramFade;Hologram: Fade;144;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;82;1064.56,-3052.917;Inherit;False;Property;_EnableShine;Enable Shine;341;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;75;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;157;2690.515,1201.198;Inherit;False;spriteTexture;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;244;685.5539,-740.5018;Inherit;False;237;shaderTime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;173;1547.656,-2458.612;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;182;1537.252,-2554.561;Inherit;False;hologramFade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;102;919.0109,-667.4209;Inherit;False;_GlitchPre;159;;3871;b8ad29d751d87bd4d9cbf14898be6163;0;3;19;FLOAT;0;False;18;FLOAT2;0,0;False;16;SAMPLER2D;;False;2;FLOAT;15;FLOAT2;0
Node;AmplifyShaderEditor.RelayNode;38;1602.103,-2721.81;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;255;1530.016,-2640.146;Inherit;False;237;shaderTime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;174;1562.277,-2362.367;Inherit;False;157;spriteTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;122;3995.099,1279.389;Inherit;False;Property;_FullFade;Full Fade;19;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;52;1839.482,-2552.931;Inherit;False;_HologramUV;152;;3873;7c71b1b031ffcbe48805e17b94671163;0;5;77;FLOAT;0;False;55;FLOAT;0;False;76;SAMPLER2D;;False;37;FLOAT2;0,0;False;39;SAMPLER2D;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;152;1246.533,-755.1426;Inherit;False;glitchFade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;204;4801.255,1506.884;Inherit;True;Property;_UberMask;Uber Mask;25;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;154;1243.538,-600.6849;Inherit;False;glitchPosition;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;220;4534.571,1760.224;Inherit;False;235;shaderPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;228;4626.359,2471.966;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;230;4630.415,2681.855;Inherit;False;Property;_UberNoiseFactor;Uber Noise Factor;22;0;Create;True;0;0;0;False;0;False;0.2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;208;4399.42,1920.6;Inherit;False;Property;_UberNoiseScale;Uber Noise Scale;23;0;Create;True;0;0;0;False;0;False;0.2,0.2;0.2,0.2;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;229;4660.594,2553.942;Inherit;False;Property;_UberPosition;Uber Position;21;0;Create;True;0;0;0;False;0;False;0,0;0.2,0.2;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;219;4515.66,1836.189;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;210;4437.198,2123.655;Inherit;False;Property;_UberWidth;Uber Width;24;0;Create;True;0;0;0;False;0;False;0.3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;256;2394.016,-2741.146;Inherit;False;237;shaderTime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;153;2413.1,-2367.982;Inherit;False;152;glitchFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;203;5091.561,1459.408;Inherit;False;ShaderMasker;-1;;3887;3d25b55dbfdd24f48b9bd371bdde0e97;0;2;1;FLOAT;0;False;2;SAMPLER2D;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;59;2242.011,-2636.393;Inherit;False;Property;_EnableShine;Enable Shine;143;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;56;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;175;2375.652,-2434.015;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.FunctionNode;223;4905.316,1828.167;Inherit;False;_UberDissolveFade;-1;;3883;cb957eb9b67f4f243aa8ba0547208263;0;5;21;FLOAT2;0,0;False;1;FLOAT;0;False;16;SAMPLER2D;0;False;18;FLOAT2;0,0;False;20;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;155;2400.558,-2511.178;Inherit;False;154;glitchPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;231;4899.456,2440.854;Inherit;False;_UberSpreadFade;-1;;3885;777ca8ab10170fb48b24b7cd1c44f075;0;7;27;FLOAT2;0,0;False;22;FLOAT;0;False;18;SAMPLER2D;0;False;25;FLOAT2;0,0;False;23;FLOAT2;0,0;False;21;FLOAT;0;False;26;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;139;5964.391,1365.661;Inherit;False;Property;_UberFading;Uber Fading;18;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;5;None;Full;Mask;Dissolve;Spread;Create;True;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;103;2715.721,-2556.586;Inherit;False;_GlitchUV;171;;3888;2addb21417fb5d745a5abfe02cbcd453;0;5;23;FLOAT;0;False;13;FLOAT2;0,0;False;22;SAMPLER2D;;False;3;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;259;2999.016,-2403.146;Inherit;False;237;shaderTime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;62;3040.934,-2600.272;Inherit;False;Property;_EnableShine;Enable Shine;158;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;57;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;176;2993.115,-2238.526;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;123;6281.453,1414.289;Inherit;False;fullFade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;177;3015.115,-2149.526;Inherit;False;157;spriteTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;258;2972.016,-2323.146;Inherit;False;235;shaderPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;131;3266.866,-2134.612;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;257;3382.41,-2373.518;Inherit;False;_UberTransformUV;359;;3890;894b1de51a5f4c74cbe7828262f1344b;0;5;25;FLOAT;0;False;26;FLOAT2;0,0;False;1;FLOAT2;0,0;False;18;SAMPLER2D;0;False;3;SAMPLER2D;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;129;3305.944,-1988.403;Inherit;False;123;fullFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;130;3651.881,-2106.533;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;145;3940.446,-2146.193;Inherit;False;Property;_UberFading3;Uber Fading;18;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;NONE;Key1;Key2;Key3;Reference;139;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;146;4217.147,-2146.537;Inherit;False;finalUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;189;-1706.517,-339.1114;Inherit;False;157;spriteTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;147;-1686.19,-246.6837;Inherit;False;146;finalUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;31;-1425.302,-263.1718;Inherit;True;Property;_TextureSample1;Texture Sample 1;0;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;191;-1018.041,-121.917;Inherit;False;originalColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;179;-1036.103,27.02582;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;149;-977.8615,164.14;Inherit;False;146;finalUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;180;-687.1025,-126.9742;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.FunctionNode;120;-737.796,35.8288;Inherit;False;_UberCustomAlpha;440;;3902;d68af6e3188f53845b23cf6e39df15fe;0;3;1;COLOR;0,0,0,0;False;6;SAMPLER2D;0;False;7;FLOAT2;0,0;False;2;COLOR;12;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;240;-683.451,-246.0232;Inherit;False;237;shaderTime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;148;-614.0953,-401.0159;Inherit;False;146;finalUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;178;-455.0759,-519.7366;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;242;-432.6598,-617.0601;Inherit;False;235;shaderPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;239;-404.7228,-125.1053;Inherit;False;_UberGenerated;425;;3907;52defa3f7cca25740a6a77f065edb382;0;4;10;FLOAT;0;False;8;SAMPLER2D;0;False;7;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;181;-423.344,-436.9742;Inherit;False;157;spriteTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.FunctionNode;241;-136.8644,-329.1863;Inherit;False;_UberColor;44;;3911;db48f560e502b78409f7fbe481a93597;0;6;39;FLOAT;0;False;40;FLOAT2;0,0;False;1;FLOAT2;0,0;False;24;SAMPLER2D;0;False;3;COLOR;0,0,0,0;False;5;SAMPLER2D;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;183;-37.83691,-91.99512;Inherit;False;182;hologramFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;51;183.7499,-168.0946;Inherit;False;_Hologram;145;;3946;76082a965d84d0e4da33b2cff51b3691;0;3;42;FLOAT;0;False;40;FLOAT;0;False;1;COLOR;1,1,1,1;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;56;468.7914,-438.8677;Inherit;False;Property;_EnableHologram;Enable Hologram;143;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;161;687.0067,-317.0453;Inherit;False;154;glitchPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;163;668.7452,-235.3598;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;162;704.0067,-153.0455;Inherit;False;152;glitchFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;104;973.7388,-316.5438;Inherit;False;_Glitch;165;;3949;97a01281f94bcc04fbb9a7c1cd328f08;0;5;34;FLOAT;0;False;31;FLOAT2;0,0;False;33;SAMPLER2D;;False;29;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;246;1400.383,-493.8317;Inherit;False;235;shaderPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;247;1456.499,-578.4069;Inherit;False;237;shaderTime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;171;1364.183,-273.4383;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.StaticSwitch;57;1278.486,-397.6114;Inherit;False;Property;_EnableGlitch;Enable Glitch;158;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;164;250.219,-2894.672;Inherit;False;fullDistortionAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;166;1853.428,-195.4143;Inherit;False;164;fullDistortionAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;245;1656.25,-345.9998;Inherit;False;_UberEffect;176;;3953;93c7a07f758a0814998210619e8ad1cb;0;4;40;FLOAT;0;False;41;FLOAT2;0,0;False;3;COLOR;0,0,0,0;False;37;SAMPLER2D;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;78;2104.106,-267.8359;Inherit;False;AlphaMult;-1;;3989;d24974f7959982d48aab81e9e7692f35;0;2;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;167;1037.158,-2834.03;Inherit;False;directionalDistortionAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;77;2492.977,-348.4961;Inherit;False;Property;_EnableFullDistortion;Enable Full Distortion;353;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;168;2616.17,-223.2014;Inherit;False;167;directionalDistortionAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;76;3014.405,-219.2272;Inherit;False;AlphaMult;-1;;3990;d24974f7959982d48aab81e9e7692f35;0;2;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;75;3434.708,-336.5002;Inherit;False;Property;_EnableDirectionalDistortion;Enable Directional Distortion;341;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;249;3627.646,-39.2937;Inherit;False;235;shaderPosition;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;169;3611.012,-138.045;Inherit;False;159;uberNoiseTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.Vector2Node;200;3977.696,393.365;Inherit;False;Constant;_ZeroVector;Zero Vector;67;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RegisterLocalVarNode;193;-411.9434,35.53397;Inherit;False;customVertexTint;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;248;3912.165,-179.9706;Inherit;False;_UberFading;282;;3991;f8f5d1f402d6b694f9c47ef65b4ae91d;0;3;18;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;17;SAMPLER2D;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;199;4171.966,521.7499;Inherit;False;_Squish;420;;4006;6d6a73cc3433bad4186f7028cad3d98c;0;2;82;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;196;4303.012,43.12549;Inherit;False;193;customVertexTint;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;251;4509.569,562.3449;Inherit;False;237;shaderTime;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;198;4453.426,400.9801;Inherit;False;Property;_EnableSquish2;Enable Squish;419;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;194;4293.035,208.2643;Inherit;False;191;originalColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;117;4244.284,-85.79267;Inherit;False;_UberColorFinal;27;;4007;6ac57aba23ea6404ba71b6806ea93971;0;1;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;119;4577.931,-14.12397;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;195;4547.692,143.2021;Inherit;False;TintVertex;-1;;4017;b0b94dd27c0f3da49a89feecae766dcc;0;1;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;124;4632.658,265.2516;Inherit;False;123;fullFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;250;4759.72,401.6135;Inherit;False;_UberTransformOffset;396;;4018;ee5e9e731457b2342bdb306bdb8d2401;0;2;8;FLOAT;0;False;2;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;141;4826.724,532.0556;Inherit;False;123;fullFade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;125;4875.083,111.5242;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;121;5091.355,506.223;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;265;5156.908,232.3543;Inherit;False;146;finalUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;143;5130.159,-25.7429;Inherit;False;Property;_UberFading2;Uber Fading;18;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;NONE;Key1;Key2;Key3;Reference;139;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;142;5340.715,333.2288;Inherit;False;Property;_UberFading1;Uber Fading;18;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;NONE;Key1;Key2;Key3;Reference;139;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;187;489.4036,-2756.916;Inherit;False;157;spriteTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.IntNode;216;4434.354,2047.371;Inherit;False;Property;_UberSpace;Uber Space;20;0;Create;True;0;0;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;264;5357.908,224.6688;Inherit;False;LitHandler;1;;4021;851662d67a92ce04d84817ff63c501f2;0;1;8;FLOAT2;0,0;False;2;COLOR;0;FLOAT3;5
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;262;5639.575,215.1301;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Forward;0;2;Sprite Forward;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;False;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=UniversalForward;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;261;5639.575,215.1301;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Normal;0;1;Sprite Normal;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;False;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=NormalsRendering;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;260;5639.575,215.1301;Float;False;True;-1;2;SpriteShadersUltimate.UberShaderGUI;0;12;Sprite Shaders Ultimate/Uber/URP Lit Uber;199187dac283dbe4a8cb1ea611d70c58;True;Sprite Lit;0;0;Sprite Lit;6;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;0;0;False;True;2;5;False;-1;10;False;-1;3;1;False;-1;10;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Universal2D;False;0;;0;0;Standard;1;Vertex Position;1;0;3;True;True;True;False;;False;0
WireConnection;105;0;263;0
WireConnection;99;0;101;0
WireConnection;234;3;105;0
WireConnection;252;3;39;0
WireConnection;159;0;99;0
WireConnection;235;0;234;0
WireConnection;84;0;252;0
WireConnection;79;195;253;0
WireConnection;79;160;84;0
WireConnection;79;194;184;0
WireConnection;83;1;84;0
WireConnection;83;0;79;174
WireConnection;237;0;238;0
WireConnection;81;182;254;0
WireConnection;81;160;83;0
WireConnection;81;181;188;0
WireConnection;82;1;83;0
WireConnection;82;0;81;174
WireConnection;157;0;105;0
WireConnection;182;0;53;0
WireConnection;102;19;244;0
WireConnection;102;18;243;0
WireConnection;102;16;160;0
WireConnection;38;0;82;0
WireConnection;52;77;255;0
WireConnection;52;55;182;0
WireConnection;52;76;173;0
WireConnection;52;37;38;0
WireConnection;52;39;174;0
WireConnection;152;0;102;15
WireConnection;154;0;102;0
WireConnection;203;1;122;0
WireConnection;203;2;204;0
WireConnection;59;1;38;0
WireConnection;59;0;52;0
WireConnection;223;21;220;0
WireConnection;223;1;122;0
WireConnection;223;16;219;0
WireConnection;223;18;208;0
WireConnection;223;20;210;0
WireConnection;231;27;220;0
WireConnection;231;22;122;0
WireConnection;231;18;228;0
WireConnection;231;25;208;0
WireConnection;231;23;229;0
WireConnection;231;21;210;0
WireConnection;231;26;230;0
WireConnection;139;1;122;0
WireConnection;139;0;122;0
WireConnection;139;2;203;0
WireConnection;139;3;223;0
WireConnection;139;4;231;0
WireConnection;103;23;256;0
WireConnection;103;13;155;0
WireConnection;103;22;175;0
WireConnection;103;3;153;0
WireConnection;103;1;59;0
WireConnection;62;1;59;0
WireConnection;62;0;103;0
WireConnection;123;0;139;0
WireConnection;257;25;259;0
WireConnection;257;26;258;0
WireConnection;257;1;62;0
WireConnection;257;18;176;0
WireConnection;257;3;177;0
WireConnection;130;0;131;0
WireConnection;130;1;257;0
WireConnection;130;2;129;0
WireConnection;145;1;257;0
WireConnection;145;0;130;0
WireConnection;145;2;130;0
WireConnection;145;3;130;0
WireConnection;145;4;130;0
WireConnection;146;0;145;0
WireConnection;31;0;189;0
WireConnection;31;1;147;0
WireConnection;191;0;31;0
WireConnection;120;1;191;0
WireConnection;120;6;179;0
WireConnection;120;7;149;0
WireConnection;239;10;240;0
WireConnection;239;8;180;0
WireConnection;239;7;148;0
WireConnection;239;1;120;0
WireConnection;241;39;240;0
WireConnection;241;40;242;0
WireConnection;241;1;148;0
WireConnection;241;24;178;0
WireConnection;241;3;239;0
WireConnection;241;5;181;0
WireConnection;51;42;240;0
WireConnection;51;40;183;0
WireConnection;51;1;241;0
WireConnection;56;1;241;0
WireConnection;56;0;51;0
WireConnection;104;34;244;0
WireConnection;104;31;161;0
WireConnection;104;33;163;0
WireConnection;104;29;162;0
WireConnection;104;1;56;0
WireConnection;57;1;56;0
WireConnection;57;0;104;0
WireConnection;164;0;79;0
WireConnection;245;40;247;0
WireConnection;245;41;246;0
WireConnection;245;3;57;0
WireConnection;245;37;171;0
WireConnection;78;1;245;0
WireConnection;78;2;166;0
WireConnection;167;0;81;0
WireConnection;77;1;245;0
WireConnection;77;0;78;0
WireConnection;76;1;77;0
WireConnection;76;2;168;0
WireConnection;75;1;77;0
WireConnection;75;0;76;0
WireConnection;193;0;120;12
WireConnection;248;18;249;0
WireConnection;248;1;75;0
WireConnection;248;17;169;0
WireConnection;199;82;200;0
WireConnection;198;1;200;0
WireConnection;198;0;199;0
WireConnection;117;3;248;0
WireConnection;119;0;117;0
WireConnection;119;1;196;0
WireConnection;195;1;194;0
WireConnection;250;8;251;0
WireConnection;250;2;198;0
WireConnection;125;0;195;0
WireConnection;125;1;119;0
WireConnection;125;2;124;0
WireConnection;121;1;250;0
WireConnection;121;2;141;0
WireConnection;143;1;119;0
WireConnection;143;0;125;0
WireConnection;143;2;125;0
WireConnection;143;3;125;0
WireConnection;143;4;125;0
WireConnection;142;1;250;0
WireConnection;142;0;121;0
WireConnection;142;2;121;0
WireConnection;142;3;121;0
WireConnection;142;4;121;0
WireConnection;264;8;265;0
WireConnection;260;1;143;0
WireConnection;260;2;264;0
WireConnection;260;3;264;5
WireConnection;260;4;142;0
ASEEND*/
//CHKSM=8A1B076755A8F64E2889E89830E26AB7DB4AFEBA