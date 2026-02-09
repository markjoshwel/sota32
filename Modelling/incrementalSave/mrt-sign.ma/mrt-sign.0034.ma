//Maya ASCII 2026 scene
//Name: mrt-sign.ma
//Last modified: Tue, Feb 10, 2026 05:07:04 AM
//Codeset: 1252
requires maya "2026";
requires "mtoa" "5.5.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2026";
fileInfo "version" "2026";
fileInfo "cutIdentifier" "202507081222-4d6919b75c";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26100)";
fileInfo "UUID" "2E955869-466B-CB11-2774-F086263402DD";
createNode transform -s -n "persp";
	rename -uid "D2B55157-4B78-1AF2-BF83-79A24F776774";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7330432987874331 -0.46109059616671122 2.2342259581393904 ;
	setAttr ".r" -type "double3" 9.2616472704320056 -322.19999999994508 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D987529D-489E-61EF-52DE-60B9E416C9C3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2.8649274415537471;
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
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.5 0.17398991994559765 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube2";
	rename -uid "B1728E9F-4293-EF27-4641-49958778D364";
	setAttr ".s" -type "double3" 1.6499674079734534 1.2671709658101455 2.0677921691633379 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "AFCC6482-4D79-1114-C533-40B3A4F0BF65";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.89342060685157776 0.062194958329200745 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "49A4D8E4-4812-D929-0C51-01BEC131C4CC";
	setAttr ".s" -type "double3" 1 1.6074681924743348 1 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "4D4DD7DB-49B2-3664-DD5B-0E82F8CA71C0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  0 0 -0.94512492 0 0 -0.94512492 
		0 0 -0.94512492 0 0 -0.94512492;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7B69E324-46E8-3597-8DD0-158452F6FE6E";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2E38EC04-49A8-4ACB-F18C-8DB72029C63F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "46A46223-4A5E-6295-5000-F583E3CB848F";
createNode displayLayerManager -n "layerManager";
	rename -uid "A147F444-4EBA-C505-200C-F6AC1389E3DC";
createNode displayLayer -n "defaultLayer";
	rename -uid "F378AF1B-4F70-41ED-F165-F8BE0C14B9C9";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "401BB06B-4DC3-2CCF-62FF-0692A259634F";
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
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1658\\n    -height 941\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1658\\n    -height 941\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 -0.78707731 0 0 -0.78707731
		 0 0 -0.78707731 0 0 -0.78707731 0;
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
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 0.14505199 0.021827875 0
		 0.14505199 -0.021827875 0 -0.14505199 0.021827875 0 -0.14505199 -0.021827875;
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
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0 0.33968046 0 0 0.33968046
		 0 0 0.33968046 0 0 0.33968046;
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
	setAttr -s 8 ".tk[220:227]" -type "float3"  0.0039735911 0.012658672 0
		 0.0039735911 -0.012658673 0 0.011920786 -0.012658673 0 0.011920786 0.012658672 0
		 -0.0039736023 0.012658672 0 -0.0039736023 -0.012658673 0 -0.011920786 0.012658672
		 0 -0.011920786 -0.012658673 0;
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
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 0.13079327 -0.034053057
		 0 -0.13079327 -0.034053057 0 0.13079327 0.034053057 0 -0.13079327 0.034053057;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "701C0858-40FF-C819-29D1-CB82A63C6356";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[22]" "e[24]" "e[26:27]" "e[30]" "e[32]" "e[34:35]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "4041891F-423B-1D80-EE2B-C48CB87F16D2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
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
	setAttr -s 28 ".tk[228:255]" -type "float3"  0 -0.17727213 0 0 -0.17727213
		 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0
		 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0
		 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213
		 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0
		 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0 0 -0.17727213 0;
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
createNode polySplit -n "polySplit16";
	rename -uid "C2572526-4909-1EFC-B5B6-B1A4D684F1CC";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483608 -2147483272 -2147483288 -2147483328 -2147483217 -2147483199 
		-2147483204 -2147483212 -2147483208 -2147483225 -2147483446 -2147483486 -2147483279 -2147483280 -2147483281 -2147483282 -2147483283 -2147483284 
		-2147483285 -2147483286 -2147483259 -2147483260 -2147483261 -2147483262 -2147483263 -2147483264 -2147483265 -2147483528 -2147483544 -2147483560 
		-2147483576 -2147483592 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "43219D81-4B43-EB55-FC81-8AAC5FE0EAB0";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483608 -2147483139 -2147483288 -2147483328 -2147483217 -2147483199 
		-2147483204 -2147483212 -2147483208 -2147483225 -2147483446 -2147483486 -2147483128 -2147483127 -2147483126 -2147483125 -2147483124 -2147483123 
		-2147483122 -2147483121 -2147483120 -2147483119 -2147483118 -2147483117 -2147483116 -2147483115 -2147483114 -2147483528 -2147483544 -2147483560 
		-2147483576 -2147483592 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "96A29A57-4203-9F56-7C0F-88994CB79FCD";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[256:287]" -type "float3"  0 0.15773287 6.519258e-09
		 0 0.15773287 6.519258e-09 0 0.15773287 1.8626451e-09 0 0.15773287 1.8626451e-09 0
		 0.15773287 9.3132257e-10 0 0.15773287 9.3132257e-10 0 0.15773287 -2.3283064e-10 0
		 0.15773287 -2.3283064e-10 0 0.15773287 0 0 0.15773287 0 0 0.15773287 9.3132257e-10
		 0 0.15773287 9.3132257e-10 0 0.15773287 3.7252903e-09 0 0.15773287 3.7252903e-09
		 0 0.15773287 -1.8626451e-09 0 0.15773287 -1.8626451e-09 0 0.15773287 0 0 0.15773287
		 0 0 0.15773287 0 0 0.15773287 0 0 0.15773287 0 0 0.15773287 0 0 0.15773287 0 0 0.15773287
		 0 0 0.15773287 0 0 0.15773287 0 0 0.15773287 0 0 0.15773287 0 0 0.15773287 0 0 0.15773287
		 0 0 0.15773287 0 0 0.15773287 0;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "9B0AC161-4BF5-E6F3-DA60-C7ACE1A644E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:317]";
	setAttr ".ix" -type "matrix" 1.6499674079734534 0 0 0 0 1.2671709658101455 0 0 0 0 2.0677921691633379 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.0022069232072681189 -0.022339675575494766 0.020315071567893028 ;
	setAttr ".ro" -type "double3" -3.338352692763725 6.2000001315716391 9.9487078725063807e-09 ;
	setAttr ".ps" -type "double2" 2.4853906522667857 1.4420887421362947 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.9330713748931885 -0.021546436473727226 -0.10781824588775635 -0.10781608521938324
		 -1.4619355433763399e-18 3.420210599899292 -0.058233451098203659 -0.05823228508234024
		 -0.20999874174594879 -0.19833831489086151 -0.99248379468917847 -0.99246394634246826
		 -0.65830987691879272 0.65724265575408936 4.6164984703063965 4.816403865814209;
	setAttr ".prgt" 1658;
	setAttr ".ptop" 941;
createNode polyTweak -n "polyTweak11";
	rename -uid "D5848992-4FED-ACA3-776E-4D86C8E59C64";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[288:319]" -type "float3"  0 -0.11308599 0 0 -0.11308599
		 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0
		 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0
		 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599
		 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0
		 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0
		 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0 0 -0.11308599 0;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "C51A6F13-444E-36A0-6B39-D9916C8F5D59";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[182]" "e[202]" "e[222]" "e[261]" "e[320]" "e[399:401]" "e[511]" "e[518]" "e[575]" "e[582]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "A47B81BC-45AC-503C-CC7A-0F83EC71E782";
	setAttr ".uopa" yes;
	setAttr -s 292 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[1]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[2]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[3]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[4]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[5]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[6]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[7]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[8]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[9]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[10]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[11]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[12]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[13]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[14]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[15]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[16]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[17]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[18]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[19]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[20]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[21]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[22]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[23]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[24]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[25]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[26]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[27]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[28]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[29]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[30]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[31]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[32]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[33]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[34]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[35]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[36]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[37]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[38]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[39]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[40]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[41]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[42]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[43]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[44]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[45]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[46]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[47]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[48]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[49]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[50]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[51]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[52]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[53]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[54]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[55]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[56]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[57]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[58]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[59]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[60]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[61]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[62]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[63]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[64]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[65]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[66]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[67]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[68]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[69]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[70]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[71]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[72]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[73]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[74]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[75]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[76]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[77]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[78]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[79]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[80]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[81]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[82]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[83]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[84]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[85]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[86]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[87]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[88]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[89]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[90]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[91]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[92]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[93]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[94]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[95]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[96]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[97]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[98]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[99]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[100]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[101]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[102]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[103]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[104]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[105]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[106]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[107]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[108]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[109]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[110]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[111]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[112]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[114]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[115]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[116]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[117]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[118]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[119]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[120]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[121]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[122]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[123]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[124]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[125]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[126]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[127]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[128]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[129]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[130]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[131]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[132]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[133]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[134]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[136]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[137]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[138]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[139]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[140]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[141]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[142]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[143]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[144]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[145]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[146]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[147]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[148]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[149]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[150]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[151]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[152]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[153]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[154]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[155]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[156]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[158]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[159]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[160]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[161]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[162]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[163]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[164]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[165]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[166]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[167]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[168]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[169]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[170]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[171]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[172]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[173]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[174]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[175]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[176]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[177]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[178]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[180]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[181]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[182]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[183]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[184]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[185]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[186]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[187]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[188]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[189]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[190]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[191]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[192]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[193]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[194]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[195]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[196]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[197]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[198]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[199]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[200]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[201]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[202]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[203]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[204]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[205]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[206]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[207]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[208]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[209]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[210]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[211]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[212]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[213]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[214]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[215]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[216]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[217]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[218]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[219]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[220]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[221]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[230]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[232]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[233]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[234]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[235]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[236]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[237]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[238]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[239]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[240]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[241]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[242]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[243]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[244]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[245]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[247]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[264]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[265]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[266]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[267]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[268]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[269]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[270]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[271]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[272]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[273]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[274]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[275]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[276]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[277]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[278]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[279]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[280]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[281]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[282]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[283]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[284]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[285]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[286]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[287]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[288]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[289]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[290]" -type "float2" 0.66354173 0 ;
	setAttr ".uvtk[298]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[299]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[300]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[301]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[302]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[303]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[304]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[305]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[306]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[307]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[308]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[309]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[310]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[311]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[312]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[313]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[314]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[315]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[316]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[317]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[318]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[319]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[322]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[323]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[325]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[326]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[327]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[328]" -type "float2" 0.66354162 0 ;
	setAttr ".uvtk[329]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[330]" -type "float2" 0.66354167 0 ;
	setAttr ".uvtk[331]" -type "float2" 0.66354167 0 ;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "F746363E-476F-EBAD-E376-FD8101EE7A0D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[438]" "e[440:441]" "e[445:446]" "e[449:451]" "e[513]" "e[516]" "e[577]" "e[580]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "7733317A-42BD-B6DD-6431-CD93863C3C36";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[223]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[227]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[228]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[229]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[261]" -type "float2" 0 0.31416669 ;
	setAttr ".uvtk[262]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[263]" -type "float2" 0 0.31416664 ;
	setAttr ".uvtk[293]" -type "float2" 0 0.31416664 ;
	setAttr ".uvtk[294]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[295]" -type "float2" 0 0.31416664 ;
	setAttr ".uvtk[332]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[333]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[336]" -type "float2" 0 0.31416664 ;
	setAttr ".uvtk[338]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[341]" -type "float2" 0 0.31416667 ;
	setAttr ".uvtk[343]" -type "float2" 0 0.31416667 ;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "9708D3BA-454C-75DB-1FC3-3ABDC648E2D9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[420]" "e[422]" "e[429:430]" "e[437]" "e[439]" "e[447:448]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "D365ADD1-4E65-A2E7-4041-D29E43BF381F";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk";
	setAttr ".uvtk[113]" -type "float2" 0.068084866 -0.046326626 ;
	setAttr ".uvtk[135]" -type "float2" 0.02333203 -0.024019711 ;
	setAttr ".uvtk[157]" -type "float2" -0.023324013 -0.0016692653 ;
	setAttr ".uvtk[179]" -type "float2" 0.0055885315 0.043834846 ;
	setAttr ".uvtk[222]" -type "float2" 0.024027824 -0.0057136789 ;
	setAttr ".uvtk[223]" -type "float2" -0.00073361397 -0.00015100837 ;
	setAttr ".uvtk[224]" -type "float2" 0.0039417446 0.022550229 ;
	setAttr ".uvtk[225]" -type "float2" 0.068503886 -0.026993345 ;
	setAttr ".uvtk[226]" -type "float2" -0.022233069 0.015606634 ;
	setAttr ".uvtk[227]" -type "float2" 0.00035870075 0.0014045835 ;
	setAttr ".uvtk[228]" -type "float2" -0.00064700842 0.003392905 ;
	setAttr ".uvtk[229]" -type "float2" -0.00038087368 0.002997756 ;
	setAttr ".uvtk[231]" -type "float2" 0.0059710741 0.029404834 ;
	setAttr ".uvtk[246]" -type "float2" 0.024580777 0.0053858161 ;
	setAttr ".uvtk[248]" -type "float2" 0.014985144 -0.030020133 ;
	setAttr ".uvtk[249]" -type "float2" 0.032074779 -0.0062242448 ;
	setAttr ".uvtk[250]" -type "float2" 0.0060514212 0.02368556 ;
	setAttr ".uvtk[251]" -type "float2" 0.07279554 -0.025781158 ;
	setAttr ".uvtk[252]" -type "float2" 0.02622664 -0.0033874365 ;
	setAttr ".uvtk[253]" -type "float2" -0.031396627 0.0077357143 ;
	setAttr ".uvtk[254]" -type "float2" -0.025810122 -0.0038431734 ;
	setAttr ".uvtk[255]" -type "float2" -0.022306979 0.019051995 ;
	setAttr ".uvtk[256]" -type "float2" -0.0060830116 0.034619655 ;
	setAttr ".uvtk[257]" -type "float2" -0.0064705014 0.049630694 ;
	setAttr ".uvtk[258]" -type "float2" 0.0079360604 -0.04614678 ;
	setAttr ".uvtk[259]" -type "float2" -0.0040925145 -0.043963894 ;
	setAttr ".uvtk[260]" -type "float2" 0.012308598 -0.028136879 ;
	setAttr ".uvtk[261]" -type "float2" 0.0021675527 -0.00085741282 ;
	setAttr ".uvtk[262]" -type "float2" 0.0025358796 -0.0006711483 ;
	setAttr ".uvtk[263]" -type "float2" 0.0010488033 -0.00046914816 ;
	setAttr ".uvtk[291]" -type "float2" 0.0077030659 -0.037062317 ;
	setAttr ".uvtk[292]" -type "float2" -0.0043284893 -0.034515724 ;
	setAttr ".uvtk[293]" -type "float2" 0.00092715025 -8.559227e-05 ;
	setAttr ".uvtk[294]" -type "float2" 0.0023504496 -0.00040727854 ;
	setAttr ".uvtk[295]" -type "float2" 0.0019201934 -0.00071120262 ;
	setAttr ".uvtk[296]" -type "float2" 0.011596352 -0.023744524 ;
	setAttr ".uvtk[297]" -type "float2" 0.013924509 -0.023526996 ;
	setAttr ".uvtk[320]" -type "float2" -0.02110219 0.019859634 ;
	setAttr ".uvtk[321]" -type "float2" -0.013318181 -0.024812773 ;
	setAttr ".uvtk[324]" -type "float2" 0.078624636 0.0030511767 ;
	setAttr ".uvtk[332]" -type "float2" -0.0036148429 -0.0016697943 ;
	setAttr ".uvtk[333]" -type "float2" -0.00031974912 -0.00099796057 ;
	setAttr ".uvtk[334]" -type "float2" -0.0023912787 0.033038337 ;
	setAttr ".uvtk[335]" -type "float2" -0.00062310696 -0.034515321 ;
	setAttr ".uvtk[336]" -type "float2" -1.2427568e-05 -0.0010281801 ;
	setAttr ".uvtk[337]" -type "float2" -0.08133781 0.0019522607 ;
	setAttr ".uvtk[338]" -type "float2" -4.5657158e-05 0.001544416 ;
	setAttr ".uvtk[339]" -type "float2" -0.002751112 0.046562307 ;
	setAttr ".uvtk[340]" -type "float2" -0.024372816 -0.00038830936 ;
	setAttr ".uvtk[341]" -type "float2" -0.0012718141 -0.00026240945 ;
	setAttr ".uvtk[342]" -type "float2" 0.030736864 -0.0027130842 ;
	setAttr ".uvtk[343]" -type "float2" -0.0042827725 -0.0020286143 ;
	setAttr ".uvtk[344]" -type "float2" -0.085742176 -0.0014456362 ;
	setAttr ".uvtk[345]" -type "float2" -0.00045871735 -0.040886641 ;
	setAttr ".uvtk[346]" -type "float2" -0.072854877 0.041538246 ;
	setAttr ".uvtk[347]" -type "float2" -0.070321441 0.036968563 ;
	setAttr ".uvtk[348]" -type "float2" 0.0043151677 0.033864617 ;
	setAttr ".uvtk[349]" -type "float2" 0.0023860037 0.031755775 ;
	setAttr ".uvtk[350]" -type "float2" 0.087963343 -0.0085893124 ;
	setAttr ".uvtk[351]" -type "float2" 0.08403486 -0.0050224215 ;
	setAttr ".uvtk[352]" -type "float2" -0.089355707 0.010101244 ;
	setAttr ".uvtk[353]" -type "float2" -0.071930468 0.020725787 ;
	setAttr ".uvtk[354]" -type "float2" -0.022818983 0.02948533 ;
	setAttr ".uvtk[355]" -type "float2" -0.012269616 -0.03095983 ;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "CB473081-4EED-B5D5-FF0B-2A9FBCA5C8A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[540:571]" "e[604:635]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "8D35F1DA-4CCC-975D-1951-4CAD5CE2E4A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "e[0]" "e[3]" "e[10:11]" "e[14]" "e[16]" "e[18:19]" "e[29:30]" "e[33:34]" "e[45:46]" "e[49:50]" "e[61:62]" "e[65:66]" "e[77:78]" "e[81:82]" "e[93:94]" "e[97:98]" "e[109:110]" "e[113:114]" "e[124]" "e[133:134]" "e[143]" "e[164]" "e[173:174]" "e[183]" "e[204]" "e[213:214]" "e[223]" "e[243]" "e[252:253]" "e[262]" "e[282]" "e[291:292]" "e[301]" "e[322]" "e[331:332]" "e[341]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "99190D15-4CDA-AFCD-EF15-62AFD530DFBB";
	setAttr ".uopa" yes;
	setAttr -s 290 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.2720052 0.16457935 ;
	setAttr ".uvtk[1]" -type "float2" 0.36876667 0.22305447 ;
	setAttr ".uvtk[2]" -type "float2" 0.1202718 0.048546538 ;
	setAttr ".uvtk[3]" -type "float2" 0.18033254 0.074383661 ;
	setAttr ".uvtk[4]" -type "float2" 0.10639834 0.10996102 ;
	setAttr ".uvtk[5]" -type "float2" 0.15821183 0.13518827 ;
	setAttr ".uvtk[6]" -type "float2" 0.14564574 0.46360272 ;
	setAttr ".uvtk[7]" -type "float2" 0.11877596 0.44103074 ;
	setAttr ".uvtk[8]" -type "float2" 0.086071372 0.052724957 ;
	setAttr ".uvtk[9]" -type "float2" 0.13898635 0.047983199 ;
	setAttr ".uvtk[10]" -type "float2" 0.23175222 -0.44346902 ;
	setAttr ".uvtk[11]" -type "float2" 0.16196126 -0.41327477 ;
	setAttr ".uvtk[12]" -type "float2" 0.18117756 -0.34669757 ;
	setAttr ".uvtk[13]" -type "float2" 0.2698549 -0.37823242 ;
	setAttr ".uvtk[14]" -type "float2" -0.38167143 -0.075465813 ;
	setAttr ".uvtk[15]" -type "float2" -0.32885742 0.2278583 ;
	setAttr ".uvtk[16]" -type "float2" -0.22933102 -0.042010799 ;
	setAttr ".uvtk[17]" -type "float2" -0.25944245 -0.10193639 ;
	setAttr ".uvtk[18]" -type "float2" 0.21449566 0.24498747 ;
	setAttr ".uvtk[22]" -type "float2" -0.28865504 0.23746735 ;
	setAttr ".uvtk[24]" -type "float2" 0.39843798 0.21240801 ;
	setAttr ".uvtk[25]" -type "float2" 0.33694005 0.19380435 ;
	setAttr ".uvtk[33]" -type "float2" 0.14401948 0.19419812 ;
	setAttr ".uvtk[34]" -type "float2" 0.18113208 0.31875014 ;
	setAttr ".uvtk[35]" -type "float2" 0.28596199 0.17382723 ;
	setAttr ".uvtk[37]" -type "float2" 0.21046323 -0.5066185 ;
	setAttr ".uvtk[38]" -type "float2" 0.14794582 -0.47710916 ;
	setAttr ".uvtk[41]" -type "float2" -0.31240213 0.20657536 ;
	setAttr ".uvtk[42]" -type "float2" -0.19931233 0.0168771 ;
	setAttr ".uvtk[43]" -type "float2" 0.098215699 0.16910349 ;
	setAttr ".uvtk[44]" -type "float2" 0.13605094 0.25155389 ;
	setAttr ".uvtk[45]" -type "float2" 0.16171283 0.388605 ;
	setAttr ".uvtk[46]" -type "float2" 0.24320924 0.15277633 ;
	setAttr ".uvtk[48]" -type "float2" 0.1981523 -0.56677431 ;
	setAttr ".uvtk[49]" -type "float2" 0.14168781 -0.53731328 ;
	setAttr ".uvtk[52]" -type "float2" -0.29770863 0.18357822 ;
	setAttr ".uvtk[53]" -type "float2" -0.16953516 0.074690089 ;
	setAttr ".uvtk[54]" -type "float2" 0.095127106 0.22634976 ;
	setAttr ".uvtk[55]" -type "float2" 0.13310921 0.30730599 ;
	setAttr ".uvtk[56]" -type "float2" 0.15218747 0.45639318 ;
	setAttr ".uvtk[57]" -type "float2" 0.20700955 0.13086995 ;
	setAttr ".uvtk[59]" -type "float2" 0.19244689 -0.62425578 ;
	setAttr ".uvtk[60]" -type "float2" 0.14143819 -0.59465832 ;
	setAttr ".uvtk[63]" -type "float2" -0.28435302 0.15927944 ;
	setAttr ".uvtk[64]" -type "float2" -0.13986588 0.13128488 ;
	setAttr ".uvtk[65]" -type "float2" 0.09632647 0.28194582 ;
	setAttr ".uvtk[66]" -type "float2" 0.13402772 0.36149615 ;
	setAttr ".uvtk[67]" -type "float2" 0.15137553 0.52277845 ;
	setAttr ".uvtk[68]" -type "float2" 0.1761148 0.10827091 ;
	setAttr ".uvtk[70]" -type "float2" 0.19205278 -0.67928612 ;
	setAttr ".uvtk[71]" -type "float2" 0.14593238 -0.64949238 ;
	setAttr ".uvtk[74]" -type "float2" -0.27203739 0.13396916 ;
	setAttr ".uvtk[75]" -type "float2" -0.11075413 0.18673019 ;
	setAttr ".uvtk[76]" -type "float2" 0.10103631 0.3360365 ;
	setAttr ".uvtk[77]" -type "float2" 0.13835442 0.4138115 ;
	setAttr ".uvtk[78]" -type "float2" 0.16565526 0.075074762 ;
	setAttr ".uvtk[81]" -type "float2" 0.19639295 -0.73125076 ;
	setAttr ".uvtk[82]" -type "float2" 0.15434724 -0.70196027 ;
	setAttr ".uvtk[85]" -type "float2" -0.07146275 0.33704281 ;
	setAttr ".uvtk[86]" -type "float2" -0.082454681 0.24097101 ;
	setAttr ".uvtk[87]" -type "float2" 0.108796 0.38874817 ;
	setAttr ".uvtk[88]" -type "float2" 0.20307761 -0.77811331 ;
	setAttr ".uvtk[89]" -type "float2" 0.16555601 -0.75372487 ;
	setAttr ".uvtk[92]" -type "float2" -0.24971855 0.081098139 ;
	setAttr ".uvtk[93]" -type "float2" -0.055778623 0.29394835 ;
	setAttr ".uvtk[94]" -type "float2" 0.2563796 0.22706938 ;
	setAttr ".uvtk[95]" -type "float2" 0.059587717 0.022790238 ;
	setAttr ".uvtk[96]" -type "float2" 0.053185344 0.084457442 ;
	setAttr ".uvtk[97]" -type "float2" 0.051205158 0.14379112 ;
	setAttr ".uvtk[98]" -type "float2" 0.053279519 0.20111339 ;
	setAttr ".uvtk[99]" -type "float2" 0.058864832 0.256782 ;
	setAttr ".uvtk[100]" -type "float2" 0.067435741 0.31110567 ;
	setAttr ".uvtk[101]" -type "float2" 0.078557611 0.36442006 ;
	setAttr ".uvtk[102]" -type "float2" 0.091562271 0.41734427 ;
	setAttr ".uvtk[103]" -type "float2" 0.032308578 0.057463169 ;
	setAttr ".uvtk[106]" -type "float2" 0.12740248 -0.72651953 ;
	setAttr ".uvtk[107]" -type "float2" 0.11230401 -0.67345196 ;
	setAttr ".uvtk[108]" -type "float2" 0.099208549 -0.62013435 ;
	setAttr ".uvtk[109]" -type "float2" 0.089504644 -0.56503916 ;
	setAttr ".uvtk[110]" -type "float2" 0.083807036 -0.50751746 ;
	setAttr ".uvtk[111]" -type "float2" 0.082903191 -0.44695669 ;
	setAttr ".uvtk[112]" -type "float2" 0.087574765 -0.38261577 ;
	setAttr ".uvtk[116]" -type "float2" 0.14129376 0.23106354 ;
	setAttr ".uvtk[117]" -type "float2" -0.0017411709 -0.002791062 ;
	setAttr ".uvtk[118]" -type "float2" -0.001193285 0.059025571 ;
	setAttr ".uvtk[119]" -type "float2" 0.0030617714 0.11846064 ;
	setAttr ".uvtk[120]" -type "float2" 0.010471344 0.17587481 ;
	setAttr ".uvtk[121]" -type "float2" 0.020602107 0.23168628 ;
	setAttr ".uvtk[122]" -type "float2" 0.033091664 0.28627491 ;
	setAttr ".uvtk[123]" -type "float2" 0.047645926 0.33999211 ;
	setAttr ".uvtk[124]" -type "float2" 0.0638901 0.39316243 ;
	setAttr ".uvtk[125]" -type "float2" -0.022315741 0.062197685 ;
	setAttr ".uvtk[128]" -type "float2" 0.088563964 -0.69773781 ;
	setAttr ".uvtk[129]" -type "float2" 0.069134519 -0.64486849 ;
	setAttr ".uvtk[130]" -type "float2" 0.051501445 -0.59098279 ;
	setAttr ".uvtk[131]" -type "float2" 0.036522537 -0.53550678 ;
	setAttr ".uvtk[132]" -type "float2" 0.024650615 -0.47775477 ;
	setAttr ".uvtk[133]" -type "float2" 0.016405266 -0.41697592 ;
	setAttr ".uvtk[134]" -type "float2" 0.012490433 -0.35233888 ;
	setAttr ".uvtk[138]" -type "float2" 0.02342844 0.23503631 ;
	setAttr ".uvtk[139]" -type "float2" -0.064121127 -0.02832891 ;
	setAttr ".uvtk[140]" -type "float2" -0.056591749 0.033728704 ;
	setAttr ".uvtk[141]" -type "float2" -0.046076417 0.09319149 ;
	setAttr ".uvtk[142]" -type "float2" -0.0332371 0.15065317 ;
	setAttr ".uvtk[143]" -type "float2" -0.01846087 0.20658974 ;
	setAttr ".uvtk[144]" -type "float2" -0.0020083189 0.2613883 ;
	setAttr ".uvtk[145]" -type "float2" 0.01600039 0.31534821 ;
	setAttr ".uvtk[146]" -type "float2" 0.035554409 0.36855114 ;
	setAttr ".uvtk[147]" -type "float2" -0.07781589 0.066928536 ;
	setAttr ".uvtk[150]" -type "float2" 0.048989467 -0.66866195 ;
	setAttr ".uvtk[151]" -type "float2" 0.024974387 -0.6159426 ;
	setAttr ".uvtk[152]" -type "float2" 0.0027408954 -0.5617519 ;
	setAttr ".uvtk[153]" -type "float2" -0.017535532 -0.5059759 ;
	setAttr ".uvtk[154]" -type "float2" -0.035655104 -0.44806319 ;
	setAttr ".uvtk[155]" -type "float2" -0.0512826 -0.3872391 ;
	setAttr ".uvtk[156]" -type "float2" -0.06375356 -0.32237953 ;
	setAttr ".uvtk[160]" -type "float2" -0.097299933 0.23898697 ;
	setAttr ".uvtk[161]" -type "float2" -0.12772787 -0.053450182 ;
	setAttr ".uvtk[162]" -type "float2" -0.11302423 0.0086117238 ;
	setAttr ".uvtk[163]" -type "float2" -0.096150756 0.067957267 ;
	setAttr ".uvtk[164]" -type "float2" -0.077791095 0.12542079 ;
	setAttr ".uvtk[165]" -type "float2" -0.058265805 0.18146263 ;
	setAttr ".uvtk[166]" -type "float2" -0.037797928 0.23641758 ;
	setAttr ".uvtk[167]" -type "float2" -0.016394615 0.29054409 ;
	setAttr ".uvtk[168]" -type "float2" 0.0064060688 0.3438834 ;
	setAttr ".uvtk[169]" -type "float2" -0.1342063 0.071655601 ;
	setAttr ".uvtk[172]" -type "float2" 0.0084252711 -0.63940895 ;
	setAttr ".uvtk[173]" -type "float2" -0.020260416 -0.58672518 ;
	setAttr ".uvtk[174]" -type "float2" -0.047024801 -0.53233457 ;
	setAttr ".uvtk[175]" -type "float2" -0.072632276 -0.47634485 ;
	setAttr ".uvtk[176]" -type "float2" -0.09705551 -0.41831553 ;
	setAttr ".uvtk[177]" -type "float2" -0.12008925 -0.35762906 ;
	setAttr ".uvtk[178]" -type "float2" -0.14137074 -0.29300618 ;
	setAttr ".uvtk[182]" -type "float2" -0.22097898 0.24291509 ;
	setAttr ".uvtk[183]" -type "float2" -0.19278932 -0.078051284 ;
	setAttr ".uvtk[184]" -type "float2" -0.17055666 -0.016474321 ;
	setAttr ".uvtk[185]" -type "float2" -0.14718544 0.042609856 ;
	setAttr ".uvtk[186]" -type "float2" -0.12318909 0.10012059 ;
	setAttr ".uvtk[187]" -type "float2" -0.098742008 0.15632896 ;
	setAttr ".uvtk[188]" -type "float2" -0.074118257 0.21144377 ;
	setAttr ".uvtk[189]" -type "float2" -0.049434066 0.2656281 ;
	setAttr ".uvtk[190]" -type "float2" -0.023900867 0.31903857 ;
	setAttr ".uvtk[191]" -type "float2" -0.19150233 0.076378793 ;
	setAttr ".uvtk[194]" -type "float2" -0.034127079 -0.609514 ;
	setAttr ".uvtk[195]" -type "float2" -0.066591583 -0.5572691 ;
	setAttr ".uvtk[196]" -type "float2" -0.097617343 -0.50278872 ;
	setAttr ".uvtk[197]" -type "float2" -0.1287362 -0.44659883 ;
	setAttr ".uvtk[198]" -type "float2" -0.1596505 -0.38830754 ;
	setAttr ".uvtk[199]" -type "float2" -0.19011384 -0.32759947 ;
	setAttr ".uvtk[200]" -type "float2" -0.22010499 -0.26420277 ;
	setAttr ".uvtk[201]" -type "float2" -0.24771169 -0.19276492 ;
	setAttr ".uvtk[204]" -type "float2" -0.080717646 -0.57973009 ;
	setAttr ".uvtk[205]" -type "float2" -0.11291929 -0.52828348 ;
	setAttr ".uvtk[206]" -type "float2" -0.14862677 -0.47347599 ;
	setAttr ".uvtk[207]" -type "float2" -0.18587512 -0.41692638 ;
	setAttr ".uvtk[208]" -type "float2" -0.22376639 -0.35803968 ;
	setAttr ".uvtk[209]" -type "float2" -0.26219061 -0.29641128 ;
	setAttr ".uvtk[210]" -type "float2" -0.30110979 -0.2321656 ;
	setAttr ".uvtk[211]" -type "float2" -0.3398757 -0.17011556 ;
	setAttr ".uvtk[212]" -type "float2" 0.46233439 -0.1824334 ;
	setAttr ".uvtk[213]" -type "float2" 0.36373127 -0.14936863 ;
	setAttr ".uvtk[214]" -type "float2" 0.56446886 -0.21419637 ;
	setAttr ".uvtk[215]" -type "float2" 0.67084515 -0.24439557 ;
	setAttr ".uvtk[216]" -type "float2" 0.78237844 -0.27269381 ;
	setAttr ".uvtk[217]" -type "float2" 0.90026706 -0.29864928 ;
	setAttr ".uvtk[218]" -type "float2" 1.0261126 -0.3216719 ;
	setAttr ".uvtk[219]" -type "float2" 1.1621016 -0.34095502 ;
	setAttr ".uvtk[220]" -type "float2" 1.1057923 -0.37329906 ;
	setAttr ".uvtk[221]" -type "float2" 1.0476648 -0.405606 ;
	setAttr ".uvtk[230]" -type "float2" -0.97878844 0.55848652 ;
	setAttr ".uvtk[232]" -type "float2" -1.046701 0.52637982 ;
	setAttr ".uvtk[233]" -type "float2" -0.29302132 -0.25532818 ;
	setAttr ".uvtk[234]" -type "float2" -0.89787471 0.39005661 ;
	setAttr ".uvtk[235]" -type "float2" -0.82434154 0.32747489 ;
	setAttr ".uvtk[236]" -type "float2" -0.75123101 0.26757258 ;
	setAttr ".uvtk[237]" -type "float2" -0.67846 0.20982455 ;
	setAttr ".uvtk[238]" -type "float2" -0.60596609 0.15383422 ;
	setAttr ".uvtk[239]" -type "float2" -0.53370142 0.099296883 ;
	setAttr ".uvtk[240]" -type "float2" -0.40334523 0.063747004 ;
	setAttr ".uvtk[241]" -type "float2" -0.2737236 0.028206065 ;
	setAttr ".uvtk[242]" -type "float2" -0.14482665 -0.0073259622 ;
	setAttr ".uvtk[243]" -type "float2" -0.016642928 -0.042849354 ;
	setAttr ".uvtk[244]" -type "float2" 0.11083794 -0.078364164 ;
	setAttr ".uvtk[245]" -type "float2" 0.23762619 -0.11387062 ;
	setAttr ".uvtk[289]" -type "float2" -0.92703986 0.38083124 ;
	setAttr ".uvtk[290]" -type "float2" -0.93326819 0.47016343 ;
	setAttr ".uvtk[298]" -type "float2" 1.0959864 -0.48868459 ;
	setAttr ".uvtk[299]" -type "float2" 1.1547582 -0.45511878 ;
	setAttr ".uvtk[315]" -type "float2" -0.56064177 0.12451264 ;
	setAttr ".uvtk[316]" -type "float2" -0.6331948 0.17371768 ;
	setAttr ".uvtk[317]" -type "float2" -0.70603466 0.22373512 ;
	setAttr ".uvtk[318]" -type "float2" -0.77922618 0.27474922 ;
	setAttr ".uvtk[319]" -type "float2" -0.85285538 0.32700413 ;
	setAttr ".uvtk[322]" -type "float2" -0.91293067 0.59063536 ;
	setAttr ".uvtk[328]" -type "float2" -0.15871495 -0.22129752 ;
	setAttr ".uvtk[329]" -type "float2" -0.071295939 -0.25238502 ;
	setAttr ".uvtk[330]" -type "float2" 0.014086407 -0.28339979 ;
	setAttr ".uvtk[331]" -type "float2" 0.097557619 -0.31439355 ;
	setAttr ".uvtk[356]" -type "float2" -0.25326627 -0.3180235 ;
	setAttr ".uvtk[357]" -type "float2" -0.97194278 0.4560293 ;
	setAttr ".uvtk[358]" -type "float2" -0.2146222 -0.37770534 ;
	setAttr ".uvtk[359]" -type "float2" -0.17657799 -0.43481994 ;
	setAttr ".uvtk[360]" -type "float2" -0.13908276 -0.48994106 ;
	setAttr ".uvtk[361]" -type "float2" -0.10232528 -0.54392183 ;
	setAttr ".uvtk[362]" -type "float2" -0.069947325 -0.60144883 ;
	setAttr ".uvtk[363]" -type "float2" -0.02412685 -0.63914561 ;
	setAttr ".uvtk[364]" -type "float2" 0.017166059 -0.66989446 ;
	setAttr ".uvtk[365]" -type "float2" 0.057358913 -0.69934666 ;
	setAttr ".uvtk[366]" -type "float2" 0.096774176 -0.72848368 ;
	setAttr ".uvtk[367]" -type "float2" 0.13533908 -0.75744486 ;
	setAttr ".uvtk[368]" -type "float2" 0.1724717 -0.78591561 ;
	setAttr ".uvtk[369]" -type "float2" 0.20196074 -0.80984181 ;
	setAttr ".uvtk[370]" -type "float2" 0.18805605 -0.76300198 ;
	setAttr ".uvtk[371]" -type "float2" 0.18316835 -0.71137768 ;
	setAttr ".uvtk[372]" -type "float2" 0.18338829 -0.65759516 ;
	setAttr ".uvtk[373]" -type "float2" 0.18901974 -0.60172385 ;
	setAttr ".uvtk[374]" -type "float2" 0.20118868 -0.54337823 ;
	setAttr ".uvtk[375]" -type "float2" 0.22155261 -0.4818418 ;
	setAttr ".uvtk[376]" -type "float2" 0.25945318 -0.41235757 ;
	setAttr ".uvtk[377]" -type "float2" 0.17141205 -0.37346601 ;
	setAttr ".uvtk[379]" -type "float2" 0.088402554 -0.34040049 ;
	setAttr ".uvtk[388]" -type "float2" -0.16585428 -0.24623674 ;
	setAttr ".uvtk[390]" -type "float2" -0.2540558 -0.21717715 ;
	setAttr ".uvtk[391]" -type "float2" -0.33871508 -0.19514197 ;
	setAttr ".uvtk[398]" -type "float2" -0.48832548 0.075978696 ;
	setAttr ".uvtk[399]" -type "float2" -0.35769916 0.0409168 ;
	setAttr ".uvtk[400]" -type "float2" -0.22781289 0.0058590174 ;
	setAttr ".uvtk[401]" -type "float2" -0.098656178 -0.029194623 ;
	setAttr ".uvtk[402]" -type "float2" 0.029781938 -0.064244315 ;
	setAttr ".uvtk[403]" -type "float2" 0.15751231 -0.099290028 ;
	setAttr ".uvtk[404]" -type "float2" 0.28454506 -0.1343319 ;
	setAttr ".uvtk[405]" -type "float2" 0.4108901 -0.16936985 ;
	setAttr ".uvtk[406]" -type "float2" 0.50965953 -0.20802771 ;
	setAttr ".uvtk[407]" -type "float2" 0.61199534 -0.2460846 ;
	setAttr ".uvtk[408]" -type "float2" 0.71861792 -0.28341895 ;
	setAttr ".uvtk[409]" -type "float2" 0.83045626 -0.31987435 ;
	setAttr ".uvtk[410]" -type "float2" 0.94872838 -0.35524553 ;
	setAttr ".uvtk[411]" -type "float2" 1.0750636 -0.38925797 ;
	setAttr ".uvtk[412]" -type "float2" 1.2116914 -0.42153579 ;
	setAttr ".uvtk[425]" -type "float2" -0.8666749 0.50365573 ;
	setAttr ".uvtk[427]" -type "float2" -1.0019412 0.43669072 ;
	setAttr ".uvtk[428]" -type "float2" -0.18440104 0.23393208 ;
	setAttr ".uvtk[430]" -type "float2" -0.17562604 0.086337298 ;
	setAttr ".uvtk[431]" -type "float2" -0.2285614 0.090471834 ;
	setAttr ".uvtk[432]" -type "float2" 0.0011667013 0.4515962 ;
	setAttr ".uvtk[433]" -type "float2" -0.037013292 0.41103369 ;
	setAttr ".uvtk[434]" -type "float2" -0.28443789 -0.047971353 ;
	setAttr ".uvtk[435]" -type "float2" -0.34769857 0.24681973 ;
	setAttr ".uvtk[436]" -type "float2" -0.082264781 0.23038137 ;
	setAttr ".uvtk[437]" -type "float2" -0.12343884 0.082199425 ;
	setAttr ".uvtk[438]" -type "float2" 0.035538435 0.48806989 ;
	setAttr ".uvtk[439]" -type "float2" -0.18746638 -0.016205415 ;
	setAttr ".uvtk[440]" -type "float2" 0.017805934 0.22681552 ;
	setAttr ".uvtk[441]" -type "float2" -0.071988821 0.078058422 ;
	setAttr ".uvtk[442]" -type "float2" 0.068170428 0.52251631 ;
	setAttr ".uvtk[443]" -type "float2" -0.091844797 0.017045662 ;
	setAttr ".uvtk[444]" -type "float2" 0.11586308 0.22323495 ;
	setAttr ".uvtk[445]" -type "float2" -0.021265388 0.07391423 ;
	setAttr ".uvtk[446]" -type "float2" 0.099347115 0.55565554 ;
	setAttr ".uvtk[447]" -type "float2" 0.0016849041 0.050955102 ;
	setAttr ".uvtk[448]" -type "float2" 0.21195579 0.2196399 ;
	setAttr ".uvtk[449]" -type "float2" 0.028742909 0.069766998 ;
	setAttr ".uvtk[450]" -type "float2" 0.12887239 0.58809429 ;
	setAttr ".uvtk[451]" -type "float2" 0.092981458 0.086125746 ;
	setAttr ".uvtk[452]" -type "float2" 0.30613208 0.21603078 ;
	setAttr ".uvtk[453]" -type "float2" 0.078046322 0.065616548 ;
	setAttr ".uvtk[454]" -type "float2" 0.1559335 0.61896348 ;
	setAttr ".uvtk[455]" -type "float2" 0.18236166 0.12327744 ;
	setAttr ".uvtk[456]" -type "float2" -0.26054585 0.10785684 ;
	setAttr ".uvtk[457]" -type "float2" -0.11479187 0.2670278 ;
	setAttr ".uvtk[458]" -type "float2" -0.23603296 0.11383548 ;
	setAttr ".uvtk[459]" -type "float2" -0.24375308 0.1366711 ;
	setAttr ".uvtk[460]" -type "float2" 0.14957511 0.085103333 ;
	setAttr ".uvtk[462]" -type "float2" 0.15936911 0.5873993 ;
	setAttr ".uvtk[463]" -type "float2" 0.19701719 0.10159507 ;
	setAttr ".uvtk[464]" -type "float2" -0.16111875 0.19865476 ;
	setAttr ".uvtk[465]" -type "float2" -0.25177443 0.15886685 ;
	setAttr ".uvtk[467]" -type "float2" 0.23414898 0.12741318 ;
	setAttr ".uvtk[468]" -type "float2" -0.20926309 0.13020299 ;
	setAttr ".uvtk[469]" -type "float2" -0.26016593 0.18027669 ;
	setAttr ".uvtk[471]" -type "float2" 0.2784844 0.15235451 ;
	setAttr ".uvtk[472]" -type "float2" -0.26024556 0.06095247 ;
	setAttr ".uvtk[473]" -type "float2" -0.26901889 0.20070648 ;
	setAttr ".uvtk[475]" -type "float2" 0.33197534 0.17618158 ;
	setAttr ".uvtk[476]" -type "float2" -0.31599975 -0.0090709478 ;
	setAttr ".uvtk[477]" -type "float2" -0.27845764 0.21989268 ;
	setAttr ".uvtk[479]" -type "float2" 0.39734817 0.19856268 ;
	setAttr ".uvtk[481]" -type "float2" 0.47853148 0.21901947 ;
	setAttr ".uvtk[482]" -type "float2" 0.12665486 0.061463237 ;
	setAttr ".uvtk[483]" -type "float2" 0.17944896 0.6455676 ;
createNode polyMapCut -n "polyMapCut7";
	rename -uid "E35EBF5F-4353-FCED-6CEF-D0A40402A513";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[22]" "e[24]" "e[26:27]" "e[31:32]" "e[47:48]" "e[63:64]" "e[79:80]" "e[95:96]" "e[111:112]" "e[135]" "e[142]" "e[175]" "e[215]" "e[254]" "e[293]" "e[300]" "e[333]" "e[340]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "1DD9E98D-448B-B3BB-2174-9C8E8EDF2A89";
	setAttr ".uopa" yes;
	setAttr -s 116 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" -0.24519449 -0.085396886 ;
	setAttr ".uvtk[11]" -type "float2" -0.001757741 -0.0014499128 ;
	setAttr ".uvtk[12]" -type "float2" -0.33451223 -0.16845316 ;
	setAttr ".uvtk[13]" -type "float2" -0.26957065 -0.13246632 ;
	setAttr ".uvtk[37]" -type "float2" -0.22752011 -0.036240637 ;
	setAttr ".uvtk[38]" -type "float2" 3.4332275e-05 -0.00066635013 ;
	setAttr ".uvtk[48]" -type "float2" -0.21089089 0.013196588 ;
	setAttr ".uvtk[49]" -type "float2" 0.00094091892 -0.00017124414 ;
	setAttr ".uvtk[59]" -type "float2" -0.19452888 0.062575787 ;
	setAttr ".uvtk[60]" -type "float2" 0.001321435 0.00013068318 ;
	setAttr ".uvtk[70]" -type "float2" -0.178334 0.11162725 ;
	setAttr ".uvtk[71]" -type "float2" 0.0014026165 8.2671642e-05 ;
	setAttr ".uvtk[81]" -type "float2" -0.16264153 0.15935996 ;
	setAttr ".uvtk[82]" -type "float2" 0.0012147427 -0.0005556941 ;
	setAttr ".uvtk[88]" -type "float2" -0.14576948 0.20344514 ;
	setAttr ".uvtk[89]" -type "float2" -0.13685369 0.18703344 ;
	setAttr ".uvtk[106]" -type "float2" -0.1279881 0.16781425 ;
	setAttr ".uvtk[107]" -type "float2" 0.00056827068 0.00019824505 ;
	setAttr ".uvtk[108]" -type "float2" 0.00085198879 0.00012797117 ;
	setAttr ".uvtk[109]" -type "float2" 0.00079619884 8.5443258e-05 ;
	setAttr ".uvtk[110]" -type "float2" 0.00045192242 -0.00018411875 ;
	setAttr ".uvtk[111]" -type "float2" -9.3579292e-05 -0.00077587366 ;
	setAttr ".uvtk[112]" -type "float2" -0.00044929981 -0.0017370284 ;
	setAttr ".uvtk[128]" -type "float2" -0.1191287 0.14702803 ;
	setAttr ".uvtk[129]" -type "float2" 0.00027251244 0.00088816881 ;
	setAttr ".uvtk[130]" -type "float2" 0.00040912628 0.00039312243 ;
	setAttr ".uvtk[131]" -type "float2" 0.00032258034 0.00014334917 ;
	setAttr ".uvtk[132]" -type "float2" 9.3698502e-05 -0.00014358759 ;
	setAttr ".uvtk[133]" -type "float2" -9.4532967e-05 -0.00068831444 ;
	setAttr ".uvtk[134]" -type "float2" -2.8610229e-06 -0.0016095936 ;
	setAttr ".uvtk[150]" -type "float2" -0.11023545 0.12595731 ;
	setAttr ".uvtk[151]" -type "float2" 0.00017952919 0.0012470782 ;
	setAttr ".uvtk[152]" -type "float2" 0.00012910366 0.00059270859 ;
	setAttr ".uvtk[153]" -type "float2" -8.9883804e-05 0.00021952391 ;
	setAttr ".uvtk[154]" -type "float2" -0.00028204918 -1.1235476e-05 ;
	setAttr ".uvtk[155]" -type "float2" -0.00026154518 -0.00033074617 ;
	setAttr ".uvtk[156]" -type "float2" 8.225441e-06 -0.0011313558 ;
	setAttr ".uvtk[172]" -type "float2" -0.1010648 0.1047191 ;
	setAttr ".uvtk[173]" -type "float2" 0.00036084652 0.0013259649 ;
	setAttr ".uvtk[174]" -type "float2" -5.1379204e-05 0.0006197691 ;
	setAttr ".uvtk[175]" -type "float2" -0.00049674511 0.00021255016 ;
	setAttr ".uvtk[176]" -type "float2" -0.00075244904 8.6039305e-05 ;
	setAttr ".uvtk[177]" -type "float2" -0.00069379807 0.00018006563 ;
	setAttr ".uvtk[178]" -type "float2" -0.00023853779 -3.3080578e-05 ;
	setAttr ".uvtk[194]" -type "float2" -0.090629339 0.082848877 ;
	setAttr ".uvtk[195]" -type "float2" 0.00082564354 0.001178056 ;
	setAttr ".uvtk[196]" -type "float2" -0.0003259182 0.0005325377 ;
	setAttr ".uvtk[197]" -type "float2" -0.00094795227 0.00010797381 ;
	setAttr ".uvtk[198]" -type "float2" -0.0012408495 -5.5402517e-05 ;
	setAttr ".uvtk[199]" -type "float2" -0.001321435 0.00029850006 ;
	setAttr ".uvtk[200]" -type "float2" -0.001036644 0.0016699582 ;
	setAttr ".uvtk[201]" -type "float2" 0.59729373 -0.12241802 ;
	setAttr ".uvtk[204]" -type "float2" -0.076889157 0.061099708 ;
	setAttr ".uvtk[205]" -type "float2" 0.00046098232 0.0015125871 ;
	setAttr ".uvtk[206]" -type "float2" -0.0011197329 0.000692904 ;
	setAttr ".uvtk[207]" -type "float2" -0.0014350414 9.4592571e-05 ;
	setAttr ".uvtk[208]" -type "float2" -0.0014443398 -0.00043487549 ;
	setAttr ".uvtk[209]" -type "float2" -0.0013397932 -0.00071403384 ;
	setAttr ".uvtk[210]" -type "float2" -0.001270771 0.00017480552 ;
	setAttr ".uvtk[211]" -type "float2" 0.52426541 -0.14925462 ;
	setAttr ".uvtk[233]" -type "float2" 0.43181705 -0.14798717 ;
	setAttr ".uvtk[328]" -type "float2" 0.67144001 -0.089651287 ;
	setAttr ".uvtk[329]" -type "float2" -0.00027918816 -0.0025047511 ;
	setAttr ".uvtk[330]" -type "float2" 0.00048530102 -0.0023722947 ;
	setAttr ".uvtk[331]" -type "float2" 0.0012577772 -0.0022173226 ;
	setAttr ".uvtk[356]" -type "float2" 0.3440069 -0.11664757 ;
	setAttr ".uvtk[358]" -type "float2" 0.25677288 -0.084930658 ;
	setAttr ".uvtk[359]" -type "float2" 0.16971612 -0.05310151 ;
	setAttr ".uvtk[360]" -type "float2" 0.082869053 -0.021111637 ;
	setAttr ".uvtk[361]" -type "float2" -0.0035175085 0.01149568 ;
	setAttr ".uvtk[362]" -type "float2" -0.085753918 0.049102187 ;
	setAttr ".uvtk[363]" -type "float2" -0.098664641 0.078871161 ;
	setAttr ".uvtk[364]" -type "float2" -0.10778248 0.10170114 ;
	setAttr ".uvtk[365]" -type "float2" -0.1165247 0.12324333 ;
	setAttr ".uvtk[366]" -type "float2" -0.12520289 0.14447904 ;
	setAttr ".uvtk[367]" -type "float2" -0.13373339 0.16554749 ;
	setAttr ".uvtk[368]" -type "float2" -0.14152443 0.18613392 ;
	setAttr ".uvtk[369]" -type "float2" -0.14235473 0.20218414 ;
	setAttr ".uvtk[370]" -type "float2" -0.15197027 0.15689638 ;
	setAttr ".uvtk[371]" -type "float2" -0.16707098 0.10812595 ;
	setAttr ".uvtk[372]" -type "float2" -0.18303764 0.05876103 ;
	setAttr ".uvtk[373]" -type "float2" -0.19925874 0.0092083514 ;
	setAttr ".uvtk[374]" -type "float2" -0.215662 -0.040475875 ;
	setAttr ".uvtk[375]" -type "float2" -0.23230404 -0.090418041 ;
	setAttr ".uvtk[376]" -type "float2" -0.2563383 -0.14456856 ;
	setAttr ".uvtk[377]" -type "float2" -0.32205302 -0.18818212 ;
	setAttr ".uvtk[379]" -type "float2" -0.39461756 -0.22593245 ;
	setAttr ".uvtk[388]" -type "float2" 0.68067813 -0.11233354 ;
	setAttr ".uvtk[390]" -type "float2" 0.60557532 -0.14591983 ;
	setAttr ".uvtk[391]" -type "float2" 0.52487576 -0.17243969 ;
	setAttr ".uvtk[484]" -type "float2" -0.0020574331 -0.00022524595 ;
	setAttr ".uvtk[485]" -type "float2" -0.0020394325 0.0081449449 ;
	setAttr ".uvtk[486]" -type "float2" 0.0008995533 0.0011858344 ;
	setAttr ".uvtk[487]" -type "float2" 0.0053204298 0.00059479475 ;
	setAttr ".uvtk[488]" -type "float2" -0.0009573698 -0.0026653409 ;
	setAttr ".uvtk[489]" -type "float2" -0.0002168417 0.0018979311 ;
	setAttr ".uvtk[490]" -type "float2" -6.8187714e-05 0.0019780397 ;
	setAttr ".uvtk[491]" -type "float2" 0.00035762787 0.0018906593 ;
	setAttr ".uvtk[492]" -type "float2" 0.00081753731 0.001518786 ;
	setAttr ".uvtk[493]" -type "float2" 2.4199486e-05 -0.0007096231 ;
	setAttr ".uvtk[494]" -type "float2" -0.40632498 -0.20516774 ;
	setAttr ".uvtk[495]" -type "float2" 0.0012711287 -0.00042015314 ;
	setAttr ".uvtk[496]" -type "float2" 0.005182147 0.030888289 ;
	setAttr ".uvtk[497]" -type "float2" 0.090531945 -0.001060605 ;
	setAttr ".uvtk[498]" -type "float2" 0.0010948181 -0.00051623583 ;
	setAttr ".uvtk[499]" -type "float2" 0.0016946793 0.00048655272 ;
	setAttr ".uvtk[500]" -type "float2" 0.17714727 -0.032788098 ;
	setAttr ".uvtk[501]" -type "float2" 0.0017920732 0.00017052889 ;
	setAttr ".uvtk[502]" -type "float2" 0.2640686 -0.064446777 ;
	setAttr ".uvtk[503]" -type "float2" 0.001722455 -0.00047317147 ;
	setAttr ".uvtk[504]" -type "float2" 0.35110378 -0.095855162 ;
	setAttr ".uvtk[505]" -type "float2" 0.0013854504 -0.0011749268 ;
	setAttr ".uvtk[506]" -type "float2" 0.43810356 -0.12609559 ;
	setAttr ".uvtk[507]" -type "float2" 3.4570694e-06 -0.0015955865 ;
	setAttr ".uvtk[508]" -type "float2" -0.0080803633 7.0422888e-05 ;
	setAttr ".uvtk[509]" -type "float2" 0.0016745329 -0.0051665902 ;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "5E054CCD-4C56-4249-1E73-C0A86233CC19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[372]" "e[462]" "e[480:507]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "0EC72BF9-4E8F-DF7B-F071-AC8B5AC4D555";
	setAttr ".uopa" yes;
	setAttr -s 542 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.59576476 -0.58521867 -0.76913297
		 -0.34995306 -0.76531506 -0.52730072 -0.73206401 -0.57696116 -0.82716203 -0.57296604
		 -0.79124916 -0.62301368 -1.16714966 -0.88694644 -1.20339227 -0.83981943 -0.81361222
		 -0.43849263 -0.82370496 -0.43342239 -0.044941127 1.27532077 -0.8487134 0.85985684
		 0.047852993 1.36034453 0.0066702962 1.32261038 -0.94148731 -0.10039809 -0.71493083
		 -0.39302295 -1.040915608 -0.27293575 -0.97810286 -0.23192793 -0.67100662 -0.66329664
		 -0.51725328 0.18898147 -0.44681156 0.21999723 -0.97122502 -0.26284945 -0.71551251
		 -0.38357031 -0.25004745 0.47868687 -0.7776491 -0.35235503 -0.7832377 -0.3634795 -0.39726228
		 0.31296438 -0.39553457 0.34337628 -0.85302263 -0.095615029 -0.84860355 -0.066605434
		 -0.01941818 0.65220672 -0.13274163 0.68372667 -0.085664332 0.60523272 -0.85242814
		 -0.66880941 -0.75500816 -0.73086965 -0.78882623 -0.37460405 -0.1415875 0.55958116
		 -0.09655273 1.22803092 -0.92251921 0.89978927 -0.84490722 -0.036045656 -0.9673748
		 -0.21618684 -0.72128505 -0.40567148 -1.1041292 -0.31589985 -0.8888824 -0.61850619
		 -0.91482782 -0.71425247 -0.84052557 -0.79411519 -0.79441482 -0.38572854 -0.18942589
		 0.51496553 -0.14816415 1.18074131 -0.99632502 0.93972158 -0.84176993 -0.0042874217
		 -0.96411049 -0.17076802 -0.7276392 -0.41832 -1.16732335 -0.36020762 -0.95110124 -0.66364223
		 -0.97797215 -0.75913751 -0.92655015 -0.85571635 -0.80000335 -0.39685306 -0.23081475
		 0.47117618 -0.19977564 1.13345146 -1.070130587 0.97965395 -0.83907348 0.028416544
		 -0.96130753 -0.12632927 -0.73399341 -0.43096855 -1.23045087 -0.40511698 -1.013808846
		 -0.70828104 -1.041179419 -0.80342555 -1.01432693 -0.91585428 -0.80559194 -0.40797755
		 -0.26697582 0.42805666 -0.25138712 1.086161852 -1.1439364 1.019586325 -0.83673126
		 0.061879992 -0.95887464 -0.08267644 -0.7403475 -0.44361702 -1.29282713 -0.45057321
		 -1.076773643 -0.75236398 -1.10436451 -0.84638727 -0.81735075 -0.42077389 -0.41830266
		 0.2547619 -0.29884082 0.38548753 -0.30299854 1.038872123 -1.21774209 1.059518576
		 -0.83467776 0.095962614 -0.95674324 -0.039663434 -1.47413075 -0.45630318 -1.35399139
		 -0.49633908 -1.14002359 -0.7957834 -0.35461009 0.99158239 -0.39579272 0.95384824
		 -0.95486021 0.0028216243 -0.8328625 0.13055649 -0.75305593 -0.46891406 -1.41275632
		 -0.54251152 -0.75904024 -0.35502329 -0.79947025 -0.47745371 -0.86253256 -0.52272588
		 -0.92489529 -0.56805694 -0.98725206 -0.61304533 -1.049838424 -0.65766525 -1.11271477
		 -0.70199025 -1.17594838 -0.74621117 -1.2393409 -0.79111117 -0.80351949 -0.4435629
		 -0.58838981 0.15796262 -0.46808082 0.28255543 -0.43697548 0.91611397 -1.24960566
		 1.0006262064 -1.17579997 0.96069378 -1.10199428 0.92076159 -1.028188586 0.88082922
		 -0.95438278 0.84089684 -0.88057697 0.80096436 0.58305883 0.077673465 -0.24790835
		 0.71525979 -0.36605704 0.50854653 -0.7489475 -0.36009353 -0.83458173 -0.42754459
		 -0.89787543 -0.47263059 -0.96068811 -0.51768351 -1.023264647 -0.56251407 -1.085848212
		 -0.60717493 -1.14862001 -0.65179449 -1.21173787 -0.69654763 -1.27516305 -0.74170327
		 -0.79342681 -0.4486331 -0.66023135 0.12694076 -0.53959781 0.25214955 -0.47815824
		 0.8783797 -1.28146923 0.94173384 -1.20766342 0.90180147 -1.13385785 0.86186916 -1.060052037
		 0.82193685 -0.98624641 0.78200448 -0.91244054 0.74207199 0.48099455 0.058022875 -0.36496294
		 -0.22194333 -0.48398292 0.53839213 -0.73885483 -0.36516374 -0.87007648 -0.37758929
		 -0.93344569 -0.42268121 -0.99650848 -0.46741402 -1.059247971 -0.51203668 -1.12182009
		 -0.55671185 -1.18440759 -0.60156971 -1.2472645 -0.64666367 -1.31062782 -0.69178337
		 -0.78333408 -0.45370334 -0.73278809 0.095915735 -0.61182362 0.22174662 -0.51934087
		 0.84064555 -1.31333268 0.88284153 -1.23952687 0.84290922 -1.1657213 0.80297691 -1.091915607
		 0.76304448 -1.018109798 0.72311217 -0.94430399 0.68317974 0.37893039 0.038372278
		 -0.48395234 -0.19038293 -0.60387325 -0.40052673 -0.72876209 -0.37023398 -0.90594327
		 -0.32816225 -0.96927607 -0.37293434 -1.032444954 -0.41717511 -1.095280647 -0.46154177
		 -1.15783358 -0.50620079 -1.22016537 -0.55123997 -1.2825464 -0.59663773 -1.34573412
		 -0.64192128 -0.7732414 -0.45877358 -0.80607122 0.064887583 -0.68476897 0.19134679
		 -0.56052363 0.80291134 -1.34519613 0.82394934 -1.27139044 0.78401691 -1.19758463
		 0.7440846 -1.12377906 0.70415223 -1.049973249 0.66421998 -0.97616744 0.62428749 -0.28803843
		 0.0043464676 -0.60492498 -0.15880826 -0.72577715 -0.37071037 -0.71866935 -0.37530422
		 -0.94196749 -0.27950281 -1.005233407 -0.32321328 -1.06841445 -0.36677247 -1.13135588
		 -0.41094482 -1.19401169 -0.45563215 -1.2561605 -0.50082839 -1.31776035 -0.54647708
		 -1.37996852 -0.59212661 -0.76314867 -0.46384382 -0.88009161 0.033856243 -0.75844508
		 0.16095006 -0.60170627 0.76517719 -1.3770597 0.76505697 -1.30325389 0.7251246 -1.22944832
		 0.68519223 -1.15564251 0.64525998 -1.08183682 0.60532761 -1.0080310106 0.56539512
		 -1.045352101 0.35868075 -0.72793132 -0.12721908 -0.84974658 -0.34090909 -0.64288902
		 0.72744298 -1.40892315 0.7061646 -1.33511746 0.66623223 -1.26131177 0.62629998 -1.18750608
		 0.58636761 -1.11370027 0.5464353 -1.039894462 0.50650287 -1.0041693449 0.396415 -0.81679702
		 0.33536923 -0.74628532 0.33043584 -0.8873086 0.34030265 -0.95782006 0.34523606 -1.028331637
		 0.35016945 -1.098843098 0.3551029 -1.16935492 0.36003625 -1.23986638 0.36496973 -1.29613018
		 0.36890626 -1.35239398 0.37284288 0.4839198 0.029792018 0.37562332 -0.34305105 0.5857681
		 -0.011707902 0.58114338 0.048510619 0.38669634 0.011073414 0.28941947 -0.34225619
		 -0.18694821 -0.26999587 0.20321566 -0.3414613 0.19740599 0.26440948 -0.21885195 -0.014964577
		 0.14114225 0.26834601 -0.96365517 0.45581615 0.00011897087 0.27821288 -0.070392609
		 0.28314626 -0.14090413 0.28807968 -0.21141565 0.29301307 -0.28192723 0.29794651 -0.35243881
		 0.30287993 -0.40870261 0.30681646 -0.46496642 0.31075305 -0.5212301 0.31468961 -0.57749391
		 0.31862617 -0.63375771 0.32256269 -0.69002163 0.32649928 0.45113719 -0.20819806 -0.245314
		 0.72594965 0.13578096 -0.12204657 0.45083532 -0.20129488;
	setAttr ".uvtk[250:499]" 0.59105462 -0.0073513128 0.5872643 0.055830281 0.48520005
		 0.036179684 0.41888148 -0.20960863 0.41857958 -0.20270546 0.3831358 0.016529094 -0.20351174
		 -0.021791164 -0.26760498 0.0082459934 0.2902872 -0.11668531 0.30053413 -0.11278575
		 0.13215247 -0.11859183 0.071811169 -0.45968884 -0.014392674 -0.45889398 -0.10059649
		 -0.4580991 -0.32445925 0.34977701 -0.29617876 0.3922675 -0.26432753 0.43526369 -0.22818309
		 0.47886759 -0.1868149 0.52321106 -0.1390025 0.56846696 -0.083112597 0.61486655 -0.016909719
		 0.66272616 -0.13019103 0.69433057 -0.72514755 -0.1161715 -0.8501873 -0.084474176
		 -0.84577793 -0.056452975 -0.84208959 -0.02672042 -0.83895868 0.0043350756 -0.83626789
		 0.036434919 -0.83393019 0.069373369 -0.83188069 0.10299546 -0.83006901 0.13718209
		 -0.75566989 0.16754264 -0.68201178 0.19790661 -0.60908383 0.22827405 -0.53687513
		 0.25864482 -0.46537489 0.2890189 -0.39457291 0.31939638 -0.84451079 -0.062195793
		 0.065392256 0.19840825 0.19216752 0.18953824 -0.26129887 -0.11034819 -0.24595872
		 -0.11717477 0.20212948 -0.45926058 0.28833324 -0.46005547 0.37453711 -0.46085036
		 0.62029767 -0.12251583 0.62635362 -0.1206287 -1.35763252 0.29797164 -1.30136859 0.29403508
		 -0.011886835 0.68376333 -0.078003109 0.63413465 -0.13382655 0.58624029 -0.1815871
		 0.53970498 -0.22291386 0.49425381 -0.25902498 0.44968176 -0.29084921 0.40583211 -0.31910706
		 0.36258337 -0.38918829 0.33226508 -0.45995724 0.30195054 -0.53142381 0.27164003 -0.60359812
		 0.24133345 -0.67649102 0.2110309 -0.75011349 0.18073237 -0.824476 0.15043801 -0.28716564
		 0.2230753 -0.21665406 0.21814191 -0.1461426 0.21320847 -0.075631022 0.20827508 -0.0051195025
		 0.20334166 0.6092726 -0.0016743094 0.14817509 -0.11320607 0.2536698 0.26047289 -0.59671688
		 -0.12594341 0.48339292 -0.20678748 -0.60219091 -0.14785236 -0.48126644 -0.17951715
		 -0.36232346 0.75758356 -1.086534858 0.32094651 -0.87049836 0.64324737 -0.83863473
		 0.70213974 -0.80677134 0.76103204 0.46182719 -0.3438459 0.15811595 -0.44954282 -0.19933772
		 -0.0261398 0.30068028 -0.10292297 0.15801507 -0.46048367 0.38853681 -0.20214422 -0.042237818
		 -0.27079073 -0.25975531 0.0040027685 0.41926265 -0.20080055 0.10247275 -0.27158561
		 0.44998854 -0.19945687 0.24718335 -0.27238047 0.38632387 -0.20411602 0.30288315 -0.10871155
		 0.28107172 -0.0031214803 0.28947288 -0.0076451674 0.57353759 0.022070795 0.56545711
		 0.019614302 0.48309103 -0.19988431 0.48071444 -0.1981132 0.38662577 -0.2110192 0.2768662
		 0.018721709 0.59175551 0.014603116 0.14742658 -0.12294191 -0.91204363 0.50310594
		 0.07063067 0.27327943 -0.86043221 0.55039561 -0.80882066 0.59768534 -0.75720924 0.64497501
		 -0.70559782 0.69226468 -0.65398633 0.73955446 -0.6128037 0.77728862 -0.57162088 0.81502283
		 -0.5304383 0.85275698 -0.48925549 0.89049125 -0.44807273 0.92822546 -0.40688998 0.96595973
		 -0.36570734 1.003693819 -0.3140958 1.050983667 -0.26248437 1.098273277 -0.21087295
		 1.14556301 -0.15926147 1.19285262 -0.10764998 1.24014235 -0.05603838 1.28743219 -0.0044269562
		 1.3347218 0.036755681 1.37245607 0.58149374 -0.010431424 0.077938497 1.41019034 0.56327575
		 -0.0029637441 0.24696216 -0.31265053 0.55620748 -0.0029507875 0.10225156 -0.31185567
		 -0.042459011 -0.31106082 -0.25492528 -0.021306515 -0.1871694 -0.31026593 -0.26224634
		 -0.019833043 -1.09763217 0.333058 -0.28267986 -0.023732588 -1.056449413 0.37079224
		 -1.015266776 0.40852639 -0.83644819 -0.0080692172 -0.84012091 -0.036148816 -0.83333051
		 0.021582395 -0.83065057 0.052474856 -0.82832217 0.084363848 -0.82628077 0.11706534
		 -0.35767722 0.22800872 -0.41394103 0.23194525 -0.47020483 0.23588184 -0.52646863
		 0.23981836 -0.58273244 0.24375491 -0.63899624 0.24769147 -0.69526005 0.25162804 -0.75152385
		 0.2555646 -0.82203543 0.26049805 -0.89254701 0.26543143 -0.96305847 0.27036488 -1.033570051
		 0.27529827 -1.10408163 0.28023165 -1.17459333 0.2851651 -1.24510491 0.29009852 -0.12508368
		 0.71553642 -0.24011952 0.74732709 0.6445716 -0.1149517 0.13652948 -0.11231073 0.13265824
		 -0.11201309 0.46074098 -0.46164519 0.07191205 -0.44874799 -0.014291823 -0.44795313
		 -0.10049558 -0.44715828 -0.2408593 -0.11944406 0.29727399 -0.10421927 0.28702712
		 -0.10811882 0.24843132 0.18560171 -0.71957397 -0.094079375 0.13590372 0.19347477
		 -0.7243892 -0.37911099 -0.97583371 -0.31112337 -0.76350915 -0.45698252 -0.75463253
		 -0.46144184 -1.50955546 -0.61056656 -1.5492456 -0.534253 -0.88218129 -0.16292137
		 -0.70857668 -0.38037446 -0.73326582 -0.37465167 -0.77238584 -0.4525232 -1.46394968
		 -0.68287659 -0.82875013 -0.22978401 -0.7421425 -0.37019232 -0.78126246 -0.44806388
		 -1.41621077 -0.7529031 -0.7782169 -0.29785508 -0.75101912 -0.365733 -0.79013914 -0.44360453
		 -1.36706066 -0.8214727 -0.7290566 -0.36644703 -0.7598958 -0.36127368 -0.79901576
		 -0.43914521 -1.31652355 -0.88950181 -0.68127203 -0.43647754 -0.76877248 -0.35681435
		 -0.80789244 -0.43468589 -1.2630564 -0.95624578 -0.63554084 -0.50878859 -0.74670178
		 -0.45626554 -1.39036703 -0.38866559 -0.74904394 -0.45031732 -0.74345541 -0.43919283
		 -0.81118053 -0.41910204 -0.38617438 0.28905404 -1.10562491 -0.97304463 -0.81099653
		 -0.40812537 -1.30492949 -0.32538778 -0.73786682 -0.42806834 -0.34969115 0.32277754
		 -0.80464244 -0.39547688 -1.21892285 -0.26374775 -0.73227823 -0.41694385 -0.30790281
		 0.35580841 -0.79828823 -0.38282835 -1.13116491 -0.20353511 -0.7266897 -0.40581933
		 -0.25956154 0.3879838 -0.79193401 -0.37017986 -1.039859533 -0.14609566 -0.72110105
		 -0.39469481 -0.20299482 0.41908544 -0.7855798 -0.35753131 -0.13590837 0.44881362
		 -0.77922571 -0.34488282 -0.81676906 -0.43022653 -1.20383918 -1.018654346 -0.9342252
		 0.52546287 -0.96608883 0.4665705 -1.45086551 0.80498928 -1.48272896 0.74609697 -0.90236181
		 0.58435512 -1.41900194 0.86388171 -1.38713849 0.92277396 -1.35527492 0.98166627 -1.32341146
		 1.040558577 -0.77490777 0.81992447 0.089035749 1.39807892 -1.29154789 1.099450946
		 -0.69450057 0.68015313 -0.74611199 0.63286352 -1.18587863 1.11841083 -1.11207294
		 1.078478456;
	setAttr ".uvtk[500:541]" -0.79772341 0.58557385 -1.038267136 1.038546205 -0.84933496
		 0.53828412 -0.96446157 0.99861383 -0.90094638 0.49099445 -0.89065576 0.95868152 -0.95255792
		 0.44370466 -0.81684995 0.91874909 -0.74304432 0.87881672 -1.25968444 1.15834332 -0.46566445
		 0.31296444 -0.3271324 0.34337622 -0.53648299 0.28255549 -0.60799998 0.25214955 -0.68022579
		 0.22174668 -0.75317115 0.19134682 -0.82684726 0.16095009 -0.90126461 0.13055652 -0.90307993
		 0.095962644 -0.90513343 0.061880022 -0.90747565 0.028416604 -0.91017205 -0.0042874515
		 -0.9133094 -0.036045626 -0.91700572 -0.066605404 -0.92142481 -0.09561497 -0.79633349
		 -0.12721908 -0.67332715 -0.15880825 -0.55235451 -0.19038287 -0.36496288 0.74680656
		 -0.43336505 0.74680662 -0.43336505 -0.22194336 -0.31631047 0.71525991 -0.2011438
		 0.68372673 -0.087820351 0.65220678 -0.1540665 0.60523278 -0.20998967 0.55958122 -0.25782806
		 0.51496559 -0.29921693 0.47117627 -0.33537799 0.42805672 -0.36724299 0.38548759 -0.48398286
		 -0.43035784 -0.36232346 -0.21116637;
createNode shadingEngine -n "lambert1SG";
	rename -uid "9FB48EB4-452A-B54B-8F03-05BF348C3E9B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "61B50BBC-47AF-4D66-7BD6-7DA784F7F60A";
createNode groupId -n "groupId1";
	rename -uid "EA9C0354-4532-1CB3-A51B-9DA91AFD26BE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "EBFA1207-440B-36C5-03F9-2290D9444F90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:3]" "f[5:7]" "f[9:17]";
	setAttr ".irc" -type "componentList" 2 "f[4]" "f[8]";
createNode groupId -n "groupId2";
	rename -uid "20E3D052-4953-C2F9-CF4B-3DBA0239DC62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "8CB448BF-4707-65D6-CA5B-F18ED348EEBE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "A9E4937C-4AFA-8B06-247B-DFB4FDDA5A20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[4]" "f[8]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "8EA8BF61-4F19-56E9-74F1-8598644CF146";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.444442678380966 -546.03172433439477 ;
	setAttr ".tgi[0].vh" -type "double2" 883.33329823282179 44.444442678380966 ;
	setAttr ".tgi[0].ni[0].x" 325.71429443359375;
	setAttr ".tgi[0].ni[0].y" -180;
	setAttr ".tgi[0].ni[0].nvs" 1923;
createNode phong -n "MaterialFBXASC046002";
	rename -uid "51DF7F0B-43B6-C7B7-35AB-848F13A5D54A";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 25;
createNode shadingEngine -n "bridgeFBXASC046001SG";
	rename -uid "F021764C-4407-D86E-BA0C-9F80D36C1224";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "20CFEE39-467A-BA65-646C-FA9672226EC9";
createNode phong -n "MaterialFBXASC046003";
	rename -uid "A6BDBDD8-454D-94FE-68C1-DFABEE6FDAA0";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 25;
createNode shadingEngine -n "bridgeFBXASC046001SG1";
	rename -uid "5FEF450F-48F5-83BE-5AE3-428BC372DBE0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "44B2AC1A-4F0A-B8EC-4E92-7787AD3C9923";
createNode phong -n "MaterialFBXASC046004";
	rename -uid "B9F49C0D-41AF-9FE7-97BA-F68502084FFF";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".cp" 25;
createNode shadingEngine -n "bridgeFBXASC046001SG2";
	rename -uid "9790235B-457C-6A1D-1761-D4AF6D5963E6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "57799FE8-4651-57AC-E074-11B1FDE7C8AC";
createNode phong -n "MaterialFBXASC046006";
	rename -uid "C16EFF7D-4C49-8BF3-0C24-949EB7C4B9ED";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".cp" 25;
createNode shadingEngine -n "bridgeFBXASC046001SG3";
	rename -uid "79723B78-4C8A-39F0-4121-BB8D3373555B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "1384567F-48D7-61C4-2624-2E8C51F4BAF2";
createNode file -n "base_color_texture_ncl1_1";
	rename -uid "82B3DCA5-4DC8-CCD9-17DD-E792790B3257";
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (10)\\PaintedPlaster006_2K_Color.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "A3580CF9-4769-BEF8-5E6F-CBB5369CC0C5";
createNode bump2d -n "bump2d1";
	rename -uid "F0B19042-41A6-9D47-2527-02BFFB52C94A";
	setAttr ".bi" 1;
createNode file -n "normalmap_texture_ncl1_1";
	rename -uid "E4798138-48DC-BB53-3E8E-E8AE98EA937E";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (10)\\PaintedPlaster006_2K_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "579EA356-41AB-7BA3-033A-E59E01B2D94D";
createNode file -n "base_color_texture";
	rename -uid "56AEA264-456F-6E47-E675-FB8D795F7F25";
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (8)\\Metal014_2K_Color.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "183CC422-4D66-F695-0416-AD981AD41854";
createNode bump2d -n "bump2d2";
	rename -uid "B900B5EA-4542-6BED-8FED-8BB190D13E12";
	setAttr ".bi" 1;
createNode file -n "normalmap_texture";
	rename -uid "32054AD8-4FCA-63B0-9821-A0BDB2E0DB8C";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (8)\\Metal014_2K_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "DE755212-4EB3-5B3A-D148-08A91BFC91DC";
createNode file -n "metallic_texture";
	rename -uid "E50C6343-46BD-63A9-B54E-F9B9CAF460ED";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (8)\\Metal014_2K_Roughness.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "2C5EED20-4112-19BE-34D1-E98D48D3637A";
createNode file -n "base_color_texture_ncl1_3";
	rename -uid "9CB5AC19-413C-D548-CC33-C8ADB3ECEBFE";
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (12)\\Metal006_2K_Color.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "B01DE082-43BF-139E-FE81-44910BE20020";
createNode bump2d -n "bump2d3";
	rename -uid "A4440A88-4740-7DCE-79F6-0BBDDB4996C9";
	setAttr ".bi" 1;
createNode file -n "normalmap_texture_ncl1_3";
	rename -uid "EEEE23D4-45B1-2C78-C4A6-29B97AABE1B7";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (12)\\Metal006_2K_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "1788F906-475C-835B-DE86-CEA32FC3FE0E";
createNode file -n "metallic_texture_ncl1_2";
	rename -uid "037CD9BC-46B5-94E9-D7B8-EAB54A1DC810";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (12)\\Metal006_2K_Roughness.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "CB4D72CA-4F01-45B6-AD89-9CB08B6FF17B";
createNode file -n "base_color_texture_ncl1_2";
	rename -uid "CD62915E-4493-C2AB-1541-CBAFACC198B6";
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (11)\\Metal018_2K_Color.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "364C8E95-42E7-ADA7-1DF4-D18A60505C9E";
createNode bump2d -n "bump2d4";
	rename -uid "BAA8DA4A-4CFD-EADD-7D6E-B4939FBDA59A";
	setAttr ".bi" 1;
createNode file -n "normalmap_texture_ncl1_2";
	rename -uid "E83E5052-4ED2-4E4F-D7C2-7C9327CBFD63";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (11)\\Metal018_2K_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "6DA4931A-417B-9794-DFFF-A79BC20284AE";
createNode file -n "metallic_texture_ncl1_1";
	rename -uid "44D2935F-4AE9-CDA9-4199-469C3D5985BE";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (11)\\Metal018_2K_Roughness.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "279B2463-4F7F-18BB-6287-D9B059773D52";
createNode phong -n "MaterialFBXASC046007";
	rename -uid "68B0E795-4CD0-43D8-26B0-7B9586E7A1E5";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0 0 0 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 25;
createNode shadingEngine -n "SphereSG";
	rename -uid "D62A6C69-4900-6385-4FF7-95BF98545747";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "2E8D2625-4F6A-53E9-632E-738DDC4A09F0";
createNode phong -n "MaterialFBXASC046008";
	rename -uid "E6297219-4ADA-1BF4-8E65-96BEBB14E613";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "SphereSG1";
	rename -uid "670CCC15-4434-B9EE-781B-B0A27BFFA6CD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "B7EC3B1B-42BD-47E2-54F3-978485CDCC5D";
createNode phong -n "MaterialFBXASC046009";
	rename -uid "2FFD8EF9-4AB9-B613-B1AD-7D90F4F200E1";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.024385478 0.13591839 0.13739693 ;
	setAttr ".sc" -type "float3" 0.0060963696 0.033979598 0.034349233 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.024385478 0.13591839 0.13739693 ;
	setAttr ".cp" 25;
createNode shadingEngine -n "SphereSG2";
	rename -uid "C282ACC2-4A3A-E5F0-D210-1DBD21151EFA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "E00E506F-43B8-B10B-10F5-B69A6E78857C";
createNode phong -n "Material";
	rename -uid "0598B8D8-4708-232B-6B33-2C9DC2D05DFB";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "railing1SG";
	rename -uid "741128E4-40CE-906F-F69F-F8BAE17250D8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "6EC147DA-4689-5FD6-BCA4-0CB7FBE880C9";
createNode file -n "base_color_texture_ncl1_4";
	rename -uid "DD079F4E-412A-24F2-8F03-6C8C696A9DB7";
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (7)\\Metal003_2K_Color.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture12";
	rename -uid "069E985D-4217-32C2-AE7D-6DAB97DCE62D";
createNode file -n "roughness_texture";
	rename -uid "F7E82447-4941-AFF8-8956-89800D4BB4A5";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (7)\\Metal003_2K_Roughness.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture13";
	rename -uid "20795D87-4FB2-835D-8F57-7BACB56B7E58";
createNode setRange -n "setRange1";
	rename -uid "89043DB7-445D-8FD3-8A26-96A52ECAB566";
	setAttr ".n" -type "float3" 2 0 0 ;
	setAttr ".m" -type "float3" 100 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode bump2d -n "bump2d5";
	rename -uid "1AD95189-4958-DEA0-7EAD-2EB0CD12B2E0";
	setAttr ".bi" 1;
createNode file -n "normalmap_texture_ncl1_4";
	rename -uid "2E9A8FE4-4B0A-462A-1E98-C582ACD1C349";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (7)\\Metal003_2K_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture14";
	rename -uid "CE6EC38D-4B81-C098-FBCB-EAAA3DC022DA";
createNode file -n "metallic_texture_ncl1_3";
	rename -uid "A946ECC5-4234-7100-0F8B-11B1E22B0048";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (7)\\Metal003_2K_Roughness.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture15";
	rename -uid "ACFC8144-4A3F-AC0A-7562-ACAD98D6529D";
createNode setRange -n "setRange2";
	rename -uid "CEBBB7B1-40CF-452F-CA1A-DEA221145360";
	setAttr ".n" -type "float3" 2 0 0 ;
	setAttr ".m" -type "float3" 100 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "setRange3";
	rename -uid "72FE5571-4857-1B29-D14F-3D95404983D9";
	setAttr ".n" -type "float3" 2 0 0 ;
	setAttr ".m" -type "float3" 100 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode setRange -n "setRange4";
	rename -uid "B94F6852-4FAA-4743-416E-3FBD4FAE86E9";
	setAttr ".n" -type "float3" 2 0 0 ;
	setAttr ".m" -type "float3" 100 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode phong -n "MaterialFBXASC046010";
	rename -uid "629851B4-46D5-5573-E081-B283B5E085DA";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 25;
createNode shadingEngine -n "CubeFBXASC046002SG";
	rename -uid "7F9C90A0-4162-4FDC-D347-FBBB4513A0A8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "798B619E-4EEE-7637-2C2A-AB959D8800DF";
createNode file -n "base_color_texture_ncl1_5";
	rename -uid "8C38ED9E-4D78-786F-7147-3F9C8AE5DB38";
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (14)\\DiamondPlate003_2K_Color.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture16";
	rename -uid "013B7173-49E6-12ED-5666-809D8ABC388D";
createNode bump2d -n "bump2d6";
	rename -uid "A72071DD-4E3E-C941-2A41-99AA44FFCFE5";
	setAttr ".bi" 1;
createNode file -n "normalmap_texture_ncl1_5";
	rename -uid "D15B4310-48C9-CAAA-0980-639EA4ED2E5E";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (14)\\DiamondPlate003_2K_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture17";
	rename -uid "AB18D0AA-4D5B-0FAC-9115-198AD854F4BA";
createNode file -n "metallic_texture_ncl1_4";
	rename -uid "E780E219-4CDB-6DBD-84ED-E186393D69EF";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (14)\\DiamondPlate003_2K_Metalness.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture18";
	rename -uid "7D6FB860-45B3-A163-C9DD-059627A4EA4B";
createNode phong -n "MaterialFBXASC046001";
	rename -uid "147AC906-409E-32B4-5671-1ABE2D89B442";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
createNode shadingEngine -n "bridgeSG";
	rename -uid "1ABFCF67-4B0E-6A11-DC10-47923CC27D60";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "F1A00237-4FC0-A0FB-A2B7-39AC96BE0497";
createNode file -n "base_color_texture_ncl1_6";
	rename -uid "B46AE4BE-4809-A849-A6E3-C4B3B4B37287";
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (9)\\CorrugatedSteel001_2K_Color.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture19";
	rename -uid "E839DD3A-4F64-AFFA-7ED5-9BBED9A51E1E";
createNode file -n "roughness_texture_ncl1_1";
	rename -uid "D5242FC0-4D42-0A89-01E3-C4AE0030AEF1";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (9)\\CorrugatedSteel001_2K_Roughness.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture20";
	rename -uid "89F41CCD-4D5E-DCD3-F221-1782EBF297D1";
createNode setRange -n "setRange5";
	rename -uid "DFBE742B-4E77-BF83-C769-E5A3CF16CE04";
	setAttr ".n" -type "float3" 2 0 0 ;
	setAttr ".m" -type "float3" 100 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode bump2d -n "bump2d7";
	rename -uid "CC440BA4-475F-47BA-F8C1-DD96BDDCBAEC";
	setAttr ".bi" 1;
createNode file -n "normalmap_texture_ncl1_6";
	rename -uid "0CD88B7D-4206-2513-145D-4099BB99A48C";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (9)\\CorrugatedSteel001_2K_Normal.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture21";
	rename -uid "5170683B-4CBA-B485-C879-AB9737175E78";
createNode file -n "metallic_texture_ncl1_5";
	rename -uid "E5CF8B01-41F2-D420-FB98-DFA76A22CBD1";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Users\\User\\Desktop\\Blender Projects\\Blender\\New folder (9)\\CorrugatedSteel001_2K_Metalness.jpg";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture22";
	rename -uid "E0860F54-4A9B-545B-F972-21A1F9312A63";
createNode polyCube -n "polyCube3";
	rename -uid "0BC0F743-4871-C593-0A78-8489472C2336";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "6EF81409-41B1-D593-83F4-38B61A5F07A5";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.6074681924743348 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 0.5 ;
	setAttr ".rs" 51257;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 -0.80373409623716741 0.5 ;
	setAttr ".cbx" -type "double3" 0.5 0.80373409623716741 0.5 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "AB960436-44AF-7E59-183E-888012284108";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.6074681924743348 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 0.5 ;
	setAttr ".rs" 61543;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4220222532749176 -0.75837632950247535 0.5 ;
	setAttr ".cbx" -type "double3" 0.4220222532749176 0.75837632950247535 0.5 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "98514292-4FF2-3BCC-4AA6-94AAB2E4C054";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[8]" -type "float3" 0.077977739 0.028216893 0 ;
	setAttr ".tk[9]" -type "float3" -0.077977739 0.028216893 0 ;
	setAttr ".tk[10]" -type "float3" -0.077977739 -0.028216893 0 ;
	setAttr ".tk[11]" -type "float3" 0.077977739 -0.028216893 0 ;
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
	setAttr -s 13 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 16 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 34 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 22 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :openPBR_shader1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
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
connectAttr "groupParts2.og" "pCubeShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId3.id" "pCubeShape1.iog.og[1].gid";
connectAttr "lambert1SG.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyTweakUV9.out" "pCubeShape2.i";
connectAttr "polyTweakUV9.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
connectAttr "polyExtrudeFace8.out" "pCubeShape3.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeFBXASC046001SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeFBXASC046001SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeFBXASC046001SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeFBXASC046001SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SphereSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SphereSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SphereSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "railing1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CubeFBXASC046002SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeFBXASC046001SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeFBXASC046001SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeFBXASC046001SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeFBXASC046001SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SphereSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SphereSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SphereSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "railing1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CubeFBXASC046002SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeSG.message" ":defaultLightSet.message";
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
connectAttr "polyTweakUV3.out" "polySplit16.ip";
connectAttr "polyTweak10.out" "polySplit17.ip";
connectAttr "polySplit16.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj2.mp";
connectAttr "polySplit17.out" "polyTweak11.ip";
connectAttr "polyPlanarProj2.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV9.ip";
connectAttr ":lambert1.oc" "lambert1SG.ss";
connectAttr "groupId3.msg" "lambert1SG.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "lambert1SG.dsm" -na;
connectAttr "lambert1SG.msg" "materialInfo1.sg";
connectAttr ":lambert1.msg" "materialInfo1.m";
connectAttr "polyTweakUV2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "lambert1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "metallic_texture.oa" "MaterialFBXASC046002.rfl";
connectAttr "base_color_texture.oc" "MaterialFBXASC046002.c";
connectAttr "bump2d2.o" "MaterialFBXASC046002.n";
connectAttr "MaterialFBXASC046002.oc" "bridgeFBXASC046001SG.ss";
connectAttr "bridgeFBXASC046001SG.msg" "materialInfo2.sg";
connectAttr "MaterialFBXASC046002.msg" "materialInfo2.m";
connectAttr "base_color_texture.msg" "materialInfo2.t" -na;
connectAttr "base_color_texture_ncl1_1.oc" "MaterialFBXASC046003.c";
connectAttr "bump2d1.o" "MaterialFBXASC046003.n";
connectAttr "MaterialFBXASC046003.oc" "bridgeFBXASC046001SG1.ss";
connectAttr "bridgeFBXASC046001SG1.msg" "materialInfo3.sg";
connectAttr "MaterialFBXASC046003.msg" "materialInfo3.m";
connectAttr "base_color_texture_ncl1_1.msg" "materialInfo3.t" -na;
connectAttr "metallic_texture_ncl1_1.oa" "MaterialFBXASC046004.rfl";
connectAttr "base_color_texture_ncl1_2.oc" "MaterialFBXASC046004.c";
connectAttr "bump2d4.o" "MaterialFBXASC046004.n";
connectAttr "MaterialFBXASC046004.oc" "bridgeFBXASC046001SG2.ss";
connectAttr "bridgeFBXASC046001SG2.msg" "materialInfo4.sg";
connectAttr "MaterialFBXASC046004.msg" "materialInfo4.m";
connectAttr "base_color_texture_ncl1_2.msg" "materialInfo4.t" -na;
connectAttr "metallic_texture_ncl1_2.oa" "MaterialFBXASC046006.rfl";
connectAttr "base_color_texture_ncl1_3.oc" "MaterialFBXASC046006.c";
connectAttr "bump2d3.o" "MaterialFBXASC046006.n";
connectAttr "MaterialFBXASC046006.oc" "bridgeFBXASC046001SG3.ss";
connectAttr "bridgeFBXASC046001SG3.msg" "materialInfo5.sg";
connectAttr "MaterialFBXASC046006.msg" "materialInfo5.m";
connectAttr "base_color_texture_ncl1_3.msg" "materialInfo5.t" -na;
connectAttr "place2dTexture1.o" "base_color_texture_ncl1_1.uv";
connectAttr "place2dTexture1.ofu" "base_color_texture_ncl1_1.ofu";
connectAttr "place2dTexture1.ofv" "base_color_texture_ncl1_1.ofv";
connectAttr "place2dTexture1.rf" "base_color_texture_ncl1_1.rf";
connectAttr "place2dTexture1.reu" "base_color_texture_ncl1_1.reu";
connectAttr "place2dTexture1.rev" "base_color_texture_ncl1_1.rev";
connectAttr "place2dTexture1.vt1" "base_color_texture_ncl1_1.vt1";
connectAttr "place2dTexture1.vt2" "base_color_texture_ncl1_1.vt2";
connectAttr "place2dTexture1.vt3" "base_color_texture_ncl1_1.vt3";
connectAttr "place2dTexture1.vc1" "base_color_texture_ncl1_1.vc1";
connectAttr "place2dTexture1.ofs" "base_color_texture_ncl1_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture_ncl1_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture_ncl1_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture_ncl1_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture_ncl1_1.ws";
connectAttr "normalmap_texture_ncl1_1.oa" "bump2d1.bv";
connectAttr "place2dTexture2.o" "normalmap_texture_ncl1_1.uv";
connectAttr "place2dTexture2.ofu" "normalmap_texture_ncl1_1.ofu";
connectAttr "place2dTexture2.ofv" "normalmap_texture_ncl1_1.ofv";
connectAttr "place2dTexture2.rf" "normalmap_texture_ncl1_1.rf";
connectAttr "place2dTexture2.reu" "normalmap_texture_ncl1_1.reu";
connectAttr "place2dTexture2.rev" "normalmap_texture_ncl1_1.rev";
connectAttr "place2dTexture2.vt1" "normalmap_texture_ncl1_1.vt1";
connectAttr "place2dTexture2.vt2" "normalmap_texture_ncl1_1.vt2";
connectAttr "place2dTexture2.vt3" "normalmap_texture_ncl1_1.vt3";
connectAttr "place2dTexture2.vc1" "normalmap_texture_ncl1_1.vc1";
connectAttr "place2dTexture2.ofs" "normalmap_texture_ncl1_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture_ncl1_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture_ncl1_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture_ncl1_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture_ncl1_1.ws";
connectAttr "place2dTexture3.o" "base_color_texture.uv";
connectAttr "place2dTexture3.ofu" "base_color_texture.ofu";
connectAttr "place2dTexture3.ofv" "base_color_texture.ofv";
connectAttr "place2dTexture3.rf" "base_color_texture.rf";
connectAttr "place2dTexture3.reu" "base_color_texture.reu";
connectAttr "place2dTexture3.rev" "base_color_texture.rev";
connectAttr "place2dTexture3.vt1" "base_color_texture.vt1";
connectAttr "place2dTexture3.vt2" "base_color_texture.vt2";
connectAttr "place2dTexture3.vt3" "base_color_texture.vt3";
connectAttr "place2dTexture3.vc1" "base_color_texture.vc1";
connectAttr "place2dTexture3.ofs" "base_color_texture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture.ws";
connectAttr "normalmap_texture.oa" "bump2d2.bv";
connectAttr "place2dTexture4.o" "normalmap_texture.uv";
connectAttr "place2dTexture4.ofu" "normalmap_texture.ofu";
connectAttr "place2dTexture4.ofv" "normalmap_texture.ofv";
connectAttr "place2dTexture4.rf" "normalmap_texture.rf";
connectAttr "place2dTexture4.reu" "normalmap_texture.reu";
connectAttr "place2dTexture4.rev" "normalmap_texture.rev";
connectAttr "place2dTexture4.vt1" "normalmap_texture.vt1";
connectAttr "place2dTexture4.vt2" "normalmap_texture.vt2";
connectAttr "place2dTexture4.vt3" "normalmap_texture.vt3";
connectAttr "place2dTexture4.vc1" "normalmap_texture.vc1";
connectAttr "place2dTexture4.ofs" "normalmap_texture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture.ws";
connectAttr "place2dTexture5.o" "metallic_texture.uv";
connectAttr "place2dTexture5.ofu" "metallic_texture.ofu";
connectAttr "place2dTexture5.ofv" "metallic_texture.ofv";
connectAttr "place2dTexture5.rf" "metallic_texture.rf";
connectAttr "place2dTexture5.reu" "metallic_texture.reu";
connectAttr "place2dTexture5.rev" "metallic_texture.rev";
connectAttr "place2dTexture5.vt1" "metallic_texture.vt1";
connectAttr "place2dTexture5.vt2" "metallic_texture.vt2";
connectAttr "place2dTexture5.vt3" "metallic_texture.vt3";
connectAttr "place2dTexture5.vc1" "metallic_texture.vc1";
connectAttr "place2dTexture5.ofs" "metallic_texture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "metallic_texture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "metallic_texture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "metallic_texture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "metallic_texture.ws";
connectAttr "place2dTexture6.o" "base_color_texture_ncl1_3.uv";
connectAttr "place2dTexture6.ofu" "base_color_texture_ncl1_3.ofu";
connectAttr "place2dTexture6.ofv" "base_color_texture_ncl1_3.ofv";
connectAttr "place2dTexture6.rf" "base_color_texture_ncl1_3.rf";
connectAttr "place2dTexture6.reu" "base_color_texture_ncl1_3.reu";
connectAttr "place2dTexture6.rev" "base_color_texture_ncl1_3.rev";
connectAttr "place2dTexture6.vt1" "base_color_texture_ncl1_3.vt1";
connectAttr "place2dTexture6.vt2" "base_color_texture_ncl1_3.vt2";
connectAttr "place2dTexture6.vt3" "base_color_texture_ncl1_3.vt3";
connectAttr "place2dTexture6.vc1" "base_color_texture_ncl1_3.vc1";
connectAttr "place2dTexture6.ofs" "base_color_texture_ncl1_3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture_ncl1_3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture_ncl1_3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture_ncl1_3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture_ncl1_3.ws";
connectAttr "normalmap_texture_ncl1_3.oa" "bump2d3.bv";
connectAttr "place2dTexture7.o" "normalmap_texture_ncl1_3.uv";
connectAttr "place2dTexture7.ofu" "normalmap_texture_ncl1_3.ofu";
connectAttr "place2dTexture7.ofv" "normalmap_texture_ncl1_3.ofv";
connectAttr "place2dTexture7.rf" "normalmap_texture_ncl1_3.rf";
connectAttr "place2dTexture7.reu" "normalmap_texture_ncl1_3.reu";
connectAttr "place2dTexture7.rev" "normalmap_texture_ncl1_3.rev";
connectAttr "place2dTexture7.vt1" "normalmap_texture_ncl1_3.vt1";
connectAttr "place2dTexture7.vt2" "normalmap_texture_ncl1_3.vt2";
connectAttr "place2dTexture7.vt3" "normalmap_texture_ncl1_3.vt3";
connectAttr "place2dTexture7.vc1" "normalmap_texture_ncl1_3.vc1";
connectAttr "place2dTexture7.ofs" "normalmap_texture_ncl1_3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture_ncl1_3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture_ncl1_3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture_ncl1_3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture_ncl1_3.ws";
connectAttr "place2dTexture8.o" "metallic_texture_ncl1_2.uv";
connectAttr "place2dTexture8.ofu" "metallic_texture_ncl1_2.ofu";
connectAttr "place2dTexture8.ofv" "metallic_texture_ncl1_2.ofv";
connectAttr "place2dTexture8.rf" "metallic_texture_ncl1_2.rf";
connectAttr "place2dTexture8.reu" "metallic_texture_ncl1_2.reu";
connectAttr "place2dTexture8.rev" "metallic_texture_ncl1_2.rev";
connectAttr "place2dTexture8.vt1" "metallic_texture_ncl1_2.vt1";
connectAttr "place2dTexture8.vt2" "metallic_texture_ncl1_2.vt2";
connectAttr "place2dTexture8.vt3" "metallic_texture_ncl1_2.vt3";
connectAttr "place2dTexture8.vc1" "metallic_texture_ncl1_2.vc1";
connectAttr "place2dTexture8.ofs" "metallic_texture_ncl1_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "metallic_texture_ncl1_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "metallic_texture_ncl1_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "metallic_texture_ncl1_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "metallic_texture_ncl1_2.ws";
connectAttr "place2dTexture9.o" "base_color_texture_ncl1_2.uv";
connectAttr "place2dTexture9.ofu" "base_color_texture_ncl1_2.ofu";
connectAttr "place2dTexture9.ofv" "base_color_texture_ncl1_2.ofv";
connectAttr "place2dTexture9.rf" "base_color_texture_ncl1_2.rf";
connectAttr "place2dTexture9.reu" "base_color_texture_ncl1_2.reu";
connectAttr "place2dTexture9.rev" "base_color_texture_ncl1_2.rev";
connectAttr "place2dTexture9.vt1" "base_color_texture_ncl1_2.vt1";
connectAttr "place2dTexture9.vt2" "base_color_texture_ncl1_2.vt2";
connectAttr "place2dTexture9.vt3" "base_color_texture_ncl1_2.vt3";
connectAttr "place2dTexture9.vc1" "base_color_texture_ncl1_2.vc1";
connectAttr "place2dTexture9.ofs" "base_color_texture_ncl1_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture_ncl1_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture_ncl1_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture_ncl1_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture_ncl1_2.ws";
connectAttr "normalmap_texture_ncl1_2.oa" "bump2d4.bv";
connectAttr "place2dTexture10.o" "normalmap_texture_ncl1_2.uv";
connectAttr "place2dTexture10.ofu" "normalmap_texture_ncl1_2.ofu";
connectAttr "place2dTexture10.ofv" "normalmap_texture_ncl1_2.ofv";
connectAttr "place2dTexture10.rf" "normalmap_texture_ncl1_2.rf";
connectAttr "place2dTexture10.reu" "normalmap_texture_ncl1_2.reu";
connectAttr "place2dTexture10.rev" "normalmap_texture_ncl1_2.rev";
connectAttr "place2dTexture10.vt1" "normalmap_texture_ncl1_2.vt1";
connectAttr "place2dTexture10.vt2" "normalmap_texture_ncl1_2.vt2";
connectAttr "place2dTexture10.vt3" "normalmap_texture_ncl1_2.vt3";
connectAttr "place2dTexture10.vc1" "normalmap_texture_ncl1_2.vc1";
connectAttr "place2dTexture10.ofs" "normalmap_texture_ncl1_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture_ncl1_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture_ncl1_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture_ncl1_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture_ncl1_2.ws";
connectAttr "place2dTexture11.o" "metallic_texture_ncl1_1.uv";
connectAttr "place2dTexture11.ofu" "metallic_texture_ncl1_1.ofu";
connectAttr "place2dTexture11.ofv" "metallic_texture_ncl1_1.ofv";
connectAttr "place2dTexture11.rf" "metallic_texture_ncl1_1.rf";
connectAttr "place2dTexture11.reu" "metallic_texture_ncl1_1.reu";
connectAttr "place2dTexture11.rev" "metallic_texture_ncl1_1.rev";
connectAttr "place2dTexture11.vt1" "metallic_texture_ncl1_1.vt1";
connectAttr "place2dTexture11.vt2" "metallic_texture_ncl1_1.vt2";
connectAttr "place2dTexture11.vt3" "metallic_texture_ncl1_1.vt3";
connectAttr "place2dTexture11.vc1" "metallic_texture_ncl1_1.vc1";
connectAttr "place2dTexture11.ofs" "metallic_texture_ncl1_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "metallic_texture_ncl1_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "metallic_texture_ncl1_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "metallic_texture_ncl1_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "metallic_texture_ncl1_1.ws";
connectAttr "MaterialFBXASC046007.oc" "SphereSG.ss";
connectAttr "SphereSG.msg" "materialInfo6.sg";
connectAttr "MaterialFBXASC046007.msg" "materialInfo6.m";
connectAttr "MaterialFBXASC046008.oc" "SphereSG1.ss";
connectAttr "SphereSG1.msg" "materialInfo7.sg";
connectAttr "MaterialFBXASC046008.msg" "materialInfo7.m";
connectAttr "MaterialFBXASC046009.oc" "SphereSG2.ss";
connectAttr "SphereSG2.msg" "materialInfo8.sg";
connectAttr "MaterialFBXASC046009.msg" "materialInfo8.m";
connectAttr "metallic_texture_ncl1_3.oa" "Material.rfl";
connectAttr "base_color_texture_ncl1_4.oc" "Material.c";
connectAttr "setRange4.ox" "Material.cp";
connectAttr "bump2d5.o" "Material.n";
connectAttr "Material.oc" "railing1SG.ss";
connectAttr "railing1SG.msg" "materialInfo9.sg";
connectAttr "Material.msg" "materialInfo9.m";
connectAttr "base_color_texture_ncl1_4.msg" "materialInfo9.t" -na;
connectAttr "place2dTexture12.o" "base_color_texture_ncl1_4.uv";
connectAttr "place2dTexture12.ofu" "base_color_texture_ncl1_4.ofu";
connectAttr "place2dTexture12.ofv" "base_color_texture_ncl1_4.ofv";
connectAttr "place2dTexture12.rf" "base_color_texture_ncl1_4.rf";
connectAttr "place2dTexture12.reu" "base_color_texture_ncl1_4.reu";
connectAttr "place2dTexture12.rev" "base_color_texture_ncl1_4.rev";
connectAttr "place2dTexture12.vt1" "base_color_texture_ncl1_4.vt1";
connectAttr "place2dTexture12.vt2" "base_color_texture_ncl1_4.vt2";
connectAttr "place2dTexture12.vt3" "base_color_texture_ncl1_4.vt3";
connectAttr "place2dTexture12.vc1" "base_color_texture_ncl1_4.vc1";
connectAttr "place2dTexture12.ofs" "base_color_texture_ncl1_4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture_ncl1_4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture_ncl1_4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture_ncl1_4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture_ncl1_4.ws";
connectAttr "place2dTexture13.o" "roughness_texture.uv";
connectAttr "place2dTexture13.ofu" "roughness_texture.ofu";
connectAttr "place2dTexture13.ofv" "roughness_texture.ofv";
connectAttr "place2dTexture13.rf" "roughness_texture.rf";
connectAttr "place2dTexture13.reu" "roughness_texture.reu";
connectAttr "place2dTexture13.rev" "roughness_texture.rev";
connectAttr "place2dTexture13.vt1" "roughness_texture.vt1";
connectAttr "place2dTexture13.vt2" "roughness_texture.vt2";
connectAttr "place2dTexture13.vt3" "roughness_texture.vt3";
connectAttr "place2dTexture13.vc1" "roughness_texture.vc1";
connectAttr "place2dTexture13.ofs" "roughness_texture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "roughness_texture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "roughness_texture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "roughness_texture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "roughness_texture.ws";
connectAttr "roughness_texture.oa" "setRange1.vx";
connectAttr "normalmap_texture_ncl1_4.oa" "bump2d5.bv";
connectAttr "place2dTexture14.o" "normalmap_texture_ncl1_4.uv";
connectAttr "place2dTexture14.ofu" "normalmap_texture_ncl1_4.ofu";
connectAttr "place2dTexture14.ofv" "normalmap_texture_ncl1_4.ofv";
connectAttr "place2dTexture14.rf" "normalmap_texture_ncl1_4.rf";
connectAttr "place2dTexture14.reu" "normalmap_texture_ncl1_4.reu";
connectAttr "place2dTexture14.rev" "normalmap_texture_ncl1_4.rev";
connectAttr "place2dTexture14.vt1" "normalmap_texture_ncl1_4.vt1";
connectAttr "place2dTexture14.vt2" "normalmap_texture_ncl1_4.vt2";
connectAttr "place2dTexture14.vt3" "normalmap_texture_ncl1_4.vt3";
connectAttr "place2dTexture14.vc1" "normalmap_texture_ncl1_4.vc1";
connectAttr "place2dTexture14.ofs" "normalmap_texture_ncl1_4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture_ncl1_4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture_ncl1_4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture_ncl1_4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture_ncl1_4.ws";
connectAttr "place2dTexture15.o" "metallic_texture_ncl1_3.uv";
connectAttr "place2dTexture15.ofu" "metallic_texture_ncl1_3.ofu";
connectAttr "place2dTexture15.ofv" "metallic_texture_ncl1_3.ofv";
connectAttr "place2dTexture15.rf" "metallic_texture_ncl1_3.rf";
connectAttr "place2dTexture15.reu" "metallic_texture_ncl1_3.reu";
connectAttr "place2dTexture15.rev" "metallic_texture_ncl1_3.rev";
connectAttr "place2dTexture15.vt1" "metallic_texture_ncl1_3.vt1";
connectAttr "place2dTexture15.vt2" "metallic_texture_ncl1_3.vt2";
connectAttr "place2dTexture15.vt3" "metallic_texture_ncl1_3.vt3";
connectAttr "place2dTexture15.vc1" "metallic_texture_ncl1_3.vc1";
connectAttr "place2dTexture15.ofs" "metallic_texture_ncl1_3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "metallic_texture_ncl1_3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "metallic_texture_ncl1_3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "metallic_texture_ncl1_3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "metallic_texture_ncl1_3.ws";
connectAttr "roughness_texture.oa" "setRange2.vx";
connectAttr "roughness_texture.oa" "setRange3.vx";
connectAttr "roughness_texture.oa" "setRange4.vx";
connectAttr "metallic_texture_ncl1_4.oa" "MaterialFBXASC046010.rfl";
connectAttr "base_color_texture_ncl1_5.oc" "MaterialFBXASC046010.c";
connectAttr "bump2d6.o" "MaterialFBXASC046010.n";
connectAttr "MaterialFBXASC046010.oc" "CubeFBXASC046002SG.ss";
connectAttr "CubeFBXASC046002SG.msg" "materialInfo10.sg";
connectAttr "MaterialFBXASC046010.msg" "materialInfo10.m";
connectAttr "base_color_texture_ncl1_5.msg" "materialInfo10.t" -na;
connectAttr "place2dTexture16.o" "base_color_texture_ncl1_5.uv";
connectAttr "place2dTexture16.ofu" "base_color_texture_ncl1_5.ofu";
connectAttr "place2dTexture16.ofv" "base_color_texture_ncl1_5.ofv";
connectAttr "place2dTexture16.rf" "base_color_texture_ncl1_5.rf";
connectAttr "place2dTexture16.reu" "base_color_texture_ncl1_5.reu";
connectAttr "place2dTexture16.rev" "base_color_texture_ncl1_5.rev";
connectAttr "place2dTexture16.vt1" "base_color_texture_ncl1_5.vt1";
connectAttr "place2dTexture16.vt2" "base_color_texture_ncl1_5.vt2";
connectAttr "place2dTexture16.vt3" "base_color_texture_ncl1_5.vt3";
connectAttr "place2dTexture16.vc1" "base_color_texture_ncl1_5.vc1";
connectAttr "place2dTexture16.ofs" "base_color_texture_ncl1_5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture_ncl1_5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture_ncl1_5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture_ncl1_5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture_ncl1_5.ws";
connectAttr "normalmap_texture_ncl1_5.oa" "bump2d6.bv";
connectAttr "place2dTexture17.o" "normalmap_texture_ncl1_5.uv";
connectAttr "place2dTexture17.ofu" "normalmap_texture_ncl1_5.ofu";
connectAttr "place2dTexture17.ofv" "normalmap_texture_ncl1_5.ofv";
connectAttr "place2dTexture17.rf" "normalmap_texture_ncl1_5.rf";
connectAttr "place2dTexture17.reu" "normalmap_texture_ncl1_5.reu";
connectAttr "place2dTexture17.rev" "normalmap_texture_ncl1_5.rev";
connectAttr "place2dTexture17.vt1" "normalmap_texture_ncl1_5.vt1";
connectAttr "place2dTexture17.vt2" "normalmap_texture_ncl1_5.vt2";
connectAttr "place2dTexture17.vt3" "normalmap_texture_ncl1_5.vt3";
connectAttr "place2dTexture17.vc1" "normalmap_texture_ncl1_5.vc1";
connectAttr "place2dTexture17.ofs" "normalmap_texture_ncl1_5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture_ncl1_5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture_ncl1_5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture_ncl1_5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture_ncl1_5.ws";
connectAttr "place2dTexture18.o" "metallic_texture_ncl1_4.uv";
connectAttr "place2dTexture18.ofu" "metallic_texture_ncl1_4.ofu";
connectAttr "place2dTexture18.ofv" "metallic_texture_ncl1_4.ofv";
connectAttr "place2dTexture18.rf" "metallic_texture_ncl1_4.rf";
connectAttr "place2dTexture18.reu" "metallic_texture_ncl1_4.reu";
connectAttr "place2dTexture18.rev" "metallic_texture_ncl1_4.rev";
connectAttr "place2dTexture18.vt1" "metallic_texture_ncl1_4.vt1";
connectAttr "place2dTexture18.vt2" "metallic_texture_ncl1_4.vt2";
connectAttr "place2dTexture18.vt3" "metallic_texture_ncl1_4.vt3";
connectAttr "place2dTexture18.vc1" "metallic_texture_ncl1_4.vc1";
connectAttr "place2dTexture18.ofs" "metallic_texture_ncl1_4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "metallic_texture_ncl1_4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "metallic_texture_ncl1_4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "metallic_texture_ncl1_4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "metallic_texture_ncl1_4.ws";
connectAttr "metallic_texture_ncl1_5.oa" "MaterialFBXASC046001.rfl";
connectAttr "base_color_texture_ncl1_6.oc" "MaterialFBXASC046001.c";
connectAttr "setRange5.ox" "MaterialFBXASC046001.cp";
connectAttr "bump2d7.o" "MaterialFBXASC046001.n";
connectAttr "MaterialFBXASC046001.oc" "bridgeSG.ss";
connectAttr "bridgeSG.msg" "materialInfo11.sg";
connectAttr "MaterialFBXASC046001.msg" "materialInfo11.m";
connectAttr "base_color_texture_ncl1_6.msg" "materialInfo11.t" -na;
connectAttr "place2dTexture19.o" "base_color_texture_ncl1_6.uv";
connectAttr "place2dTexture19.ofu" "base_color_texture_ncl1_6.ofu";
connectAttr "place2dTexture19.ofv" "base_color_texture_ncl1_6.ofv";
connectAttr "place2dTexture19.rf" "base_color_texture_ncl1_6.rf";
connectAttr "place2dTexture19.reu" "base_color_texture_ncl1_6.reu";
connectAttr "place2dTexture19.rev" "base_color_texture_ncl1_6.rev";
connectAttr "place2dTexture19.vt1" "base_color_texture_ncl1_6.vt1";
connectAttr "place2dTexture19.vt2" "base_color_texture_ncl1_6.vt2";
connectAttr "place2dTexture19.vt3" "base_color_texture_ncl1_6.vt3";
connectAttr "place2dTexture19.vc1" "base_color_texture_ncl1_6.vc1";
connectAttr "place2dTexture19.ofs" "base_color_texture_ncl1_6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture_ncl1_6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture_ncl1_6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture_ncl1_6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture_ncl1_6.ws";
connectAttr "place2dTexture20.o" "roughness_texture_ncl1_1.uv";
connectAttr "place2dTexture20.ofu" "roughness_texture_ncl1_1.ofu";
connectAttr "place2dTexture20.ofv" "roughness_texture_ncl1_1.ofv";
connectAttr "place2dTexture20.rf" "roughness_texture_ncl1_1.rf";
connectAttr "place2dTexture20.reu" "roughness_texture_ncl1_1.reu";
connectAttr "place2dTexture20.rev" "roughness_texture_ncl1_1.rev";
connectAttr "place2dTexture20.vt1" "roughness_texture_ncl1_1.vt1";
connectAttr "place2dTexture20.vt2" "roughness_texture_ncl1_1.vt2";
connectAttr "place2dTexture20.vt3" "roughness_texture_ncl1_1.vt3";
connectAttr "place2dTexture20.vc1" "roughness_texture_ncl1_1.vc1";
connectAttr "place2dTexture20.ofs" "roughness_texture_ncl1_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "roughness_texture_ncl1_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "roughness_texture_ncl1_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "roughness_texture_ncl1_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "roughness_texture_ncl1_1.ws";
connectAttr "roughness_texture_ncl1_1.oa" "setRange5.vx";
connectAttr "normalmap_texture_ncl1_6.oa" "bump2d7.bv";
connectAttr "place2dTexture21.o" "normalmap_texture_ncl1_6.uv";
connectAttr "place2dTexture21.ofu" "normalmap_texture_ncl1_6.ofu";
connectAttr "place2dTexture21.ofv" "normalmap_texture_ncl1_6.ofv";
connectAttr "place2dTexture21.rf" "normalmap_texture_ncl1_6.rf";
connectAttr "place2dTexture21.reu" "normalmap_texture_ncl1_6.reu";
connectAttr "place2dTexture21.rev" "normalmap_texture_ncl1_6.rev";
connectAttr "place2dTexture21.vt1" "normalmap_texture_ncl1_6.vt1";
connectAttr "place2dTexture21.vt2" "normalmap_texture_ncl1_6.vt2";
connectAttr "place2dTexture21.vt3" "normalmap_texture_ncl1_6.vt3";
connectAttr "place2dTexture21.vc1" "normalmap_texture_ncl1_6.vc1";
connectAttr "place2dTexture21.ofs" "normalmap_texture_ncl1_6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "normalmap_texture_ncl1_6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "normalmap_texture_ncl1_6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "normalmap_texture_ncl1_6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "normalmap_texture_ncl1_6.ws";
connectAttr "place2dTexture22.o" "metallic_texture_ncl1_5.uv";
connectAttr "place2dTexture22.ofu" "metallic_texture_ncl1_5.ofu";
connectAttr "place2dTexture22.ofv" "metallic_texture_ncl1_5.ofv";
connectAttr "place2dTexture22.rf" "metallic_texture_ncl1_5.rf";
connectAttr "place2dTexture22.reu" "metallic_texture_ncl1_5.reu";
connectAttr "place2dTexture22.rev" "metallic_texture_ncl1_5.rev";
connectAttr "place2dTexture22.vt1" "metallic_texture_ncl1_5.vt1";
connectAttr "place2dTexture22.vt2" "metallic_texture_ncl1_5.vt2";
connectAttr "place2dTexture22.vt3" "metallic_texture_ncl1_5.vt3";
connectAttr "place2dTexture22.vc1" "metallic_texture_ncl1_5.vc1";
connectAttr "place2dTexture22.ofs" "metallic_texture_ncl1_5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "metallic_texture_ncl1_5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "metallic_texture_ncl1_5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "metallic_texture_ncl1_5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "metallic_texture_ncl1_5.ws";
connectAttr "polyCube3.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak12.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak12.ip";
connectAttr "lambert1SG.pa" ":renderPartition.st" -na;
connectAttr "bridgeFBXASC046001SG.pa" ":renderPartition.st" -na;
connectAttr "bridgeFBXASC046001SG1.pa" ":renderPartition.st" -na;
connectAttr "bridgeFBXASC046001SG2.pa" ":renderPartition.st" -na;
connectAttr "bridgeFBXASC046001SG3.pa" ":renderPartition.st" -na;
connectAttr "SphereSG.pa" ":renderPartition.st" -na;
connectAttr "SphereSG1.pa" ":renderPartition.st" -na;
connectAttr "SphereSG2.pa" ":renderPartition.st" -na;
connectAttr "railing1SG.pa" ":renderPartition.st" -na;
connectAttr "CubeFBXASC046002SG.pa" ":renderPartition.st" -na;
connectAttr "bridgeSG.pa" ":renderPartition.st" -na;
connectAttr "MaterialFBXASC046002.msg" ":defaultShaderList1.s" -na;
connectAttr "MaterialFBXASC046003.msg" ":defaultShaderList1.s" -na;
connectAttr "MaterialFBXASC046004.msg" ":defaultShaderList1.s" -na;
connectAttr "MaterialFBXASC046006.msg" ":defaultShaderList1.s" -na;
connectAttr "MaterialFBXASC046007.msg" ":defaultShaderList1.s" -na;
connectAttr "MaterialFBXASC046008.msg" ":defaultShaderList1.s" -na;
connectAttr "MaterialFBXASC046009.msg" ":defaultShaderList1.s" -na;
connectAttr "Material.msg" ":defaultShaderList1.s" -na;
connectAttr "MaterialFBXASC046010.msg" ":defaultShaderList1.s" -na;
connectAttr "MaterialFBXASC046001.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "setRange1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "setRange2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "setRange3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "setRange4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "setRange5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "base_color_texture_ncl1_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "normalmap_texture_ncl1_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "base_color_texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "normalmap_texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "metallic_texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "base_color_texture_ncl1_3.msg" ":defaultTextureList1.tx" -na;
connectAttr "normalmap_texture_ncl1_3.msg" ":defaultTextureList1.tx" -na;
connectAttr "metallic_texture_ncl1_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "base_color_texture_ncl1_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "normalmap_texture_ncl1_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "metallic_texture_ncl1_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "base_color_texture_ncl1_4.msg" ":defaultTextureList1.tx" -na;
connectAttr "roughness_texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "normalmap_texture_ncl1_4.msg" ":defaultTextureList1.tx" -na;
connectAttr "metallic_texture_ncl1_3.msg" ":defaultTextureList1.tx" -na;
connectAttr "base_color_texture_ncl1_5.msg" ":defaultTextureList1.tx" -na;
connectAttr "normalmap_texture_ncl1_5.msg" ":defaultTextureList1.tx" -na;
connectAttr "metallic_texture_ncl1_4.msg" ":defaultTextureList1.tx" -na;
connectAttr "base_color_texture_ncl1_6.msg" ":defaultTextureList1.tx" -na;
connectAttr "roughness_texture_ncl1_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "normalmap_texture_ncl1_6.msg" ":defaultTextureList1.tx" -na;
connectAttr "metallic_texture_ncl1_5.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
// End of mrt-sign.ma
