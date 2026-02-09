//Maya ASCII 2026 scene
//Name: mrt-sign.ma
//Last modified: Mon, Feb 09, 2026 09:57:51 PM
//Codeset: 1252
requires maya "2026";
requires "mtoa" "5.5.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2026";
fileInfo "version" "2026";
fileInfo "cutIdentifier" "202507081222-4d6919b75c";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26100)";
fileInfo "UUID" "E304EEFF-447D-E1DE-E28C-068726EC500B";
createNode transform -s -n "persp";
	rename -uid "D2B55157-4B78-1AF2-BF83-79A24F776774";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.6394494560659112 4.2744379185958339 0.22266389363976644 ;
	setAttr ".r" -type "double3" -33.938352729575755 -456.59999999996296 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D987529D-489E-61EF-52DE-60B9E416C9C3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.1091236461297651;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F7971E37-4690-951C-5B40-39992B4F0244";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7D3A4FEB-445F-912A-C7B8-A7BCDCACB171";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "187B97C0-48FA-6FC6-18D3-F08FD0A7FBC8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B91B79D7-403F-18F6-4B2C-C4A93021596F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E58FA076-47B1-AC8F-3107-2EB05556AEA9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "473B2A4A-45D0-515B-33CA-6482F2927992";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "6CCDCB24-4AB1-6D12-D190-82B55C369D95";
	setAttr ".t" -type "double3" -0.10051488876342751 -0.02733080089092256 1.2368225204263339 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 0.048256172407131155 0.23732721312671426 1.3673614432220851 ;
	setAttr ".rp" -type "double3" -0.024128113916940485 -0.0047452551200185527 -0.16743617836229885 ;
	setAttr ".rpt" -type "double3" 0.19156429227923782 0 0.14330806444535815 ;
	setAttr ".sp" -type "double3" -0.50000057429649303 -0.019994568079660956 -0.054427474388592335 ;
	setAttr ".spt" -type "double3" 0.47587246037956266 0.015249312959640828 -0.11300870397370773 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "C957582E-4351-CF8E-992F-70BD656B30FA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70991730392986063 0.3026459664106369 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	rename -uid "B1728E9F-4293-EF27-4641-49958778D364";
	setAttr ".s" -type "double3" 1.6499674079734534 1.2671709658101455 2.0677921691633379 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "AFCC6482-4D79-1114-C533-40B3A4F0BF65";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "949F386E-4E2F-4FAB-D601-3BA6CFE90315";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "582D8F0D-40A0-DBDF-4346-DCA5090306B7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D32EDCFD-4AA7-FD1D-5CC2-02A69F471F85";
createNode displayLayerManager -n "layerManager";
	rename -uid "43CC5A48-419D-6B0C-79B9-6ABD4A8F0DD6";
createNode displayLayer -n "defaultLayer";
	rename -uid "F378AF1B-4F70-41ED-F165-F8BE0C14B9C9";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F91800CD-46C8-1AA5-0356-B28C83C3D38E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7150B217-4D46-F193-E7AB-2EB97E60B3E9";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5B97A90C-41AA-E1A1-18F9-69A6166A907B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1658\n            -height 941\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1658\\n    -height 941\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1658\\n    -height 941\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "650B4AA3-40BC-689B-BD3C-F2BD96022D02";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube2";
	rename -uid "FE02995E-4091-425B-922E-088E21438266";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "07C232ED-4ACA-1C4B-B9D1-6BA6BF413150";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1.6499674079734534 0 0 0 0 1.2671709658101455 0 0 0 0 2.0677921691633379 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.32798007 0 ;
	setAttr ".rs" 37411;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1002177765954366 0.32798006217874226 -1.3788282676520274 ;
	setAttr ".cbx" -type "double3" 1.1002177765954366 0.32798006217874226 1.3788282676520274 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "7840501D-4F4C-2351-11DD-FF9FABBA3A57";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  -0.16681181 0.75882858 0.16681181
		 0.16681181 0.75882858 0.16681181 1.4156103e-07 0 -1.4156103e-07 -1.4156103e-07 0
		 -1.4156103e-07 1.4156103e-07 0 1.4156103e-07 -1.4156103e-07 0 1.4156103e-07 -0.16681181
		 0.75882858 -0.16681181 0.16681181 0.75882858 -0.16681181 0 -1.4901161e-08 0 0 -1.4901161e-08
		 0 0 -1.4901161e-08 0 0 -1.4901161e-08 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "57AA3683-4F3A-2BBC-C9DC-EF99926B4924";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1.6499674079734534 0 0 0 0 1.2671709658101455 0 0 0 0 2.0677921691633379 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.32798007 0 ;
	setAttr ".rs" 63841;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.96765364510283758 0.32798006217874226 -1.2126943922768538 ;
	setAttr ".cbx" -type "double3" 0.96765364510283758 0.32798006217874226 1.2126943922768538 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "B433738C-4759-EA5C-7EB6-48BB9B907AED";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.080343574 0 0.080343574
		 -0.080343574 0 0.080343574 -0.080343574 0 -0.080343574 0.080343574 0 -0.080343574;
createNode polySplit -n "polySplit2";
	rename -uid "53F94822-466F-FAA5-2CCE-EF8CBECA43FB";
	setAttr -s 9 ".e[0:8]"  0.142857 0.85714298 0.85714298 0.85714298
		 0.85714298 0.85714298 0.85714298 0.142857 0.142857;
	setAttr -s 9 ".d[0:8]"  -2147483642 -2147483638 -2147483629 -2147483621 -2147483624 -2147483632 
		-2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "22DA8374-45C6-C58B-B570-3E8BB413887B";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -0.78707731 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.78707731 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.78707731 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.78707731 0 ;
createNode polySplit -n "polySplit3";
	rename -uid "F6A88706-4F21-DCC7-7E7F-64A45CF2FE31";
	setAttr -s 9 ".e[0:8]"  0.166667 0.83333302 0.83333302 0.83333302
		 0.83333302 0.83333302 0.83333302 0.166667 0.166667;
	setAttr -s 9 ".d[0:8]"  -2147483620 -2147483638 -2147483629 -2147483621 -2147483624 -2147483632 
		-2147483637 -2147483613 -2147483620;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "14CD77FA-4D63-FB93-E4B5-B39686D0E7CA";
	setAttr -s 9 ".e[0:8]"  0.2 0.80000001 0.80000001 0.80000001 0.80000001
		 0.80000001 0.80000001 0.2 0.2;
	setAttr -s 9 ".d[0:8]"  -2147483604 -2147483638 -2147483629 -2147483621 -2147483624 -2147483632 
		-2147483637 -2147483597 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "559E73E4-4FB7-17AF-C4C0-FB9E4E02F922";
	setAttr -s 9 ".e[0:8]"  0.25 0.75 0.75 0.75 0.75 0.75 0.75 0.25 0.25;
	setAttr -s 9 ".d[0:8]"  -2147483588 -2147483638 -2147483629 -2147483621 -2147483624 -2147483632 
		-2147483637 -2147483581 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "1F3AA77B-4BDC-8298-8AA7-F9B2145ABEFC";
	setAttr -s 9 ".e[0:8]"  0.33333299 0.66666698 0.66666698 0.66666698
		 0.66666698 0.66666698 0.66666698 0.33333299 0.33333299;
	setAttr -s 9 ".d[0:8]"  -2147483572 -2147483638 -2147483629 -2147483621 -2147483624 -2147483632 
		-2147483637 -2147483565 -2147483572;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "76F26F98-4510-A882-661D-F2A139DE22FD";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483556 -2147483638 -2147483629 -2147483621 -2147483624 -2147483632 
		-2147483637 -2147483549 -2147483556;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "AE881FAB-4136-FE46-77D3-5A86646434C2";
	setAttr -s 21 ".e[0:20]"  0.142857 0.142857 0.85714298 0.85714298 0.85714298
		 0.85714298 0.85714298 0.85714298 0.142857 0.142857 0.142857 0.142857 0.142857 0.142857
		 0.142857 0.142857 0.142857 0.142857 0.142857 0.142857 0.142857;
	setAttr -s 21 ".d[0:20]"  -2147483648 -2147483647 -2147483605 -2147483589 -2147483573 -2147483557 
		-2147483541 -2147483525 -2147483646 -2147483645 -2147483634 -2147483626 -2147483529 -2147483545 -2147483561 -2147483577 -2147483593 -2147483609 
		-2147483622 -2147483630 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "3D0C8774-458D-FBA2-E93A-678269DC5E48";
	setAttr -s 21 ".e[0:20]"  0.166667 0.166667 0.83333302 0.83333302 0.83333302
		 0.83333302 0.83333302 0.83333302 0.166667 0.166667 0.166667 0.166667 0.166667 0.166667
		 0.166667 0.166667 0.166667 0.166667 0.166667 0.166667 0.166667;
	setAttr -s 21 ".d[0:20]"  -2147483524 -2147483523 -2147483605 -2147483589 -2147483573 -2147483557 
		-2147483541 -2147483525 -2147483516 -2147483515 -2147483514 -2147483513 -2147483512 -2147483511 -2147483510 -2147483509 -2147483508 -2147483507 
		-2147483506 -2147483505 -2147483524;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "767E3F2A-4934-5531-021C-5E8E21485757";
	setAttr -s 21 ".e[0:20]"  0.2 0.2 0.80000001 0.80000001 0.80000001
		 0.80000001 0.80000001 0.80000001 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2
		 0.2;
	setAttr -s 21 ".d[0:20]"  -2147483484 -2147483483 -2147483605 -2147483589 -2147483573 -2147483557 
		-2147483541 -2147483525 -2147483476 -2147483475 -2147483474 -2147483473 -2147483472 -2147483471 -2147483470 -2147483469 -2147483468 -2147483467 
		-2147483466 -2147483465 -2147483484;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "6849FCE1-411E-0234-2B58-6B938C8734AD";
	setAttr -s 21 ".e[0:20]"  0.25 0.25 0.75 0.75 0.75 0.75 0.75 0.75 0.25
		 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25;
	setAttr -s 21 ".d[0:20]"  -2147483444 -2147483443 -2147483605 -2147483589 -2147483573 -2147483557 
		-2147483541 -2147483525 -2147483436 -2147483435 -2147483434 -2147483433 -2147483432 -2147483431 -2147483430 -2147483429 -2147483428 -2147483427 
		-2147483426 -2147483425 -2147483444;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "8DE96D41-4DB0-4E67-9468-70AD84F9551F";
	setAttr -s 21 ".e[0:20]"  0.33333299 0.33333299 0.66666698 0.66666698
		 0.66666698 0.66666698 0.66666698 0.66666698 0.33333299 0.33333299 0.33333299 0.33333299
		 0.33333299 0.33333299 0.33333299 0.33333299 0.33333299 0.33333299 0.33333299 0.33333299
		 0.33333299;
	setAttr -s 21 ".d[0:20]"  -2147483404 -2147483403 -2147483605 -2147483589 -2147483573 -2147483557 
		-2147483541 -2147483525 -2147483396 -2147483395 -2147483394 -2147483393 -2147483392 -2147483391 -2147483390 -2147483389 -2147483388 -2147483387 
		-2147483386 -2147483385 -2147483404;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "52A209A5-4EB5-3606-C253-4292B19FB438";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483364 -2147483363 -2147483605 -2147483589 -2147483573 -2147483557 
		-2147483541 -2147483525 -2147483356 -2147483355 -2147483354 -2147483353 -2147483352 -2147483351 -2147483350 -2147483349 -2147483348 -2147483347 
		-2147483346 -2147483345 -2147483364;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "A1E20156-445C-B2A6-FDCD-8EB5B58E94F9";
	setAttr -s 29 ".e[0:28]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 29 ".d[0:28]"  -2147483628 -2147483530 -2147483546 -2147483562 -2147483578 -2147483594 
		-2147483610 -2147483623 -2147483486 -2147483446 -2147483406 -2147483366 -2147483326 -2147483286 -2147483625 -2147483608 -2147483592 -2147483576 
		-2147483560 -2147483544 -2147483528 -2147483627 -2147483294 -2147483334 -2147483374 -2147483414 -2147483454 -2147483494 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "6ADA419F-4A86-9206-D015-EEAD98C45E3D";
	setAttr ".ics" -type "componentList" 1 "f[191:193]";
	setAttr ".ix" -type "matrix" 1.6499674079734534 0 0 0 0 1.2671709658101455 0 0 0 0 2.0677921691633379 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.8345723e-08 -0.42004108 1.2126944 ;
	setAttr ".rs" 58083;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.41470836785874327 -0.66938144998812343 1.2126943922768538 ;
	setAttr ".cbx" -type "double3" 0.41470856455018573 -0.17070069390469059 1.2126943922768538 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "C57BC1FB-4646-B958-BC98-05B1DD991278";
	setAttr ".ics" -type "componentList" 1 "f[191:193]";
	setAttr ".ix" -type "matrix" 1.6499674079734534 0 0 0 0 1.2671709658101455 0 0 0 0 2.0677921691633379 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.8345723e-08 -0.42004108 1.2718633 ;
	setAttr ".rs" 44880;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.41470841703160388 -0.66938144998812343 1.271863398030058 ;
	setAttr ".cbx" -type "double3" 0.41470861372304635 -0.17070069390469059 1.271863398030058 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "983AAEF2-49BF-49E1-D15C-BDA6D96C18C8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[212:219]" -type "float3"  0 0 0.028614564 0 0 0.028614564
		 0 0 0.028614564 0 0 0.028614564 0 0 0.028614564 0 0 0.028614564 0 0 0.028614564 0
		 0 0.028614564;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "999F7A3E-4A8A-8A1F-4CA4-119B0B4C7199";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 0.20333181252739907 0 0 0 0 1 0 0 0 0 4.9776556845275186 0
		 0 0.38126988250731086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.1016659 0.38126987 -0.39900774 ;
	setAttr ".rs" 44493;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.1016659002039393 -0.11873011749268914 -2.4888278422637593 ;
	setAttr ".cbx" -type "double3" 0.1016659002039393 0.88126988250731086 1.6908123879513886 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "FF510202-4FA6-DDBA-25D1-0EAECD98A161";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0.14505199 0.021827875 ;
	setAttr ".tk[13]" -type "float3" 0 0.14505199 -0.021827875 ;
	setAttr ".tk[14]" -type "float3" 0 -0.14505199 0.021827875 ;
	setAttr ".tk[15]" -type "float3" 0 -0.14505199 -0.021827875 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "C5174C43-4E3B-2FCF-8526-E3B7929BEF8D";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.20333181252739907 0 0 0 0 1 0 0 0 0 4.9776556845275186 0
		 0 0.38126988250731086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.10166591 0.38126987 2.0898201 ;
	setAttr ".rs" 59158;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.10166590626369953 -0.11873011749268914 1.6908123879513886 ;
	setAttr ".cbx" -type "double3" 0.10166590626369953 0.88126988250731086 2.4888278422637593 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "7678C32C-438B-98D5-7435-08B648C0500F";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 0.33968046 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.33968046 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.33968046 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.33968046 ;
createNode polySplit -n "polySplit1";
	rename -uid "F2B1B9F6-4AA8-2705-56D0-7B871B75C6B7";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483638 -2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube1";
	rename -uid "9E7B0EA5-48B3-F7D8-B9E2-A3BA4ABB45C6";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit15";
	rename -uid "9B894F8F-4561-F1EC-5845-5FA25244EC5D";
	setAttr -s 29 ".e[0:28]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 29 ".d[0:28]"  -2147483628 -2147483530 -2147483546 -2147483562 -2147483578 -2147483594 
		-2147483610 -2147483623 -2147483278 -2147483277 -2147483276 -2147483275 -2147483274 -2147483273 -2147483625 -2147483271 -2147483270 -2147483269 
		-2147483268 -2147483267 -2147483266 -2147483627 -2147483296 -2147483336 -2147483375 -2147483414 -2147483454 -2147483494 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "A4117C1D-4A66-DFD1-634E-DAA8FE07B3F2";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[220]" -type "float3" 0.0039735911 0.012658672 0 ;
	setAttr ".tk[221]" -type "float3" 0.0039735911 -0.012658673 0 ;
	setAttr ".tk[222]" -type "float3" 0.011920786 -0.012658673 0 ;
	setAttr ".tk[223]" -type "float3" 0.011920786 0.012658672 0 ;
	setAttr ".tk[224]" -type "float3" -0.0039736023 0.012658672 0 ;
	setAttr ".tk[225]" -type "float3" -0.0039736023 -0.012658673 0 ;
	setAttr ".tk[226]" -type "float3" -0.011920786 0.012658672 0 ;
	setAttr ".tk[227]" -type "float3" -0.011920786 -0.012658673 0 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "829443D1-43F4-650F-829A-839596D13E14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0 0 0.048256172407131155 0 0 0.23732721312671426 0 0
		 -1.3673614432220851 0 0 0 -0.007500740332047659 -0.027330800890924396 1.2368225204263195 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.0075007081031799316 -0.027330800890922546 1.2368226051330566 ;
	setAttr ".ro" -type "double3" -5.1383529128786183 -13.799999931089799 5.7122088278469763e-09 ;
	setAttr ".ps" -type "double2" 1.3394022811571924 0.26978194186817539 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.8883166313171387 0.073191173374652863 0.23757962882518768 0.23757487535476685
		 -8.6316495443255451e-18 3.4122562408447266 -0.089562796056270599 -0.089561007916927338
		 0.46381506323814392 -0.29798108339309692 -0.96725094318389893 -0.9672316312789917
		 -0.41093575954437256 1.0290169715881348 8.8079118728637695 9.0077333450317383;
	setAttr ".prgt" 1658;
	setAttr ".ptop" 941;
createNode polyTweak -n "polyTweak8";
	rename -uid "81BA0A1F-4C5E-72D2-2904-18B2F89E9D6D";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0.13079327 -0.034053057 ;
	setAttr ".tk[17]" -type "float3" 0 -0.13079327 -0.034053057 ;
	setAttr ".tk[18]" -type "float3" 0 0.13079327 0.034053057 ;
	setAttr ".tk[19]" -type "float3" 0 -0.13079327 0.034053057 ;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "701C0858-40FF-C819-29D1-CB82A63C6356";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[22]" "e[24]" "e[26:27]" "e[30]" "e[32]" "e[34:35]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "4041891F-423B-1D80-EE2B-C48CB87F16D2";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[12]" -type "float2" 0.89376384 0 ;
	setAttr ".uvtk[16]" -type "float2" 0.89376384 0 ;
	setAttr ".uvtk[21]" -type "float2" 0.8937639 0 ;
	setAttr ".uvtk[22]" -type "float2" 0.8937639 0 ;
	setAttr ".uvtk[23]" -type "float2" 0.89376384 0 ;
	setAttr ".uvtk[25]" -type "float2" 0.89376384 0 ;
	setAttr ".uvtk[26]" -type "float2" 0.8937639 0 ;
	setAttr ".uvtk[27]" -type "float2" 0.89376384 0 ;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "50FD9ECE-4B9A-A693-7513-78B2ECD2471A";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:3]" "f[5:7]" "f[9:17]";
	setAttr ".ix" -type "matrix" 0 0 0.048256172407131155 0 0 0.23732721312671426 0 0
		 -1.3673614432220851 0 0 0 -0.007500740332047659 -0.027330800890924396 1.2368225204263195 1;
	setAttr ".s" -type "double3" 1.3673614839726316 1.3673614839726316 1.3673614839726316 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "D33BFB20-48D8-E302-48FC-61B20E7B5715";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[0:47]" -type "float2" 0.24690586 -0.011030644 0.884691
		 0.011206359 -0.84545064 0.00042751431 -0.84443259 0.28985754 0.88418978 0.30479917
		 0.093040049 -0.1395148 -0.026993275 0.0052505285 0.12711251 0.13310385 0.14066982
		 -0.91767913 -0.26292336 -0.58819908 -0.31574547 -0.65290296 0.08784771 -0.98238301
		 0.013734503 -0.24930987 0.41732767 -0.57878995 0.094700545 0.31584698 0.041878376
		 0.16053736 0.073459595 0.1338914 0.11189795 0.2469095 0.21002024 -0.16894263 0.19282284
		 -0.10000527 0.26284242 -0.013633072 0.23126122 0.013012826 0.052650515 0.084454715
		 0.17680869 -0.15883774 -0.23477945 -0.6529029 -0.20156783 -0.66300786 -0.066637576
		 -0.98238301 -0.077409565 -0.90630037 0.46220708 0.39164871 -0.049262464 0.39164871
		 -0.049262464 0.30965006 0.46220708 0.30965006 -0.049262464 -0.11982083 0.46220708
		 -0.11982083 0.5155983 -0.56711638 0.0041286349 -0.56711638 0.0041286349 -0.64911497
		 0.5155983 -0.64911497 0.5155983 -0.13764547 0.0041286349 -0.13764547 0.88649625 0.013632962
		 0.55701625 0.089452043 0.48119712 -0.24002793 0.81067711 -0.31584701 0.28618842 -0.24381593
		 -0.04329145 -0.319635 0.032527626 -0.64911503 0.3620075 -0.57329595;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "A825B1E2-4051-B93B-08AC-FF981AACED43";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:253]";
	setAttr ".ix" -type "matrix" 1.6499674079734534 0 0 0 0 1.2671709658101455 0 0 0 0 2.0677921691633379 0
		 0 0 0 1;
	setAttr ".s" -type "double3" 2.7576565353040547 2.7576565353040547 2.7576565353040547 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "43E69843-4A39-97DF-D67C-F1B745E1D0F2";
	setAttr ".uopa" yes;
	setAttr -s 29 ".tk";
	setAttr ".tk[228]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[229]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[230]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[231]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[232]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[233]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[234]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[235]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[236]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[237]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[238]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[239]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[240]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[241]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[242]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[243]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[244]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[245]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[246]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[247]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[248]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[249]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[250]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[251]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[252]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[253]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[254]" -type "float3" 0 -0.17727213 0 ;
	setAttr ".tk[255]" -type "float3" 0 -0.17727213 0 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "D5BBCA9C-4DEB-2F5E-6621-3CB11DFA6DD4";
	setAttr ".uopa" yes;
	setAttr -s 374 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.52995485 -0.16060174 0.48270452 -0.11558801
		 0.38222265 -0.22106251 0.42947298 -0.26607624 0.53519249 -0.1551038 0.48794219 -0.11009008
		 0.43545425 -0.070574343 0.33497238 -0.17604885 0.59366167 0.00088226795 0.64091206
		 -0.044131458 0.44069192 -0.065076411 0.38820392 -0.025560617 0.28772205 -0.13103512
		 0.5464114 0.045895934 0.39344159 -0.020062685 0.34095371 0.019453019 0.24047184 -0.086021483
		 0.49916109 0.09090966 0.34619138 0.024950951 0.29370356 0.064466625 0.19322169 -0.041007876
		 0.45191088 0.1359233 0.29894122 0.069964558 0.24645323 0.10948035 0.14597136 0.0040058494
		 0.40466073 0.1809369 0.25169089 0.11497828 0.098721027 0.049019575 0.1992029 0.15449408
		 0.3574104 0.22595063 0.20444056 0.15999201 0.31016007 0.27096435 -0.14375696 -0.13492256
		 -0.14375696 -0.13268596 -0.14874958 -0.13268596 -0.14874958 -0.13492256 -0.14874958
		 -0.13044935 -0.14375696 -0.13044935 -0.14900982 -0.13268596 -0.14900982 -0.13492256
		 -0.14900982 -0.13044935 -0.14874958 -0.12821275 -0.14375696 -0.12821275 -0.15426269
		 -0.13268596 -0.15426269 -0.13492256 -0.15426269 -0.13044935 -0.14900982 -0.12821275
		 -0.14874958 -0.1259762 -0.14375696 -0.1259762 -0.15426269 -0.12821275 -0.14900982
		 -0.1259762 -0.14874958 -0.1237396 -0.14375696 -0.1237396 -0.15426269 -0.1259762 -0.14900982
		 -0.1237396 -0.14874958 -0.121503 -0.14375696 -0.121503 -0.15426269 -0.1237396 -0.14900982
		 -0.121503 -0.14874958 -0.11926645 -0.14375696 -0.11926645 -0.15426269 -0.121503 -0.14900982
		 -0.11926645 -0.15426269 -0.11926645 0.38106644 -0.66203427 0.38106644 -0.66728711
		 0.38144839 -0.66728711 0.38144839 -0.66203427 0.39669824 -0.66728711 0.39669824 -0.66203386
		 0.39631623 -0.66203386 0.39631623 -0.66728711 0.37706494 0.10832131 0.32709494 0.14669824
		 0.28871813 0.096728384 0.33868814 0.058351457 0.48022619 0.12185836 0.41358507 0.17303869
		 0.27712485 0.18507522 0.23874804 0.13510537 0.25034115 0.046758264 0.30031115 0.0083813369
		 0.42904592 0.055217355 0.34694383 0.22421911 0.22715485 0.22345214 0.18877816 0.17348219
		 0.20037106 0.085135251 0.21196432 -0.0032115877 0.26193434 -0.041588515 0.3778654
		 -0.011424005 0.28030255 0.27539957 0.17718491 0.26182902 0.13880822 0.21185908 0.15040106
		 0.12351216 0.16199423 0.035165399 0.17358741 -0.053181574 0.22355741 -0.091558501
		 0.32668507 -0.078065127 0.21366143 0.32657987 0.12721515 0.30020577 0.088838339 0.25023592
		 0.10043111 0.16188905 0.11202423 0.073542312 0.12361732 -0.014804587 0.13521059 -0.10315146
		 0.18518059 -0.14152838 0.27550483 -0.14470617 0.1470204 0.37776011 0.077245168 0.33858266
		 0.038868353 0.28861281 0.050461344 0.20026578 0.062054291 0.11191919 0.07364732 0.023572326
		 0.085240498 -0.064774469 0.096833676 -0.15312144 0.14680368 -0.19149837 0.22432449
		 -0.2113473 0.080379151 0.42894053 0.027275071 0.37695965 -0.011101745 0.3269898 0.00049135834
		 0.23864269 0.012084529 0.15029593 0.023677379 0.061949208 0.035270616 -0.026397645
		 0.046863586 -0.11474446 0.058456779 -0.20309141 0.10842678 -0.24146834 0.17314416
		 -0.27798843 0.013738022 0.48012087 -0.037442226 0.41347986 -0.04947874 0.27701968
		 -0.037885457 0.18867284 -0.026292384 0.10032594 -0.014699325 0.011979237 -0.0031062961
		 -0.076367639 0.0084866881 -0.16471443 0.055322707 -0.29344922 0.12196383 -0.34462956
		 -0.088622741 0.3468385 -0.087855555 0.22704983 -0.07626237 0.13870285 -0.064669207
		 0.05035606 -0.053076237 -0.037990756 -0.041483313 -0.12633753 -0.011318535 -0.2422688
		 -0.13980307 0.28019738 -0.12623248 0.17707986 -0.11463919 0.088732973 -0.10304612
		 0.00038606673 -0.091453254 -0.087960638 -0.077959806 -0.19108836 -0.19098333 0.21355635
		 -0.16460928 0.12710997 -0.15301611 0.038762979 -0.14142302 -0.049583904 -0.14460091
		 -0.13990805 -0.24216366 0.14691523 -0.20298621 0.077139974 -0.191393 -0.011206992
		 -0.21124195 -0.088727795 -0.29334399 0.080274098 -0.24136311 0.027170002 -0.2778832
		 -0.037547365 -0.34452432 0.013632968 0.19915915 -0.24107474 0.15414548 -0.29499155
		 0.20806229 -0.34000522 0.25307596 -0.28608841 0.14524227 -0.19606102 0.10022861 -0.24997783
		 0.10913169 -0.34890851 0.16304851 -0.39392218 0.091325462 -0.15104735 0.046311796
		 -0.20496416 0.055214822 -0.30389479 0.064118087 -0.40282524 0.1180349 -0.4478389
		 0.03740865 -0.10603368 -0.0076050162 -0.15995049 0.0012980103 -0.25888112 0.010201216
		 -0.35781151 0.019104481 -0.45674199 0.073021293 -0.50175565 0.12724227 -0.45552588
		 0.17225587 -0.40160915 -0.016508043 -0.061020076 -0.061521709 -0.11493689 -0.052618802
		 -0.21386746 -0.043715596 -0.31279784 -0.034812391 -0.41172826 -0.025909245 -0.51065886
		 0.028007567 -0.55567253 0.082228661 -0.50944263 -0.070424855 -0.01600641 -0.11543852
		 -0.069923222 -0.10653549 -0.16885385 -0.097632408 -0.26778418 -0.088729203 -0.3667146
		 -0.079826117 -0.46564513 -0.070922911 -0.56457567 -0.017006099 -0.60958934 0.037214935
		 -0.5633595 -0.12434173 0.029007286 -0.16935539 -0.024909526 -0.16045231 -0.12384018
		 -0.1515491 -0.22277057 -0.14264601 -0.32170093 -0.13374293 -0.42063147 -0.12483978
		 -0.51956195 -0.11593664 -0.61849254 -0.062019825 -0.66350621 -0.21436918 -0.078826487
		 -0.20546591 -0.17775691 -0.19656271 -0.27668732 -0.18765974 -0.3756178 -0.17875659
		 -0.47454828 -0.16985351 -0.57347882 -0.25938278 -0.13274321 -0.25047952 -0.23167364
		 -0.24157643 -0.3306042 -0.23267341 -0.42953461 -0.22377032 -0.52846515 -0.30439639
		 -0.18665995 -0.29549325 -0.28559053 -0.2865901 -0.38452101 -0.27768713 -0.48345149
		 -0.34941012 -0.24057683 -0.34050691 -0.33950734 -0.33160383 -0.43843788 -0.39442378
		 -0.29449365 -0.38552064 -0.39342421 -0.43943751 -0.34841052 0.077134073 0.57099295
		 0.015830904 0.62217325 -0.02421844 0.61173755 0.029698372 0.56672388 -0.045472354
		 0.67335367 -0.078135341 0.65675128 -0.015315235 0.51280719 0.02595368 0.50968969
		 -0.10677555 0.72453403 -0.13205218 0.701765 -0.060328931 0.45889032 -0.025226653
		 0.44838652 -0.16807869 0.77571434 -0.185969 0.74677867 -0.10534257 0.40497357 -0.076406956
		 0.38708338 -0.22938187 0.8268947 -0.23988573 0.79179227;
	setAttr ".uvtk[250:373]" -0.15035617 0.35105681 -0.12758732 0.32578018 -0.29068506
		 0.878075 -0.29380259 0.836806 -0.1953699 0.29713994 -0.17876768 0.26447698 -0.35198832
		 0.92925543 -0.34771946 0.88181967 -0.24038357 0.24322313 -0.2299481 0.20317373 -0.40316871
		 0.86795223 -0.39273307 0.82790297 -0.28112835 0.14187065 -0.28539729 0.18930626 -0.45434904
		 0.80664903 -0.43774676 0.7739861 -0.3393141 0.23431993 -0.34243152 0.19305098 -0.50552934
		 0.74534589 -0.4827604 0.72006935 -0.393231 0.27933368 -0.40373477 0.2442314 -0.55670971
		 0.68404269 -0.52777398 0.6661526 -0.44714785 0.32434738 -0.46503797 0.29541177 -0.60789007
		 0.62273949 -0.5727877 0.61223572 -0.50106466 0.36936104 -0.52634108 0.34659207 -0.65907049
		 0.56143624 -0.61780137 0.55831891 -0.55498141 0.41437465 -0.58764428 0.3977724 -0.71025074
		 0.50013316 -0.66281509 0.50440204 -0.60889828 0.45938835 -0.64894748 0.44895273 0.36733699
		 -0.6494804 0.36733699 -0.64057702 0.36581653 -0.64057702 0.36581653 -0.6494804 0.36733699
		 -0.65838373 0.36581653 -0.65838373 0.36733699 -0.66728711 0.36581653 -0.66728711
		 0.57134575 -0.02411902 0.57134575 0.063102007 0.37664628 0.063102007 0.37664628 -0.02411902
		 0.37664628 0.15032315 0.57134575 0.15032315 0.36649728 0.063102007 0.36649728 -0.02411902
		 0.36649728 0.15032315 0.37664628 0.2375443 0.57134575 0.2375443 0.16164917 0.063102007
		 0.16164917 -0.02411902 0.16164917 0.15032315 0.36649728 0.2375443 0.37664628 0.32476506
		 0.57134575 0.32476506 0.16164917 0.2375443 0.36649728 0.32476506 0.37664628 0.41198611
		 0.57134575 0.41198611 0.16164917 0.32476506 0.36649728 0.41198611 0.37664628 0.49920723
		 0.57134575 0.49920723 0.16164917 0.41198611 0.36649728 0.49920723 0.37664628 0.58642846
		 0.57134575 0.58642846 0.16164917 0.49920723 0.36649728 0.58642846 0.16164917 0.58642846
		 0.64852041 -0.24877834 0.60631311 -0.20376474 0.50583124 -0.29798228 0.54803854 -0.34299588
		 0.65375811 -0.24386722 0.61155081 -0.19885361 0.56410563 -0.15875095 0.46362376 -0.25296849
		 0.71727037 -0.099724948 0.75947767 -0.14473855 0.56934333 -0.15383983 0.52189815
		 -0.11373723 0.42141628 -0.20795476 0.67506289 -0.054711163 0.52713585 -0.1088261
		 0.47969085 -0.068723619 0.37920898 -0.16294116 0.48492855 -0.063812494 0.43748343
		 -0.023709893 0.33700156 -0.11792743 0.44272113 -0.018798769 0.39527607 0.021303713
		 0.2947942 -0.072913826 0.40051377 0.026214838 0.25258678 -0.0279001 0.35306865 0.066317439
		 0.50623333 0.1253435 0.54844069 0.080329895 0.35830635 0.071228564 0.46402591 0.17035723
		 0.51593733 -0.31560844 0.32426745 -0.31560844 0.32426745 -0.39869285 0.51593733 -0.39869285
		 0.51593733 -0.23252425 0.32426745 -0.23252425 0.31767821 -0.31767693 0.31767821 -0.40489808
		 0.52252638 -0.40489808 0.52252638 -0.31767693 0.51593733 -0.14944005 0.32426745 -0.14944005
		 0.31767821 -0.23045588 0.52252638 -0.23045588 0.52252638 -0.14323485 0.31767821 -0.14323485;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :openPBR_shader1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "openPBR_shader1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV2.out" "pCubeShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "polyTweakUV3.out" "pCubeShape2.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyCube2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplit2.ip";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak6.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit1.out" "polyTweak1.ip";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polyTweak7.out" "polySplit15.ip";
connectAttr "polyExtrudeFace6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak8.ip";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyAutoProj1.ip";
connectAttr "pCubeShape1.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV2.ip";
connectAttr "polyTweak9.out" "polyAutoProj2.ip";
connectAttr "pCubeShape2.wm" "polyAutoProj2.mp";
connectAttr "polySplit15.out" "polyTweak9.ip";
connectAttr "polyAutoProj2.out" "polyTweakUV3.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
// End of mrt-sign.ma
