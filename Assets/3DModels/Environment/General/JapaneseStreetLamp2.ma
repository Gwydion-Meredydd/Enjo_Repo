//Maya ASCII 2018 scene
//Name: JapaneseStreetLamp2.ma
//Last modified: Mon, Mar 02, 2020 11:39:58 PM
//Codeset: 1252
requires maya "2018";
requires "mtoa" "3.2.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "17D33ABA-4E76-AAEA-51C9-58B5F6F4F5EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.74007605611181 17.499476995596851 -48.216114791582356 ;
	setAttr ".r" -type "double3" -2.1383527351251828 -2360.2000000018343 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4233C3E1-4F30-8B5D-057A-549CB281237E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 51.411904757230147;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 15.581163492848878 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "0DA0A397-4B59-344E-4AE9-39B7CC86235C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C706DF64-4567-168B-9774-5AB3420EDCB1";
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
	rename -uid "A850C507-449E-76D1-3BC8-F3AE3237BB47";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.12169981479168968 349.85980127995424 1060.4618002650079 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A147C8B6-4BD4-C779-74DA-C8AEBB9A0249";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1060.4618002650079;
	setAttr ".ow" 206.18952158203871;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 26.653190534352788 351.66578914594606 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E13C9845-454E-0597-0240-6E9897C6FBB9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1061.6737304824685 351.66578914594606 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B7A27AC8-4F31-1D05-4F2C-E3BBCEBC374C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1035.0205399481158;
	setAttr ".ow" 94.143941010777354;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 26.653190534352788 351.66578914594606 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "StreetLamp";
	rename -uid "145756ED-423A-CC63-DC7B-B898975D1EBE";
	setAttr ".t" -type "double3" 0 4.3316440721592073 0 ;
	setAttr ".s" -type "double3" 0.64862174934580274 7.9158887602002324 0.58241774185458406 ;
createNode mesh -n "StreetLampShape" -p "StreetLamp";
	rename -uid "5F75D74E-4AAB-680D-FB10-5DAB06B7FADB";
	setAttr -k off ".v";
	setAttr -av ".iog[0].og[0].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.23837321996688843 0.86876779794692993 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3FE6CC6E-4990-29AB-65E0-9DA6F4F90905";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EFFAF149-4E1F-CB2B-75DF-6DBC8BB8E04D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "34E0DADF-412C-9F10-C7A2-149117229070";
createNode displayLayerManager -n "layerManager";
	rename -uid "9D306483-421D-B809-2647-E7899FD8154B";
createNode displayLayer -n "defaultLayer";
	rename -uid "E56C7A6C-4820-1D73-1254-46B4F5E5C697";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "53C71242-4CC0-7E6F-80DC-36907104E4B9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "507E9824-4D4A-BBC9-9E0B-F2ACAEFFF796";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "22189424-4207-FE63-67C6-0D9CBC979F54";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 405\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 405\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 405\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 405\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 554\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 554\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 554\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 554\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 554\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 554\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 554\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 554\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "816F08CE-477A-991C-3F4E-D58AD0D875C6";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "40C10846-4BEB-367C-C1B7-92A6A4E8C47D";
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	rename -uid "4C9C9729-4C0F-7322-12FF-5FBE117E491B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" -0.24857932 0.086848207 0.24857932 ;
	setAttr ".tk[1]" -type "float3" 0.24857932 0.086848207 0.24857932 ;
	setAttr ".tk[6]" -type "float3" -0.24857932 0.086848207 -0.24857932 ;
	setAttr ".tk[7]" -type "float3" 0.24857932 0.086848207 -0.24857932 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "3EE156A2-42ED-7C61-C29E-71BA2FF6FCB0";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 124.10133549637763 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 30.549623 0 ;
	setAttr ".rs" 48798;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -13.889024510173474 30.549622878251 -12.471389218657793 ;
	setAttr ".cbx" -type "double3" 13.889024510173474 30.549622878251 12.471389218657793 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "D54B0E49-4ECD-2A9F-8BDE-999C424F342C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -0.67819577 0 -0.67819577
		 0.67819577 0 -0.67819577 0.67819577 0 0.67819577 -0.67819577 0 0.67819577;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "FBF266A0-481D-3989-92A7-3F97E88F06F4";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 124.10133549637763 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 30.549629 0 ;
	setAttr ".rs" 45249;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -26.47216358763615 30.549629626517131 -23.770183090941018 ;
	setAttr ".cbx" -type "double3" 26.47216358763615 30.549629626517131 23.770183090941018 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "397D8E6D-4F44-CC58-E100-2487A7C09C10";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 -0.0081059476 0 0 -0.0081059476
		 0 0 -0.0081059476 0 0 -0.0081059476 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "C11311D1-4D4A-FD26-2CB9-AE8EDC4B8714";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 124.10133549637763 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 28.714176 0 ;
	setAttr ".rs" 65514;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -26.47216358763615 28.714175472316427 -23.770181104905067 ;
	setAttr ".cbx" -type "double3" 26.47216358763615 28.714175472316427 23.770181104905067 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "878C6570-4138-A70D-6EF7-259D9ADBECB9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  -0.24357566 0 -0.24357562
		 0.24357566 0 -0.24357562 0.24357566 0 0.24357562 -0.24357566 0 0.24357562;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "823556D3-4B45-E5ED-08EA-A2BA61E3FE2C";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 124.10133549637763 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 28.714176 0 ;
	setAttr ".rs" 48370;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -30.991429153040606 28.714175472316427 -27.828166936750115 ;
	setAttr ".cbx" -type "double3" 30.991429153040606 28.714175472316427 27.828166936750115 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "F62837AB-449C-EB58-EFC5-B8A4B26A3511";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0.24752997 0 -0.24752997 ;
	setAttr ".tk[1]" -type "float3" -0.24752997 0 -0.24752997 ;
	setAttr ".tk[2]" -type "float3" 0.045726456 0.044094674 -0.045726441 ;
	setAttr ".tk[3]" -type "float3" -0.045726456 0.044094674 -0.045726441 ;
	setAttr ".tk[4]" -type "float3" 0.045726456 0.044094674 0.045726441 ;
	setAttr ".tk[5]" -type "float3" -0.045726456 0.044094674 0.045726441 ;
	setAttr ".tk[6]" -type "float3" 0.24752997 0 0.24752997 ;
	setAttr ".tk[7]" -type "float3" -0.24752997 0 0.24752997 ;
	setAttr ".tk[20]" -type "float3" 0 -0.062376726 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.062376726 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.062376726 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.062376726 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "891806E1-47B2-00A2-CC56-AFBDABE1E2E9";
	setAttr -s 5 ".e[0:4]"  0.48715401 0.48715401 0.51284599 0.51284599
		 0.48715401;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "7A3131A1-416D-2663-EA65-0E95DF1B7A15";
	setAttr -s 5 ".e[0:4]"  0.50807101 0.50807101 0.49192899 0.49192899
		 0.50807101;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483602 -2147483601 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "FCB0CE30-442E-F1E7-ABB7-199AF3E5A66F";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" -0.23550418 0 0.23550418 ;
	setAttr ".tk[1]" -type "float3" 0.23550418 0 0.23550418 ;
	setAttr ".tk[2]" -type "float3" 0 0.069604054 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.069604054 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.069604054 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.069604054 0 ;
	setAttr ".tk[6]" -type "float3" -0.23550418 0 -0.23550418 ;
	setAttr ".tk[7]" -type "float3" 0.23550418 0 -0.23550418 ;
	setAttr ".tk[24]" -type "float3" 0 0.036318049 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.036318049 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.036318049 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.036318049 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.036318049 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.036318049 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.036318049 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.036318049 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "92700CC7-4417-FD7F-9D21-C38D42095DA0";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 246.14215 0 ;
	setAttr ".rs" 36705;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.4285198238235832 246.1421475091276 -7.568228906425662 ;
	setAttr ".cbx" -type "double3" 8.4285198238235832 246.1421475091276 7.568228906425662 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "45EA6F47-4D37-D864-46B5-6B810FE4C6D5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".tk[3]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[4]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".tk[5]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[32]" -type "float3" 5.9604645e-08 0.057738151 0 ;
	setAttr ".tk[33]" -type "float3" -5.9604645e-08 0.057738151 0 ;
	setAttr ".tk[34]" -type "float3" -5.9604645e-08 0.057738151 0 ;
	setAttr ".tk[35]" -type "float3" 5.9604645e-08 0.057738151 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "9C04D741-4B10-EA33-552E-A3857168BE33";
	setAttr ".ics" -type "componentList" 2 "f[31]" "f[33]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 252.67911 0 ;
	setAttr ".rs" 63758;
	setAttr ".ls" -type "double3" 0.74416666931573094 0.74416666931573094 0.74416666931573094 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.4285181649806002 246.14216100565983 -7.568228906425662 ;
	setAttr ".cbx" -type "double3" 8.4285181649806002 259.21604934204038 7.568228906425662 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "FF10E40C-4BB5-CF77-A7F3-0A96875A5718";
	setAttr ".ics" -type "componentList" 2 "f[31]" "f[33]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 252.67911 0 ;
	setAttr ".rs" 33136;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.4285181649806002 247.81451631596289 -5.6320240866574967 ;
	setAttr ".cbx" -type "double3" 8.4285181649806002 257.54370752826958 5.6320240866574967 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "1C65DC8D-431C-7F04-AC40-598C745847A5";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[36:51]" -type "float3"  0.00359743 0.0015960569 -0.025114881
		 0.00359743 0.0015960569 0.025114881 0.00359743 -0.0015960569 0.025114881 0.00359743
		 -0.0015960569 -0.025114881 -0.00359743 0.0015960569 -0.025114881 -0.00359743 0.0015960569
		 0.025114881 -0.00359743 -0.0015960569 -0.025114881 -0.00359743 -0.0015960569 0.025114881
		 1.16564131 0.0015960569 -0.025114881 1.16564131 0.0015960569 0.025114881 1.16564131
		 -0.0015960569 0.025114881 1.16564131 -0.0015960569 -0.025114881 -1.16564131 0.0015960569
		 -0.025114881 -1.16564131 0.0015960569 0.025114881 -1.16564131 -0.0015960569 -0.025114881
		 -1.16564131 -0.0015960569 0.025114881;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "DBBBFE04-43E6-0DA7-E86C-26A600F61486";
	setAttr ".ics" -type "componentList" 2 "f[30]" "f[32]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 252.67911 0 ;
	setAttr ".rs" 36289;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.4285181649806002 246.14216100565983 -7.568228906425662 ;
	setAttr ".cbx" -type "double3" 8.4285181649806002 259.21606283857261 7.568228906425662 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "DCC45E37-43D5-F35E-D955-7DAA56DA50CC";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[52:59]" -type "float3"  0.13755256 0.0087414663 1.110223e-16
		 -0.13755256 0.0087414663 1.110223e-16 -0.13755256 -0.0087414663 1.110223e-16 0.13755256
		 -0.0087414663 1.110223e-16 0.13755256 0.0087414663 -5.5511151e-17 -0.13755256 0.0087414663
		 -5.5511151e-17 0.13755256 -0.0087414663 -5.5511151e-17 -0.13755256 -0.0087414663
		 -5.5511151e-17;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "5F098CC2-41B6-75AD-AB8E-9EBF0B90B1D2";
	setAttr ".ics" -type "componentList" 2 "f[30]" "f[32]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 252.67911 0 ;
	setAttr ".rs" 45067;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.8763893402008547 248.12152193490778 -7.568228906425662 ;
	setAttr ".cbx" -type "double3" 5.8763893402008547 257.23670190932467 7.568228906425662 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "4AADA0EE-42FF-43B9-D587-A48D8779F3FE";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[32:67]" -type "float3"  0 -0.0067782137 0 0 -0.0067782137
		 0 0 -0.0067782137 0 0 -0.0067782137 0 -0.053014416 0.0023026643 0.040727101 -0.053014416
		 0.0023026643 -0.040727101 -1.8959399e-05 -0.0023026729 -0.040727101 -1.8959399e-05
		 -0.0023026729 0.040727101 1.8953811e-05 0.0023026643 0.040727101 1.8953811e-05 0.0023026643
		 -0.040727101 1.8953811e-05 -0.0023026729 0.040727101 1.8953811e-05 -0.0023026729
		 -0.040727101 -6.7103654e-05 0.0023026643 0.040727101 -6.7103654e-05 0.0023026643
		 -0.040727101 -6.7103654e-05 -0.0023026729 -0.040727101 -6.7103654e-05 -0.0023026729
		 0.040727101 6.7103654e-05 0.0023026643 0.040727101 6.7103654e-05 0.0023026643 -0.040727101
		 6.7103654e-05 -0.0023026729 0.040727101 6.7103654e-05 -0.0023026729 -0.040727101
		 0.036671415 0.0023304722 0.024362898 -0.036671415 0.0023304722 0.024362898 -0.036671415
		 -0.0023304722 0.024362898 0.036671415 -0.0023304722 0.024362898 0.036671415 0.0023304722
		 -0.024362898 -0.036671415 0.0023304722 -0.024362898 0.036671415 -0.0023304722 -0.024362898
		 -0.036671415 -0.0023304722 -0.024362898 0.036671415 0.0023304722 1.074850917 -0.036671415
		 0.0023304722 1.074850917 -0.036671415 -0.0023304722 1.074850917 0.036671415 -0.0023304722
		 1.074850917 0.036671415 0.0023304722 -1.074850917 -0.036671415 0.0023304722 -1.074850917
		 0.036671415 -0.0023304722 -1.074850917 -0.036671415 -0.0023304722 -1.074850917;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "5510EB57-42BB-4BBB-9D2F-EFA2099CDBBB";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 257.68124 0 ;
	setAttr ".rs" 47875;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.4285181649806002 257.68123719183171 -7.568228906425662 ;
	setAttr ".cbx" -type "double3" 8.4285181649806002 257.68123719183171 7.568228906425662 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "E19C1FBE-464F-8449-F9D7-78B7B61DCEBE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[68:71]" -type "float3"  -1.43221462 0.0038443934 0.89984161
		 1.43221462 0.0038443934 0.89984161 1.43221462 0.0038443934 -0.89984161 -1.43221462
		 0.0038443934 -0.89984161;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "2255D7E8-406B-3F53-67A8-7A952FD9C299";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 258.5517 0 ;
	setAttr ".rs" 48063;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.001604653859722 258.55170953541415 -22.559660416004213 ;
	setAttr ".cbx" -type "double3" 35.001604653859722 258.55170953541415 22.559660416004213 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "55298E0B-4C80-2F29-6096-EBB4C51CCD8C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[72:75]" -type "float3"  0 0.27544826 0 0 0.27544826
		 0 0 0.27544826 0 0 0.27544826 0;
createNode polySplit -n "polySplit3";
	rename -uid "92168D69-44E0-9C3D-0EC7-B3A24694A6C6";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483516 -2147483515 -2147483513 -2147483511 -2147483516;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "EB5B4191-4DA7-6604-C421-FAA5EB9E8099";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[68:75]" -type "float3"  0.27549472 0 0.90636516 -0.27549472
		 0 0.90636516 -0.27549472 0 -0.90636516 0.27549472 0 -0.90636516 0.27549472 0 0.90636516
		 -0.27549472 0 0.90636516 -0.27549472 0 -0.90636516 0.27549472 0 -0.90636516;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "D2D75D67-4358-DB16-4499-F9B39B8D9687";
	setAttr ".ics" -type "componentList" 2 "f[71]" "f[73]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 289.73718 0 ;
	setAttr ".rs" 61962;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -29.890118872471877 258.55170953541415 -37.659773770946501 ;
	setAttr ".cbx" -type "double3" 29.890118872471877 320.92262664875875 37.659773770946501 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "086F3E75-425A-097C-C702-62B97E416B8F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[80:87]" -type "float3"  0 0.021008173 -0.34480938
		 0 0.021008173 0.34480938 0 -0.021008173 0.34480938 0 -0.021008173 -0.34480938 0 0.021008173
		 -0.34480938 0 0.021008173 0.34480938 0 -0.021008173 -0.34480938 0 -0.021008173 0.34480938;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "A5299190-4609-28F1-4C78-9BB3E83FF8DE";
	setAttr ".ics" -type "componentList" 2 "f[71]" "f[73]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 289.73715 0 ;
	setAttr ".rs" 48021;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -29.890116660681233 263.30868379345713 -31.915218404742635 ;
	setAttr ".cbx" -type "double3" 29.890116660681233 316.16563889418353 31.915218404742635 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "056E6ACA-4E97-BE49-9B04-1EB788A83512";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[88:95]" -type "float3"  -0.17864454 0 0 -0.17864454
		 0 0 -0.17864454 0 0 -0.17864454 0 0 0.17864454 0 0 0.17864454 0 0 0.17864454 0 0
		 0.17864454 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "242F95C8-42D9-3E55-F4A5-9F90F2EC1FE4";
	setAttr ".ics" -type "componentList" 1 "f[70]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 289.73715 37.659767 ;
	setAttr ".rs" 38125;
	setAttr ".ls" -type "double3" 0.85222222296287586 0.85222222296287586 0.85222222296287586 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -29.890114448890586 258.55170953541415 37.659765826802698 ;
	setAttr ".cbx" -type "double3" 29.890114448890586 320.92261315222646 37.659765826802698 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "9076AA2B-4AAF-5CEF-7AC3-AB868DF8E26F";
	setAttr ".ics" -type "componentList" 1 "f[70]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 289.73715 37.659763 ;
	setAttr ".rs" 46530;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.473018128757648 263.16020844224545 37.659761854730789 ;
	setAttr ".cbx" -type "double3" 25.473018128757648 316.31408725233075 37.659761854730789 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "4644EB9D-4B94-7EC3-B5B7-609C21673EBB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[100:103]" -type "float3"  0 0 -0.16837969 0 0 -0.16837969
		 0 0 -0.16837969 0 0 -0.16837969;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "8CB9E112-4BFC-5546-9067-F68429D88E21";
	setAttr ".ics" -type "componentList" 1 "f[72]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 289.73715 -37.65976 ;
	setAttr ".rs" 45283;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -29.890110025309298 258.55170953541415 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 29.890110025309298 320.92261315222646 -37.659757882658887 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "A80C2416-440C-87CF-FE99-BFBAB8D33661";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[104:107]" -type "float3"  0.24401556 0.020860944 0 -0.24401556
		 0.020860944 0 0.24401556 -0.020860944 0 -0.24401556 -0.020860944 0;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "6EA19D01-4DC2-CD56-61CC-A58BDA1CDA0F";
	setAttr ".ics" -type "componentList" 1 "f[72]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 289.73715 -37.65976 ;
	setAttr ".rs" 59800;
	setAttr ".lt" -type "double3" 0 4.5821401397611443e-16 -3.7416013686161662 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.362682952424226 263.27534735881545 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 25.362682952424226 316.19897532882521 -37.659757882658887 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "DB77431B-419B-39FB-99E4-D092DC54FAF5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[104]" -type "float3" 0 0.00022324431 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.00022324431 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.00022324431 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.00022324431 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "6A1535DD-462A-35E1-6981-E2A44952AA30";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 320.92261 0 ;
	setAttr ".rs" 55798;
	setAttr ".lt" -type "double3" 0 0 22.413706666368796 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -29.890110025309298 320.92261315222646 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 29.890110025309298 320.92261315222646 37.659757882658887 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "5397F943-4D82-0AE9-28F8-4EA16F42731D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[112:115]" -type "float3"  1.1920929e-07 -0.0436338 0
		 -1.1920929e-07 -0.0436338 0 -1.1920929e-07 -0.0436338 0 1.1920929e-07 -0.0436338
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "62B1A69A-40AF-6D00-C60A-A1872B865D01";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 333.45612 0 ;
	setAttr ".rs" 56604;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -29.89010781351865 333.45611383410596 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 29.89010781351865 333.45611383410596 37.659757882658887 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "1D20F954-4FD7-02B4-FE74-64A324A16F18";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[116:119]" -type "float3"  0.35088122 0.06730561 0 -0.35088122
		 0.06730561 0 -0.35088122 0.06730561 0 0.35088122 0.06730561 0;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "47E42AD6-4597-E91D-C9D3-489053D90CBE";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 348.69641 0 ;
	setAttr ".rs" 62112;
	setAttr ".lt" -type "double3" 0 0 5.2853750459020716 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.379912169624255 348.69639804356609 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 23.379912169624255 348.69639804356609 37.659757882658887 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "B821725D-43ED-FEB0-9430-119F952C8784";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[116:123]" -type "float3"  0 -0.021706318 0 0 -0.021706318
		 0 0 -0.021706318 0 0 -0.021706318 0 0.97709787 0.028822262 -0.46515679 -0.97709787
		 0.028822262 -0.46515679 -0.97709787 0.028822262 0.46515679 0.97709787 0.028822262
		 0.46515679;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "F5622108-47C5-DA0C-FC20-85A1965EA1EE";
	setAttr ".ics" -type "componentList" 2 "f[115]" "f[117]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 338.61874 0 ;
	setAttr ".rs" 64454;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -29.89010781351865 333.45611383410596 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 29.89010781351865 343.78136589641844 37.659757882658887 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "26C3F615-4D8E-2473-74CB-139AD2E90219";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[116:131]" -type "float3"  0 0.025746999 0 0 0.025746999
		 0 0 0.025746999 0 0 0.025746999 0 0 0.024811946 0 0 0.024811946 0 0 0.024811946 0
		 0 0.024811946 0 0.82202661 -0.043937031 0 0.82202661 -0.043937031 0 1.15103531 -0.035659589
		 0 1.15103531 -0.035659589 0 -0.82202661 -0.043937031 0 -0.82202661 -0.043937031 0
		 -1.15103531 -0.035659589 0 -1.15103531 -0.035659589 0;
createNode polySplit -n "polySplit4";
	rename -uid "62A0293A-47FD-DC23-78EF-3DBFFCC3A374";
	setAttr -s 5 ".e[0:4]"  0.45731401 0.45731401 0.45731401 0.45731401
		 0.45731401;
	setAttr -s 5 ".d[0:4]"  -2147483396 -2147483393 -2147483391 -2147483395 -2147483396;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "4B566858-427C-6F5A-8733-EE834628A49C";
	setAttr -s 5 ".e[0:4]"  0.45731401 0.45731401 0.45731401 0.45731401
		 0.45731401;
	setAttr -s 5 ".d[0:4]"  -2147483404 -2147483399 -2147483401 -2147483403 -2147483404;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak23";
	rename -uid "0640FC79-4A60-4D94-4F9D-5E9564ECD478";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[124:139]" -type "float3"  0.33180529 0.024757994 -0.059301514
		 0.33180529 0.024757994 -0.059301514 0.33180529 0.020551382 -0.059301514 0.33180529
		 0.020551382 -0.059301514 -0.33180529 0.024757994 -0.059301514 -0.33180529 0.024757994
		 -0.059301514 -0.33180529 0.020551382 -0.059301514 -0.33180529 0.020551382 -0.059301514
		 -0.13526453 0 0 -0.33568347 0 0 -0.33568347 0 0 -0.13526453 0 0 0.13526453 0 0 0.33568347
		 0 0 0.33568347 0 0 0.13526453 0 0;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "9D2920E9-4C00-044B-EBA9-5AA795A4F74D";
	setAttr ".dc" -type "componentList" 4 "f[1]" "f[112]" "f[114:125]" "f[127:136]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "3C5C9610-444E-753B-E30A-388216F8F26A";
	setAttr ".dc" -type "componentList" 1 "f[113]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "B5D27CDC-4633-BAF2-64C1-D585AF12C80B";
	setAttr ".dc" -type "componentList" 1 "f[112]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "D6CCB625-4975-9666-1573-C28FF20748E4";
	setAttr ".ics" -type "componentList" 2 "e[223]" "e[225]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 114;
	setAttr ".sv2" 75;
	setAttr ".d" 1;
createNode polyTweak -n "polyTweak24";
	rename -uid "4900D848-44B3-DCEC-6163-05B585636E45";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[72]" -type "float3" -0.50498444 0.020703997 0 ;
	setAttr ".tk[73]" -type "float3" 0.50498444 0.020703997 0 ;
	setAttr ".tk[74]" -type "float3" 0.50498444 0.020703997 0 ;
	setAttr ".tk[75]" -type "float3" -0.50498444 0.020703997 0 ;
	setAttr ".tk[82]" -type "float3" 0.50498444 0.020703997 0 ;
	setAttr ".tk[83]" -type "float3" 0.50498444 0.020703997 0 ;
	setAttr ".tk[86]" -type "float3" -0.50498444 0.020703997 0 ;
	setAttr ".tk[87]" -type "float3" -0.50498444 0.020703997 0 ;
	setAttr ".tk[90]" -type "float3" 0.44898629 0.020703997 0 ;
	setAttr ".tk[91]" -type "float3" 0.44898629 0.020703997 0 ;
	setAttr ".tk[94]" -type "float3" -0.44898629 0.020703997 0 ;
	setAttr ".tk[95]" -type "float3" -0.44898629 0.020703997 0 ;
	setAttr ".tk[98]" -type "float3" 0.43035907 0.020703997 0 ;
	setAttr ".tk[99]" -type "float3" -0.43035907 0.020703997 0 ;
	setAttr ".tk[102]" -type "float3" 0.43035907 0.020703997 0 ;
	setAttr ".tk[103]" -type "float3" -0.43035907 0.020703997 0 ;
	setAttr ".tk[106]" -type "float3" -0.42849502 0.020703997 0 ;
	setAttr ".tk[107]" -type "float3" 0.42849502 0.020703997 0 ;
	setAttr ".tk[110]" -type "float3" -0.42849502 0.020703997 0 ;
	setAttr ".tk[111]" -type "float3" 0.42849502 0.020703997 0 ;
	setAttr ".tk[112]" -type "float3" -0.50498438 -0.017357282 0 ;
	setAttr ".tk[113]" -type "float3" 0.50498438 -0.017357282 0 ;
	setAttr ".tk[114]" -type "float3" 0.50498438 -0.017357282 0 ;
	setAttr ".tk[115]" -type "float3" -0.50498438 -0.017357282 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "CBF7F57E-4721-2D75-B4AE-889EE4385BE6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[222]" "e[224]" "e[226:227]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 329.52582 0 ;
	setAttr ".rs" 33885;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.259509554098472 329.52582916904726 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 39.259509554098472 329.52582916904726 37.659757882658887 ;
createNode polyTweak -n "polyTweak25";
	rename -uid "BCB33349-40C6-6E99-94D1-788E9785683F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[116:119]" -type "float3"  1.72286117 0.03804123 0 -1.72286117
		 0.03804123 0 -1.72286117 0.03804123 0 1.72286117 0.03804123 0;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "10E71433-4DF4-C722-B2CA-D0B5C703CF0C";
	setAttr ".ics" -type "componentList" 2 "e[232]" "e[234]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 117;
	setAttr ".sv2" 119;
	setAttr ".d" 1;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "049E8822-4751-B734-9A87-CBB275B538CE";
	setAttr ".ics" -type "componentList" 1 "f[117]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 338.13965 0 ;
	setAttr ".rs" 49690;
	setAttr ".lt" -type "double3" 0 0 24.092509611059029 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.2938103986177305 338.13965346021155 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 7.2938103986177305 338.13965346021155 37.659757882658887 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "78CF36A3-4FF3-6940-D6EC-E99FAE814E30";
	setAttr ".ics" -type "componentList" 2 "f[118]" "f[120]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 350.18591 0 ;
	setAttr ".rs" 33000;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.2938103986177305 338.13965346021155 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 7.2938103986177305 362.23217820291893 37.659757882658887 ;
createNode polyTweak -n "polyTweak26";
	rename -uid "90DEAC12-427E-DC67-AC96-128362D8E219";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[124:131]" -type "float3"  2.43963337 0 0 2.43963337
		 0 0 2.43963337 0 0 2.43963337 0 0 -2.43963337 0 0 -2.43963337 0 0 -2.43963337 0 0
		 -2.43963337 0 0;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "10D91B8A-4FF4-7822-CB3F-30BD47B4B22E";
	setAttr ".dc" -type "componentList" 1 "f[114:115]";
createNode polyTweak -n "polyTweak27";
	rename -uid "31AFC201-43C5-410D-D04A-688999003F60";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[116]" -type "float3" 0 0.044489793 0 ;
	setAttr ".tk[117]" -type "float3" 0 0.044489793 0 ;
	setAttr ".tk[118]" -type "float3" 0 0.044489793 0 ;
	setAttr ".tk[119]" -type "float3" 0 0.044489793 0 ;
	setAttr ".tk[124]" -type "float3" -0.18912809 -0.032849174 4.4408921e-16 ;
	setAttr ".tk[125]" -type "float3" -0.18912809 -0.032849174 -4.4408921e-16 ;
	setAttr ".tk[126]" -type "float3" 0.18912767 -0.081953257 -4.4408921e-16 ;
	setAttr ".tk[127]" -type "float3" 0.18912767 -0.081953257 4.4408921e-16 ;
	setAttr ".tk[128]" -type "float3" 0.18912809 -0.032849174 4.4408921e-16 ;
	setAttr ".tk[129]" -type "float3" 0.18912809 -0.032849174 -4.4408921e-16 ;
	setAttr ".tk[130]" -type "float3" -0.18912767 -0.081953257 4.4408921e-16 ;
	setAttr ".tk[131]" -type "float3" -0.18912767 -0.081953257 -4.4408921e-16 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "AC87B5A3-41AA-5C0E-A2F5-D39D5B242B9B";
	setAttr ".dc" -type "componentList" 2 "f[120]" "f[124]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "DE0B1E31-4062-87FE-BF5C-2CB18E0FD977";
	setAttr ".dc" -type "componentList" 1 "f[113:125]";
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "D6817CF0-456D-0168-70D9-E39A74A0DB62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[222]" "e[224]" "e[226:227]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 329.52582 0 ;
	setAttr ".rs" 48073;
	setAttr ".lt" -type "double3" 0 9.3631482929310437 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.259509554098472 329.52581567251502 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 39.259509554098472 329.52581567251502 37.659757882658887 ;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "09A02385-452D-D3EF-950C-8097EFC07FC6";
	setAttr ".ics" -type "componentList" 2 "e[232]" "e[234]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 117;
	setAttr ".sv2" 119;
	setAttr ".d" 1;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "7DE328EA-4678-F53F-CCEA-409B9A45359E";
	setAttr ".ics" -type "componentList" 2 "f[114:115]" "f[117]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 336.47208 0 ;
	setAttr ".rs" 59584;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.259509554098472 329.52581567251502 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 39.259509554098472 343.41833617213041 37.659757882658887 ;
createNode polyTweak -n "polyTweak28";
	rename -uid "1A5DC821-46D6-039B-752D-9DBDAEA298FC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[116:119]" -type "float3"  1.86877525 0.020002965 0 -1.86877525
		 0.020002965 0 -1.86877525 0.020002965 0 1.86877525 0.020002965 0;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "1B792BB6-4294-3F5C-2D78-548364017023";
	setAttr ".ics" -type "componentList" 2 "f[114:115]" "f[117]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 336.47208 0 ;
	setAttr ".rs" 36988;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.259509554098472 329.52581567251502 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 39.259509554098472 343.41833617213041 37.659757882658887 ;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	rename -uid "9EA0C787-4A77-9ADE-C378-2D8A9C7533C4";
	setAttr ".ics" -type "componentList" 2 "f[114:115]" "f[117]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 338.29486 0 ;
	setAttr ".rs" 37306;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.259509554098472 331.34860333120514 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 39.259509554098472 345.24112383082047 37.659757882658887 ;
createNode polyTweak -n "polyTweak29";
	rename -uid "F7601F9A-4CB0-59BF-F0DC-5EB990968D51";
	setAttr ".uopa" yes;
	setAttr -s 136 ".tk[0:135]" -type "float3"  0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10 0 0 9.3132257e-10
		 0 0 9.3132257e-10 0 0 0.0080499845 0 0 0.0080499845 0 0 0.0080499845 0 0 0.0080499845
		 0 0 0.0080499845 0 0 0.0080499845 0 0 0.0080499845 0 0 0.0080499845 0;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	rename -uid "B2B29A11-4A2D-7971-32B8-84A3FE91877B";
	setAttr ".ics" -type "componentList" 2 "f[134]" "f[137]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 333.71411 0 ;
	setAttr ".rs" 53600;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -45.479586830858892 331.34860333120514 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 45.479586830858892 336.0795967646792 37.659757882658887 ;
createNode polyTweak -n "polyTweak30";
	rename -uid "B30CE8EB-4704-966A-9182-97B8E25315F6";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[128]" -type "float3" 0.33524463 3.7252903e-09 0 ;
	setAttr ".tk[129]" -type "float3" 0.33524463 3.7252903e-09 0 ;
	setAttr ".tk[132]" -type "float3" -0.33524463 3.7252903e-09 0 ;
	setAttr ".tk[133]" -type "float3" -0.33524463 3.7252903e-09 0 ;
	setAttr ".tk[136]" -type "float3" 0.33524463 0.020893488 0 ;
	setAttr ".tk[137]" -type "float3" 0.33524463 0.020893488 0 ;
	setAttr ".tk[138]" -type "float3" 0 0.020893486 0 ;
	setAttr ".tk[139]" -type "float3" 0 0.020893486 0 ;
	setAttr ".tk[140]" -type "float3" -0.33524463 0.020893488 0 ;
	setAttr ".tk[141]" -type "float3" -0.33524463 0.020893488 0 ;
	setAttr ".tk[142]" -type "float3" 0 0.020893486 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.020893486 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	rename -uid "F3E37DEF-4EF1-3EC9-8A84-B688E9AC2B8F";
	setAttr ".ics" -type "componentList" 1 "f[117]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 349.97211 0 ;
	setAttr ".rs" 47666;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.5865391131935791 349.97211726429452 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 4.5865391131935791 349.97211726429452 37.659757882658887 ;
createNode polyTweak -n "polyTweak31";
	rename -uid "2585EC3B-4E20-C935-D55C-16843E1E8C48";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[128]" -type "float3" -0.3303169 0 0 ;
	setAttr ".tk[129]" -type "float3" -0.3303169 0 0 ;
	setAttr ".tk[132]" -type "float3" 0.3303169 0 0 ;
	setAttr ".tk[133]" -type "float3" 0.3303169 0 0 ;
	setAttr ".tk[144]" -type "float3" 0.50615197 -0.014271677 0 ;
	setAttr ".tk[145]" -type "float3" 0.50615197 -0.014271677 0 ;
	setAttr ".tk[146]" -type "float3" 0.50615197 -0.014271677 0 ;
	setAttr ".tk[147]" -type "float3" 0.50615197 -0.014271677 0 ;
	setAttr ".tk[148]" -type "float3" -0.50615197 -0.014271677 0 ;
	setAttr ".tk[149]" -type "float3" -0.50615197 -0.014271677 0 ;
	setAttr ".tk[150]" -type "float3" -0.50615197 -0.014271677 0 ;
	setAttr ".tk[151]" -type "float3" -0.50615197 -0.014271677 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	rename -uid "0D7478EB-45FF-63BF-ECE7-93827B436552";
	setAttr ".ics" -type "componentList" 2 "f[151]" "f[153]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 353.4476 0 ;
	setAttr ".rs" 47735;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.5865391131935791 349.97211726429452 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 4.5865391131935791 356.92307430732296 37.659757882658887 ;
createNode polyTweak -n "polyTweak32";
	rename -uid "22CDC402-4FA5-4CCA-E572-48821B477E92";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[152:155]" -type "float3"  0 0.030697498 0 0 0.030697498
		 0 0 0.030697498 0 0 0.030697498 0;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	rename -uid "5CB05CE9-4AD8-A832-F1B6-1EAC37EED4A8";
	setAttr ".ics" -type "componentList" 2 "f[151]" "f[153]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 356.42654 0 ;
	setAttr ".rs" 60180;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.5865391131935791 352.95107186109942 -44.59318018778643 ;
	setAttr ".cbx" -type "double3" 4.5865391131935791 359.90202890412786 44.59318018778643 ;
createNode polyTweak -n "polyTweak33";
	rename -uid "E9CFA834-41A5-018A-96A5-A99006BEE900";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[156:163]" -type "float3"  0 0.013155976 -0.41616991
		 0 0.013155976 -0.41616991 0 0.013155976 -0.41616991 0 0.013155976 -0.41616991 0 0.013155976
		 0.41616991 0 0.013155976 0.41616991 0 0.013155976 0.41616991 0 0.013155976 0.41616991;
createNode polyExtrudeFace -n "polyExtrudeFace31";
	rename -uid "A1A12BB7-4FB8-B8C8-A5A9-848FA58B2310";
	setAttr ".ics" -type "componentList" 6 "f[135:136]" "f[138:141]" "f[143]" "f[145]" "f[147]" "f[149]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 339.04456 0 ;
	setAttr ".rs" 44779;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -54.870650849017338 328.11702064386475 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 54.870650849017338 349.97211726429452 37.659757882658887 ;
createNode polyTweak -n "polyTweak34";
	rename -uid "C3966942-4C06-42CD-9267-CAB36DEF03F0";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[144]" -type "float3" -0.15337563 0 0 ;
	setAttr ".tk[145]" -type "float3" -0.15337563 0 0 ;
	setAttr ".tk[148]" -type "float3" 0.15337563 0 0 ;
	setAttr ".tk[149]" -type "float3" 0.15337563 0 0 ;
	setAttr ".tk[164]" -type "float3" 0 0.026820261 -0.42088035 ;
	setAttr ".tk[165]" -type "float3" 0 0.026820261 -0.42088035 ;
	setAttr ".tk[166]" -type "float3" 0 0.026820261 -0.42088035 ;
	setAttr ".tk[167]" -type "float3" 0 0.026820261 -0.42088035 ;
	setAttr ".tk[168]" -type "float3" 0 0.026820261 0.42088035 ;
	setAttr ".tk[169]" -type "float3" 0 0.026820261 0.42088035 ;
	setAttr ".tk[170]" -type "float3" 0 0.026820261 0.42088035 ;
	setAttr ".tk[171]" -type "float3" 0 0.026820261 0.42088035 ;
createNode polyTweak -n "polyTweak35";
	rename -uid "8E76CD70-434E-419E-F580-EE99A73A3C59";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[172:195]" -type "float3"  0 0 -0.29243788 0 0 -0.29243788
		 0 0 -0.29243788 0 0 -0.29243788 0 0 -0.29243788 0 0 -0.29243788 0 0 -0.29243788 0
		 0 -0.29243788 0 0 -0.29243788 0 0 -0.29243788 0 0 -0.29243788 0 0 -0.29243788 0 0
		 0.29243788 0 0 0.29243788 0 0 0.29243788 0 0 0.29243788 0 0 0.29243788 0 0 0.29243788
		 0 0 0.29243788 0 0 0.29243788 0 0 0.29243788 0 0 0.29243788 0 0 0.29243788 0 0 0.29243788;
createNode polySplit -n "polySplit6";
	rename -uid "935AA80E-4A5C-0642-6A0A-7AB6FDDC6D20";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483462 -2147483466;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "0988848E-4B2C-DC79-F858-8B933323FCF9";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483470 -2147483474;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "E0AF09EA-4FF8-4E41-AF53-CB975359D40D";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483260 -2147483259;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "074EEBA5-428F-422A-D9B5-ACA9CEF0D88A";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483257 -2147483256;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "2EDB14C1-4D1A-FA23-660A-FB8EC1492B02";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483462 -2147483466;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "961DC987-4255-D53E-6808-8ABAE349E2BC";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483470 -2147483474;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak36";
	rename -uid "532E2754-49D7-A03B-906D-1A9DD1E83B66";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[200:207]" -type "float3"  0 0 0.86142564 0 0 0.86142564
		 0 0 0.86142564 0 0 0.86142564 0 0 -0.86142564 0 0 -0.86142564 0 0 -0.86142564 0 0
		 -0.86142564;
createNode polySplit -n "polySplit12";
	rename -uid "AEFCEA84-4796-4292-DA15-79B7615F1777";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483461 -2147483252 -2147483258 -2147483246 -2147483464;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "2D765D1C-45A1-740C-B77F-C08177E233E6";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483472 -2147483249 -2147483255 -2147483243 -2147483469;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "576197B6-4FB0-C101-6467-279A185255CC";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483242 -2147483252 -2147483258 -2147483246 -2147483238;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "E653A66D-4FD5-E2F5-8AB8-65992A3A2BBA";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483233 -2147483249 -2147483255 -2147483243 -2147483229;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "B3FA5CAD-459E-4249-4622-F0B8EB24101F";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483461 -2147483241 -2147483240 -2147483239 -2147483464;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "5D23C1D6-403E-E949-475A-C692522CDB3C";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483472 -2147483232 -2147483231 -2147483230 -2147483469;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "1F0994DE-4E9C-233F-F8DF-998F1FEFFDDC";
	setAttr ".ics" -type "componentList" 2 "e[411:414]" "e[420:423]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak37";
	rename -uid "D44E1E0D-4A40-3BEC-31E0-618EE9386AE9";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[208:237]" -type "float3"  -0.0066680359 0 0 -0.0066680359
		 0 0 -0.0066680359 0 0 -0.0066680359 0 0 -0.0066680359 0 0 0.0066680359 0 0 0.0066680359
		 0 0 0.0066680359 0 0 0.0066680359 0 0 0.0066680359 0 0 0.099014387 -0.059760269 -2.3841858e-07
		 0.099014387 -0.059760269 -7.4505806e-09 0.099014387 -0.059760269 0 0.099014387 -0.059760269
		 7.4505806e-09 0.099014387 -0.059760269 2.3841858e-07 -0.099014387 -0.059760269 -2.3841858e-07
		 -0.099014387 -0.059760269 -7.4505806e-09 -0.099014387 -0.059760269 0 -0.099014387
		 -0.059760269 7.4505806e-09 -0.099014387 -0.059760269 2.3841858e-07 -0.11218236 0.059760269
		 -2.3841858e-07 -0.11218236 0.059760269 -7.4505806e-09 -0.11218236 0.059760269 0 -0.11218236
		 0.059760269 7.4505806e-09 -0.11218236 0.059760269 2.3841858e-07 0.11218236 0.059760269
		 -2.3841858e-07 0.11218236 0.059760269 -7.4505806e-09 0.11218236 0.059760269 0 0.11218236
		 0.059760269 7.4505806e-09 0.11218236 0.059760269 2.3841858e-07;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "6779AF9C-4E7B-50BD-C792-66B0CF28FB2E";
	setAttr ".ics" -type "componentList" 6 "e[390]" "e[393]" "e[408]" "e[417]" "e[426]" "e[435]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak38";
	rename -uid "4AEFA230-494B-FA0B-83AE-5299079DA96D";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[196]" -type "float3" 0 0 0.036283076 ;
	setAttr ".tk[197]" -type "float3" 0 0 0.036283076 ;
	setAttr ".tk[198]" -type "float3" 0 0 0.036283076 ;
	setAttr ".tk[199]" -type "float3" 0 0 0.036283076 ;
	setAttr ".tk[200]" -type "float3" 0 0 -0.036283076 ;
	setAttr ".tk[201]" -type "float3" 0 0 -0.036283076 ;
	setAttr ".tk[202]" -type "float3" 0 0 -0.036283076 ;
	setAttr ".tk[203]" -type "float3" 0 0 -0.036283076 ;
	setAttr ".tk[205]" -type "float3" 0 0 0.03628308 ;
	setAttr ".tk[206]" -type "float3" 0 0 -0.03628308 ;
	setAttr ".tk[209]" -type "float3" 0 0 0.03628308 ;
	setAttr ".tk[210]" -type "float3" 0 0 -0.03628308 ;
	setAttr ".tk[213]" -type "float3" 0 0 0.03628308 ;
	setAttr ".tk[214]" -type "float3" 0 0 -0.03628308 ;
	setAttr ".tk[217]" -type "float3" 0 0 0.03628308 ;
	setAttr ".tk[218]" -type "float3" 0 0 -0.03628308 ;
createNode polySplit -n "polySplit18";
	rename -uid "A181772B-40D6-4BF0-1195-A09052461057";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483430 -2147483434;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "FA84E8A1-47DC-F709-3D6E-69BFA9403197";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483446 -2147483450;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "07EC2FF8-40D2-3D8C-AEA2-50BD0F26AE87";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483220 -2147483219;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "CE4288C4-4267-1953-F1FD-CFBE518642BA";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483217 -2147483216;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "6F9A0AEC-4CEF-F5D8-04A4-0DBFD5CD110F";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483430 -2147483434;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "DBE8E09B-4299-01B1-973D-3EB2508C8BA6";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483446 -2147483450;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak39";
	rename -uid "DB8F2D38-4BE2-9D4C-3BC5-089179A92E52";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[224:231]" -type "float3"  -0.82449549 0 0 -0.62772709
		 0 0 -0.82808226 0 0 -0.63045794 0 0 0.82449549 0 0 0.62772709 0 0 0.82808226 0 0
		 0.63045794 0 0;
createNode polySplit -n "polySplit24";
	rename -uid "D22C732D-49D1-5289-5C93-BD8B6E724683";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483429 -2147483212 -2147483218 -2147483206 -2147483432;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "125DFC09-4229-38CD-0930-7880000518E3";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483448 -2147483209 -2147483215 -2147483203 -2147483445;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "C5D6FAA7-4337-6B54-256D-6CBD168B83F5";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483202 -2147483212 -2147483218 -2147483206 -2147483198;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "472F7C76-47AA-93A7-BF45-AFA47B1D6DAE";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483193 -2147483209 -2147483215 -2147483203 -2147483189;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit28";
	rename -uid "04068E51-404F-915E-3A87-4D92EC9FE92D";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483429 -2147483201 -2147483200 -2147483199 -2147483432;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit29";
	rename -uid "8628532B-42E8-6559-C853-D2BB6DA525FC";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483448 -2147483192 -2147483191 -2147483190 -2147483445;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace32";
	rename -uid "56DA455D-4613-3E3A-7BD1-C08D0912B5AF";
	setAttr ".ics" -type "componentList" 5 "f[195:196]" "f[198:200]" "f[202]" "f[205]" "f[207:209]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 292.08124 0 ;
	setAttr ".rs" 38790;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -34.90598673247915 263.30872428305383 -31.915204502490976 ;
	setAttr ".cbx" -type "double3" 34.90598673247915 320.85372685165521 31.915204502490976 ;
createNode polyTweak -n "polyTweak40";
	rename -uid "61FC9ED5-4CB1-1637-FC50-E59FBB82608A";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[232:261]" -type "float3"  -0.017445911 0 -0.0044594388
		 -0.00071173906 0 -0.0044594388 -1.1920929e-07 0 -0.0044594388 0.00071156025 0 -0.0044594388
		 0.017445624 0 -0.0044594388 -0.017521728 0 -0.0055485563 -0.0007148385 0 -0.0055485563
		 -1.1920929e-07 0 -0.0055485563 0.00071460009 0 -0.0055485563 0.01752156 0 -0.0055485563
		 -0.11202553 -0.057294905 -0.0021667304 -0.0045697237 -0.057294905 -0.0021667304 0
		 -0.057294905 -0.0021667304 0.0045697237 -0.057294905 -0.0021667304 0.11202553 -0.057294905
		 -0.0021667304 -0.11251289 -0.057294756 0.012174726 -0.0045896061 -0.057294756 0.012174726
		 0 -0.057294756 0.012174726 0.0045896061 -0.057294756 0.012174726 0.11251289 -0.057294756
		 0.012174726 0.061182432 0.059439432 -0.01279458 0.0024957391 0.059439432 -0.01279458
		 0 0.059439432 -0.01279458 -0.0024957391 0.059439432 -0.01279458 -0.061182424 0.059439432
		 -0.01279458 0.061448611 0.059439324 0.012794584 0.0025065998 0.059439324 0.012794584
		 0 0.059439324 0.012794584 -0.0025065998 0.059439324 0.012794584 -0.061448611 0.059439324
		 0.012794584;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "070C41E5-4232-8837-1CA5-7ABB8ACDA3C8";
	setAttr ".ics" -type "componentList" 1 "e[452:455]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak41";
	rename -uid "87A8D44F-425A-BB2A-E9FB-1CB08EE5F1B9";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[262:285]" -type "float3"  0.11180009 0 0 0.11180009
		 0 0 0.11180009 0 0 0.11180009 0 0 0.11180009 0 0 0.11180009 0 0 0.11180009 0 0 0.11180009
		 0 0 0.11180009 0 0 0.11180009 0 0 0.11180009 0 0 0.11180009 0 0 -0.11180009 0 0 -0.11180009
		 0 0 -0.11180009 0 0 -0.11180009 0 0 -0.11180009 0 0 -0.11180009 0 0 -0.11180009 0
		 0 -0.11180009 0 0 -0.11180009 0 0 -0.11180009 0 0 -0.11180009 0 0 -0.11180009 0 0;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "3F1D4F22-4141-29BF-7F54-DD8441BEA4F4";
	setAttr ".ics" -type "componentList" 3 "e[425]" "e[458]" "e[476]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "1D446F4E-44A8-D35B-16EF-D7870D5E6595";
	setAttr ".ics" -type "componentList" 1 "e[440:443]";
	setAttr ".cv" yes;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "0ED99F5B-4E2E-7A0E-8F4A-01B4D3E64E33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:252]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 181.82170104980469 0 ;
	setAttr ".ps" -type "double2" 109.74130249023438 368.30679321289063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "B336AF9C-471B-AC99-5D3C-DCB06C961983";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:252]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 181.82170104980469 0 ;
	setAttr ".ps" -type "double2" 109.74130249023438 368.30679321289063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "F0ACA69D-4FCA-20BA-9D8B-FDAE6FDC19D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "93A80B7B-4074-1891-8B64-CC962C6630E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[62]" "e[64]" "e[66:67]" "e[152:155]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "DE49B32F-4DC1-FF9C-1523-4E94D1009873";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[174]" "e[176]" "e[178:179]" "e[182]" "e[184]" "e[186:187]" "e[389:394]" "e[397]" "e[399:407]" "e[409:410]" "e[412:413]" "e[415:416]" "e[418:419]";
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "8CEA8529-4B26-BD3A-B745-1C9D4AB3E426";
	setAttr ".ics" -type "componentList" 3 "e[422]" "e[437]" "e[453]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace33";
	rename -uid "D1D26441-4D6F-E5C2-9EC3-CC832A6BAF4A";
	setAttr ".ics" -type "componentList" 5 "f[211:212]" "f[214:216]" "f[218]" "f[221]" "f[223:225]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 292.08118 0.46817422 ;
	setAttr ".rs" 65233;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -29.374077149888823 263.16020844224545 -34.131314774620435 ;
	setAttr ".cbx" -type "double3" 29.374077149888823 321.00213472020573 35.067663200442446 ;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "DA6EE92E-4F99-4393-E7D0-57AE1AAB74B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[198]" "e[203]" "e[214]" "e[216]";
createNode polyTweak -n "polyTweak42";
	rename -uid "3F1422B9-4C11-69FC-FB91-AA93E36DF6FD";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[232]" -type "float3" 0 1.7462298e-10 0 ;
	setAttr ".tk[233]" -type "float3" 0 1.7462298e-10 0 ;
	setAttr ".tk[234]" -type "float3" 0 1.7462298e-10 0 ;
	setAttr ".tk[235]" -type "float3" 0 1.7462298e-10 0 ;
	setAttr ".tk[240]" -type "float3" 0 1.1641532e-10 0 ;
	setAttr ".tk[241]" -type "float3" 0 1.1641532e-10 0 ;
	setAttr ".tk[242]" -type "float3" 0 1.1641532e-10 0 ;
	setAttr ".tk[243]" -type "float3" 0 1.1641532e-10 0 ;
	setAttr ".tk[268]" -type "float3" -0.0013276627 0.017197998 0.064606607 ;
	setAttr ".tk[269]" -type "float3" 0.0013276627 0.017197998 0.064606607 ;
	setAttr ".tk[270]" -type "float3" 0.0014911286 0.00074797281 0.064606607 ;
	setAttr ".tk[271]" -type "float3" -0.0014911286 0.00074797281 0.064606607 ;
	setAttr ".tk[272]" -type "float3" 0.0017438355 -0.016882079 0.064606607 ;
	setAttr ".tk[273]" -type "float3" 0.0015309886 -0.00071816467 0.064606607 ;
	setAttr ".tk[274]" -type "float3" -0.0017438355 -0.016882079 0.064606607 ;
	setAttr ".tk[275]" -type "float3" -0.0015309886 -0.00071816467 0.064606607 ;
	setAttr ".tk[276]" -type "float3" 0.036554608 0.00074797292 0.064606607 ;
	setAttr ".tk[277]" -type "float3" 0.037531734 -0.00071816467 0.064606607 ;
	setAttr ".tk[278]" -type "float3" -0.036554608 0.00074797281 0.064606607 ;
	setAttr ".tk[279]" -type "float3" -0.037531734 -0.00071816467 0.064606607 ;
	setAttr ".tk[280]" -type "float3" 0.0015243565 -0.00069170026 -0.064606607 ;
	setAttr ".tk[281]" -type "float3" -0.0015243565 -0.00069170026 -0.064606607 ;
	setAttr ".tk[282]" -type "float3" 0 0 -0.064606607 ;
	setAttr ".tk[283]" -type "float3" 0 0 -0.064606607 ;
	setAttr ".tk[284]" -type "float3" 0.0014846694 0.00069170026 -0.064606607 ;
	setAttr ".tk[285]" -type "float3" 0.03736918 -0.00069170026 -0.064606607 ;
	setAttr ".tk[286]" -type "float3" 0.036396258 0.00069170026 -0.064606607 ;
	setAttr ".tk[287]" -type "float3" -0.0014846694 0.00069170026 -0.064606607 ;
	setAttr ".tk[288]" -type "float3" -0.03736918 -0.00069170026 -0.064606607 ;
	setAttr ".tk[289]" -type "float3" -0.036396258 0.00069170026 -0.064606607 ;
	setAttr ".tk[290]" -type "float3" 0 0 -0.064606607 ;
	setAttr ".tk[291]" -type "float3" 0 0 -0.064606607 ;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "3C1BC6BF-443D-6177-068F-0BA4A06FD28C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[200]" "e[219]" "e[422]" "e[425]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "8E8F9139-4074-7FC0-732C-5993F0C318BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[202]" "e[218]" "e[421]" "e[424]" "e[432:433]" "e[436:437]";
createNode polyMapCut -n "polyMapCut7";
	rename -uid "A634E3D9-4AD2-D817-57A8-008AAEA0DD8F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[222]" "e[224]" "e[226:227]" "e[236]" "e[243]";
createNode polyTweak -n "polyTweak43";
	rename -uid "9589990F-4B2D-A647-D8EC-398E923E8444";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[240]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[268]" -type "float3" 0 -0.019364042 0 ;
	setAttr ".tk[269]" -type "float3" 0 -0.019364042 0 ;
	setAttr ".tk[272]" -type "float3" 0 0.019364042 0 ;
	setAttr ".tk[274]" -type "float3" 0 0.019364042 0 ;
	setAttr ".tk[276]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[282]" -type "float3" 0 0.022228671 0 ;
	setAttr ".tk[283]" -type "float3" 0 0.022228671 0 ;
	setAttr ".tk[290]" -type "float3" 0 -0.022244843 0 ;
	setAttr ".tk[291]" -type "float3" 0 -0.022244843 0 ;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "4B6CB520-4CA2-565E-F403-2DBD17411311";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[231:233]" "e[240]" "e[245]" "e[249]";
createNode polyMapCut -n "polyMapCut9";
	rename -uid "F351C67E-42F1-7BE6-59A5-60B96E6CDA2D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[142]" "e[144]" "e[146:147]";
createNode polyMapCut -n "polyMapCut10";
	rename -uid "0384A3C8-474C-4FC3-EECD-17B150F478F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[134]" "e[136]" "e[138:139]";
createNode polyMapCut -n "polyMapCut11";
	rename -uid "3B1F4C99-4D98-A014-E8C9-2487CD6C291F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[237]" "e[246]" "e[253]" "e[255]" "e[260]" "e[262]" "e[268]" "e[272]" "e[333]" "e[335:336]" "e[341]" "e[345]" "e[347]" "e[361]" "e[365]" "e[367]" "e[369]" "e[371:372]";
createNode polyTweak -n "polyTweak44";
	rename -uid "C223911A-4F5F-A6A1-7FB6-22A5071D1396";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[223]" -type "float3" 0 0.015579751 0 ;
	setAttr ".tk[227]" -type "float3" 0 0.015579751 0 ;
	setAttr ".tk[290]" -type "float3" 0 0.015579751 0 ;
	setAttr ".tk[291]" -type "float3" 0 0.015579751 0 ;
createNode polyMapCut -n "polyMapCut12";
	rename -uid "1DBC748B-41C0-DE27-1E3F-7DB33943D861";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48:51]";
createNode polyMapCut -n "polyMapCut13";
	rename -uid "0C73D6CE-4796-A293-7E1C-76AB099E41F8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[56:59]";
createNode polyMapCut -n "polyMapCut14";
	rename -uid "2763D7F6-4BFE-B23B-E07D-77AAFA582D67";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[3]" "e[10:11]";
createNode polyMapCut -n "polyMapCut15";
	rename -uid "6436E52F-43D0-3608-A207-FBACDB7C3478";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[14]" "e[16]" "e[18:19]";
createNode polyMapCut -n "polyMapCut16";
	rename -uid "305883CE-4058-BAD7-C6CD-1781A209E8DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[22]" "e[24]" "e[26:27]";
createNode polyMapCut -n "polyMapCut17";
	rename -uid "0FB7CB65-4F76-8523-D689-72BE9EE3A009";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[38]" "e[40]" "e[42:43]";
createNode polyMapCut -n "polyMapCut18";
	rename -uid "DBE5E78E-4E7E-8F5B-60A1-7AAB05D99B57";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[38]" "e[40]" "e[42:43]";
createNode polyMapCut -n "polyMapCut19";
	rename -uid "5886C886-4720-6D39-669B-1394CAA38B0B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[30]" "e[32]" "e[34:35]";
createNode polyMapCut -n "polyMapCut20";
	rename -uid "F30F0F43-4FFD-0C68-99B1-8CB1DF00E164";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[294]" "e[298]" "e[303]" "e[305]" "e[311]" "e[313]" "e[319]" "e[321]" "e[327]" "e[329]";
createNode polyTweak -n "polyTweak45";
	rename -uid "2589F578-48F4-C391-21BE-49AE54B11D3E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[222]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[226]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[282]" -type "float3" 0 -0.011135156 0 ;
	setAttr ".tk[283]" -type "float3" 0 -0.011135156 0 ;
createNode polyMapCut -n "polyMapCut21";
	rename -uid "3A8F7768-4E36-6F20-D00B-44BB750E3AB3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[322]" "e[330]";
createNode polyMapCut -n "polyMapCut22";
	rename -uid "7A00B0C0-491D-08F1-E675-A2B45EBAE93A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[274:275]";
createNode polyMapCut -n "polyMapCut23";
	rename -uid "C38F84D2-40B7-788A-A061-D3BD549D43F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[318]" "e[320]" "e[323]" "e[326]" "e[328]" "e[331]";
createNode polyMapCut -n "polyMapCut24";
	rename -uid "A2395127-47B1-6872-3C11-9880CEDF1C3D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[334]" "e[338]" "e[342]" "e[346]" "e[348:349]" "e[351]" "e[353:354]" "e[356]" "e[358:359]" "e[362]" "e[366]" "e[370]" "e[374]" "e[376:377]" "e[379]" "e[381:382]" "e[384]" "e[386:387]";
createNode polyMapCut -n "polyMapCut25";
	rename -uid "AF747CF2-4589-FF18-3CD8-EFBBF46CE2C8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[278]" "e[282]" "e[286]" "e[290]" "e[350]" "e[352]" "e[355]" "e[357]" "e[378]" "e[380]" "e[383]" "e[385]";
createNode polyMapCut -n "polyMapCut26";
	rename -uid "9F842D0B-4CBE-F49C-9743-E9951C5AE13A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[456]" "e[459]" "e[462]" "e[466]" "e[469]" "e[472]" "e[478:479]";
createNode polyMapCut -n "polyMapCut27";
	rename -uid "7477B62C-41F0-027D-992C-9492559049AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[454]" "e[464]";
createNode polyMapCut -n "polyMapCut28";
	rename -uid "29F1C31C-4AF9-3F8B-2078-6F9AC36FF71B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[452:453]" "e[460:461]" "e[463]" "e[465]";
createNode polyMapCut -n "polyMapCut29";
	rename -uid "8D080D6F-4C98-46E8-2014-3BA2D3D934A1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[158]" "e[160]" "e[162:163]";
createNode polyMapCut -n "polyMapCut30";
	rename -uid "66D9FAEB-415F-9607-7C09-86BDFD1359D3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[480:481]" "e[483:488]" "e[491]" "e[494:495]" "e[499]" "e[501]" "e[503:507]";
createNode polyMapCut -n "polyMapCut31";
	rename -uid "0DA15E4E-4268-F220-9772-1C8CB5890954";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[447:448]" "e[512]" "e[515]";
createNode polyTweak -n "polyTweak46";
	rename -uid "C35738BC-44BC-790F-77A9-81BAE88967F6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[223]" -type "float3" 0 -0.015915468 0 ;
	setAttr ".tk[227]" -type "float3" 0 -0.015915468 0 ;
createNode polyMapCut -n "polyMapCut32";
	rename -uid "7C6E85EA-463F-02C1-5BC6-57A793F8D286";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[510]" "e[561]";
createNode polyMapCut -n "polyMapCut33";
	rename -uid "2EBD7892-4E96-320F-04D7-02A86B57BF73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[102]" "e[104]" "e[106:107]" "e[110]" "e[112]" "e[114:115]";
createNode polyMapCut -n "polyMapCut34";
	rename -uid "B89D5763-4E36-1AE5-EAF2-B18A00C39238";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[70]" "e[72]" "e[74:75]" "e[78]" "e[80]" "e[82:83]";
createNode polyMapCut -n "polyMapCut35";
	rename -uid "19B5732A-4B0B-CF31-B37F-198B50D22EA9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[94]" "e[96]" "e[98:99]";
createNode polyMapCut -n "polyMapCut36";
	rename -uid "E7A9D73A-4ADD-E16A-EB36-A4AD28ED2DC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[118]" "e[120]" "e[122:123]" "e[126]" "e[128]" "e[130:131]";
createNode polyMapCut -n "polyMapCut37";
	rename -uid "0D6371B8-4F48-A93A-1F46-4AB98B3EB8FD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[86]" "e[88]" "e[90:91]";
createNode polyMapCut -n "polyMapCut38";
	rename -uid "D42859EB-4D4D-88C2-3DF0-408A28B4C6F8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[190]" "e[192]" "e[194:195]" "e[206]" "e[208]" "e[210:211]";
createNode polyMapCut -n "polyMapCut39";
	rename -uid "247646FC-428A-1293-BB04-1683ED9D8BA7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[166]" "e[168]" "e[170:171]";
createNode polyMapCut -n "polyMapCut40";
	rename -uid "D8EF54EE-4AFA-4CE1-E363-D8968327D58A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[143]" "e[145]" "e[223]" "e[225]" "e[251]" "e[258]";
createNode polyMapCut -n "polyMapCut41";
	rename -uid "BA4A92E8-499C-EB31-733B-308F150624CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[251]" "e[258]";
createNode polyMapCut -n "polyMapCut42";
	rename -uid "BC7F7908-4F7A-9971-2534-89AE59B34420";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[140:141]" "e[221]" "e[250]" "e[252]" "e[254]" "e[256:257]" "e[259]" "e[261]" "e[263:265]";
createNode polyMapCut -n "polyMapCut43";
	rename -uid "1B07FB55-4A41-AD05-E8E8-16993EE5F860";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[300:301]" "e[308:309]" "e[316:317]" "e[324:325]";
createNode polyMapCut -n "polyMapCut44";
	rename -uid "51D979E4-4247-8AE8-6C97-76BF10531B25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[84:85]" "e[87]" "e[89]" "e[95]" "e[97]" "e[116:117]" "e[119]" "e[121]" "e[124:125]" "e[127]" "e[129]";
createNode polyMapCut -n "polyMapCut45";
	rename -uid "3040F253-485E-A654-2549-4C9F208D6F0C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[8:9]" "e[44:59]";
createNode polyMapCut -n "polyMapCut46";
	rename -uid "AEE33BA5-4934-534F-BA83-0CAA8532ACE8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1:2]" "e[6:9]" "e[44:45]" "e[60:563]";
createNode polyMapCut -n "polyMapCut47";
	rename -uid "5F5B859F-40F9-24FE-861E-2BB369D629A8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0]" "e[3:5]" "e[8:43]" "e[46:47]" "e[49:59]";
createNode polyMapCut -n "polyMapCut48";
	rename -uid "3C06E018-49DF-9704-14E3-7B87CFD961C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[200]" "e[203]" "e[216]" "e[218]" "e[422]" "e[424]" "e[427:428]" "e[430]" "e[432]" "e[434:435]" "e[437]" "e[439:440]" "e[442:451]" "e[513]" "e[516]" "e[518]" "e[520:521]" "e[523:524]" "e[527:529]" "e[533:537]" "e[539:540]" "e[542]" "e[544]" "e[547]" "e[549:551]" "e[554]" "e[556:561]" "e[563]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "4595F720-444B-967A-6FA6-03AEEF869257";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[268]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[269]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[270]" -type "float2" 0.35576129 0 ;
	setAttr ".uvtk[271]" -type "float2" 0.35576129 0 ;
	setAttr ".uvtk[398]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[399]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[400]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[401]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[678]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[680]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[683]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[685]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[686]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[687]" -type "float2" 0.35576129 0 ;
	setAttr ".uvtk[688]" -type "float2" 0.35576135 0 ;
	setAttr ".uvtk[689]" -type "float2" 0.35576129 0 ;
createNode polyMapCut -n "polyMapCut49";
	rename -uid "F9DFD4B7-4673-E216-8637-F393C6D56941";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[200]" "e[203]" "e[216]" "e[218]" "e[422]" "e[424]" "e[427:428]" "e[430]" "e[432]" "e[434:435]" "e[437]" "e[439:440]" "e[442:451]" "e[513]" "e[516]" "e[518]" "e[520:521]" "e[523:524]" "e[527:529]" "e[533:537]" "e[539:540]" "e[542]" "e[544]" "e[547]" "e[549:551]" "e[554]" "e[556:561]" "e[563]";
createNode polyMapCut -n "polyMapCut50";
	rename -uid "5CC3F9FE-4605-7005-61F3-59A06AC6524C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[200]" "e[203]" "e[216]" "e[218]" "e[422]" "e[424]" "e[427:428]" "e[430]" "e[432]" "e[434:435]" "e[437]" "e[439:440]" "e[442:451]" "e[513]" "e[516]" "e[518]" "e[520:521]" "e[523:524]" "e[527:529]" "e[533:537]" "e[539:540]" "e[542]" "e[544]" "e[547]" "e[549:551]" "e[554]" "e[556:561]" "e[563]";
createNode polySplit -n "polySplit30";
	rename -uid "8956262F-49EF-D5F3-E0D3-0084EB3A33DC";
	setAttr -s 3 ".e[0:2]"  0.51794797 0.51794797 0.51794797;
	setAttr -s 3 ".d[0:2]"  -2147483480 -2147483508 -2147483453;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "784A7CF8-4A6A-9582-E60E-CCB86B2AEA00";
	setAttr -s 3 ".e[0:2]"  0.51794797 0.51794797 0.51794797;
	setAttr -s 3 ".d[0:2]"  -2147483485 -2147483507 -2147483456;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	rename -uid "BA6BF3BA-4470-CBF8-DB76-4BB8A46E4519";
	setAttr -s 3 ".e[0:2]"  0.94049698 0.94049698 0.94049698;
	setAttr -s 3 ".d[0:2]"  -2147483480 -2147483508 -2147483453;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit33";
	rename -uid "08F9AA0E-408C-2CCC-830E-F7BE437C00ED";
	setAttr -s 3 ".e[0:2]"  0.94049698 0.94049698 0.94049698;
	setAttr -s 3 ".d[0:2]"  -2147483485 -2147483507 -2147483456;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak47";
	rename -uid "5B7677AF-408F-4DBD-2FC4-C891C60B4630";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[232]" -type "float3" -0.29581827 0 0 ;
	setAttr ".tk[235]" -type "float3" 0.29581827 0 0 ;
	setAttr ".tk[240]" -type "float3" -0.29581827 0 0 ;
	setAttr ".tk[243]" -type "float3" 0.29581827 0 0 ;
	setAttr ".tk[276]" -type "float3" -0.29581827 0 0 ;
	setAttr ".tk[277]" -type "float3" -0.29581827 0 0 ;
	setAttr ".tk[278]" -type "float3" 0.29581827 0 0 ;
	setAttr ".tk[279]" -type "float3" 0.29581827 0 0 ;
createNode polySplit -n "polySplit34";
	rename -uid "64021C1E-4B14-A751-E72F-88A333E261B4";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483082 -2147483199;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit35";
	rename -uid "D749B2DC-403D-9BC6-DC3E-5DA26C01B5CF";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483077 -2147483212;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit36";
	rename -uid "CD9BE4F6-4127-98DE-857B-42933BC6BB49";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483072 -2147483445;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit37";
	rename -uid "A41BB4FB-49D2-79E3-6839-468D97573594";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483456 -2147483202;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "08052E26-4386-0E89-63BA-E08F2B5F347C";
	setAttr ".dc" -type "componentList" 2 "f[282]" "f[285]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "262AC998-4D62-DB4B-0D50-6D80BC0EB428";
	setAttr ".dc" -type "componentList" 2 "f[100]" "f[282]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "2DDDFB02-4E9D-D373-4EAA-3B895E294B03";
	setAttr ".dc" -type "componentList" 2 "f[98]" "f[281]";
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "60C484C7-4DE9-7367-E5EB-248CC58B477C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[192]" "e[195]" "e[566]" "e[571]" "e[576]" "e[581]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 292.08118 37.65976 ;
	setAttr ".rs" 65141;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -33.457832290100221 263.16020844224545 37.659757882658887 ;
	setAttr ".cbx" -type "double3" 33.457832290100221 321.00213472020573 37.659757882658887 ;
createNode polyTweak -n "polyTweak48";
	rename -uid "D1EE4B10-4FFC-75BE-F0A9-03A3C5FE4C56";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[304:311]" -type "float3"  0 0 -0.11726216 0 0 -0.11726216
		 0 0 -0.11726216 0 0 -0.11726216 0 0 -0.11726216 0 0 -0.11726216 0 0 -0.11726216 0
		 0 -0.11726216;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "D91585C3-4028-7A00-5DB5-A9B46EA0FC34";
	setAttr ".dc" -type "componentList" 1 "f[284:285]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "49E816CA-427A-E82B-E2BD-D8A288AFE199";
	setAttr ".dc" -type "componentList" 2 "f[255]" "f[257]";
createNode polyBridgeEdge -n "polyBridgeEdge4";
	rename -uid "86FF855A-4F88-36D6-07D1-569F16FE6CF1";
	setAttr ".ics" -type "componentList" 5 "e[522]" "e[524:525]" "e[579]" "e[583]" "e[591]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 232;
	setAttr ".sv2" 305;
	setAttr ".rev" yes;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	rename -uid "206543F9-49C5-9C84-3924-DB8DDEAAB748";
	setAttr ".ics" -type "componentList" 4 "e[529:531]" "e[574]" "e[586]" "e[588]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 243;
	setAttr ".sv2" 308;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode deleteComponent -n "deleteComponent12";
	rename -uid "086045BB-4B8A-0737-9694-C89E50DD75B2";
	setAttr ".dc" -type "componentList" 2 "f[215]" "f[217]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "67DBC6FF-40D8-8D6C-8B2F-81BCF574C306";
	setAttr ".dc" -type "componentList" 2 "f[69]" "f[211]";
createNode polyDelEdge -n "polyDelEdge7";
	rename -uid "73AF0053-4B00-2034-A381-169A7E323B7C";
	setAttr ".ics" -type "componentList" 3 "e[518]" "e[520:521]" "e[525:527]";
	setAttr ".cv" yes;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "4F7752F7-4DF3-E1F9-2970-DCBCE1F4C578";
	setAttr ".ics" -type "componentList" 4 "e[200:201]" "e[429]" "e[573:574]" "e[581]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "78133EC2-4813-1E43-369E-ECB5625A5953";
	setAttr ".ics" -type "componentList" 5 "e[199]" "e[422]" "e[424]" "e[434]" "e[576:577]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "C84033AC-45C7-EE2D-0D33-1881DB12F7D6";
	setAttr ".dc" -type "componentList" 1 "f[278]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "4020A999-40A9-ED3F-6C72-10A2D5C47512";
	setAttr ".dc" -type "componentList" 1 "f[278]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "A645EEEC-4691-989F-D131-7EBD56737A72";
	setAttr ".dc" -type "componentList" 1 "f[97]";
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "E025035C-48F5-92F7-F016-9C93266C7606";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[569]" "e[572]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 321.00214 36.682961 ;
	setAttr ".rs" 43081;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -33.457832290100221 321.00213472020573 35.706161842574062 ;
	setAttr ".cbx" -type "double3" 33.457832290100221 321.00213472020573 37.659757882658887 ;
createNode polyTweak -n "polyTweak49";
	rename -uid "27D5868B-4FC8-0742-04EE-81922A4725B6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[98]" -type "float3" 0 -9.3132257e-10 0 ;
	setAttr ".tk[99]" -type "float3" 0 -9.3132257e-10 0 ;
	setAttr ".tk[220]" -type "float3" 0 -0.016395386 0 ;
	setAttr ".tk[224]" -type "float3" 0 -0.016395386 0 ;
	setAttr ".tk[266]" -type "float3" 0 -0.018877415 0 ;
	setAttr ".tk[268]" -type "float3" 0 -0.018877415 0 ;
	setAttr ".tk[299]" -type "float3" 0 -9.3132257e-10 0 ;
	setAttr ".tk[301]" -type "float3" 0 -9.3132257e-10 0 ;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	rename -uid "9830DE6A-4996-BB8A-EF36-F8B5BA2439AF";
	setAttr ".ics" -type "componentList" 2 "e[582]" "e[585]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 302;
	setAttr ".sv2" 305;
	setAttr ".d" 1;
createNode polyTweak -n "polyTweak50";
	rename -uid "C9228CF2-408A-08F0-0585-519091C84569";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[302:305]" -type "float3"  1.74933815 0 0 1.74933815
		 0 0 -1.74933815 0 0 -1.74933815 0 0;
createNode polyTweak -n "polyTweak51";
	rename -uid "52565D4E-4526-E9EA-3796-A08BD93F3F89";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[98]" -type "float3" 0 0 -1.7881393e-07 ;
	setAttr ".tk[99]" -type "float3" 0 0 -1.7881393e-07 ;
	setAttr ".tk[299]" -type "float3" 0 0 -1.7881393e-07 ;
	setAttr ".tk[301]" -type "float3" 0 0 -1.7881393e-07 ;
	setAttr ".tk[302]" -type "float3" -0.026392216 0 0 ;
	setAttr ".tk[303]" -type "float3" -0.026392216 0 0 ;
	setAttr ".tk[304]" -type "float3" 0.026392216 0 0 ;
	setAttr ".tk[305]" -type "float3" 0.026392216 0 0 ;
createNode deleteComponent -n "deleteComponent17";
	rename -uid "BC5FF788-4ECE-1226-67AE-B2ADEA3D183A";
	setAttr ".dc" -type "componentList" 1 "f[246]";
createNode deleteComponent -n "deleteComponent18";
	rename -uid "371C0620-4003-8AAB-0DF5-21B0E10BDBAD";
	setAttr ".dc" -type "componentList" 1 "f[278]";
createNode polyBridgeEdge -n "polyBridgeEdge7";
	rename -uid "4E298AEB-4AE1-661B-9F3E-BEAB6F0B5067";
	setAttr ".ics" -type "componentList" 2 "e[503]" "e[584]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 266;
	setAttr ".sv2" 305;
	setAttr ".rev" yes;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	rename -uid "382E1CCA-4F74-8338-4B19-1EAC1EB9405B";
	setAttr ".ics" -type "componentList" 2 "e[506]" "e[581]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 224;
	setAttr ".sv2" 302;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	rename -uid "5ABCDD8B-4962-9C09-0786-D18E13DD2EA2";
	setAttr ".ics" -type "componentList" 1 "e[586:587]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 266;
	setAttr ".sv2" 302;
	setAttr ".d" 1;
createNode polyTweak -n "polyTweak52";
	rename -uid "4F20ABB9-4B65-A4D3-B2E6-F8BF31D50D75";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[98:99]" -type "float3"  0 0 0.048666626 0 0 0.048666626;
createNode polySplit -n "polySplit38";
	rename -uid "2884BF46-4019-3A48-A50B-A38AA681ABB1";
	setAttr -s 26 ".e[0:25]"  0.52186197 0.52186197 0.478138 0.478138 0.478138
		 0.478138 0.478138 0.478138 0.478138 0.478138 0.478138 0.478138 0.478138 0.52186197
		 0.52186197 0.52186197 0.52186197 0.52186197 0.52186197 0.52186197 0.52186197 0.52186197
		 0.52186197 0.52186197 0.52186197 0.52186197;
	setAttr -s 26 ".d[0:25]"  -2147483443 -2147483502 -2147483426 -2147483420 -2147483389 -2147483305 
		-2147483304 -2147483379 -2147483351 -2147483335 -2147483331 -2147483347 -2147483357 -2147483354 -2147483339 -2147483323 -2147483327 -2147483343 
		-2147483378 -2147483276 -2147483277 -2147483388 -2147483404 -2147483431 -2147483506 -2147483454;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit39";
	rename -uid "BDE2B23A-4C80-13ED-7B69-488707C2902C";
	setAttr -s 3 ".e[0:2]"  0.91726398 0.91726398 0.91726398;
	setAttr -s 3 ".d[0:2]"  -2147483431 -2147483506 -2147483454;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "75AED4F2-44A1-A386-9E08-7FB8802928C0";
	setAttr ".ics" -type "componentList" 2 "vtx[302]" "vtx[334]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak53";
	rename -uid "A9042C5A-4583-58C6-16CA-41AFA7BD0635";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[302]" -type "float3" 0.0017319024 0 0.024333239 ;
	setAttr ".tk[334]" -type "float3" -0.0017319024 0 -0.024333239 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "EAEB101C-4AF5-B598-A85A-63A31D70CE59";
	setAttr ".ics" -type "componentList" 2 "vtx[304]" "vtx[331]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak54";
	rename -uid "B85A40FF-45D0-A893-7EED-EC9BDFFCB704";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[304]" -type "float3" -0.00074516237 0 0.024333239 ;
	setAttr ".tk[331]" -type "float3" 0.00074516237 0 -0.024333239 ;
createNode polyDelEdge -n "polyDelEdge8";
	rename -uid "5693ED0C-4AEC-C264-B96E-DEA95A58A38C";
	setAttr ".ics" -type "componentList" 2 "e[502]" "e[505:506]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak55";
	rename -uid "F38E5A87-48CE-C51F-E0A0-B7834EC8FC99";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[99]" -type "float3" 0 1.8626451e-09 0.019907892 ;
	setAttr ".tk[299]" -type "float3" 0 0 -1.7881393e-07 ;
	setAttr ".tk[302]" -type "float3" 0 1.8626451e-09 0.019907892 ;
	setAttr ".tk[303]" -type "float3" 0 0 -1.7881393e-07 ;
createNode polyDelEdge -n "polyDelEdge9";
	rename -uid "137006BB-4388-0D2E-8153-6D912454C62C";
	setAttr ".ics" -type "componentList" 1 "e[628:629]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge10";
	rename -uid "F85A7CFA-44F9-696F-9845-79BD05B0E3F1";
	setAttr ".ics" -type "componentList" 1 "e[628:629]";
	setAttr ".cv" yes;
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "D930CC75-4C13-0863-F8A6-A3A72C0C70E5";
	setAttr ".ics" -type "componentList" 4 "e[422]" "e[562]" "e[569]" "e[573]";
createNode polyTweak -n "polyTweak56";
	rename -uid "93BE60B3-4D1C-4413-C804-0D840EB23219";
	setAttr ".uopa" yes;
	setAttr ".tk[298]" -type "float3"  0 0 -0.020527048;
createNode polyCloseBorder -n "polyCloseBorder4";
	rename -uid "F18C468C-4207-358E-DC14-BB95A08C5B54";
	setAttr ".ics" -type "componentList" 5 "e[195]" "e[197]" "e[435:436]" "e[557]" "e[559]";
createNode polyCloseBorder -n "polyCloseBorder5";
	rename -uid "6D7C1768-4848-F75D-06BE-E1A0D5E1DECF";
	setAttr ".ics" -type "componentList" 6 "e[196]" "e[418]" "e[434]" "e[554]" "e[556]" "e[566]";
createNode polyCloseBorder -n "polyCloseBorder6";
	rename -uid "5D728302-41BA-A812-F977-7EA39AB17CC3";
	setAttr ".ics" -type "componentList" 4 "e[427]" "e[565]" "e[576]" "e[578]";
createNode polyTweak -n "polyTweak57";
	rename -uid "E806D2A8-41B5-9587-91C4-078FDF8D942A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[220]" -type "float3" 0 0.008341169 0 ;
	setAttr ".tk[223]" -type "float3" 0 0.008341169 0 ;
	setAttr ".tk[260]" -type "float3" 0 0.008341169 0.11445694 ;
	setAttr ".tk[261]" -type "float3" 0 0.008341169 0.11445694 ;
createNode polySplit -n "polySplit40";
	rename -uid "7BC451DC-45F0-CFF7-3A3B-E3B1C0EAF602";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483458 -2147483514;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit41";
	rename -uid "01BAAC95-420E-2168-E63E-CF9AEAD95ED2";
	setAttr -s 2 ".e[0:1]"  0.047763102 0.047763102;
	setAttr -s 2 ".d[0:1]"  -2147483022 -2147483021;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "0ADA2EAF-4B7B-5B9B-7363-5FA341351DDF";
	setAttr ".ics" -type "componentList" 2 "vtx[260]" "vtx[325]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak58";
	rename -uid "F7F9F6F4-43A0-9913-99A5-9685C6F022D9";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[260]" -type "float3" 0.00092300773 -0.0030875802 -0.0053400993 ;
	setAttr ".tk[325]" -type "float3" -0.056408703 0.0030875802 0.0053403378 ;
	setAttr ".tk[326]" -type "float3" -0.055485692 0 0 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "19232528-493B-9E5C-6B35-099426F56E22";
	setAttr ".ics" -type "componentList" 2 "vtx[261]" "vtx[326]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak59";
	rename -uid "D65DB70D-40FE-24E7-637C-FDBC9F1D2022";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[261]" -type "float3" 0.0041216984 -0.0030875802 -0.0053403378 ;
	setAttr ".tk[326]" -type "float3" -0.0041216984 0.0030875802 0.0053403378 ;
createNode polyDelEdge -n "polyDelEdge11";
	rename -uid "30E08AF2-4B99-2860-F3F0-6194BFB6D48D";
	setAttr ".ics" -type "componentList" 1 "e[627]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak60";
	rename -uid "2E259BD3-494D-E0EA-346C-A8876265AA08";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[220]" -type "float3" 0 -0.010772884 0 ;
	setAttr ".tk[223]" -type "float3" 0 -0.010772884 0 ;
	setAttr ".tk[260]" -type "float3" 0 -0.0058549363 0 ;
	setAttr ".tk[261]" -type "float3" 0 -0.0058549363 0 ;
	setAttr ".tk[325]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".tk[326]" -type "float3" 0 7.4505806e-09 0 ;
createNode polyDelEdge -n "polyDelEdge12";
	rename -uid "66C3EA71-4E98-83E2-D881-3385F8FBCB10";
	setAttr ".ics" -type "componentList" 1 "e[628]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak61";
	rename -uid "164B8495-4152-4D02-E6C1-199890EBE057";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[202]" -type "float3" 0 0 0.11585815 ;
	setAttr ".tk[205]" -type "float3" 0 0 -0.11585815 ;
	setAttr ".tk[206]" -type "float3" 0 0 0.11585815 ;
	setAttr ".tk[209]" -type "float3" 0 0 -0.11585815 ;
	setAttr ".tk[210]" -type "float3" 0 0 0.11585815 ;
	setAttr ".tk[213]" -type "float3" 0 0 -0.11585815 ;
	setAttr ".tk[214]" -type "float3" 0 0 0.11585815 ;
	setAttr ".tk[217]" -type "float3" 0 0 -0.11585815 ;
	setAttr ".tk[244]" -type "float3" 0 0 0.11585815 ;
	setAttr ".tk[245]" -type "float3" 0 0 0.11585815 ;
	setAttr ".tk[246]" -type "float3" 0 0 -0.11585815 ;
	setAttr ".tk[247]" -type "float3" 0 0 -0.11585815 ;
	setAttr ".tk[253]" -type "float3" 0 0 0.15734436 ;
	setAttr ".tk[254]" -type "float3" 0 0 0.15734436 ;
	setAttr ".tk[256]" -type "float3" 0 0 -0.15734436 ;
	setAttr ".tk[257]" -type "float3" 0 0 -0.15734436 ;
	setAttr ".tk[262]" -type "float3" 0 0 0.080436222 ;
	setAttr ".tk[263]" -type "float3" 0 0 0.080436222 ;
	setAttr ".tk[264]" -type "float3" 0 0 0.080436222 ;
	setAttr ".tk[265]" -type "float3" 0 0 0.080436222 ;
createNode polySplit -n "polySplit42";
	rename -uid "16ECE310-418C-73D7-A526-25954B3B4094";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483115 -2147483254;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit43";
	rename -uid "930335D3-4DA6-D0A3-CFEA-3D9680C3122D";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483481 -2147483244;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent19";
	rename -uid "C5F5831B-4949-F4DE-0516-188653366AB6";
	setAttr ".dc" -type "componentList" 1 "f[303]";
createNode deleteComponent -n "deleteComponent20";
	rename -uid "6462F2E2-45CE-CA32-73D3-07924E3A3FCF";
	setAttr ".dc" -type "componentList" 1 "f[303]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "0F8A9B91-4060-66E5-1A04-47838A695B71";
	setAttr ".dc" -type "componentList" 1 "f[89]";
createNode deleteComponent -n "deleteComponent22";
	rename -uid "83984127-4C39-2D95-97D3-E8AF73AB6BA2";
	setAttr ".dc" -type "componentList" 2 "f[199]" "f[201]";
createNode deleteComponent -n "deleteComponent23";
	rename -uid "57506855-47FE-47E3-2E99-23AE2D796A00";
	setAttr ".dc" -type "componentList" 2 "f[71]" "f[189]";
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "C3694CF9-4E0F-260C-BA42-D5A8D703A074";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[167]" "e[531]" "e[541]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -34.574814 292.08124 31.915201 ;
	setAttr ".rs" 64281;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.259513977679767 263.30872428305383 31.915200530419074 ;
	setAttr ".cbx" -type "double3" -29.890110025309298 320.85372685165521 31.915200530419074 ;
createNode polyTweak -n "polyTweak62";
	rename -uid "4A49F19E-44A1-8A97-4C53-639EBAD9E097";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[202]" -type "float3" 0 0 0.020742886 ;
	setAttr ".tk[205]" -type "float3" 0 0 -0.020742886 ;
	setAttr ".tk[210]" -type "float3" 0 0 0.020742886 ;
	setAttr ".tk[213]" -type "float3" 0 0 -0.020742886 ;
	setAttr ".tk[253]" -type "float3" 0 0 -0.020742886 ;
	setAttr ".tk[254]" -type "float3" 0 0 -0.020742886 ;
	setAttr ".tk[256]" -type "float3" 0 0 0.020742886 ;
	setAttr ".tk[257]" -type "float3" 0 0 0.020742886 ;
	setAttr ".tk[325]" -type "float3" 0.14063206 0 0 ;
	setAttr ".tk[326]" -type "float3" 0.14063206 0 0 ;
	setAttr ".tk[327]" -type "float3" 0.14063206 0 0 ;
	setAttr ".tk[328]" -type "float3" 0.14063206 0 0 ;
createNode deleteComponent -n "deleteComponent24";
	rename -uid "AADBC8CA-41C5-8989-D5F8-B49251362B13";
	setAttr ".dc" -type "componentList" 2 "f[228]" "f[232]";
createNode deleteComponent -n "deleteComponent25";
	rename -uid "5052DF53-4ED0-5713-04BB-CF9D5D10156E";
	setAttr ".dc" -type "componentList" 1 "f[298]";
createNode polyBridgeEdge -n "polyBridgeEdge10";
	rename -uid "0D1F32F1-4F8D-8A01-72DD-28A874B0D636";
	setAttr ".ics" -type "componentList" 2 "e[479]" "e[627]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 205;
	setAttr ".sv2" 278;
	setAttr ".rev" yes;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	rename -uid "25728B0E-4457-B8E2-D00E-C18F4DF6FAC3";
	setAttr ".ics" -type "componentList" 2 "e[481]" "e[625]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 257;
	setAttr ".sv2" 326;
	setAttr ".rev" yes;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge12";
	rename -uid "FDD34500-4A8F-0211-2A0F-51AD61DA4372";
	setAttr ".ics" -type "componentList" 2 "e[483]" "e[540]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 256;
	setAttr ".sv2" 284;
	setAttr ".rev" yes;
	setAttr ".d" 1;
createNode polyDelEdge -n "polyDelEdge13";
	rename -uid "579F2793-4CFF-0C69-B449-81BB48373BB8";
	setAttr ".ics" -type "componentList" 5 "e[471]" "e[473:474]" "e[479]" "e[481]" "e[483]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent26";
	rename -uid "AC8F2274-4F70-F389-89D6-DC9F3357C6E0";
	setAttr ".dc" -type "componentList" 1 "f[89]";
createNode polySplit -n "polySplit44";
	rename -uid "A9F1331D-4A89-4F4B-0245-31A8B9D1AD8B";
	setAttr -s 3 ".e[0:2]"  0.51835001 0.51835001 0.51835001;
	setAttr -s 3 ".d[0:2]"  -2147483449 -2147483504 -2147483478;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit45";
	rename -uid "2EEB4F00-4480-AB0E-736D-7AB7A63A53B8";
	setAttr -s 3 ".e[0:2]"  0.93398499 0.93398499 0.93398499;
	setAttr -s 3 ".d[0:2]"  -2147483449 -2147483504 -2147483478;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "F45EB590-403E-CF8A-BEA5-81A944447E5D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[170]" "e[626]" "e[631]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -34.574814 292.08124 -31.915201 ;
	setAttr ".rs" 49605;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.259513977679767 263.30872428305383 -31.915200530419074 ;
	setAttr ".cbx" -type "double3" -29.890110025309298 320.85372685165521 -31.915200530419074 ;
createNode polyTweak -n "polyTweak63";
	rename -uid "927000EC-4EB6-62C4-8A15-9CA705E4614D";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[225]" -type "float3" 0.25988188 0 0 ;
	setAttr ".tk[231]" -type "float3" 0.25988188 0 0 ;
	setAttr ".tk[270]" -type "float3" 0.25988188 0 0 ;
	setAttr ".tk[271]" -type "float3" 0.25988188 0 0 ;
	setAttr ".tk[331]" -type "float3" 0.16040714 0 0 ;
	setAttr ".tk[332]" -type "float3" 0.16040714 0 0 ;
	setAttr ".tk[333]" -type "float3" 0.16040714 0 0 ;
	setAttr ".tk[334]" -type "float3" 0.16040714 0 0 ;
createNode deleteComponent -n "deleteComponent27";
	rename -uid "71C5C36F-44BD-6D8F-A17B-4281D757DE94";
	setAttr ".dc" -type "componentList" 1 "f[303]";
createNode polyBridgeEdge -n "polyBridgeEdge13";
	rename -uid "00D1E4C3-4D9F-142B-C8E3-AD83D4D874C1";
	setAttr ".ics" -type "componentList" 2 "e[467]" "e[637]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 251;
	setAttr ".sv2" 333;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge14";
	rename -uid "9051AB8A-4CD9-69A1-C164-88820CD09A40";
	setAttr ".ics" -type "componentList" 2 "e[470]" "e[631]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 252;
	setAttr ".sv2" 327;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge15";
	rename -uid "C578CC4E-454C-BA42-19FD-C7921E69D13C";
	setAttr ".ics" -type "componentList" 2 "e[469]" "e[635]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 209;
	setAttr ".sv2" 330;
	setAttr ".d" 1;
createNode polyDelEdge -n "polyDelEdge14";
	rename -uid "0DEC3924-4BA3-9C92-A68D-41B8A26837C6";
	setAttr ".ics" -type "componentList" 2 "e[467]" "e[469:470]";
	setAttr ".cv" yes;
createNode polyCloseBorder -n "polyCloseBorder7";
	rename -uid "AE5F72D9-46C8-620A-6AC9-DA9276188EE2";
	setAttr ".ics" -type "componentList" 4 "e[183]" "e[380]" "e[382]" "e[632:634]";
createNode polyCloseBorder -n "polyCloseBorder8";
	rename -uid "CA77905F-4BD3-1939-22EE-EE906B4F05D7";
	setAttr ".ics" -type "componentList" 5 "e[182]" "e[184]" "e[388]" "e[391]" "e[613:614]";
createNode polyCloseBorder -n "polyCloseBorder9";
	rename -uid "54CA62F0-4675-23A3-5DFB-42BBA02E7450";
	setAttr ".ics" -type "componentList" 6 "e[180]" "e[381]" "e[396]" "e[398]" "e[628]" "e[630]";
createNode polyCloseBorder -n "polyCloseBorder10";
	rename -uid "7676BB25-4359-C620-F8AB-1889158846D2";
	setAttr ".ics" -type "componentList" 6 "e[179]" "e[181]" "e[397]" "e[609]" "e[611]" "e[616]";
createNode polyTweak -n "polyTweak64";
	rename -uid "971234C7-4900-9F77-8039-298FAC4BE7DE";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[202]" -type "float3" 0 0.0014537291 0 ;
	setAttr ".tk[203]" -type "float3" 0 0.0014537291 0 ;
	setAttr ".tk[208]" -type "float3" 0 -0.0013084722 0 ;
	setAttr ".tk[209]" -type "float3" 0 -0.0013084722 0 ;
	setAttr ".tk[244]" -type "float3" 0 0.0014537291 0 ;
	setAttr ".tk[245]" -type "float3" 0 0.0014537291 0 ;
	setAttr ".tk[248]" -type "float3" 0 -0.0013084722 0 ;
	setAttr ".tk[249]" -type "float3" 0 -0.0013084722 0 ;
createNode deleteComponent -n "deleteComponent28";
	rename -uid "90B86834-490B-B82E-8718-F6817069142F";
	setAttr ".dc" -type "componentList" 1 "f[99]";
createNode deleteComponent -n "deleteComponent29";
	rename -uid "E58D8ED6-438F-E0C3-9C9C-A193693F05FB";
	setAttr ".dc" -type "componentList" 1 "f[100]";
createNode polyTweak -n "polyTweak65";
	rename -uid "A8DB02E9-475A-104A-7736-CBBDEECE3A50";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[220]" -type "float3" -0.11927137 0 0 ;
	setAttr ".tk[226]" -type "float3" -0.078231595 0 0 ;
	setAttr ".tk[263]" -type "float3" -0.15664002 0 0 ;
	setAttr ".tk[264]" -type "float3" -0.1146275 0 0 ;
createNode deleteComponent -n "deleteComponent30";
	rename -uid "26EB2333-457F-9921-D585-CE89218D1CD7";
	setAttr ".dc" -type "componentList" 1 "f[238]";
createNode deleteComponent -n "deleteComponent31";
	rename -uid "27F70C72-488B-88D9-8360-0C9CA54A2E86";
	setAttr ".dc" -type "componentList" 1 "f[241]";
createNode polyDelEdge -n "polyDelEdge15";
	rename -uid "4DA8069F-40C8-A64A-B6BB-B4AA24E95122";
	setAttr ".ics" -type "componentList" 2 "e[619]" "e[624]";
	setAttr ".cv" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "951D9EA1-4109-9B83-B53C-B1997D2E4372";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[199]" "e[202]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 292.10648 -37.65976 ;
	setAttr ".rs" 63052;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -33.312911343448555 263.32586487900323 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 33.312911343448555 320.88709027936136 -37.659757882658887 ;
createNode polyTweak -n "polyTweak66";
	rename -uid "2F558888-4D22-C8C6-E977-FA8AE89FD598";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[329:334]" -type "float3"  0 0 0.20864689 0 0 0.20864689
		 0 0 0.20864686 0 0 0.20864686 0 0 -7.4505806e-09 0 0 -7.4505806e-09;
createNode polySplit -n "polySplit46";
	rename -uid "BDCA7F83-4FA9-02B4-6BC8-FBAD20D196D4";
	setAttr -s 2 ".e[0:1]"  0.50357097 0.50357097;
	setAttr -s 2 ".d[0:1]"  -2147483449 -2147483015;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit47";
	rename -uid "AFB91554-41A5-3D01-AFDB-2685593FFB93";
	setAttr -s 2 ".e[0:1]"  0.50357097 0.50357097;
	setAttr -s 2 ".d[0:1]"  -2147483446 -2147483012;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit48";
	rename -uid "F34BA792-49ED-B1B6-C2D6-E78C3553F8FC";
	setAttr -s 2 ".e[0:1]"  0.89989799 0.89989799;
	setAttr -s 2 ".d[0:1]"  -2147483449 -2147483015;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit49";
	rename -uid "584CE830-4214-6799-0E48-96B996C13FE9";
	setAttr -s 2 ".e[0:1]"  0.89989799 0.89989799;
	setAttr -s 2 ".d[0:1]"  -2147483446 -2147483012;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak67";
	rename -uid "C44F8A2B-48C4-322C-648C-3BB1B3AE757E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[223]" -type "float3" 0.0018355094 0 0 ;
	setAttr ".tk[229]" -type "float3" -0.039204162 0 0 ;
	setAttr ".tk[266]" -type "float3" 0.039204162 0 0 ;
	setAttr ".tk[267]" -type "float3" -0.0028083487 0 0 ;
createNode deleteComponent -n "deleteComponent32";
	rename -uid "E5285BE3-44F0-5CE8-64A3-5389EC0CDDD5";
	setAttr ".dc" -type "componentList" 1 "f[304:305]";
createNode polyBridgeEdge -n "polyBridgeEdge16";
	rename -uid "91F09E87-48FE-DB7C-F7E7-CFA093D0F921";
	setAttr ".ics" -type "componentList" 3 "e[503]" "e[639]" "e[642]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 223;
	setAttr ".sv2" 333;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge17";
	rename -uid "9797A09D-4B98-762A-551E-31A0AEB49598";
	setAttr ".ics" -type "componentList" 3 "e[505]" "e[644]" "e[646]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 267;
	setAttr ".sv2" 338;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge18";
	rename -uid "1D93289F-4EA4-6110-F187-B995F5782A61";
	setAttr ".ics" -type "componentList" 3 "e[507]" "e[643]" "e[645]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 266;
	setAttr ".sv2" 337;
	setAttr ".d" 1;
createNode deleteComponent -n "deleteComponent33";
	rename -uid "9B09C0F5-46A0-D2E0-89E9-4EAA8900EBBD";
	setAttr ".dc" -type "componentList" 1 "f[70]";
createNode deleteComponent -n "deleteComponent34";
	rename -uid "6B106D78-4EE9-BAE4-4BA1-60AA3C93A4DD";
	setAttr ".dc" -type "componentList" 1 "f[204]";
createNode polyDelEdge -n "polyDelEdge16";
	rename -uid "C3032048-40B7-7339-1D7E-D89D0FA0276F";
	setAttr ".ics" -type "componentList" 3 "e[501]" "e[503]" "e[505]";
	setAttr ".cv" yes;
createNode polyBridgeEdge -n "polyBridgeEdge19";
	rename -uid "488E2E98-4B72-2312-A389-75A7B30900BB";
	setAttr ".ics" -type "componentList" 2 "e[492]" "e[634]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 261;
	setAttr ".sv2" 332;
	setAttr ".rev" yes;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge20";
	rename -uid "D0E1C9A5-40C4-BCE2-9D4A-738565C988C6";
	setAttr ".ics" -type "componentList" 2 "e[494]" "e[638]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 225;
	setAttr ".sv2" 335;
	setAttr ".rev" yes;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge21";
	rename -uid "9968D896-46A3-FF89-B1D0-C0BA08B120E7";
	setAttr ".ics" -type "componentList" 2 "e[495]" "e[637]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 262;
	setAttr ".sv2" 331;
	setAttr ".rev" yes;
	setAttr ".d" 1;
createNode deleteComponent -n "deleteComponent35";
	rename -uid "3965E0C5-4781-8A11-D206-7A91E69EBAEE";
	setAttr ".dc" -type "componentList" 1 "f[196]";
createNode deleteComponent -n "deleteComponent36";
	rename -uid "60EC5EB9-4770-A946-7614-74BA52D7695A";
	setAttr ".dc" -type "componentList" 1 "f[201]";
createNode polyDelEdge -n "polyDelEdge17";
	rename -uid "6B69D6FB-436D-9B08-80D2-F18585338D71";
	setAttr ".ics" -type "componentList" 2 "e[490]" "e[492:493]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak68";
	rename -uid "2C8FF322-4ADE-143D-9C52-CC8A37D45995";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[214]" -type "float3" 0 -0.034118958 0 ;
	setAttr ".tk[215]" -type "float3" 0 0.015205189 0 ;
	setAttr ".tk[217]" -type "float3" 0 -0.034118958 0 ;
	setAttr ".tk[218]" -type "float3" 0 0.015205189 0 ;
	setAttr ".tk[254]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[255]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[256]" -type "float3" 0 -0.034118958 7.4505806e-09 ;
	setAttr ".tk[257]" -type "float3" 0 -0.034118958 7.4505806e-09 ;
	setAttr ".tk[258]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[259]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[260]" -type "float3" 0 0.015205189 7.4505806e-09 ;
	setAttr ".tk[261]" -type "float3" 0 0.015205189 7.4505806e-09 ;
createNode deleteComponent -n "deleteComponent37";
	rename -uid "7C5A5068-473C-9CC6-74D3-60A0725C3896";
	setAttr ".dc" -type "componentList" 1 "f[97]";
createNode deleteComponent -n "deleteComponent38";
	rename -uid "E6D44742-49FD-A0D7-7719-FA894BB60D07";
	setAttr ".dc" -type "componentList" 1 "f[97]";
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	rename -uid "4209BAA8-4222-277A-C435-9797A1070D9A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[201]" "e[537]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 320.88708 -37.65976 ;
	setAttr ".rs" 44840;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -33.312911343448555 320.88709027936136 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 33.312911343448555 320.88709027936136 -37.659757882658887 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "244C45B6-4771-D627-3C6B-6F8E202A19CB";
	setAttr ".ics" -type "componentList" 4 "vtx[318]" "vtx[320]" "vtx[329]" "vtx[331]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak69";
	rename -uid "440B5BBF-4B4F-9DA1-09B7-BBBEAB826865";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[104]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[105]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[318]" -type "float3" 0 0 -0.0046212673 ;
	setAttr ".tk[320]" -type "float3" 0 0 -0.0046212673 ;
	setAttr ".tk[329]" -type "float3" 0 0 0.20402564 ;
	setAttr ".tk[330]" -type "float3" 0 0 0.19940437 ;
	setAttr ".tk[331]" -type "float3" 0 0 0.2040254 ;
createNode polyTweak -n "polyTweak70";
	rename -uid "089DD03A-418D-A411-2D30-23A8946E2E31";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[210]" -type "float3" 0 0.0055467696 0 ;
	setAttr ".tk[213]" -type "float3" 0 0.0055467696 0 ;
	setAttr ".tk[252]" -type "float3" 0 -0.0055467677 0 ;
	setAttr ".tk[253]" -type "float3" 0 -0.0055467677 0 ;
	setAttr ".tk[318]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[320]" -type "float3" 0 0 7.4505806e-09 ;
createNode polySplit -n "polySplit50";
	rename -uid "7CCE9508-426C-6EE2-02F0-D5BEFD0D749B";
	setAttr -s 9 ".e[0:8]"  0.0806752 0.0806752 0.0806752 0.91932499
		 0.0806752 0.0806752 0.91932499 0.91932499 0.91932499;
	setAttr -s 9 ".d[0:8]"  -2147483018 -2147483447 -2147483503 -2147483109 -2147483108 -2147483109 
		-2147483503 -2147483447 -2147483018;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent39";
	rename -uid "27697BAF-42EC-94E9-697A-68907BD7B313";
	setAttr ".dc" -type "componentList" 1 "f[308]";
createNode deleteComponent -n "deleteComponent40";
	rename -uid "2BE2615B-448F-0E54-C94A-EAAF9DA83229";
	setAttr ".dc" -type "componentList" 1 "f[228]";
createNode polyBridgeEdge -n "polyBridgeEdge22";
	rename -uid "3D7E184F-41B8-B5F9-8C6D-1EA5E0220B57";
	setAttr ".ics" -type "componentList" 2 "e[476]" "e[633]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 253;
	setAttr ".sv2" 333;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge23";
	rename -uid "ED1DFE3E-43D9-2BE0-DEAB-8492DEB28481";
	setAttr ".ics" -type "componentList" 2 "e[475]" "e[628]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 210;
	setAttr ".sv2" 282;
	setAttr ".rev" yes;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge24";
	rename -uid "4E3DFF30-442F-C4BC-1185-3CA4C018A02A";
	setAttr ".ics" -type "componentList" 2 "e[473]" "e[646]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 252;
	setAttr ".sv2" 331;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyDelEdge -n "polyDelEdge18";
	rename -uid "F7583520-4EFD-4769-0817-A8B5664E4F42";
	setAttr ".ics" -type "componentList" 2 "e[473]" "e[475:476]";
	setAttr ".cv" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	rename -uid "5AD028DC-4773-8AF1-9193-66A6865F4D3F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[197]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 263.32587 -37.65976 ;
	setAttr ".rs" 58852;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.362680740633582 263.32586487900323 -37.659757882658887 ;
	setAttr ".cbx" -type "double3" 25.362680740633582 263.32586487900323 -37.659757882658887 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "01C8A67B-487C-6384-8CEE-D9ADE5C5E744";
	setAttr ".ics" -type "componentList" 3 "vtx[313]" "vtx[315]" "vtx[335:336]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak71";
	rename -uid "05290867-47ED-F92F-AC7C-B09770E2F0E8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[313]" -type "float3" 0 0 -0.0017030239 ;
	setAttr ".tk[315]" -type "float3" 0 0 -0.0017030239 ;
	setAttr ".tk[335]" -type "float3" 0 0 0.20694391 ;
	setAttr ".tk[336]" -type "float3" 0 0 0.20694368 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "C53481DC-458A-98A9-31F3-74BBFC027D3D";
	setAttr ".ics" -type "componentList" 2 "vtx[313]" "vtx[315]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polySplit -n "polySplit51";
	rename -uid "67DAB00F-4BA2-DEE3-3A27-39819DCDAA90";
	setAttr -s 32 ".e[0:31]"  0.520594 0.520594 0.520594 0.520594 0.520594
		 0.520594 0.520594 0.520594 0.520594 0.520594 0.520594 0.520594 0.520594 0.520594
		 0.520594 0.520594 0.520594 0.520594 0.520594 0.520594 0.479406 0.479406 0.520594
		 0.520594 0.520594 0.520594 0.520594 0.520594 0.479406 0.520594 0.520594 0.520594;
	setAttr -s 32 ".d[0:31]"  -2147483073 -2147483497 -2147483586 -2147483542 -2147483526 -2147483530 
		-2147483546 -2147483647 -2147483600 -2147483592 -2147483648 -2147483630 -2147483622 -2147483614 -2147483606 -2147483610 -2147483618 -2147483626 
		-2147483634 -2147483645 -2147483590 -2147483598 -2147483646 -2147483538 -2147483522 -2147483518 -2147483534 -2147483582 -2147483495 -2147483511 
		-2147483451 -2147483004;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit52";
	rename -uid "4AD00983-4364-6C13-44B4-6DB7ACE7A22E";
	setAttr -s 32 ".e[0:31]"  0.913679 0.913679 0.913679 0.913679 0.913679
		 0.913679 0.913679 0.913679 0.913679 0.913679 0.913679 0.913679 0.913679 0.913679
		 0.913679 0.913679 0.913679 0.913679 0.913679 0.913679 0.086321101 0.086321101 0.913679
		 0.913679 0.913679 0.913679 0.913679 0.913679 0.086321101 0.913679 0.913679 0.913679;
	setAttr -s 32 ".d[0:31]"  -2147483073 -2147483497 -2147483586 -2147483542 -2147483526 -2147483530 
		-2147483546 -2147483647 -2147483600 -2147483592 -2147483648 -2147483630 -2147483622 -2147483614 -2147483606 -2147483610 -2147483618 -2147483626 
		-2147483634 -2147483645 -2147482983 -2147482982 -2147483646 -2147483538 -2147483522 -2147483518 -2147483534 -2147483582 -2147482975 -2147483511 
		-2147483451 -2147483004;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak72";
	rename -uid "A66BA44C-49B8-5393-3599-0CAF09137B64";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[210]" -type "float3" 0 -0.0033325402 0 ;
	setAttr ".tk[212]" -type "float3" 0 -0.0033325402 0 ;
	setAttr ".tk[252]" -type "float3" 0 0.0033325402 0 ;
	setAttr ".tk[253]" -type "float3" 0 0.0033325402 0 ;
createNode deleteComponent -n "deleteComponent41";
	rename -uid "3976822A-49B6-12CC-3583-578722C02AC8";
	setAttr ".dc" -type "componentList" 1 "f[230]";
createNode deleteComponent -n "deleteComponent42";
	rename -uid "E2CF683B-4D34-4933-2DCB-CAAEC8CD1021";
	setAttr ".dc" -type "componentList" 1 "f[337]";
createNode polyBridgeEdge -n "polyBridgeEdge25";
	rename -uid "B5DFB8FE-4996-41D7-D887-6DAEE17E4237";
	setAttr ".ics" -type "componentList" 2 "e[477]" "e[706]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 253;
	setAttr ".sv2" 366;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge26";
	rename -uid "3F71910B-41E7-EDD3-E434-4DAB2D8DF627";
	setAttr ".ics" -type "componentList" 2 "e[478]" "e[737]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 252;
	setAttr ".sv2" 365;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge27";
	rename -uid "CE00CC6A-4995-4237-45CF-A09A1E604B4B";
	setAttr ".ics" -type "componentList" 2 "e[476]" "e[768]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 212;
	setAttr ".sv2" 397;
	setAttr ".d" 1;
createNode polyDelEdge -n "polyDelEdge19";
	rename -uid "945CDACF-428E-A873-3E47-57AC583BBB10";
	setAttr ".ics" -type "componentList" 1 "e[476:478]";
	setAttr ".cv" yes;
createNode polyCloseBorder -n "polyCloseBorder11";
	rename -uid "6B84C714-4464-510D-EBA1-78ADD9D027AC";
	setAttr ".ics" -type "componentList" 5 "e[401]" "e[600]" "e[616]" "e[618]" "e[636]";
createNode polyTweak -n "polyTweak73";
	rename -uid "FEDF530B-4064-0AC4-A7CC-9097BBFBFCE3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[212]" -type "float3" 0 -0.0022191464 0 ;
	setAttr ".tk[213]" -type "float3" 0 -0.0022191464 0 ;
	setAttr ".tk[216]" -type "float3" 0 -0.0067920219 0 ;
	setAttr ".tk[217]" -type "float3" 0 -0.0067920219 0 ;
	setAttr ".tk[246]" -type "float3" 0 -0.0022191464 -0.13272819 ;
	setAttr ".tk[247]" -type "float3" 0 -0.0022191464 -0.13272819 ;
	setAttr ".tk[248]" -type "float3" 0 -0.0067920219 -0.10970958 ;
	setAttr ".tk[249]" -type "float3" 0 -0.0067920219 -0.10970958 ;
createNode polyCloseBorder -n "polyCloseBorder12";
	rename -uid "5FC3FB73-441D-CAEF-91AA-AB887552AAFF";
	setAttr ".ics" -type "componentList" 4 "e[398]" "e[603]" "e[612]" "e[617]";
createNode polyCloseBorder -n "polyCloseBorder13";
	rename -uid "F46C9C86-4264-0F36-72CE-B59D2C2A7366";
	setAttr ".ics" -type "componentList" 4 "e[404]" "e[598]" "e[669]" "e[763]";
createNode polyCloseBorder -n "polyCloseBorder14";
	rename -uid "AD5E93F0-4BC2-0006-292D-35917F61AC08";
	setAttr ".ics" -type "componentList" 4 "e[403]" "e[595]" "e[610]" "e[637]";
createNode polyDelEdge -n "polyDelEdge20";
	rename -uid "0B9F70B7-45C7-415A-8367-8B8266A5C9D6";
	setAttr ".ics" -type "componentList" 2 "e[526]" "e[626:629]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge21";
	rename -uid "67B6BE1F-42D4-7C96-CB96-B6A1A54103A3";
	setAttr ".ics" -type "componentList" 2 "e[659:688]" "e[721:750]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent43";
	rename -uid "F4955A67-4248-ED9C-7028-F0B04FFE758F";
	setAttr ".dc" -type "componentList" 1 "f[83]";
createNode deleteComponent -n "deleteComponent44";
	rename -uid "A8C94C12-44EE-6704-E142-56BC5D7B86F6";
	setAttr ".dc" -type "componentList" 1 "f[84]";
createNode polyDelEdge -n "polyDelEdge22";
	rename -uid "9F870D49-4CC3-AAF8-B78B-328F57C319F3";
	setAttr ".ics" -type "componentList" 1 "e[479]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge23";
	rename -uid "623090D8-4BEC-0246-C6F2-0EBEB59318A5";
	setAttr ".ics" -type "componentList" 1 "e[487]";
	setAttr ".cv" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	rename -uid "09B5CB8A-49EC-2DF2-26B7-04A36DCE3AF7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[156]" "e[475]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 34.574814 292.08124 0 ;
	setAttr ".rs" 59114;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 29.890110025309298 263.30872428305383 -31.915200530419074 ;
	setAttr ".cbx" -type "double3" 39.259513977679767 320.85372685165521 31.915200530419074 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "799540C4-4ED3-54D2-BBDE-9ABEF46B93C1";
	setAttr ".ics" -type "componentList" 2 "vtx[89]" "vtx[327]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak74";
	rename -uid "384EA5E0-4E88-0202-FFAF-6395478BF0E9";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[89]" -type "float3" 0.0053436756 0 0 ;
	setAttr ".tk[327]" -type "float3" -0.1733007 0 0 ;
	setAttr ".tk[328]" -type "float3" -0.16795714 0 0 ;
	setAttr ".tk[329]" -type "float3" -0.16795714 0 0 ;
	setAttr ".tk[330]" -type "float3" -0.16795714 0 0 ;
createNode deleteComponent -n "deleteComponent45";
	rename -uid "A2CFB167-4FF5-F324-914D-2998669EFFA6";
	setAttr ".dc" -type "componentList" 1 "f[69]";
createNode deleteComponent -n "deleteComponent46";
	rename -uid "A0D687D5-4B07-4C59-EF88-A39DBD518BED";
	setAttr ".dc" -type "componentList" 1 "f[181]";
createNode deleteComponent -n "deleteComponent47";
	rename -uid "0AF76744-4C5E-7CF3-397F-81AD899A01E0";
	setAttr ".dc" -type "componentList" 1 "f[185]";
createNode deleteComponent -n "deleteComponent48";
	rename -uid "3B359F0B-48A9-8416-40C0-A0A4CE003516";
	setAttr ".dc" -type "componentList" 1 "f[183]";
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "F7784103-4D8F-4895-9E36-DB9DB4FBCB9C";
	setAttr ".ics" -type "componentList" 2 "vtx[90]" "vtx[327]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak75";
	rename -uid "0EE002E2-4108-35F4-FB75-D98585934077";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[90]" -type "float3" 0.033342838 0 0 ;
	setAttr ".tk[327]" -type "float3" -0.033342838 0 0 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "7CCFFBA8-44B1-EBE3-13A4-528375B36211";
	setAttr ".ics" -type "componentList" 2 "vtx[91]" "vtx[328]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak76";
	rename -uid "85AB73B4-48B6-DA22-A326-4A8980060BC7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[91]" -type "float3" 0.033342838 0 0 ;
	setAttr ".tk[328]" -type "float3" -0.033342838 0 0 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "5343E66D-47F1-90B5-B928-9FB53598EEA0";
	setAttr ".ics" -type "componentList" 2 "vtx[88]" "vtx[327]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak77";
	rename -uid "2A8D8C09-4275-1F84-7C6C-51B1BC0DE085";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[88]" -type "float3" 0.0053436756 0 0 ;
	setAttr ".tk[327]" -type "float3" -0.0053435564 0 0 ;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "09648B8D-493F-6456-0FB2-42ADF4432EE5";
	setAttr ".ics" -type "componentList" 2 "vtx[100]" "vtx[262]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak78";
	rename -uid "B8692950-44F7-50B0-DF16-B386719EA246";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[100]" -type "float3" 0 0 0.025559902 ;
	setAttr ".tk[262]" -type "float3" 0 0 -0.025559664 ;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "F1680FAA-4EAD-9D09-BAD0-68BD8197A0C4";
	setAttr ".ics" -type "componentList" 2 "vtx[101]" "vtx[260]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak79";
	rename -uid "6A8B445B-4701-A595-57D1-D79EDB91EB85";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[101]" -type "float3" 0 0 0.025559902 ;
	setAttr ".tk[260]" -type "float3" 0 0 -0.025559664 ;
createNode polySplit -n "polySplit53";
	rename -uid "2CBB3DF8-4707-A6B6-3379-53BC977EC33F";
	setAttr -s 2 ".e[0:1]"  0.51889402 0.51889402;
	setAttr -s 2 ".d[0:1]"  -2147483177 -2147483022;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit54";
	rename -uid "5590AFF9-462E-D369-4972-B9810201464D";
	setAttr -s 2 ".e[0:1]"  0.93025303 0.93025303;
	setAttr -s 2 ".d[0:1]"  -2147483177 -2147483022;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit55";
	rename -uid "429D4F28-4232-C1FF-7B62-DDB64E571FE4";
	setAttr -s 3 ".e[0:2]"  0.516523 0.516523 0.516523;
	setAttr -s 3 ".d[0:2]"  -2147483508 -2147483492 -2147483023;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit56";
	rename -uid "D74A2E2C-4EBF-144F-094B-849A4B81C22C";
	setAttr -s 3 ".e[0:2]"  0.93448699 0.93448699 0.93448699;
	setAttr -s 3 ".d[0:2]"  -2147483508 -2147483492 -2147483023;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent49";
	rename -uid "E392A308-4EE4-F770-68F9-4EB402960AE3";
	setAttr ".dc" -type "componentList" 1 "f[306]";
createNode deleteComponent -n "deleteComponent50";
	rename -uid "A89F39E8-4154-F5F2-FE1F-5584254EB71F";
	setAttr ".dc" -type "componentList" 1 "f[301]";
createNode deleteComponent -n "deleteComponent51";
	rename -uid "E60067CC-40DD-CEC9-1A34-58910C2C3DCC";
	setAttr ".dc" -type "componentList" 1 "f[203]";
createNode polyBridgeEdge -n "polyBridgeEdge28";
	rename -uid "8E948A6C-4DB3-CC13-8F5E-6485D89B23A2";
	setAttr ".ics" -type "componentList" 2 "e[422]" "e[628]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 231;
	setAttr ".sv2" 326;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge29";
	rename -uid "6745F17B-4755-9844-03B7-0BBAF69EA0E4";
	setAttr ".ics" -type "componentList" 2 "e[423]" "e[629]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 230;
	setAttr ".sv2" 325;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge30";
	rename -uid "1A8E19AE-47A5-4678-071F-AA9BCB7D89E5";
	setAttr ".ics" -type "componentList" 2 "e[421]" "e[630]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 209;
	setAttr ".sv2" 327;
	setAttr ".d" 1;
createNode polyDelEdge -n "polyDelEdge24";
	rename -uid "2014935C-4E41-8B90-E910-0A84818A50CA";
	setAttr ".ics" -type "componentList" 1 "e[421:423]";
	setAttr ".cv" yes;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "E1045435-4873-DFE2-9707-D794A61A863F";
	setAttr ".ics" -type "componentList" 2 "vtx[93]" "vtx[296]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak80";
	rename -uid "A2048362-4223-FBA8-02DD-C6B9A1F03032";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[93]" -type "float3" -0.026049849 0 0 ;
	setAttr ".tk[263]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[296]" -type "float3" -0.0078126043 0 0 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "B9D2E83D-4CBC-5A14-1160-949F49F4C110";
	setAttr ".ics" -type "componentList" 2 "vtx[92]" "vtx[288]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak81";
	rename -uid "94769792-46D8-AF8D-E997-9EA1D7922674";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[92]" -type "float3" -0.019006252 0 0 ;
	setAttr ".tk[288]" -type "float3" 0.019006133 0 0 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "C30AA02B-4046-3464-1C9D-918FEDEBF756";
	setAttr ".ics" -type "componentList" 2 "vtx[94]" "vtx[290]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak82";
	rename -uid "8B6D2F33-4A1E-78E0-2B6A-99A5166797F4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[94]" -type "float3" -0.047005415 0 0 ;
	setAttr ".tk[290]" -type "float3" 0.047005415 0 0 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "5CECAF19-40CF-E0AF-051D-45B254730122";
	setAttr ".ics" -type "componentList" 2 "vtx[95]" "vtx[296]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak83";
	rename -uid "F6213C35-4EC3-40FC-E46A-A68435CDAF3C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[95]" -type "float3" -0.037117839 0 0 ;
	setAttr ".tk[296]" -type "float3" 0.037117839 0 0 ;
createNode deleteComponent -n "deleteComponent52";
	rename -uid "28EFAF24-4F0F-04E7-DB4A-F0B078BF2E8E";
	setAttr ".dc" -type "componentList" 1 "f[200]";
createNode polyBridgeEdge -n "polyBridgeEdge31";
	rename -uid "5077F524-4A94-0974-79B6-3CB2D37BEE68";
	setAttr ".ics" -type "componentList" 2 "e[414]" "e[624]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 200;
	setAttr ".sv2" 322;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge32";
	rename -uid "EB5A1F1A-4A87-8C97-4B9A-B49F0C285E2E";
	setAttr ".ics" -type "componentList" 2 "e[415]" "e[626]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 227;
	setAttr ".sv2" 325;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge33";
	rename -uid "681A2205-4561-38A6-5DE0-C095653195E1";
	setAttr ".ics" -type "componentList" 2 "e[412]" "e[628]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 226;
	setAttr ".sv2" 326;
	setAttr ".d" 1;
createNode polyDelEdge -n "polyDelEdge25";
	rename -uid "3F6845B7-470C-B2F9-06D7-00A9DFCE11DD";
	setAttr ".ics" -type "componentList" 2 "e[412]" "e[414:415]";
	setAttr ".cv" yes;
createNode polyCloseBorder -n "polyCloseBorder15";
	rename -uid "F17EE871-49F7-7124-E46A-8AB238B1E9A9";
	setAttr ".ics" -type "componentList" 3 "e[169]" "e[382:383]" "e[608]";
createNode polyCloseBorder -n "polyCloseBorder16";
	rename -uid "3479EA88-4932-DE91-E3DD-09886F610C6A";
	setAttr ".ics" -type "componentList" 4 "e[369]" "e[381]" "e[607]" "e[628]";
createNode polyCloseBorder -n "polyCloseBorder17";
	rename -uid "D9D20295-4ABB-DDDB-5DF3-71A512509ADC";
	setAttr ".ics" -type "componentList" 4 "e[368]" "e[370]" "e[377]" "e[616]";
createNode polyCloseBorder -n "polyCloseBorder18";
	rename -uid "674D5088-454C-E4BA-15FF-03B3DD910AB7";
	setAttr ".ics" -type "componentList" 4 "e[172]" "e[375]" "e[610]" "e[623]";
createNode polyMapCut -n "polyMapCut51";
	rename -uid "6255D295-4725-ACC3-A30A-E8865760E61C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:628]";
createNode polyTweak -n "polyTweak84";
	rename -uid "BA5B64CC-4BB9-DB0C-3067-D3812D891F47";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[200]" -type "float3" 0 0.0021522434 0 ;
	setAttr ".tk[201]" -type "float3" 0 0.0021522434 0 ;
	setAttr ".tk[204]" -type "float3" 0 -0.002297706 0 ;
	setAttr ".tk[205]" -type "float3" 0 -0.002297706 0 ;
	setAttr ".tk[218]" -type "float3" 0.039600208 -0.002297706 0 ;
	setAttr ".tk[219]" -type "float3" 0.039600208 -0.002297706 0 ;
	setAttr ".tk[221]" -type "float3" 0.039600208 0.0021522434 0 ;
	setAttr ".tk[223]" -type "float3" 0.039600208 0.0021522434 0 ;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "CA89ED5A-41B8-3E31-9A34-1F92895CF53A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:306]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 181.82170104980469 0 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 109.74130249023438 103.21012878417969 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "5794B3F9-48C8-99D7-2156-FE82A7C8E179";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:306]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 181.82170104980469 0 ;
	setAttr ".ps" -type "double2" 109.74130249023438 368.30679321289063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut52";
	rename -uid "58DBB039-4556-5037-1409-64BA4C71AAC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:628]";
createNode polyNormal -n "polyNormal1";
	rename -uid "45169C89-49D2-B23C-2009-51B341220999";
	setAttr ".ics" -type "componentList" 1 "f[0:306]";
	setAttr ".nm" 2;
createNode polySplitEdge -n "polySplitEdge1";
	rename -uid "B4120E0C-48F8-8380-696B-B980736BBC8A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[433]";
createNode polySplitVert -n "polySplitVert1";
	rename -uid "BC045D10-471E-C829-CFF0-2999B271C4B6";
	setAttr ".ics" -type "componentList" 1 "vtx[232:233]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "AB57D55C-4F28-9924-C0E6-E89534B27849";
	setAttr ".uopa" yes;
	setAttr -s 1248 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.077620625 -0.071079314 ;
	setAttr ".uvtk[1]" -type "float2" 0.014749169 0.014817953 ;
	setAttr ".uvtk[2]" -type "float2" -0.017422885 0.0014929175 ;
	setAttr ".uvtk[3]" -type "float2" -0.00094759464 -0.070517123 ;
	setAttr ".uvtk[4]" -type "float2" 0.017176986 0.010469496 ;
	setAttr ".uvtk[5]" -type "float2" 0.025882065 0.046625853 ;
	setAttr ".uvtk[6]" -type "float2" -0.086412311 0.10711303 ;
	setAttr ".uvtk[7]" -type "float2" -0.0055838525 -0.0047384501 ;
	setAttr ".uvtk[8]" -type "float2" 0 0.019174546 ;
	setAttr ".uvtk[9]" -type "float2" 0.25620496 0.022348251 ;
	setAttr ".uvtk[10]" -type "float2" 0 0.019174546 ;
	setAttr ".uvtk[11]" -type "float2" 0.28240442 0 ;
	setAttr ".uvtk[12]" -type "float2" 0.032347679 0.22482076 ;
	setAttr ".uvtk[13]" -type "float2" 0 -0.002491802 ;
	setAttr ".uvtk[14]" -type "float2" 0.23950091 -0.46248686 ;
	setAttr ".uvtk[15]" -type "float2" 0.020886898 0.083995223 ;
	setAttr ".uvtk[16]" -type "float2" -0.12452829 0 ;
	setAttr ".uvtk[17]" -type "float2" 0.2187748 -0.0029075108 ;
	setAttr ".uvtk[18]" -type "float2" -0.058347523 0 ;
	setAttr ".uvtk[19]" -type "float2" 0 -0.002491802 ;
	setAttr ".uvtk[20]" -type "float2" 0.020590544 0 ;
	setAttr ".uvtk[21]" -type "float2" 0.24122334 0 ;
	setAttr ".uvtk[22]" -type "float2" -0.24122334 0 ;
	setAttr ".uvtk[23]" -type "float2" -0.020590544 0 ;
	setAttr ".uvtk[24]" -type "float2" 0 -0.019174546 ;
	setAttr ".uvtk[25]" -type "float2" -0.25518274 -0.05249434 ;
	setAttr ".uvtk[26]" -type "float2" 0.25571108 0.0041034967 ;
	setAttr ".uvtk[27]" -type "float2" 0 -0.019174546 ;
	setAttr ".uvtk[28]" -type "float2" 0.020886898 -0.083995223 ;
	setAttr ".uvtk[29]" -type "float2" 0.00094759464 0.070517123 ;
	setAttr ".uvtk[30]" -type "float2" 0.061297476 -0.065665856 ;
	setAttr ".uvtk[31]" -type "float2" -0.025729001 -0.049789786 ;
	setAttr ".uvtk[32]" -type "float2" 0 0.010941744 ;
	setAttr ".uvtk[33]" -type "float2" -0.047347665 0 ;
	setAttr ".uvtk[34]" -type "float2" 0 -0.010941744 ;
	setAttr ".uvtk[35]" -type "float2" -0.042170197 -0.002156198 ;
	setAttr ".uvtk[36]" -type "float2" 0 0.01081109 ;
	setAttr ".uvtk[37]" -type "float2" -0.092735887 0.20232499 ;
	setAttr ".uvtk[38]" -type "float2" -0.098228693 0 ;
	setAttr ".uvtk[39]" -type "float2" 0.090764165 0.0021265149 ;
	setAttr ".uvtk[40]" -type "float2" 0 -0.010941744 ;
	setAttr ".uvtk[41]" -type "float2" 0.041159272 0.029690742 ;
	setAttr ".uvtk[42]" -type "float2" 0 0.010941744 ;
	setAttr ".uvtk[43]" -type "float2" 0.047347665 0 ;
	setAttr ".uvtk[44]" -type "float2" 0 0.01081109 ;
	setAttr ".uvtk[45]" -type "float2" -0.088713601 -0.0022847056 ;
	setAttr ".uvtk[46]" -type "float2" 0.098228693 0 ;
	setAttr ".uvtk[47]" -type "float2" 0.090794414 -0.19806397 ;
	setAttr ".uvtk[48]" -type "float2" 0.085307777 -0.18843248 ;
	setAttr ".uvtk[49]" -type "float2" 0.10270864 0 ;
	setAttr ".uvtk[50]" -type "float2" -0.067969322 0.006596446 ;
	setAttr ".uvtk[51]" -type "float2" 0.098228693 0 ;
	setAttr ".uvtk[52]" -type "float2" 0.060535729 0.00059086084 ;
	setAttr ".uvtk[53]" -type "float2" -0.087137759 -0.012093842 ;
	setAttr ".uvtk[54]" -type "float2" 0.089163423 0.012577057 ;
	setAttr ".uvtk[55]" -type "float2" -0.098228693 0 ;
	setAttr ".uvtk[56]" -type "float2" 0.068002075 -0.0054626465 ;
	setAttr ".uvtk[57]" -type "float2" -0.098228693 0 ;
	setAttr ".uvtk[58]" -type "float2" -0.060535729 0.00059086084 ;
	setAttr ".uvtk[59]" -type "float2" -0.07948336 0.17564946 ;
	setAttr ".uvtk[60]" -type "float2" 0 0.010941744 ;
	setAttr ".uvtk[61]" -type "float2" 0.047347665 0 ;
	setAttr ".uvtk[62]" -type "float2" -0.047347665 0 ;
	setAttr ".uvtk[63]" -type "float2" 0 -0.010941744 ;
	setAttr ".uvtk[64]" -type "float2" -0.047347665 0 ;
	setAttr ".uvtk[65]" -type "float2" 0 0.010941744 ;
	setAttr ".uvtk[66]" -type "float2" 0.047347665 0 ;
	setAttr ".uvtk[67]" -type "float2" 0 -0.010941744 ;
	setAttr ".uvtk[68]" -type "float2" -0.060535729 -0.00059086084 ;
	setAttr ".uvtk[69]" -type "float2" 0.22482008 0.0039920807 ;
	setAttr ".uvtk[70]" -type "float2" 0.25146937 0.0030577183 ;
	setAttr ".uvtk[71]" -type "float2" -0.037246913 0.00059092045 ;
	setAttr ".uvtk[72]" -type "float2" -0.1727953 -0.0019128919 ;
	setAttr ".uvtk[73]" -type "float2" 0.24722421 0.017439067 ;
	setAttr ".uvtk[74]" -type "float2" 0.18217593 0.0053963661 ;
	setAttr ".uvtk[75]" -type "float2" 0.020606846 0.046071708 ;
	setAttr ".uvtk[76]" -type "float2" -0.0017325282 0.01659435 ;
	setAttr ".uvtk[77]" -type "float2" -0.0137344 0.049152136 ;
	setAttr ".uvtk[78]" -type "float2" 0.003731668 0.0024699569 ;
	setAttr ".uvtk[79]" -type "float2" 0.031060517 -0.01015991 ;
	setAttr ".uvtk[80]" -type "float2" -0.011939704 -0.039011002 ;
	setAttr ".uvtk[81]" -type "float2" 0.013680875 0.017580926 ;
	setAttr ".uvtk[82]" -type "float2" -0.032575786 -0.063717186 ;
	setAttr ".uvtk[83]" -type "float2" 0.030753553 -0.0096422434 ;
	setAttr ".uvtk[84]" -type "float2" 0.018021345 0.015374124 ;
	setAttr ".uvtk[85]" -type "float2" -0.0093750358 0.0013332963 ;
	setAttr ".uvtk[86]" -type "float2" 0.028353393 0.0088483095 ;
	setAttr ".uvtk[87]" -type "float2" 0.019139707 0.014209747 ;
	setAttr ".uvtk[88]" -type "float2" 0.015213966 0.028394341 ;
	setAttr ".uvtk[89]" -type "float2" 0.018865868 0 ;
	setAttr ".uvtk[90]" -type "float2" 0.021701992 -0.0044003725 ;
	setAttr ".uvtk[91]" -type "float2" 0.0020011514 -0.00068557262 ;
	setAttr ".uvtk[92]" -type "float2" 0.020532191 -0.035176396 ;
	setAttr ".uvtk[93]" -type "float2" -0.0024496466 0.020174265 ;
	setAttr ".uvtk[94]" -type "float2" 0.046118408 0.042992413 ;
	setAttr ".uvtk[95]" -type "float2" 0.020082504 -0.022582471 ;
	setAttr ".uvtk[96]" -type "float2" 0.033830717 0.044475436 ;
	setAttr ".uvtk[97]" -type "float2" -0.035560295 -0.01903969 ;
	setAttr ".uvtk[98]" -type "float2" -0.027645886 0.0080353618 ;
	setAttr ".uvtk[99]" -type "float2" 0.024184644 -0.023132861 ;
	setAttr ".uvtk[100]" -type "float2" 0.0094509721 0 ;
	setAttr ".uvtk[101]" -type "float2" 0.025475681 0.047945917 ;
	setAttr ".uvtk[102]" -type "float2" 0.010433733 -0.02206111 ;
	setAttr ".uvtk[103]" -type "float2" 0.0027906299 -0.015895784 ;
	setAttr ".uvtk[104]" -type "float2" 0.0094509721 0 ;
	setAttr ".uvtk[105]" -type "float2" 0.0012279153 -0.028270483 ;
	setAttr ".uvtk[106]" -type "float2" 0.0017584562 -0.02126199 ;
	setAttr ".uvtk[107]" -type "float2" 0.0074739754 -0.0076214075 ;
	setAttr ".uvtk[108]" -type "float2" -0.0094509423 0 ;
	setAttr ".uvtk[109]" -type "float2" -0.024341673 0.011826932 ;
	setAttr ".uvtk[110]" -type "float2" 0.0033385605 -0.017443061 ;
	setAttr ".uvtk[111]" -type "float2" -0.016267568 -0.03162688 ;
	setAttr ".uvtk[112]" -type "float2" -0.0094509721 0 ;
	setAttr ".uvtk[113]" -type "float2" 0.029576153 -0.0011795759 ;
	setAttr ".uvtk[114]" -type "float2" -0.2396704 -0.0016850233 ;
	setAttr ".uvtk[115]" -type "float2" 0.22075301 -0.0017023683 ;
	setAttr ".uvtk[116]" -type "float2" 0.1046468 0.074993372 ;
	setAttr ".uvtk[117]" -type "float2" -0.015538186 -0.023748457 ;
	setAttr ".uvtk[118]" -type "float2" 0.0027086735 0.0029973984 ;
	setAttr ".uvtk[119]" -type "float2" 0.061755002 -0.0024287105 ;
	setAttr ".uvtk[120]" -type "float2" 0.14572152 0 ;
	setAttr ".uvtk[121]" -type "float2" -0.11724547 0.012825847 ;
	setAttr ".uvtk[122]" -type "float2" 0.017721772 0.038251281 ;
	setAttr ".uvtk[123]" -type "float2" 0.0053730607 0.041216969 ;
	setAttr ".uvtk[124]" -type "float2" 0.01985836 0 ;
	setAttr ".uvtk[125]" -type "float2" -0.09212935 0.05288583 ;
	setAttr ".uvtk[126]" -type "float2" -0.0010907948 0.033618987 ;
	setAttr ".uvtk[127]" -type "float2" -0.016609162 0.01001811 ;
	setAttr ".uvtk[128]" -type "float2" 0.20986724 -0.0029660463 ;
	setAttr ".uvtk[129]" -type "float2" -0.016414732 0.035411537 ;
	setAttr ".uvtk[130]" -type "float2" 0.0090509653 -0.043104351 ;
	setAttr ".uvtk[131]" -type "float2" 0.017981946 -0.038792491 ;
	setAttr ".uvtk[132]" -type "float2" 0.12356615 -0.0081720352 ;
	setAttr ".uvtk[133]" -type "float2" -0.017746046 0.17210722 ;
	setAttr ".uvtk[134]" -type "float2" 0.0011602044 -0.039173841 ;
	setAttr ".uvtk[135]" -type "float2" 0.013516307 -0.0017399192 ;
	setAttr ".uvtk[136]" -type "float2" 0.012633085 -0.038231552 ;
	setAttr ".uvtk[137]" -type "float2" 0.00089800358 -0.0034253001 ;
	setAttr ".uvtk[138]" -type "float2" -0.12180281 0.0096232295 ;
	setAttr ".uvtk[139]" -type "float2" -0.10586607 0.22236812 ;
	setAttr ".uvtk[141]" -type "float2" 0.15797594 0.018859982 ;
	setAttr ".uvtk[142]" -type "float2" -0.15797597 0.018859982 ;
	setAttr ".uvtk[143]" -type "float2" -0.19928735 0.019166827 ;
	setAttr ".uvtk[144]" -type "float2" 0.010931134 0.043742239 ;
	setAttr ".uvtk[145]" -type "float2" 0.15797597 -0.018859982 ;
	setAttr ".uvtk[146]" -type "float2" 0.042159557 0 ;
	setAttr ".uvtk[147]" -type "float2" -0.18631566 0.018859982 ;
	setAttr ".uvtk[148]" -type "float2" 0.042787313 -0.0043871403 ;
	setAttr ".uvtk[149]" -type "float2" 0.18631566 -0.018859982 ;
	setAttr ".uvtk[150]" -type "float2" -0.0088738799 -0.0040060282 ;
	setAttr ".uvtk[151]" -type "float2" 0.18631566 0.018859982 ;
	setAttr ".uvtk[152]" -type "float2" -0.042787284 -0.0043871403 ;
	setAttr ".uvtk[153]" -type "float2" -0.18631566 -0.018859982 ;
	setAttr ".uvtk[154]" -type "float2" 0.0077892542 0.0046746731 ;
	setAttr ".uvtk[155]" -type "float2" 0.067695618 -0.2075513 ;
	setAttr ".uvtk[156]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[157]" -type "float2" 0 -0.005392313 ;
	setAttr ".uvtk[158]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[159]" -type "float2" -0.027487248 0.016880751 ;
	setAttr ".uvtk[160]" -type "float2" -0.03871429 0.29785395 ;
	setAttr ".uvtk[161]" -type "float2" 0.00041657686 0.0024745464 ;
	setAttr ".uvtk[162]" -type "float2" 0.037508309 0.0065120459 ;
	setAttr ".uvtk[163]" -type "float2" 0.018027723 -0.00052011013 ;
	setAttr ".uvtk[164]" -type "float2" -0.14161651 0.05304879 ;
	setAttr ".uvtk[165]" -type "float2" -0.00041657686 0.0024745464 ;
	setAttr ".uvtk[166]" -type "float2" -0.019799024 0.0028781891 ;
	setAttr ".uvtk[167]" -type "float2" -0.035323888 -0.034412205 ;
	setAttr ".uvtk[168]" -type "float2" 0.14092577 0.023578942 ;
	setAttr ".uvtk[169]" -type "float2" -0.012377262 -0.014247775 ;
	setAttr ".uvtk[170]" -type "float2" -0.018143386 0.0028764606 ;
	setAttr ".uvtk[171]" -type "float2" -0.15839255 0.018859982 ;
	setAttr ".uvtk[172]" -type "float2" 0.057744861 -0.0043871403 ;
	setAttr ".uvtk[173]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[174]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[175]" -type "float2" 0.15839252 0.018859982 ;
	setAttr ".uvtk[176]" -type "float2" -0.05774489 -0.0043871403 ;
	setAttr ".uvtk[177]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[178]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[179]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[180]" -type "float2" 0.019799054 -0.0028781891 ;
	setAttr ".uvtk[181]" -type "float2" 0.01296556 0.0064226389 ;
	setAttr ".uvtk[182]" -type "float2" -0.057744861 0.0043871403 ;
	setAttr ".uvtk[183]" -type "float2" -0.01296556 -0.0064226389 ;
	setAttr ".uvtk[184]" -type "float2" -0.042787313 0.0043871403 ;
	setAttr ".uvtk[185]" -type "float2" -0.07058239 -0.0079396367 ;
	setAttr ".uvtk[186]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[187]" -type "float2" 0.018034935 -0.0021694899 ;
	setAttr ".uvtk[188]" -type "float2" 0.042787313 -0.0043871403 ;
	setAttr ".uvtk[189]" -type "float2" 0.017512798 -0.0011611581 ;
	setAttr ".uvtk[190]" -type "float2" 0.057744861 -0.0043871403 ;
	setAttr ".uvtk[191]" -type "float2" -0.018801451 0.0016235709 ;
	setAttr ".uvtk[192]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[193]" -type "float2" -0.01296553 0.0064226389 ;
	setAttr ".uvtk[194]" -type "float2" 0.05774489 0.0043871403 ;
	setAttr ".uvtk[195]" -type "float2" 0.01296553 -0.0064226389 ;
	setAttr ".uvtk[196]" -type "float2" 0.042787284 0.0043871403 ;
	setAttr ".uvtk[197]" -type "float2" 0.070763886 -0.004706502 ;
	setAttr ".uvtk[198]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[199]" -type "float2" -0.019215733 0.0011951923 ;
	setAttr ".uvtk[200]" -type "float2" -0.042787284 -0.0043871403 ;
	setAttr ".uvtk[201]" -type "float2" -0.019696802 0.002141118 ;
	setAttr ".uvtk[202]" -type "float2" -0.05774489 -0.0043871403 ;
	setAttr ".uvtk[203]" -type "float2" 0.020113982 -0.0041120648 ;
	setAttr ".uvtk[204]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[205]" -type "float2" 0.018467069 0.01732707 ;
	setAttr ".uvtk[206]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[207]" -type "float2" 0.019906878 -0.0073398948 ;
	setAttr ".uvtk[208]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[209]" -type "float2" -0.01296556 -0.0064226389 ;
	setAttr ".uvtk[210]" -type "float2" -0.057744861 0.0043871403 ;
	setAttr ".uvtk[211]" -type "float2" 0.01296556 0.0064226389 ;
	setAttr ".uvtk[212]" -type "float2" -0.042787313 0.0043871403 ;
	setAttr ".uvtk[213]" -type "float2" 0.01296553 -0.0064226389 ;
	setAttr ".uvtk[214]" -type "float2" 0.05774489 0.0043871403 ;
	setAttr ".uvtk[215]" -type "float2" -0.01296553 0.0064226389 ;
	setAttr ".uvtk[216]" -type "float2" 0.042787284 0.0043871403 ;
	setAttr ".uvtk[217]" -type "float2" 0.015192628 0.024904966 ;
	setAttr ".uvtk[218]" -type "float2" 0.017058313 0.025042534 ;
	setAttr ".uvtk[219]" -type "float2" -0.0063302815 0.0045731068 ;
	setAttr ".uvtk[220]" -type "float2" 0 -0.017681003 ;
	setAttr ".uvtk[221]" -type "float2" 0 -0.005392313 ;
	setAttr ".uvtk[222]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[223]" -type "float2" 0.020059466 -0.010547757 ;
	setAttr ".uvtk[224]" -type "float2" -0.0063303411 0.0045731664 ;
	setAttr ".uvtk[225]" -type "float2" 0.016891778 -0.0013732314 ;
	setAttr ".uvtk[226]" -type "float2" -0.0014175177 -0.01469326 ;
	setAttr ".uvtk[227]" -type "float2" -0.027487218 0.016880631 ;
	setAttr ".uvtk[228]" -type "float2" -0.024665803 0.028138816 ;
	setAttr ".uvtk[229]" -type "float2" -0.024170935 0.027447045 ;
	setAttr ".uvtk[230]" -type "float2" 0.010224104 0.0038775206 ;
	setAttr ".uvtk[231]" -type "float2" 0.0027981997 0.014760554 ;
	setAttr ".uvtk[232]" -type "float2" -0.019874543 0.0098574758 ;
	setAttr ".uvtk[233]" -type "float2" 0 -0.0011918545 ;
	setAttr ".uvtk[234]" -type "float2" -0.019874573 0.0098574162 ;
	setAttr ".uvtk[235]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[236]" -type "float2" -0.0052803159 -0.0047974586 ;
	setAttr ".uvtk[237]" -type "float2" -0.0074977875 -0.0097307563 ;
	setAttr ".uvtk[238]" -type "float2" -0.02832678 0.027257204 ;
	setAttr ".uvtk[239]" -type "float2" 0.0063303411 -0.0045731664 ;
	setAttr ".uvtk[240]" -type "float2" 0 -0.0011918545 ;
	setAttr ".uvtk[241]" -type "float2" 0.017447025 0.011374235 ;
	setAttr ".uvtk[242]" -type "float2" -0.019634962 0.0033861995 ;
	setAttr ".uvtk[243]" -type "float2" -0.020059496 0.010547757 ;
	setAttr ".uvtk[244]" -type "float2" 0 -0.017681003 ;
	setAttr ".uvtk[245]" -type "float2" 0.022319555 0.037194252 ;
	setAttr ".uvtk[246]" -type "float2" -0.0029317141 0.011963248 ;
	setAttr ".uvtk[247]" -type "float2" -0.010381341 0.0095083117 ;
	setAttr ".uvtk[248]" -type "float2" -0.028755307 -0.0080335736 ;
	setAttr ".uvtk[249]" -type "float2" 0.0036480874 -0.0053861737 ;
	setAttr ".uvtk[250]" -type "float2" 0.040179595 0.0066516995 ;
	setAttr ".uvtk[251]" -type "float2" 0.0094509721 0 ;
	setAttr ".uvtk[252]" -type "float2" -0.013132021 0.00078672171 ;
	setAttr ".uvtk[253]" -type "float2" 0.035869822 0.019593835 ;
	setAttr ".uvtk[254]" -type "float2" 0.0031534135 -0.0087894201 ;
	setAttr ".uvtk[255]" -type "float2" -0.040371761 -0.0073975325 ;
	setAttr ".uvtk[256]" -type "float2" -0.030749857 0.0090940595 ;
	setAttr ".uvtk[257]" -type "float2" -0.0094509721 0 ;
	setAttr ".uvtk[258]" -type "float2" 0.019461751 -0.010084093 ;
	setAttr ".uvtk[259]" -type "float2" -0.0094987154 0.0070149899 ;
	setAttr ".uvtk[260]" -type "float2" -0.01897198 0.037498295 ;
	setAttr ".uvtk[261]" -type "float2" -0.0043396205 0.011240542 ;
	setAttr ".uvtk[262]" -type "float2" -0.024176717 0.0078266859 ;
	setAttr ".uvtk[263]" -type "float2" 0.11519271 0.00061619282 ;
	setAttr ".uvtk[264]" -type "float2" 0.11634886 -0.012482703 ;
	setAttr ".uvtk[265]" -type "float2" -0.019225478 0.010500729 ;
	setAttr ".uvtk[266]" -type "float2" -0.0016559362 0.03631717 ;
	setAttr ".uvtk[267]" -type "float2" 0.023610771 -0.0090036988 ;
	setAttr ".uvtk[268]" -type "float2" 0.00036692619 -0.03446728 ;
	setAttr ".uvtk[269]" -type "float2" 0.017797768 -0.0096039176 ;
	setAttr ".uvtk[270]" -type "float2" -0.00011152029 0.035523057 ;
	setAttr ".uvtk[271]" -type "float2" -0.11653793 0.0021901131 ;
	setAttr ".uvtk[272]" -type "float2" -0.0045511425 0.013116837 ;
	setAttr ".uvtk[273]" -type "float2" -0.024108768 -0.025938451 ;
	setAttr ".uvtk[274]" -type "float2" 0.0018374324 -0.014598489 ;
	setAttr ".uvtk[275]" -type "float2" 0.044632733 -0.019251645 ;
	setAttr ".uvtk[276]" -type "float2" -0.0032368302 0.029014289 ;
	setAttr ".uvtk[277]" -type "float2" 0.013204277 -0.0095199943 ;
	setAttr ".uvtk[278]" -type "float2" 0.012433708 -0.0070147514 ;
	setAttr ".uvtk[279]" -type "float2" 0.0075531006 -0.0059334636 ;
	setAttr ".uvtk[280]" -type "float2" -0.0037227422 0.063720345 ;
	setAttr ".uvtk[281]" -type "float2" -0.0076204687 0.005384922 ;
	setAttr ".uvtk[282]" -type "float2" 0.0026518703 -0.062780261 ;
	setAttr ".uvtk[283]" -type "float2" -0.0054454952 0.0087916851 ;
	setAttr ".uvtk[284]" -type "float2" -0.016421378 -0.030917108 ;
	setAttr ".uvtk[285]" -type "float2" -0.1033583 0.007607758 ;
	setAttr ".uvtk[286]" -type "float2" -0.0038663745 -0.076748252 ;
	setAttr ".uvtk[287]" -type "float2" -0.12378097 0.043412805 ;
	setAttr ".uvtk[288]" -type "float2" -0.00012922287 -0.035317898 ;
	setAttr ".uvtk[289]" -type "float2" -0.11531371 -0.00060677528 ;
	setAttr ".uvtk[290]" -type "float2" 0.12024713 -0.0064876676 ;
	setAttr ".uvtk[291]" -type "float2" 0.11930647 -0.0075917244 ;
	setAttr ".uvtk[292]" -type "float2" 0.11512017 0.10723037 ;
	setAttr ".uvtk[293]" -type "float2" 0.0018098652 -0.036100686 ;
	setAttr ".uvtk[294]" -type "float2" -0.08323136 -0.10446507 ;
	setAttr ".uvtk[295]" -type "float2" -0.12268931 -0.0076130033 ;
	setAttr ".uvtk[296]" -type "float2" -0.014531195 -0.23754585 ;
	setAttr ".uvtk[297]" -type "float2" 0.13520864 0.0061849952 ;
	setAttr ".uvtk[298]" -type "float2" 0.083878219 -0.25938696 ;
	setAttr ".uvtk[299]" -type "float2" -0.00080245733 0.034163535 ;
	setAttr ".uvtk[300]" -type "float2" -0.031428531 -0.0016270876 ;
	setAttr ".uvtk[301]" -type "float2" 0.1153658 -0.0017662048 ;
	setAttr ".uvtk[302]" -type "float2" 0.017721802 -0.038251281 ;
	setAttr ".uvtk[303]" -type "float2" -0.13445359 0.0078988075 ;
	setAttr ".uvtk[304]" -type "float2" -0.14567983 0 ;
	setAttr ".uvtk[305]" -type "float2" 0.017537177 0.037852764 ;
	setAttr ".uvtk[306]" -type "float2" -0.0014053881 -0.036822557 ;
	setAttr ".uvtk[307]" -type "float2" -0.011597037 -0.017506599 ;
	setAttr ".uvtk[308]" -type "float2" 0.0043585449 -0.012883663 ;
	setAttr ".uvtk[309]" -type "float2" 0.023310453 -0.0059291124 ;
	setAttr ".uvtk[310]" -type "float2" 0.0051631331 -0.014203966 ;
	setAttr ".uvtk[311]" -type "float2" 0.014583349 0.21008641 ;
	setAttr ".uvtk[312]" -type "float2" 0.091988444 0.12254798 ;
	setAttr ".uvtk[313]" -type "float2" 0.12618476 -0.0090793371 ;
	setAttr ".uvtk[314]" -type "float2" 0.14563549 0 ;
	setAttr ".uvtk[315]" -type "float2" -0.12451017 0.010549903 ;
	setAttr ".uvtk[316]" -type "float2" -0.11079711 0 ;
	setAttr ".uvtk[317]" -type "float2" 0.14514291 0 ;
	setAttr ".uvtk[318]" -type "float2" 0.0024886429 0.035793602 ;
	setAttr ".uvtk[319]" -type "float2" 0.021638036 0.0030503273 ;
	setAttr ".uvtk[320]" -type "float2" 0.0062442422 0.0065395832 ;
	setAttr ".uvtk[321]" -type "float2" 0.0077340603 -0.01817888 ;
	setAttr ".uvtk[322]" -type "float2" 0.013754487 0.0094081759 ;
	setAttr ".uvtk[323]" -type "float2" 0.00072211027 -0.016928077 ;
	setAttr ".uvtk[324]" -type "float2" -0.011533856 -0.046969712 ;
	setAttr ".uvtk[325]" -type "float2" -0.02898705 0.029348493 ;
	setAttr ".uvtk[326]" -type "float2" -0.022319555 -0.037194252 ;
	setAttr ".uvtk[327]" -type "float2" 0.0011239648 0.0036877394 ;
	setAttr ".uvtk[328]" -type "float2" -0.028755009 0.015821159 ;
	setAttr ".uvtk[329]" -type "float2" -0.0008970499 0.0029926896 ;
	setAttr ".uvtk[330]" -type "float2" -0.014368057 -0.03094095 ;
	setAttr ".uvtk[331]" -type "float2" 0.028656304 -0.0077016354 ;
	setAttr ".uvtk[332]" -type "float2" -0.016577423 -0.0093964934 ;
	setAttr ".uvtk[333]" -type "float2" -0.0011239648 -0.0036877394 ;
	setAttr ".uvtk[334]" -type "float2" 0.014511287 0.037239075 ;
	setAttr ".uvtk[335]" -type "float2" -0.0089222789 0.020760298 ;
	setAttr ".uvtk[336]" -type "float2" -0.003298521 -0.0066642165 ;
	setAttr ".uvtk[337]" -type "float2" -0.0013760328 0.017148316 ;
	setAttr ".uvtk[338]" -type "float2" 0.011934876 0.033026993 ;
	setAttr ".uvtk[339]" -type "float2" -0.0037326217 -0.0020373464 ;
	setAttr ".uvtk[340]" -type "float2" 0.02844435 -0.014755309 ;
	setAttr ".uvtk[341]" -type "float2" 0.0011239648 0.0036877394 ;
	setAttr ".uvtk[342]" -type "float2" -0.022319555 -0.037194252 ;
	setAttr ".uvtk[343]" -type "float2" 0.023540795 -0.0025460124 ;
	setAttr ".uvtk[344]" -type "float2" -0.018698394 -0.0028876066 ;
	setAttr ".uvtk[345]" -type "float2" 0.032705009 -0.01868391 ;
	setAttr ".uvtk[346]" -type "float2" 0.010589957 0.0017200708 ;
	setAttr ".uvtk[347]" -type "float2" 0.031158388 0.015243769 ;
	setAttr ".uvtk[348]" -type "float2" 0.00016188622 0.016925037 ;
	setAttr ".uvtk[349]" -type "float2" 0.014511287 0.037239075 ;
	setAttr ".uvtk[350]" -type "float2" -0.0011239648 -0.0036877394 ;
	setAttr ".uvtk[351]" -type "float2" -0.030756474 -0.016058505 ;
	setAttr ".uvtk[352]" -type "float2" 0.0075698495 -0.0028580427 ;
	setAttr ".uvtk[353]" -type "float2" -0.008103013 0.020246029 ;
	setAttr ".uvtk[354]" -type "float2" -0.0178321 -0.0070174336 ;
	setAttr ".uvtk[355]" -type "float2" -0.022414267 0.0090548396 ;
	setAttr ".uvtk[356]" -type "float2" 0.014897108 0.0070171952 ;
	setAttr ".uvtk[357]" -type "float2" 0.056893528 -0.030372143 ;
	setAttr ".uvtk[358]" -type "float2" 0.037475586 0.051659644 ;
	setAttr ".uvtk[359]" -type "float2" -0.044048071 0.040227771 ;
	setAttr ".uvtk[360]" -type "float2" -0.012073636 -0.048833668 ;
	setAttr ".uvtk[361]" -type "float2" 0.030358434 0.033891857 ;
	setAttr ".uvtk[362]" -type "float2" -0.046636105 0.040446281 ;
	setAttr ".uvtk[363]" -type "float2" 0.041808963 0.040627599 ;
	setAttr ".uvtk[364]" -type "float2" -0.029731333 0.0099034309 ;
	setAttr ".uvtk[365]" -type "float2" 0.0094655156 0 ;
	setAttr ".uvtk[366]" -type "float2" 0.00035381317 -0.017409503 ;
	setAttr ".uvtk[367]" -type "float2" -0.024568141 0 ;
	setAttr ".uvtk[368]" -type "float2" 0 0.0064578652 ;
	setAttr ".uvtk[369]" -type "float2" -0.030353665 -0.027907848 ;
	setAttr ".uvtk[370]" -type "float2" 0 -0.0064578652 ;
	setAttr ".uvtk[371]" -type "float2" 0 0.0053150058 ;
	setAttr ".uvtk[372]" -type "float2" 0.15501285 0.014560878 ;
	setAttr ".uvtk[373]" -type "float2" 0.16793549 -0.0013964176 ;
	setAttr ".uvtk[374]" -type "float2" -0.083611429 0.043567955 ;
	setAttr ".uvtk[375]" -type "float2" -0.010806859 -0.029720128 ;
	setAttr ".uvtk[376]" -type "float2" 0.013022423 -0.050295651 ;
	setAttr ".uvtk[377]" -type "float2" 0.0094655156 0 ;
	setAttr ".uvtk[378]" -type "float2" 0.001796186 -0.029551029 ;
	setAttr ".uvtk[379]" -type "float2" 0 0.0064578652 ;
	setAttr ".uvtk[380]" -type "float2" -0.024568141 0 ;
	setAttr ".uvtk[381]" -type "float2" -0.059224188 0.032187223 ;
	setAttr ".uvtk[382]" -type "float2" 0.0094653964 0 ;
	setAttr ".uvtk[383]" -type "float2" -0.031993032 0.019827425 ;
	setAttr ".uvtk[384]" -type "float2" 0.0094653964 0 ;
	setAttr ".uvtk[385]" -type "float2" 0.024567366 0.026429176 ;
	setAttr ".uvtk[386]" -type "float2" 0.01665169 0.021140516 ;
	setAttr ".uvtk[387]" -type "float2" 0.021559 -0.16360325 ;
	setAttr ".uvtk[388]" -type "float2" -0.13492087 -0.0065684915 ;
	setAttr ".uvtk[389]" -type "float2" -0.0020844638 -0.035829186 ;
	setAttr ".uvtk[390]" -type "float2" -0.10993043 0 ;
	setAttr ".uvtk[391]" -type "float2" -0.0099238753 -0.0067580938 ;
	setAttr ".uvtk[392]" -type "float2" 0.037838042 0.028991878 ;
	setAttr ".uvtk[393]" -type "float2" 0.12416524 -0.010676682 ;
	setAttr ".uvtk[394]" -type "float2" 0.10364401 -0.21916258 ;
	setAttr ".uvtk[395]" -type "float2" -0.011653066 -0.013753772 ;
	setAttr ".uvtk[396]" -type "float2" -0.039026678 -0.029406071 ;
	setAttr ".uvtk[397]" -type "float2" 0.0089130402 -0.0064330697 ;
	setAttr ".uvtk[398]" -type "float2" 0.11079711 0 ;
	setAttr ".uvtk[399]" -type "float2" 0.0031014085 0.035413265 ;
	setAttr ".uvtk[400]" -type "float2" 0.12214768 -0.0094964504 ;
	setAttr ".uvtk[401]" -type "float2" -0.0026659369 -0.03510952 ;
	setAttr ".uvtk[402]" -type "float2" 0.11079711 0 ;
	setAttr ".uvtk[403]" -type "float2" 0.048022091 -0.18117422 ;
	setAttr ".uvtk[404]" -type "float2" 0.01722914 -0.14513427 ;
	setAttr ".uvtk[405]" -type "float2" -0.10993043 0 ;
	setAttr ".uvtk[406]" -type "float2" -0.060535729 -0.00059086084 ;
	setAttr ".uvtk[407]" -type "float2" 0.037246883 0.00059092045 ;
	setAttr ".uvtk[408]" -type "float2" -0.18589866 0.01182121 ;
	setAttr ".uvtk[409]" -type "float2" -0.037246913 0.00059092045 ;
	setAttr ".uvtk[410]" -type "float2" 0.060535729 -0.00059086084 ;
	setAttr ".uvtk[411]" -type "float2" 0.17409235 -0.0086608529 ;
	setAttr ".uvtk[412]" -type "float2" 0.00094759464 -0.070517123 ;
	setAttr ".uvtk[413]" -type "float2" -0.0020278692 0.16114044 ;
	setAttr ".uvtk[414]" -type "float2" -0.036547124 0.33124387 ;
	setAttr ".uvtk[415]" -type "float2" 0.002027899 0.16114044 ;
	setAttr ".uvtk[416]" -type "float2" -0.00094759464 -0.070517123 ;
	setAttr ".uvtk[417]" -type "float2" 0.038943529 -0.2233545 ;
	setAttr ".uvtk[418]" -type "float2" 0.020886898 -0.083995223 ;
	setAttr ".uvtk[419]" -type "float2" -0.00094759464 0.070517123 ;
	setAttr ".uvtk[420]" -type "float2" -0.039096594 0.22651842 ;
	setAttr ".uvtk[421]" -type "float2" 0.00094759464 0.070517123 ;
	setAttr ".uvtk[422]" -type "float2" -0.020886898 -0.083995223 ;
	setAttr ".uvtk[423]" -type "float2" -0.013475269 -0.19274619 ;
	setAttr ".uvtk[424]" -type "float2" 0.016414762 0.035411537 ;
	setAttr ".uvtk[425]" -type "float2" -0.074897766 0.22959983 ;
	setAttr ".uvtk[426]" -type "float2" 0.076695561 -0.042355776 ;
	setAttr ".uvtk[427]" -type "float2" 0.016414762 0.035411537 ;
	setAttr ".uvtk[428]" -type "float2" -0.11079711 0 ;
	setAttr ".uvtk[429]" -type "float2" -0.016414732 0.035411537 ;
	setAttr ".uvtk[430]" -type "float2" 0.10993043 0 ;
	setAttr ".uvtk[431]" -type "float2" -0.1237627 0.0079935193 ;
	setAttr ".uvtk[432]" -type "float2" 0.0017708242 0.037429154 ;
	setAttr ".uvtk[433]" -type "float2" -0.14563549 0 ;
	setAttr ".uvtk[434]" -type "float2" 0.12160242 -0.0083789825 ;
	setAttr ".uvtk[435]" -type "float2" -0.017030001 -0.021606922 ;
	setAttr ".uvtk[436]" -type "float2" 0.10882849 -0.22743016 ;
	setAttr ".uvtk[437]" -type "float2" 0.12251002 0.0077691078 ;
	setAttr ".uvtk[438]" -type "float2" 0.00088965893 0.035974026 ;
	setAttr ".uvtk[439]" -type "float2" 0.14514291 0 ;
	setAttr ".uvtk[440]" -type "float2" -0.14445174 0.002568543 ;
	setAttr ".uvtk[441]" -type "float2" 0.0096950531 0.01631254 ;
	setAttr ".uvtk[442]" -type "float2" -0.044274539 -0.032177389 ;
	setAttr ".uvtk[443]" -type "float2" -0.12598825 0.009257853 ;
	setAttr ".uvtk[444]" -type "float2" 0.017358363 -0.17507118 ;
	setAttr ".uvtk[445]" -type "float2" 0.012031436 0.014220178 ;
	setAttr ".uvtk[446]" -type "float2" 0.039889276 0.030680418 ;
	setAttr ".uvtk[447]" -type "float2" -0.011614352 0.0029340386 ;
	setAttr ".uvtk[448]" -type "float2" 0.1446476 0.018383384 ;
	setAttr ".uvtk[449]" -type "float2" -0.14563549 0 ;
	setAttr ".uvtk[450]" -type "float2" -0.001924783 -0.037645638 ;
	setAttr ".uvtk[451]" -type "float2" -0.013582826 0.0018247366 ;
	setAttr ".uvtk[452]" -type "float2" 0.15553969 0.014560878 ;
	setAttr ".uvtk[453]" -type "float2" 0.14285004 -0.00128299 ;
	setAttr ".uvtk[454]" -type "float2" -0.015317142 0.032714963 ;
	setAttr ".uvtk[455]" -type "float2" 0.11202914 0.019166827 ;
	setAttr ".uvtk[456]" -type "float2" 0.15564972 -0.0016424656 ;
	setAttr ".uvtk[457]" -type "float2" -0.15797594 -0.018859982 ;
	setAttr ".uvtk[458]" -type "float2" 0.08725822 -0.038333654 ;
	setAttr ".uvtk[459]" -type "float2" 0.15797594 0.018859982 ;
	setAttr ".uvtk[461]" -type "float2" 0 -0.0053150058 ;
	setAttr ".uvtk[462]" -type "float2" -0.15553968 -0.014560878 ;
	setAttr ".uvtk[463]" -type "float2" -0.14214468 -0.01687324 ;
	setAttr ".uvtk[464]" -type "float2" -0.15512326 0.0016424656 ;
	setAttr ".uvtk[465]" -type "float2" 0.012377203 0.014247775 ;
	setAttr ".uvtk[466]" -type "float2" -0.001034379 -0.035746515 ;
	setAttr ".uvtk[467]" -type "float2" -0.057772428 -0.20945644 ;
	setAttr ".uvtk[468]" -type "float2" -0.017981946 -0.038792491 ;
	setAttr ".uvtk[469]" -type "float2" -0.14514291 0 ;
	setAttr ".uvtk[470]" -type "float2" 0.017981946 -0.038792491 ;
	setAttr ".uvtk[471]" -type "float2" -0.12999545 -0.11467963 ;
	setAttr ".uvtk[472]" -type "float2" -0.016414762 -0.035411537 ;
	setAttr ".uvtk[473]" -type "float2" 0.047664821 -0.040486872 ;
	setAttr ".uvtk[474]" -type "float2" -0.10660642 0.22422457 ;
	setAttr ".uvtk[475]" -type "float2" 0.044435501 -0.040278912 ;
	setAttr ".uvtk[476]" -type "float2" 0.017981946 0.038792491 ;
	setAttr ".uvtk[477]" -type "float2" -0.12058568 -0.0058088303 ;
	setAttr ".uvtk[478]" -type "float2" -0.0010154843 0.038946331 ;
	setAttr ".uvtk[479]" -type "float2" 0.12076497 0.0056527853 ;
	setAttr ".uvtk[480]" -type "float2" 0.017981946 0.038792491 ;
	setAttr ".uvtk[481]" -type "float2" 0.049015343 0.19137359 ;
	setAttr ".uvtk[482]" -type "float2" -0.034125105 -0.044378519 ;
	setAttr ".uvtk[483]" -type "float2" 0.016414732 -0.035411537 ;
	setAttr ".uvtk[484]" -type "float2" 0.13332948 0.0083431005 ;
	setAttr ".uvtk[485]" -type "float2" 0.0006865859 -0.033583403 ;
	setAttr ".uvtk[486]" -type "float2" -0.13361725 -0.0079596639 ;
	setAttr ".uvtk[487]" -type "float2" 0.016414732 -0.035411537 ;
	setAttr ".uvtk[488]" -type "float2" -0.017281279 0.17259371 ;
	setAttr ".uvtk[489]" -type "float2" -0.017981946 0.038792491 ;
	setAttr ".uvtk[490]" -type "float2" -0.033080205 -0.044590652 ;
	setAttr ".uvtk[491]" -type "float2" -0.021171317 0.16656721 ;
	setAttr ".uvtk[492]" -type "float2" -0.057002544 0.21096134 ;
	setAttr ".uvtk[493]" -type "float2" -0.016414762 -0.035411537 ;
	setAttr ".uvtk[494]" -type "float2" 0.11866087 0.015701115 ;
	setAttr ".uvtk[495]" -type "float2" -0.14514291 0 ;
	setAttr ".uvtk[496]" -type "float2" -0.017981946 -0.038792491 ;
	setAttr ".uvtk[497]" -type "float2" -0.10672714 0.015828192 ;
	setAttr ".uvtk[498]" -type "float2" -0.017981946 0.038792491 ;
	setAttr ".uvtk[499]" -type "float2" 0.14563549 0 ;
	setAttr ".uvtk[500]" -type "float2" -0.11929241 0.0026842356 ;
	setAttr ".uvtk[501]" -type "float2" -0.022790059 -0.046680748 ;
	setAttr ".uvtk[502]" -type "float2" -0.043518454 -0.042470574 ;
	setAttr ".uvtk[503]" -type "float2" -0.20930599 -0.010197997 ;
	setAttr ".uvtk[504]" -type "float2" 0.10993043 0 ;
	setAttr ".uvtk[505]" -type "float2" -0.0011239946 0.0031690001 ;
	setAttr ".uvtk[506]" -type "float2" 0.01897198 -0.037498295 ;
	setAttr ".uvtk[507]" -type "float2" -0.014708117 0.00076508522 ;
	setAttr ".uvtk[508]" -type "float2" -0.0010327697 0.0051867962 ;
	setAttr ".uvtk[509]" -type "float2" -0.012870297 0.011008918 ;
	setAttr ".uvtk[510]" -type "float2" 0.020799413 -0.029278994 ;
	setAttr ".uvtk[511]" -type "float2" -0.00049836934 0.0048679709 ;
	setAttr ".uvtk[512]" -type "float2" -0.038093716 -0.014601052 ;
	setAttr ".uvtk[513]" -type "float2" 0.016267568 0.03162688 ;
	setAttr ".uvtk[514]" -type "float2" -0.017858833 0.037453771 ;
	setAttr ".uvtk[515]" -type "float2" 0.0011239946 -0.0031690001 ;
	setAttr ".uvtk[516]" -type "float2" 0.037784189 0.014046907 ;
	setAttr ".uvtk[517]" -type "float2" 0.0021733493 -0.00038433075 ;
	setAttr ".uvtk[518]" -type "float2" -0.0091302693 0.044208109 ;
	setAttr ".uvtk[519]" -type "float2" -0.00070948899 0.015847743 ;
	setAttr ".uvtk[520]" -type "float2" 0.018597931 0.0053932071 ;
	setAttr ".uvtk[521]" -type "float2" 0.013132021 -0.00078672171 ;
	setAttr ".uvtk[522]" -type "float2" -0.014625549 -0.0053919554 ;
	setAttr ".uvtk[523]" -type "float2" 0.022014245 0.0020588636 ;
	setAttr ".uvtk[524]" -type "float2" -0.024174467 0.0079084635 ;
	setAttr ".uvtk[525]" -type "float2" -0.0093185306 0 ;
	setAttr ".uvtk[526]" -type "float2" 0.003350988 -0.063922882 ;
	setAttr ".uvtk[527]" -type "float2" -0.0069331676 0 ;
	setAttr ".uvtk[528]" -type "float2" 0.012431175 -0.010394931 ;
	setAttr ".uvtk[529]" -type "float2" -0.0029453188 -0.0050542951 ;
	setAttr ".uvtk[530]" -type "float2" 0.0086204261 -0.060882509 ;
	setAttr ".uvtk[531]" -type "float2" 0.032957852 0.044580996 ;
	setAttr ".uvtk[532]" -type "float2" -0.0021689087 0.00082480907 ;
	setAttr ".uvtk[533]" -type "float2" -0.019863218 0.028663635 ;
	setAttr ".uvtk[534]" -type "float2" 0.00049392879 -0.0053084493 ;
	setAttr ".uvtk[535]" -type "float2" 0 0.0064578652 ;
	setAttr ".uvtk[536]" -type "float2" 0.02407676 0 ;
	setAttr ".uvtk[537]" -type "float2" -0.024643324 -0.00046348572 ;
	setAttr ".uvtk[538]" -type "float2" -0.16820523 -0.019784629 ;
	setAttr ".uvtk[539]" -type "float2" -0.15564977 0.0016424656 ;
	setAttr ".uvtk[540]" -type "float2" 0 0.0053150058 ;
	setAttr ".uvtk[541]" -type "float2" 0 -0.0064578652 ;
	setAttr ".uvtk[542]" -type "float2" 0.0089109838 -0.050289273 ;
	setAttr ".uvtk[543]" -type "float2" -0.0074739456 0.0076214075 ;
	setAttr ".uvtk[544]" -type "float2" 0.01897198 -0.037498295 ;
	setAttr ".uvtk[545]" -type "float2" -0.0011239946 0.0031690001 ;
	setAttr ".uvtk[546]" -type "float2" 0.0377817 0.013839245 ;
	setAttr ".uvtk[547]" -type "float2" -0.0020049363 0.00028902292 ;
	setAttr ".uvtk[548]" -type "float2" 0.022196263 -0.029582679 ;
	setAttr ".uvtk[549]" -type "float2" -0.0025594682 0.018305957 ;
	setAttr ".uvtk[550]" -type "float2" 0.016914755 0.0087693334 ;
	setAttr ".uvtk[551]" -type "float2" 0.0043395907 -0.011240542 ;
	setAttr ".uvtk[552]" -type "float2" -0.014622658 -0.0087715983 ;
	setAttr ".uvtk[553]" -type "float2" -0.014412954 -0.025438368 ;
	setAttr ".uvtk[554]" -type "float2" 0.030830771 -0.0098690391 ;
	setAttr ".uvtk[555]" -type "float2" 0.0011239946 -0.0031690001 ;
	setAttr ".uvtk[556]" -type "float2" -0.017858833 0.037453771 ;
	setAttr ".uvtk[557]" -type "float2" -0.0045850128 0.012389541 ;
	setAttr ".uvtk[558]" -type "float2" -0.00092799962 0.0038762093 ;
	setAttr ".uvtk[559]" -type "float2" 0.015780792 0.030740798 ;
	setAttr ".uvtk[560]" -type "float2" -0.020724103 0.029125869 ;
	setAttr ".uvtk[561]" -type "float2" 0.00041303039 -0.0044457912 ;
	setAttr ".uvtk[562]" -type "float2" -0.037589535 -0.013093412 ;
	setAttr ".uvtk[563]" -type "float2" -0.0014447123 -0.0038163066 ;
	setAttr ".uvtk[564]" -type "float2" 0.0049383938 0.070766866 ;
	setAttr ".uvtk[565]" -type "float2" -0.0076468587 0 ;
	setAttr ".uvtk[566]" -type "float2" -0.017689705 -0.038031399 ;
	setAttr ".uvtk[567]" -type "float2" -0.0081240088 0 ;
	setAttr ".uvtk[568]" -type "float2" -0.005548656 0.063138425 ;
	setAttr ".uvtk[569]" -type "float2" 0.037246913 -0.00059092045 ;
	setAttr ".uvtk[570]" -type "float2" 0 0.0064579248 ;
	setAttr ".uvtk[571]" -type "float2" -0.022409931 0.035723627 ;
	setAttr ".uvtk[572]" -type "float2" -0.0064436942 0.023655474 ;
	setAttr ".uvtk[573]" -type "float2" -0.24267961 0.0054453015 ;
	setAttr ".uvtk[574]" -type "float2" -0.0036563873 0.022718668 ;
	setAttr ".uvtk[575]" -type "float2" 0.032668412 0.076347709 ;
	setAttr ".uvtk[576]" -type "float2" 0 0.0064579248 ;
	setAttr ".uvtk[577]" -type "float2" -0.037246883 -0.00059092045 ;
	setAttr ".uvtk[578]" -type "float2" -0.25515169 0.011805534 ;
	setAttr ".uvtk[579]" -type "float2" -0.019763052 7.7486038e-07 ;
	setAttr ".uvtk[580]" -type "float2" 0.017721772 0.038251281 ;
	setAttr ".uvtk[581]" -type "float2" -0.037785113 0.030256331 ;
	setAttr ".uvtk[582]" -type "float2" 0.19029468 -0.0019217134 ;
	setAttr ".uvtk[583]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[584]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[585]" -type "float2" -0.018027723 0.00052011013 ;
	setAttr ".uvtk[586]" -type "float2" -0.0014619231 0 ;
	setAttr ".uvtk[587]" -type "float2" 0.019692957 -0.0005222559 ;
	setAttr ".uvtk[588]" -type "float2" 0.019215703 -0.0011951923 ;
	setAttr ".uvtk[589]" -type "float2" -0.018261701 0.007312119 ;
	setAttr ".uvtk[590]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[591]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[592]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[593]" -type "float2" -0.017512798 0.0011611581 ;
	setAttr ".uvtk[594]" -type "float2" -0.010224164 -0.0038775206 ;
	setAttr ".uvtk[595]" -type "float2" 0.018764257 -0.0096212029 ;
	setAttr ".uvtk[596]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[597]" -type "float2" -0.017447054 -0.011374176 ;
	setAttr ".uvtk[598]" -type "float2" 0.016530812 -0.01110369 ;
	setAttr ".uvtk[599]" -type "float2" 0.0088738799 0.0040060282 ;
	setAttr ".uvtk[600]" -type "float2" 0.018629849 -0.0014680028 ;
	setAttr ".uvtk[601]" -type "float2" -0.018429637 0.010469437 ;
	setAttr ".uvtk[602]" -type "float2" 0.0052803159 0.0047974586 ;
	setAttr ".uvtk[603]" -type "float2" -0.0019163489 -0.011099696 ;
	setAttr ".uvtk[604]" -type "float2" 0.024170935 -0.027447164 ;
	setAttr ".uvtk[605]" -type "float2" -0.016891748 0.001373291 ;
	setAttr ".uvtk[606]" -type "float2" -0.0077891648 -0.0046747923 ;
	setAttr ".uvtk[607]" -type "float2" 0.021498978 -0.017679751 ;
	setAttr ".uvtk[608]" -type "float2" 0.0014175177 0.01469326 ;
	setAttr ".uvtk[609]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[610]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[611]" -type "float2" 0.0074977875 0.0097307563 ;
	setAttr ".uvtk[612]" -type "float2" -0.010224104 -0.0038775206 ;
	setAttr ".uvtk[613]" -type "float2" 0.018764198 -0.0096212029 ;
	setAttr ".uvtk[614]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[615]" -type "float2" -0.017447025 -0.011374176 ;
	setAttr ".uvtk[616]" -type "float2" 0.016530752 -0.01110369 ;
	setAttr ".uvtk[617]" -type "float2" 0.0088738203 0.0040060878 ;
	setAttr ".uvtk[618]" -type "float2" 0.019634962 -0.0033861995 ;
	setAttr ".uvtk[619]" -type "float2" -0.015192658 -0.024904907 ;
	setAttr ".uvtk[620]" -type "float2" 0.0052802563 0.0047974586 ;
	setAttr ".uvtk[621]" -type "float2" -0.0027981997 -0.014760554 ;
	setAttr ".uvtk[622]" -type "float2" 0.024170935 -0.027447045 ;
	setAttr ".uvtk[623]" -type "float2" -0.017976761 0.003465414 ;
	setAttr ".uvtk[624]" -type "float2" -0.0077892542 -0.0046746731 ;
	setAttr ".uvtk[625]" -type "float2" 0.01429677 0.0084414482 ;
	setAttr ".uvtk[626]" -type "float2" 0.0014175773 0.014693201 ;
	setAttr ".uvtk[627]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[628]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[629]" -type "float2" 0.033618867 0.002528429 ;
	setAttr ".uvtk[630]" -type "float2" 0.019696772 -0.002141118 ;
	setAttr ".uvtk[631]" -type "float2" -0.016699553 -0.017278194 ;
	setAttr ".uvtk[632]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[633]" -type "float2" -0.02181074 0 ;
	setAttr ".uvtk[634]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[635]" -type "float2" -0.018034935 0.0021694303 ;
	setAttr ".uvtk[636]" -type "float2" 0.0013510585 -0.0029473901 ;
	setAttr ".uvtk[637]" -type "float2" 0.019983351 0 ;
	setAttr ".uvtk[638]" -type "float2" 0.013582885 -0.001824677 ;
	setAttr ".uvtk[639]" -type "float2" -0.15501279 -0.014560878 ;
	setAttr ".uvtk[640]" -type "float2" 0.06327951 -0.21392071 ;
	setAttr ".uvtk[641]" -type "float2" 0.15797597 -0.018859982 ;
	setAttr ".uvtk[642]" -type "float2" 0.037519932 -0.0038129687 ;
	setAttr ".uvtk[643]" -type "float2" -0.14141634 0.019717693 ;
	setAttr ".uvtk[644]" -type "float2" 0.15797597 -0.018859982 ;
	setAttr ".uvtk[645]" -type "float2" -0.041428626 0 ;
	setAttr ".uvtk[646]" -type "float2" 0.15839255 -0.018859982 ;
	setAttr ".uvtk[647]" -type "float2" -0.14117935 0.017353117 ;
	setAttr ".uvtk[648]" -type "float2" 0.018143415 -0.0028764606 ;
	setAttr ".uvtk[649]" -type "float2" -0.15425968 0.024818718 ;
	setAttr ".uvtk[650]" -type "float2" 0.15839255 -0.018859982 ;
	setAttr ".uvtk[651]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[652]" -type "float2" 0.18631566 -0.018859982 ;
	setAttr ".uvtk[653]" -type "float2" -0.15362918 0.018679976 ;
	setAttr ".uvtk[654]" -type "float2" 0.018261731 -0.007312119 ;
	setAttr ".uvtk[655]" -type "float2" 0 0.013480425 ;
	setAttr ".uvtk[656]" -type "float2" 0 0.0094363689 ;
	setAttr ".uvtk[657]" -type "float2" 0.18631566 -0.018859982 ;
	setAttr ".uvtk[658]" -type "float2" 0.18631566 -0.018859982 ;
	setAttr ".uvtk[659]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[660]" -type "float2" 0 0.017681003 ;
	setAttr ".uvtk[661]" -type "float2" 0 0.005392313 ;
	setAttr ".uvtk[662]" -type "float2" -0.018764257 0.0096212029 ;
	setAttr ".uvtk[663]" -type "float2" 0 0.0011919737 ;
	setAttr ".uvtk[664]" -type "float2" -0.016530812 0.01110369 ;
	setAttr ".uvtk[665]" -type "float2" 0 -0.017681003 ;
	setAttr ".uvtk[666]" -type "float2" 0.018429637 -0.010469437 ;
	setAttr ".uvtk[667]" -type "float2" 0 -0.013480544 ;
	setAttr ".uvtk[668]" -type "float2" 0 -0.0011918545 ;
	setAttr ".uvtk[669]" -type "float2" -0.024170935 0.027447224 ;
	setAttr ".uvtk[670]" -type "float2" 0 -0.0094363689 ;
	setAttr ".uvtk[671]" -type "float2" 0 -0.005392313 ;
	setAttr ".uvtk[672]" -type "float2" -0.021498978 0.017679751 ;
	setAttr ".uvtk[673]" -type "float2" 0 -0.0094363689 ;
	setAttr ".uvtk[674]" -type "float2" 0 -0.005392313 ;
	setAttr ".uvtk[675]" -type "float2" 0.019874543 -0.0098574758 ;
	setAttr ".uvtk[676]" -type "float2" 0 -0.013480544 ;
	setAttr ".uvtk[677]" -type "float2" 0 -0.0011918545 ;
	setAttr ".uvtk[678]" -type "float2" 0.0063302815 -0.0045731664 ;
	setAttr ".uvtk[679]" -type "float2" 0 -0.017681003 ;
	setAttr ".uvtk[680]" -type "float2" -0.017058313 -0.025042474 ;
	setAttr ".uvtk[681]" -type "float2" 0 0.0011919737 ;
	setAttr ".uvtk[682]" -type "float2" 0.024665803 -0.028138816 ;
	setAttr ".uvtk[683]" -type "float2" 0 0.017681003 ;
	setAttr ".uvtk[684]" -type "float2" 0 0.005392313 ;
	setAttr ".uvtk[685]" -type "float2" 0.027487218 -0.016880631 ;
	setAttr ".uvtk[686]" -type "float2" 0 0.013480425 ;
	setAttr ".uvtk[687]" -type "float2" 0 0.0094363689 ;
	setAttr ".uvtk[688]" -type "float2" -0.18631566 -0.018859982 ;
	setAttr ".uvtk[689]" -type "float2" -0.18631566 -0.018859982 ;
	setAttr ".uvtk[690]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[691]" -type "float2" -0.18631566 -0.018859982 ;
	setAttr ".uvtk[692]" -type "float2" 0.15400916 0.015764475 ;
	setAttr ".uvtk[693]" -type "float2" -0.018467039 -0.01732707 ;
	setAttr ".uvtk[694]" -type "float2" 0.15289986 0.035253942 ;
	setAttr ".uvtk[695]" -type "float2" -0.15839252 -0.018859982 ;
	setAttr ".uvtk[696]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[697]" -type "float2" -0.15839252 -0.018859982 ;
	setAttr ".uvtk[698]" -type "float2" 0.14134258 0.01606822 ;
	setAttr ".uvtk[699]" -type "float2" -0.038183838 -0.005038321 ;
	setAttr ".uvtk[700]" -type "float2" 0.14574289 0 ;
	setAttr ".uvtk[701]" -type "float2" -0.0040647388 -0.036077619 ;
	setAttr ".uvtk[702]" -type "float2" 0.0063422322 -0.012141883 ;
	setAttr ".uvtk[703]" -type "float2" 0.0021336973 -0.033760011 ;
	setAttr ".uvtk[704]" -type "float2" -0.14586791 0 ;
	setAttr ".uvtk[705]" -type "float2" -0.0027084947 0.0034323931 ;
	setAttr ".uvtk[706]" -type "float2" -0.0098793209 0.00058406591 ;
	setAttr ".uvtk[707]" -type "float2" 0.11626041 -0.015236259 ;
	setAttr ".uvtk[708]" -type "float2" -0.11902928 0.0076304674 ;
	setAttr ".uvtk[709]" -type "float2" 0.0017400682 0.03708303 ;
	setAttr ".uvtk[710]" -type "float2" 0.11691135 -0.0041216016 ;
	setAttr ".uvtk[711]" -type "float2" -0.10552534 -0.075807631 ;
	setAttr ".uvtk[712]" -type "float2" 0.010165393 -0.0033788085 ;
	setAttr ".uvtk[713]" -type "float2" 0.013747096 0.022773504 ;
	setAttr ".uvtk[714]" -type "float2" 0.11660284 -0.0021855235 ;
	setAttr ".uvtk[715]" -type "float2" 0.0043054819 0.0358724 ;
	setAttr ".uvtk[716]" -type "float2" 0.14561689 0 ;
	setAttr ".uvtk[717]" -type "float2" -0.11712095 0.0087201595 ;
	setAttr ".uvtk[718]" -type "float2" -0.017537177 -0.037852764 ;
	setAttr ".uvtk[719]" -type "float2" 0.13781917 -0.047802389 ;
	setAttr ".uvtk[720]" -type "float2" -0.015499055 -0.025318086 ;
	setAttr ".uvtk[721]" -type "float2" -0.017537177 -0.037852764 ;
	setAttr ".uvtk[722]" -type "float2" -0.14567983 0 ;
	setAttr ".uvtk[723]" -type "float2" 0.12129849 -0.04013443 ;
	setAttr ".uvtk[724]" -type "float2" -0.14557514 0 ;
	setAttr ".uvtk[725]" -type "float2" 0.017537147 -0.037852764 ;
	setAttr ".uvtk[726]" -type "float2" 0.14572152 0 ;
	setAttr ".uvtk[727]" -type "float2" 0.017537147 -0.037852764 ;
	setAttr ".uvtk[728]" -type "float2" 0.0089868009 -0.014149189 ;
	setAttr ".uvtk[729]" -type "float2" -0.061885744 -0.0010587573 ;
	setAttr ".uvtk[730]" -type "float2" 0.019025207 -0.011986852 ;
	setAttr ".uvtk[731]" -type "float2" 0.031416386 0.011653006 ;
	setAttr ".uvtk[732]" -type "float2" -0.017537147 0.037852764 ;
	setAttr ".uvtk[733]" -type "float2" 0.12063444 -0.009055078 ;
	setAttr ".uvtk[734]" -type "float2" -0.0099044442 0.0033271909 ;
	setAttr ".uvtk[735]" -type "float2" -0.0041100681 -0.013796329 ;
	setAttr ".uvtk[736]" -type "float2" -0.00052273273 -0.075440884 ;
	setAttr ".uvtk[737]" -type "float2" -0.11572286 0.0037407875 ;
	setAttr ".uvtk[738]" -type "float2" 0.017721802 -0.038251281 ;
	setAttr ".uvtk[739]" -type "float2" 0.0083447099 -0.022011518 ;
	setAttr ".uvtk[740]" -type "float2" 0.020267934 -0.010693729 ;
	setAttr ".uvtk[741]" -type "float2" -0.11536384 0.014893115 ;
	setAttr ".uvtk[742]" -type "float2" -0.0024683774 0.033499599 ;
	setAttr ".uvtk[743]" -type "float2" -0.1209116 0.009016335 ;
	setAttr ".uvtk[744]" -type "float2" -0.017537147 0.037852764 ;
	setAttr ".uvtk[745]" -type "float2" -0.107092 0.03872329 ;
	setAttr ".uvtk[746]" -type "float2" -0.0047512054 -0.04082787 ;
	setAttr ".uvtk[747]" -type "float2" 0.014131129 -0.024253726 ;
	setAttr ".uvtk[748]" -type "float2" 0.0096184015 -0.0005325079 ;
	setAttr ".uvtk[749]" -type "float2" -0.10483012 -0.073050916 ;
	setAttr ".uvtk[750]" -type "float2" -0.019052029 -0.014281094 ;
	setAttr ".uvtk[751]" -type "float2" 0.00039595366 -0.018731356 ;
	setAttr ".uvtk[752]" -type "float2" -0.017721772 -0.038251281 ;
	setAttr ".uvtk[753]" -type "float2" -0.11537939 0.0014098883 ;
	setAttr ".uvtk[754]" -type "float2" 0.017537177 0.037852764 ;
	setAttr ".uvtk[755]" -type "float2" -0.011683881 -0.019804299 ;
	setAttr ".uvtk[756]" -type "float2" -0.018109024 -0.015302777 ;
	setAttr ".uvtk[757]" -type "float2" 0.10570866 0.073865175 ;
	setAttr ".uvtk[758]" -type "float2" -0.0014404655 -0.034203351 ;
	setAttr ".uvtk[759]" -type "float2" 0.11550039 -0.0014193058 ;
	setAttr ".uvtk[760]" -type "float2" -0.017721772 -0.038251281 ;
	setAttr ".uvtk[761]" -type "float2" 0.12433296 -0.048298597 ;
	setAttr ".uvtk[762]" -type "float2" -0.11697626 0.004117012 ;
	setAttr ".uvtk[763]" -type "float2" 0.10308278 -0.0043305755 ;
	setAttr ".uvtk[764]" -type "float2" 0.22075212 -0.001504004 ;
	setAttr ".uvtk[765]" -type "float2" -0.017721802 0.038251281 ;
	setAttr ".uvtk[766]" -type "float2" 0.11578652 -0.0037395954 ;
	setAttr ".uvtk[767]" -type "float2" -0.11575087 0.028318346 ;
	setAttr ".uvtk[768]" -type "float2" -0.23967129 -0.0014865994 ;
	setAttr ".uvtk[769]" -type "float2" 0.088156879 -0.004300952 ;
	setAttr ".uvtk[770]" -type "float2" -0.0079219341 0.0026566982 ;
	setAttr ".uvtk[771]" -type "float2" 0.041045487 -0.034243643 ;
	setAttr ".uvtk[772]" -type "float2" 0.013502061 0.027541459 ;
	setAttr ".uvtk[773]" -type "float2" -0.010491788 -0.0020052791 ;
	setAttr ".uvtk[774]" -type "float2" 0.032026902 -0.04480803 ;
	setAttr ".uvtk[775]" -type "float2" -0.00040923059 0.0048423409 ;
	setAttr ".uvtk[776]" -type "float2" -0.018912882 0.01208216 ;
	setAttr ".uvtk[777]" -type "float2" -0.0089666396 0.042938113 ;
	setAttr ".uvtk[778]" -type "float2" -0.0051975101 0.02128464 ;
	setAttr ".uvtk[779]" -type "float2" -0.020380273 0.010598421 ;
	setAttr ".uvtk[780]" -type "float2" 0.072546482 -0.0046919584 ;
	setAttr ".uvtk[781]" -type "float2" 0.32445538 0.0062062144 ;
	setAttr ".uvtk[782]" -type "float2" 0 0.0053150058 ;
	setAttr ".uvtk[783]" -type "float2" 0 -0.0064578652 ;
	setAttr ".uvtk[784]" -type "float2" -0.050709128 -0.074925005 ;
	setAttr ".uvtk[785]" -type "float2" -0.01983434 0 ;
	setAttr ".uvtk[786]" -type "float2" 0 -0.0064579248 ;
	setAttr ".uvtk[787]" -type "float2" 0.050870419 0.062781036 ;
	setAttr ".uvtk[788]" -type "float2" 0 -0.0064578652 ;
	setAttr ".uvtk[789]" -type "float2" 0 0.0053150058 ;
	setAttr ".uvtk[790]" -type "float2" -0.32442531 -0.0011505485 ;
	setAttr ".uvtk[791]" -type "float2" -0.072415933 0.0017496347 ;
	setAttr ".uvtk[792]" -type "float2" -0.035205685 -0.018788457 ;
	setAttr ".uvtk[793]" -type "float2" 0.02407676 0 ;
	setAttr ".uvtk[794]" -type "float2" 0 0.0064578652 ;
	setAttr ".uvtk[795]" -type "float2" 0.0091585517 -0.036887586 ;
	setAttr ".uvtk[796]" -type "float2" -0.013357818 0.023810446 ;
	setAttr ".uvtk[797]" -type "float2" 0.10703999 -0.059152544 ;
	setAttr ".uvtk[798]" -type "float2" -0.11542946 0.0017650127 ;
	setAttr ".uvtk[799]" -type "float2" -0.10913152 0.044991791 ;
	setAttr ".uvtk[800]" -type "float2" -0.018850476 0.00024205446 ;
	setAttr ".uvtk[801]" -type "float2" 0.00092124939 0 ;
	setAttr ".uvtk[802]" -type "float2" -6.8962574e-05 0.00024133921 ;
	setAttr ".uvtk[803]" -type "float2" 0.10084021 -0.022051692 ;
	setAttr ".uvtk[804]" -type "float2" -0.003782928 -0.0020956397 ;
	setAttr ".uvtk[805]" -type "float2" 0.0094509423 0 ;
	setAttr ".uvtk[806]" -type "float2" 0.016421348 0.030917108 ;
	setAttr ".uvtk[807]" -type "float2" 0.0094509423 0 ;
	setAttr ".uvtk[808]" -type "float2" -0.01897198 0.037498295 ;
	setAttr ".uvtk[809]" -type "float2" -0.011337295 0 ;
	setAttr ".uvtk[810]" -type "float2" -0.0077354908 0.060621619 ;
	setAttr ".uvtk[811]" -type "float2" 0.014708132 -0.00076508522 ;
	setAttr ".uvtk[812]" -type "float2" -0.02793397 0.0095108747 ;
	setAttr ".uvtk[813]" -type "float2" -0.011337295 0 ;
	setAttr ".uvtk[814]" -type "float2" -0.0094509423 0 ;
	setAttr ".uvtk[815]" -type "float2" 0.023456722 -0.011565983 ;
	setAttr ".uvtk[816]" -type "float2" -0.019332364 0.0057966113 ;
	setAttr ".uvtk[817]" -type "float2" 0.0094509721 0 ;
	setAttr ".uvtk[818]" -type "float2" 0.017858833 -0.037453771 ;
	setAttr ".uvtk[819]" -type "float2" -0.0075531006 0.0059334636 ;
	setAttr ".uvtk[820]" -type "float2" 0.017858833 -0.037453771 ;
	setAttr ".uvtk[821]" -type "float2" 0.024546236 -0.0077059865 ;
	setAttr ".uvtk[822]" -type "float2" -0.015594065 0 ;
	setAttr ".uvtk[823]" -type "float2" -0.0094509721 0 ;
	setAttr ".uvtk[824]" -type "float2" -0.015594065 0 ;
	setAttr ".uvtk[825]" -type "float2" -0.0039124042 -0.070469677 ;
	setAttr ".uvtk[826]" -type "float2" 0.0045850128 -0.012389541 ;
	setAttr ".uvtk[827]" -type "float2" -0.030602142 0.00088238716 ;
	setAttr ".uvtk[828]" -type "float2" -0.019329295 0.0043404698 ;
	setAttr ".uvtk[829]" -type "float2" -0.0094509721 0 ;
	setAttr ".uvtk[830]" -type "float2" -0.014511287 -0.037239075 ;
	setAttr ".uvtk[831]" -type "float2" -0.037628829 0.014018893 ;
	setAttr ".uvtk[832]" -type "float2" -0.014511287 -0.037239075 ;
	setAttr ".uvtk[833]" -type "float2" -0.036034882 -0.051122904 ;
	setAttr ".uvtk[834]" -type "float2" 0.015102684 0 ;
	setAttr ".uvtk[835]" -type "float2" 0.0094509721 0 ;
	setAttr ".uvtk[836]" -type "float2" -0.0029171705 0.027965784 ;
	setAttr ".uvtk[837]" -type "float2" 0.021230996 -0.0077020526 ;
	setAttr ".uvtk[838]" -type "float2" 0.015102684 0 ;
	setAttr ".uvtk[839]" -type "float2" -0.040119767 -0.0403229 ;
	setAttr ".uvtk[840]" -type "float2" 0.0019183755 -0.015527546 ;
	setAttr ".uvtk[841]" -type "float2" -0.0094509721 0 ;
	setAttr ".uvtk[842]" -type "float2" -0.0046758056 0.013022244 ;
	setAttr ".uvtk[843]" -type "float2" -0.025014281 -0.047405481 ;
	setAttr ".uvtk[844]" -type "float2" 0.0064353347 -0.001496017 ;
	setAttr ".uvtk[845]" -type "float2" -0.0094509721 0 ;
	setAttr ".uvtk[846]" -type "float2" 0.022319555 0.037194252 ;
	setAttr ".uvtk[847]" -type "float2" 0.011075199 0.046478987 ;
	setAttr ".uvtk[848]" -type "float2" 0.010368884 0 ;
	setAttr ".uvtk[849]" -type "float2" 0.0094509721 0 ;
	setAttr ".uvtk[850]" -type "float2" 0.010368884 0 ;
	setAttr ".uvtk[851]" -type "float2" 0.010345459 0.029179633 ;
	setAttr ".uvtk[852]" -type "float2" -0.020702422 0.0041221976 ;
	setAttr ".uvtk[853]" -type "float2" -0.13122913 0.018705547 ;
	setAttr ".uvtk[854]" -type "float2" 0.15839252 0.018859982 ;
	setAttr ".uvtk[855]" -type "float2" -0.05774489 -0.0043871403 ;
	setAttr ".uvtk[856]" -type "float2" -0.01296553 0.0064226389 ;
	setAttr ".uvtk[857]" -type "float2" -0.033993412 0.0078526735 ;
	setAttr ".uvtk[858]" -type "float2" 0.042787284 0.0043871403 ;
	setAttr ".uvtk[859]" -type "float2" -0.057218943 0.0036207438 ;
	setAttr ".uvtk[860]" -type "float2" 0.05774489 0.0043871403 ;
	setAttr ".uvtk[861]" -type "float2" -0.01296553 0.0064226389 ;
	setAttr ".uvtk[862]" -type "float2" -0.01296553 0.0064226389 ;
	setAttr ".uvtk[863]" -type "float2" 0.18631566 0.018859982 ;
	setAttr ".uvtk[864]" -type "float2" -0.1816832 0.015176237 ;
	setAttr ".uvtk[865]" -type "float2" 0.020448476 -0.0067669749 ;
	setAttr ".uvtk[866]" -type "float2" 0.01296553 -0.0064226389 ;
	setAttr ".uvtk[867]" -type "float2" 0.042787284 0.0043871403 ;
	setAttr ".uvtk[868]" -type "float2" 0.042787284 0.0043871403 ;
	setAttr ".uvtk[869]" -type "float2" 0.17935026 -0.029802561 ;
	setAttr ".uvtk[870]" -type "float2" -0.18631566 0.018859982 ;
	setAttr ".uvtk[871]" -type "float2" 0.042787313 -0.0043871403 ;
	setAttr ".uvtk[872]" -type "float2" -0.01296556 -0.0064226389 ;
	setAttr ".uvtk[873]" -type "float2" 0.055955172 -0.020334184 ;
	setAttr ".uvtk[874]" -type "float2" -0.057744861 0.0043871403 ;
	setAttr ".uvtk[875]" -type "float2" 0.031997323 -0.0062013268 ;
	setAttr ".uvtk[876]" -type "float2" -0.042787313 0.0043871403 ;
	setAttr ".uvtk[877]" -type "float2" -0.01296556 -0.0064226389 ;
	setAttr ".uvtk[878]" -type "float2" -0.01296556 -0.0064226389 ;
	setAttr ".uvtk[879]" -type "float2" -0.15839255 0.018859982 ;
	setAttr ".uvtk[880]" -type "float2" 0.12853855 -0.013696134 ;
	setAttr ".uvtk[881]" -type "float2" -0.069151044 0.02491194 ;
	setAttr ".uvtk[882]" -type "float2" 0.01296556 0.0064226389 ;
	setAttr ".uvtk[883]" -type "float2" -0.057744861 0.0043871403 ;
	setAttr ".uvtk[884]" -type "float2" -0.057744861 0.0043871403 ;
	setAttr ".uvtk[885]" -type "float2" 0.15653783 -0.019996464 ;
	setAttr ".uvtk[886]" -type "float2" -0.18631566 -0.018859982 ;
	setAttr ".uvtk[887]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[888]" -type "float2" -0.15839252 -0.018859982 ;
	setAttr ".uvtk[889]" -type "float2" 0.15637451 -0.013885319 ;
	setAttr ".uvtk[890]" -type "float2" -0.019906878 0.0073398948 ;
	setAttr ".uvtk[891]" -type "float2" -0.042787284 -0.0043871403 ;
	setAttr ".uvtk[892]" -type "float2" 0.18631566 0.018859982 ;
	setAttr ".uvtk[893]" -type "float2" 0.18631566 0.018859982 ;
	setAttr ".uvtk[894]" -type "float2" -0.18631566 -0.018859982 ;
	setAttr ".uvtk[895]" -type "float2" 0 0.0094363689 ;
	setAttr ".uvtk[896]" -type "float2" 0 0.013480425 ;
	setAttr ".uvtk[897]" -type "float2" 0.019874573 -0.0098574162 ;
	setAttr ".uvtk[898]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[899]" -type "float2" -0.019692928 0.0005222559 ;
	setAttr ".uvtk[900]" -type "float2" 0.14198625 -0.05316174 ;
	setAttr ".uvtk[901]" -type "float2" -0.15839252 -0.018859982 ;
	setAttr ".uvtk[902]" -type "float2" -0.14198685 0.050894558 ;
	setAttr ".uvtk[903]" -type "float2" 0.00041657686 -0.0024745464 ;
	setAttr ".uvtk[904]" -type "float2" -0.05774489 -0.0043871403 ;
	setAttr ".uvtk[905]" -type "float2" -0.05774489 -0.0043871403 ;
	setAttr ".uvtk[906]" -type "float2" -0.18631566 0.018859982 ;
	setAttr ".uvtk[907]" -type "float2" 0.042787313 -0.0043871403 ;
	setAttr ".uvtk[908]" -type "float2" 0.042787313 -0.0043871403 ;
	setAttr ".uvtk[909]" -type "float2" 0.057744861 -0.0043871403 ;
	setAttr ".uvtk[910]" -type "float2" -0.00041657686 -0.0024745464 ;
	setAttr ".uvtk[911]" -type "float2" 0.14179087 -0.019790232 ;
	setAttr ".uvtk[912]" -type "float2" -0.15839255 0.018859982 ;
	setAttr ".uvtk[913]" -type "float2" -0.17749724 -0.04402262 ;
	setAttr ".uvtk[914]" -type "float2" 0.18631566 0.018859982 ;
	setAttr ".uvtk[915]" -type "float2" -0.042787284 -0.0043871403 ;
	setAttr ".uvtk[916]" -type "float2" 0.01296553 -0.0064226389 ;
	setAttr ".uvtk[917]" -type "float2" -0.052051693 -0.03739208 ;
	setAttr ".uvtk[918]" -type "float2" 0.05774489 0.0043871403 ;
	setAttr ".uvtk[919]" -type "float2" -0.03249887 -0.0040096045 ;
	setAttr ".uvtk[920]" -type "float2" 0.042787284 0.0043871403 ;
	setAttr ".uvtk[921]" -type "float2" 0.01296553 -0.0064226389 ;
	setAttr ".uvtk[922]" -type "float2" 0.01296553 -0.0064226389 ;
	setAttr ".uvtk[923]" -type "float2" 0.15839252 0.018859982 ;
	setAttr ".uvtk[924]" -type "float2" -0.12941179 -0.0069957972 ;
	setAttr ".uvtk[925]" -type "float2" 0.06443657 0.045513809 ;
	setAttr ".uvtk[926]" -type "float2" -0.01296553 0.0064226389 ;
	setAttr ".uvtk[927]" -type "float2" 0.05774489 0.0043871403 ;
	setAttr ".uvtk[928]" -type "float2" 0.05774489 0.0043871403 ;
	setAttr ".uvtk[929]" -type "float2" 0.13015026 0.050518572 ;
	setAttr ".uvtk[930]" -type "float2" -0.15839255 0.018859982 ;
	setAttr ".uvtk[931]" -type "float2" 0.057744861 -0.0043871403 ;
	setAttr ".uvtk[932]" -type "float2" 0.01296556 0.0064226389 ;
	setAttr ".uvtk[933]" -type "float2" 0.033214211 0.02172935 ;
	setAttr ".uvtk[934]" -type "float2" -0.042787313 0.0043871403 ;
	setAttr ".uvtk[935]" -type "float2" 0.057094932 0.0058277845 ;
	setAttr ".uvtk[936]" -type "float2" -0.057744861 0.0043871403 ;
	setAttr ".uvtk[937]" -type "float2" 0.01296556 0.0064226389 ;
	setAttr ".uvtk[938]" -type "float2" 0.01296556 0.0064226389 ;
	setAttr ".uvtk[939]" -type "float2" -0.18631566 0.018859982 ;
	setAttr ".uvtk[940]" -type "float2" 0.18099129 0.035579741 ;
	setAttr ".uvtk[941]" -type "float2" -0.019726872 -0.019617558 ;
	setAttr ".uvtk[942]" -type "float2" -0.01296556 -0.0064226389 ;
	setAttr ".uvtk[943]" -type "float2" -0.042787313 0.0043871403 ;
	setAttr ".uvtk[944]" -type "float2" -0.042787313 0.0043871403 ;
	setAttr ".uvtk[945]" -type "float2" -0.15542415 -0.052836657 ;
	setAttr ".uvtk[946]" -type "float2" 0.18631566 -0.018859982 ;
	setAttr ".uvtk[947]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[948]" -type "float2" 0.15839255 -0.018859982 ;
	setAttr ".uvtk[949]" -type "float2" -0.1557174 -0.033261657 ;
	setAttr ".uvtk[950]" -type "float2" 0.016699553 0.017278254 ;
	setAttr ".uvtk[951]" -type "float2" 0.18631566 0.018859982 ;
	setAttr ".uvtk[952]" -type "float2" -0.042787284 -0.0043871403 ;
	setAttr ".uvtk[953]" -type "float2" -0.042787284 -0.0043871403 ;
	setAttr ".uvtk[954]" -type "float2" -0.05774489 -0.0043871403 ;
	setAttr ".uvtk[955]" -type "float2" 0.00041657686 -0.0024745464 ;
	setAttr ".uvtk[956]" -type "float2" -0.14129326 -0.023706496 ;
	setAttr ".uvtk[957]" -type "float2" 0.15839252 0.018859982 ;
	setAttr ".uvtk[958]" -type "float2" 0.042787313 -0.0043871403 ;
	setAttr ".uvtk[959]" -type "float2" -0.18631566 0.018859982 ;
	setAttr ".uvtk[960]" -type "float2" -0.18631566 0.018859982 ;
	setAttr ".uvtk[961]" -type "float2" 0.18631566 -0.018859982 ;
	setAttr ".uvtk[962]" -type "float2" 0 0.0094363689 ;
	setAttr ".uvtk[963]" -type "float2" 0 0.013480425 ;
	setAttr ".uvtk[964]" -type "float2" -0.01429677 -0.0084414482 ;
	setAttr ".uvtk[965]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[966]" -type "float2" 0.037573516 -0.0010315776 ;
	setAttr ".uvtk[967]" -type "float2" 0.038789809 -0.29857135 ;
	setAttr ".uvtk[968]" -type "float2" 0.15839255 -0.018859982 ;
	setAttr ".uvtk[969]" -type "float2" -0.036521375 0.29322553 ;
	setAttr ".uvtk[970]" -type "float2" -0.00041657686 -0.0024745464 ;
	setAttr ".uvtk[971]" -type "float2" 0.057744861 -0.0043871403 ;
	setAttr ".uvtk[972]" -type "float2" 0.057744861 -0.0043871403 ;
	setAttr ".uvtk[973]" -type "float2" 0.017447054 0.011374176 ;
	setAttr ".uvtk[974]" -type "float2" 0 0.0011919737 ;
	setAttr ".uvtk[975]" -type "float2" 0.02832678 -0.027257204 ;
	setAttr ".uvtk[976]" -type "float2" -0.018629879 0.0014680624 ;
	setAttr ".uvtk[977]" -type "float2" 0 -0.013480544 ;
	setAttr ".uvtk[978]" -type "float2" 0.027487248 -0.016880751 ;
	setAttr ".uvtk[979]" -type "float2" 0.0019163489 0.011099696 ;
	setAttr ".uvtk[980]" -type "float2" 0.010224164 0.0038775206 ;
	setAttr ".uvtk[981]" -type "float2" 0 0.005392313 ;
	setAttr ".uvtk[982]" -type "float2" 0 0.017681003 ;
	setAttr ".uvtk[983]" -type "float2" -0.0014175773 -0.014693201 ;
	setAttr ".uvtk[984]" -type "float2" 0 0.0011919737 ;
	setAttr ".uvtk[985]" -type "float2" -0.016530752 0.011103749 ;
	setAttr ".uvtk[986]" -type "float2" 0.017976761 -0.003465414 ;
	setAttr ".uvtk[987]" -type "float2" 0 -0.013480544 ;
	setAttr ".uvtk[988]" -type "float2" -0.018764198 0.0096212029 ;
	setAttr ".uvtk[989]" -type "float2" -0.0052802563 -0.0047975183 ;
	setAttr ".uvtk[990]" -type "float2" -0.033618867 -0.002528429 ;
	setAttr ".uvtk[991]" -type "float2" 0 0.005392313 ;
	setAttr ".uvtk[992]" -type "float2" 0 0.017681003 ;
	setAttr ".uvtk[993]" -type "float2" 0 -0.0094363689 ;
	setAttr ".uvtk[994]" -type "float2" 0.02181074 0 ;
	setAttr ".uvtk[995]" -type "float2" 0.0077891648 0.0046747923 ;
	setAttr ".uvtk[996]" -type "float2" 0 -0.0094363689 ;
	setAttr ".uvtk[997]" -type "float2" -0.019983351 0 ;
	setAttr ".uvtk[998]" -type "float2" -0.0088738203 -0.0040060878 ;
	setAttr ".uvtk[999]" -type "float2" -0.15797594 -0.018859982 ;
	setAttr ".uvtk[1000]" -type "float2" -0.035318673 -0.034417152 ;
	setAttr ".uvtk[1001]" -type "float2" -0.038249075 0.0025052428 ;
	setAttr ".uvtk[1002]" -type "float2" 0.042159557 0 ;
	setAttr ".uvtk[1003]" -type "float2" -0.15797594 -0.018859982 ;
	setAttr ".uvtk[1004]" -type "float2" 0.14161712 -0.050781608 ;
	setAttr ".uvtk[1006]" -type "float2" 0.15797594 0.018859982 ;
	setAttr ".uvtk[1007]" -type "float2" -0.1409751 -0.015940607 ;
	setAttr ".uvtk[1008]" -type "float2" 0.15797594 0.018859982 ;
	setAttr ".uvtk[1010]" -type "float2" -0.00041657686 0.0024745464 ;
	setAttr ".uvtk[1011]" -type "float2" 0.037508667 -0.0038148761 ;
	setAttr ".uvtk[1012]" -type "float2" 0.15797597 -0.018859982 ;
	setAttr ".uvtk[1013]" -type "float2" 0.036445796 -0.29250807 ;
	setAttr ".uvtk[1014]" -type "float2" -0.15797597 0.018859982 ;
	setAttr ".uvtk[1016]" -type "float2" 0.00041657686 0.0024745464 ;
	setAttr ".uvtk[1018]" -type "float2" -0.15797597 0.018859982 ;
	setAttr ".uvtk[1019]" -type "float2" 0.14080483 -0.017280579 ;
	setAttr ".uvtk[1020]" -type "float2" -0.037520885 -0.0062593818 ;
	setAttr ".uvtk[1021]" -type "float2" -0.15797594 -0.018859982 ;
	setAttr ".uvtk[1022]" -type "float2" -0.32439059 0.032224655 ;
	setAttr ".uvtk[1023]" -type "float2" -0.32445529 -0.0062062144 ;
	setAttr ".uvtk[1024]" -type "float2" 0 -0.0053150058 ;
	setAttr ".uvtk[1026]" -type "float2" 0.038195014 -0.01169157 ;
	setAttr ".uvtk[1027]" -type "float2" -0.041428626 0 ;
	setAttr ".uvtk[1028]" -type "float2" -0.13097513 0.42147195 ;
	setAttr ".uvtk[1029]" -type "float2" 0.15512323 -0.0016424656 ;
	setAttr ".uvtk[1030]" -type "float2" 0 -0.0053150058 ;
	setAttr ".uvtk[1032]" -type "float2" 0 -0.0053150058 ;
	setAttr ".uvtk[1033]" -type "float2" 0.32442522 0.0011505485 ;
	setAttr ".uvtk[1034]" -type "float2" 0.3237164 -0.014273703 ;
	setAttr ".uvtk[1035]" -type "float2" -0.15797597 0.018859982 ;
	setAttr ".uvtk[1036]" -type "float2" -0.25146025 -0.0041869879 ;
	setAttr ".uvtk[1037]" -type "float2" -0.037246883 -0.00059092045 ;
	setAttr ".uvtk[1038]" -type "float2" 0 0.0064579248 ;
	setAttr ".uvtk[1039]" -type "float2" 0.014111817 0.037129521 ;
	setAttr ".uvtk[1040]" -type "float2" -0.0071333647 0.037111163 ;
	setAttr ".uvtk[1041]" -type "float2" -0.020607188 0.035355866 ;
	setAttr ".uvtk[1042]" -type "float2" 0 0.0064579248 ;
	setAttr ".uvtk[1043]" -type "float2" 0.037246913 -0.00059092045 ;
	setAttr ".uvtk[1044]" -type "float2" 0.25518295 -0.013030589 ;
	setAttr ".uvtk[1045]" -type "float2" -0.2467746 0.0089161396 ;
	setAttr ".uvtk[1046]" -type "float2" -0.20812739 -0.00078070164 ;
	setAttr ".uvtk[1047]" -type "float2" 0.029527515 -1.6868114e-05 ;
	setAttr ".uvtk[1048]" -type "float2" -0.017721802 0.038251281 ;
	setAttr ".uvtk[1049]" -type "float2" 0 -0.0064579248 ;
	setAttr ".uvtk[1050]" -type "float2" -0.0092432052 0.037027478 ;
	setAttr ".uvtk[1051]" -type "float2" -0.0047240257 0.013589978 ;
	setAttr ".uvtk[1052]" -type "float2" -0.031813234 0.038667083 ;
	setAttr ".uvtk[1053]" -type "float2" 0 -0.0064579248 ;
	setAttr ".uvtk[1054]" -type "float2" 0.018865868 0 ;
	setAttr ".uvtk[1055]" -type "float2" 0.012329876 0.042645156 ;
	setAttr ".uvtk[1056]" -type "float2" 0 -0.0064579248 ;
	setAttr ".uvtk[1057]" -type "float2" -0.01983434 0 ;
	setAttr ".uvtk[1058]" -type "float2" 0.18587041 -0.01060921 ;
	setAttr ".uvtk[1059]" -type "float2" 0.17278847 0.00059479475 ;
	setAttr ".uvtk[1060]" -type "float2" 0.060535729 -0.00059086084 ;
	setAttr ".uvtk[1061]" -type "float2" -0.17413658 0.0076082945 ;
	setAttr ".uvtk[1062]" -type "float2" -0.18218809 -0.0042539835 ;
	setAttr ".uvtk[1063]" -type "float2" 0.037246883 0.00059092045 ;
	setAttr ".uvtk[1064]" -type "float2" -0.00030249357 -0.0013851523 ;
	setAttr ".uvtk[1065]" -type "float2" 0.00086188316 -0.01144588 ;
	setAttr ".uvtk[1066]" -type "float2" 0.0090768039 -0.043306887 ;
	setAttr ".uvtk[1067]" -type "float2" 0.0161722 0.0057117939 ;
	setAttr ".uvtk[1068]" -type "float2" 0.066672266 0.0039772391 ;
	setAttr ".uvtk[1069]" -type "float2" -0.016644716 -0.01164037 ;
	setAttr ".uvtk[1070]" -type "float2" 0.013588071 -0.0073503256 ;
	setAttr ".uvtk[1071]" -type "float2" 0.006131053 -0.018766344 ;
	setAttr ".uvtk[1072]" -type "float2" 0.00030249357 -0.0013851523 ;
	setAttr ".uvtk[1073]" -type "float2" 0.060535729 0.00059086084 ;
	setAttr ".uvtk[1074]" -type "float2" 0.00030249357 -0.0013851523 ;
	setAttr ".uvtk[1075]" -type "float2" -0.010731518 -0.012402415 ;
	setAttr ".uvtk[1076]" -type "float2" 0.010931849 -0.00061368942 ;
	setAttr ".uvtk[1077]" -type "float2" -0.01579994 0.00072032213 ;
	setAttr ".uvtk[1078]" -type "float2" -0.066653967 -0.0027404428 ;
	setAttr ".uvtk[1079]" -type "float2" 0.015779316 -3.7312508e-05 ;
	setAttr ".uvtk[1080]" -type "float2" -0.010463238 0.00021237135 ;
	setAttr ".uvtk[1081]" -type "float2" 0.0026028454 -0.012888253 ;
	setAttr ".uvtk[1082]" -type "float2" -0.00030249357 -0.0013851523 ;
	setAttr ".uvtk[1083]" -type "float2" -0.060535729 0.00059086084 ;
	setAttr ".uvtk[1084]" -type "float2" -0.047347665 0 ;
	setAttr ".uvtk[1085]" -type "float2" 0 0.010941744 ;
	setAttr ".uvtk[1086]" -type "float2" -0.047347665 0 ;
	setAttr ".uvtk[1087]" -type "float2" 0.042820692 -0.0035475492 ;
	setAttr ".uvtk[1088]" -type "float2" 0 -0.010941744 ;
	setAttr ".uvtk[1089]" -type "float2" -0.041159302 -0.029690742 ;
	setAttr ".uvtk[1090]" -type "float2" -0.0067429543 -0.031337202 ;
	setAttr ".uvtk[1091]" -type "float2" -0.0098792315 -0.002384305 ;
	setAttr ".uvtk[1092]" -type "float2" -0.047347665 0 ;
	setAttr ".uvtk[1093]" -type "float2" 0.047347665 0 ;
	setAttr ".uvtk[1094]" -type "float2" -0.042820692 0.0035475492 ;
	setAttr ".uvtk[1095]" -type "float2" 0.010351717 0.008312881 ;
	setAttr ".uvtk[1096]" -type "float2" 0.0033735931 0.010553002 ;
	setAttr ".uvtk[1097]" -type "float2" 0 -0.010941744 ;
	setAttr ".uvtk[1098]" -type "float2" 0.010793686 -0.0035279989 ;
	setAttr ".uvtk[1099]" -type "float2" -0.012372851 0.00048243999 ;
	setAttr ".uvtk[1100]" -type "float2" 0 0.010941744 ;
	setAttr ".uvtk[1101]" -type "float2" -0.0068665445 0.037492335 ;
	setAttr ".uvtk[1102]" -type "float2" -0.010540694 -0.0088225603 ;
	setAttr ".uvtk[1103]" -type "float2" 0.047347665 0 ;
	setAttr ".uvtk[1104]" -type "float2" 0.047347665 0 ;
	setAttr ".uvtk[1105]" -type "float2" 0 0.010941744 ;
	setAttr ".uvtk[1106]" -type "float2" 0.047347665 0 ;
	setAttr ".uvtk[1107]" -type "float2" -0.043108106 -0.012602329 ;
	setAttr ".uvtk[1108]" -type "float2" 0 -0.010941744 ;
	setAttr ".uvtk[1109]" -type "float2" 0.042170227 0.002156198 ;
	setAttr ".uvtk[1110]" -type "float2" 0.014141917 -0.013429999 ;
	setAttr ".uvtk[1111]" -type "float2" 0.0097443163 -0.00057500601 ;
	setAttr ".uvtk[1112]" -type "float2" 0.047347665 0 ;
	setAttr ".uvtk[1113]" -type "float2" -0.047347665 0 ;
	setAttr ".uvtk[1114]" -type "float2" 0.043108106 0.012602329 ;
	setAttr ".uvtk[1115]" -type "float2" -0.0097236633 -0.00010794401 ;
	setAttr ".uvtk[1116]" -type "float2" -0.014173687 -0.012491524 ;
	setAttr ".uvtk[1117]" -type "float2" 0 -0.010941744 ;
	setAttr ".uvtk[1118]" -type "float2" -0.011507332 -0.0017127395 ;
	setAttr ".uvtk[1119]" -type "float2" 0.010750592 -0.0011615157 ;
	setAttr ".uvtk[1120]" -type "float2" -0.047347665 0 ;
	setAttr ".uvtk[1121]" -type "float2" -0.01069963 -9.6082687e-05 ;
	setAttr ".uvtk[1122]" -type "float2" 0.011116296 -0.0025587082 ;
	setAttr ".uvtk[1123]" -type "float2" 0 0.010941744 ;
	setAttr ".uvtk[1124]" -type "float2" 0.085161686 -0.11273408 ;
	setAttr ".uvtk[1125]" -type "float2" 0.0020278692 -0.16114044 ;
	setAttr ".uvtk[1126]" -type "float2" -0.0041774511 0.0034687519 ;
	setAttr ".uvtk[1127]" -type "float2" -0.0002117753 0.0084781051 ;
	setAttr ".uvtk[1128]" -type "float2" 0.0055277348 0.038205087 ;
	setAttr ".uvtk[1129]" -type "float2" -0.0022230744 0.01960516 ;
	setAttr ".uvtk[1130]" -type "float2" -0.00030249357 0.0034687519 ;
	setAttr ".uvtk[1131]" -type "float2" -0.002027899 -0.16114044 ;
	setAttr ".uvtk[1132]" -type "float2" 0.037797689 -0.32562289 ;
	setAttr ".uvtk[1133]" -type "float2" -0.017429978 0.001881063 ;
	setAttr ".uvtk[1134]" -type "float2" -0.0086695552 0.011670053 ;
	setAttr ".uvtk[1135]" -type "float2" -0.0041774511 0.0034687519 ;
	setAttr ".uvtk[1136]" -type "float2" 0.0020278692 -0.16114044 ;
	setAttr ".uvtk[1137]" -type "float2" 0.088087022 -0.12389767 ;
	setAttr ".uvtk[1138]" -type "float2" 0.017371953 -0.00023531914 ;
	setAttr ".uvtk[1139]" -type "float2" -0.037852943 -0.036923587 ;
	setAttr ".uvtk[1140]" -type "float2" -0.002027899 -0.16114044 ;
	setAttr ".uvtk[1141]" -type "float2" -0.00030249357 0.0034687519 ;
	setAttr ".uvtk[1142]" -type "float2" 0.0029025078 0.015358746 ;
	setAttr ".uvtk[1143]" -type "float2" -0.014794976 0.015776396 ;
	setAttr ".uvtk[1144]" -type "float2" 0.098228693 0 ;
	setAttr ".uvtk[1145]" -type "float2" 0.07948336 -0.17564946 ;
	setAttr ".uvtk[1146]" -type "float2" 0.098228693 0 ;
	setAttr ".uvtk[1147]" -type "float2" 0 -0.01081109 ;
	setAttr ".uvtk[1148]" -type "float2" -0.089163408 -0.012577057 ;
	setAttr ".uvtk[1149]" -type "float2" 0 -0.01081109 ;
	setAttr ".uvtk[1150]" -type "float2" 0.0017451346 -0.014794469 ;
	setAttr ".uvtk[1151]" -type "float2" 0.00030249357 0.0013851523 ;
	setAttr ".uvtk[1152]" -type "float2" -0.098228693 0 ;
	setAttr ".uvtk[1153]" -type "float2" 0.098228693 0 ;
	setAttr ".uvtk[1154]" -type "float2" 0 0.01081109 ;
	setAttr ".uvtk[1155]" -type "float2" 0.00030249357 0.0013851523 ;
	setAttr ".uvtk[1156]" -type "float2" -0.0028560758 -0.010982454 ;
	setAttr ".uvtk[1157]" -type "float2" 0.088713586 0.0022847056 ;
	setAttr ".uvtk[1158]" -type "float2" 0.00030249357 -0.0034687519 ;
	setAttr ".uvtk[1159]" -type "float2" -0.00038394332 0.0066351891 ;
	setAttr ".uvtk[1160]" -type "float2" -0.090794414 0.19806397 ;
	setAttr ".uvtk[1161]" -type "float2" -0.0026492774 0.0085119605 ;
	setAttr ".uvtk[1162]" -type "float2" 0.00030249357 -0.0034687519 ;
	setAttr ".uvtk[1163]" -type "float2" -0.098228693 0 ;
	setAttr ".uvtk[1164]" -type "float2" -0.10270864 0 ;
	setAttr ".uvtk[1165]" -type "float2" 0.09119457 0.012418091 ;
	setAttr ".uvtk[1166]" -type "float2" -0.098228693 0 ;
	setAttr ".uvtk[1167]" -type "float2" 0 -0.01081109 ;
	setAttr ".uvtk[1168]" -type "float2" -0.081424832 0.17991048 ;
	setAttr ".uvtk[1169]" -type "float2" 0 -0.01081109 ;
	setAttr ".uvtk[1170]" -type "float2" 0.0031827688 -0.0062004328 ;
	setAttr ".uvtk[1171]" -type "float2" -0.00030249357 0.0013851523 ;
	setAttr ".uvtk[1172]" -type "float2" 0.098228693 0 ;
	setAttr ".uvtk[1173]" -type "float2" -0.10270864 0 ;
	setAttr ".uvtk[1174]" -type "float2" 0 0.01081109 ;
	setAttr ".uvtk[1175]" -type "float2" -0.00030249357 0.0013851523 ;
	setAttr ".uvtk[1176]" -type "float2" -0.0031055808 -0.0038272142 ;
	setAttr ".uvtk[1177]" -type "float2" 0.088852942 -0.19380301 ;
	setAttr ".uvtk[1178]" -type "float2" -0.0028136969 0.014115453 ;
	setAttr ".uvtk[1179]" -type "float2" 0.0041774511 -0.0034687519 ;
	setAttr ".uvtk[1180]" -type "float2" 0.10270864 0 ;
	setAttr ".uvtk[1181]" -type "float2" 0.0041774511 -0.0034687519 ;
	setAttr ".uvtk[1182]" -type "float2" 0.016218305 0.006932795 ;
	setAttr ".uvtk[1183]" -type "float2" -0.094820976 -0.0024508238 ;
	setAttr ".uvtk[1184]" -type "float2" -0.079234421 0.071935058 ;
	setAttr ".uvtk[1185]" -type "float2" -0.040699661 -0.0075359941 ;
	setAttr ".uvtk[1186]" -type "float2" -0.020886898 -0.083995223 ;
	setAttr ".uvtk[1187]" -type "float2" 0.060478747 -0.060096011 ;
	setAttr ".uvtk[1188]" -type "float2" 0.061701357 -0.0027968138 ;
	setAttr ".uvtk[1189]" -type "float2" -0.00094759464 0.070517123 ;
	setAttr ".uvtk[1190]" -type "float2" -0.058347523 0 ;
	setAttr ".uvtk[1191]" -type "float2" 0.12452829 0 ;
	setAttr ".uvtk[1192]" -type "float2" -0.080169886 0.03359127 ;
	setAttr ".uvtk[1193]" -type "float2" -0.12452829 0 ;
	setAttr ".uvtk[1194]" -type "float2" 0.058347523 0 ;
	setAttr ".uvtk[1195]" -type "float2" -0.020886898 0.083995223 ;
	setAttr ".uvtk[1196]" -type "float2" 0.041178226 0.034627169 ;
	setAttr ".uvtk[1197]" -type "float2" -0.0020278692 0.16114044 ;
	setAttr ".uvtk[1198]" -type "float2" 0.00094759464 -0.070517123 ;
	setAttr ".uvtk[1199]" -type "float2" 0.002027899 0.16114044 ;
	setAttr ".uvtk[1200]" -type "float2" -0.091412306 0.12619409 ;
	setAttr ".uvtk[1201]" -type "float2" -0.060087532 0.0019410849 ;
	setAttr ".uvtk[1202]" -type "float2" -0.25605187 0.0059463661 ;
	setAttr ".uvtk[1203]" -type "float2" 0 0.019174546 ;
	setAttr ".uvtk[1204]" -type "float2" -0.25571108 -0.0041034985 ;
	setAttr ".uvtk[1205]" -type "float2" 0.28240442 0 ;
	setAttr ".uvtk[1206]" -type "float2" 0 0.019174546 ;
	setAttr ".uvtk[1207]" -type "float2" -0.28240442 0 ;
	setAttr ".uvtk[1208]" -type "float2" 0.020590544 0 ;
	setAttr ".uvtk[1209]" -type "float2" 0.28240442 0 ;
	setAttr ".uvtk[1210]" -type "float2" -0.25620496 -0.022348251 ;
	setAttr ".uvtk[1211]" -type "float2" 0.25518274 0.05249434 ;
	setAttr ".uvtk[1212]" -type "float2" -0.28240442 0 ;
	setAttr ".uvtk[1213]" -type "float2" -0.28240442 0 ;
	setAttr ".uvtk[1214]" -type "float2" -0.020590544 0 ;
	setAttr ".uvtk[1215]" -type "float2" 0 -0.019174546 ;
	setAttr ".uvtk[1216]" -type "float2" -0.020590544 0 ;
	setAttr ".uvtk[1217]" -type "float2" -0.28240442 0 ;
	setAttr ".uvtk[1218]" -type "float2" 0.2560519 -0.0059463643 ;
	setAttr ".uvtk[1219]" -type "float2" 0.28240442 0 ;
	setAttr ".uvtk[1220]" -type "float2" 0.020590544 0 ;
	setAttr ".uvtk[1221]" -type "float2" 0 -0.019174546 ;
	setAttr ".uvtk[1222]" -type "float2" 0 0.002491802 ;
	setAttr ".uvtk[1223]" -type "float2" -0.21877477 0.0029075108 ;
	setAttr ".uvtk[1224]" -type "float2" 0.24122334 0 ;
	setAttr ".uvtk[1225]" -type "float2" 0.21876496 -0.00053730235 ;
	setAttr ".uvtk[1226]" -type "float2" 0 0.002491802 ;
	setAttr ".uvtk[1227]" -type "float2" 0.020590544 0 ;
	setAttr ".uvtk[1228]" -type "float2" 0 0.002491802 ;
	setAttr ".uvtk[1229]" -type "float2" -0.23950094 0.46248686 ;
	setAttr ".uvtk[1230]" -type "float2" -0.24122334 0 ;
	setAttr ".uvtk[1231]" -type "float2" 0.23688757 -0.45748606 ;
	setAttr ".uvtk[1232]" -type "float2" 0 0.002491802 ;
	setAttr ".uvtk[1233]" -type "float2" -0.020590544 0 ;
	setAttr ".uvtk[1234]" -type "float2" 0.058347523 0 ;
	setAttr ".uvtk[1235]" -type "float2" 0.24122334 0 ;
	setAttr ".uvtk[1236]" -type "float2" -0.21876498 0.00053730235 ;
	setAttr ".uvtk[1237]" -type "float2" -0.24122334 0 ;
	setAttr ".uvtk[1238]" -type "float2" -0.058347523 0 ;
	setAttr ".uvtk[1239]" -type "float2" 0 -0.002491802 ;
	setAttr ".uvtk[1240]" -type "float2" -0.058347523 0 ;
	setAttr ".uvtk[1241]" -type "float2" -0.24122334 0 ;
	setAttr ".uvtk[1242]" -type "float2" -0.23688757 0.45748603 ;
	setAttr ".uvtk[1243]" -type "float2" 0.24122334 0 ;
	setAttr ".uvtk[1244]" -type "float2" 0.058347523 0 ;
	setAttr ".uvtk[1245]" -type "float2" 0 -0.002491802 ;
	setAttr ".uvtk[1246]" -type "float2" 0.020886898 0.083995223 ;
	setAttr ".uvtk[1247]" -type "float2" -0.08601585 0.073361956 ;
	setAttr ".uvtk[1248]" -type "float2" 0.12452829 0 ;
	setAttr ".uvtk[1249]" -type "float2" 0.066236734 -0.0057299472 ;
	setAttr ".uvtk[1250]" -type "float2" -0.020886898 0.083995223 ;
	setAttr ".uvtk[1251]" -type "float2" 0.058347523 0 ;
	setAttr ".uvtk[1253]" -type "float2" 0.019926786 0 ;
	setAttr ".uvtk[1255]" -type "float2" -0.017101407 7.9512596e-05 ;
	setAttr ".uvtk[1256]" -type "float2" 0.0033367276 0.014239609 ;
	setAttr ".uvtk[1259]" -type "float2" 0.00081861019 0.033814251 ;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "348F8A98-464D-B781-5E5E-02B8F84DC197";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:306]";
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "23825977-44BB-EA58-339F-DDA11BED1594";
	setAttr ".uopa" yes;
	setAttr -s 1260 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.50266838 -0.28664172 -0.078238368
		 0.23185599 0.012630641 -0.044574574 0.013622403 0.22678781 -0.36687255 0.092782721
		 -0.028579384 -0.50412923 -0.18382795 -0.35466486 0.1081991 -0.37586212 0.043488801
		 0.22198319 0.12454556 0.23859522 0.028555632 0.22320551 0.028555632 0.16949826 -0.49462873
		 -0.21720099 0.028555632 0.20413554 0.050285399 0.23912394 0.028555632 0.2291716 0.028555632
		 0.19275022 0.060240716 0.23912573 0.028555632 0.19772792 0.028555632 0.20911327 0.028555632
		 0.21883935 0.028555632 0.21386164 0.043488801 0.21761703 0.013622403 0.22215888 0.043488801
		 0.22198319 0.12479143 -0.37896901 0.11300884 0.23831183 0.028555632 0.22320551 0.043488801
		 0.22794932 0.013622403 0.22678781 -0.42433554 -0.2245599 0.094925165 -0.36787105
		 0.16793166 0.23344877 -0.52894831 0.23420939 -0.47917199 0.23420951 -0.3497526 0.065932199
		 0.16793166 0.22847104 0.14558665 -0.050670996 0.043488801 0.23265854 -0.38137937
		 0.16474861 -0.46589828 0.23420948 -0.56208062 0.19629708 -0.08427316 0.23510674 -0.54719961
		 0.23517257 -0.48083109 0.22923177 -0.59531677 -0.029794529 -0.56047332 0.23388171
		 -0.57526004 0.21645847 0.16129468 0.17356116 0.013622403 0.23135644 -0.26325268 0.22065133
		 0.043488801 0.23265854 -0.057725221 0.23527041 -0.37321919 -0.050073609 -0.603845
		 0.18501341 0.028555632 0.23301458 -0.58038384 0.21505946 -0.56047332 0.23388171 -0.044451237
		 0.23527086 -0.59028304 0.0020068735 0.16793166 0.23344877 -0.16723548 0.23309052
		 -0.52894831 0.23420939 -0.47917199 0.23420951 0.1447023 0.2342096 -0.08427316 0.23510674
		 -0.54719961 0.23517257 -0.46589828 0.23420948 -0.057725221 0.23527041 0.071695834
		 0.23810315 -0.067905277 0.21667561 -0.089250892 0.2345922 -0.25904781 0.22997361
		 0.078208029 0.23944312 -0.11739852 -0.41062462 -0.62982154 -0.18542656 -0.63175327
		 -0.21440545 -0.31514364 0.14857298 0.028555632 0.13524662 -0.48580885 0.23291865
		 -0.6346035 0.2398431 -0.64872175 -0.35817999 -0.56207114 -0.41860402 -0.13963412
		 -0.14305469 -0.46447951 0.20288989 -0.15531541 0.23202065 -0.56109565 0.22805655
		 -0.46703136 0.20504165 -0.58458292 -0.34530002 -0.15728001 0.23679802 0.10401024
		 0.23165476 0.027644277 0.15232378 -0.64830136 -0.4141863 -0.42109948 -0.38378024
		 -0.59546816 -0.28814071 -0.42253256 -0.42063701 -0.61201453 -0.23866844 -0.58422315
		 0.1481179 -0.62684178 -0.24608892 -0.45401984 0.15715432 -0.18050946 -0.40532821
		 -0.6592716 0.22089773 -0.24575175 0.1797103 0.13619231 0.21589959 -0.22530909 -0.4053874
		 -0.23909552 0.23637581 -0.59234947 -0.31680524 -0.5419398 0.23619357 -0.58038384
		 -0.40533113 0.0045986474 0.23498896 -0.13949551 -0.35876894 -0.20247857 -0.40137297
		 -0.47917199 -0.40538764 -0.39925343 0.1909582 0.028545678 0.16270518 0.028555632
		 0.16051644 -0.65883708 0.015870854 -0.47280741 -0.41641521 0.037056625 0.00010208786
		 0.040170312 0.20121515 -0.56876934 -0.40791965 -0.63432336 -0.042519704 -0.1290728
		 -0.40713501 -0.61026812 0.23260593 -0.39123362 0.2407887 -0.23112492 -0.11563674
		 -0.16756858 0.22743487 -0.15562074 -0.39651704 0.082479 0.19433218 -0.39952976 -0.40908396
		 0.086628988 -0.41048902 -0.61190891 -0.40807033 -0.0013108253 0.23777986 -0.15470414
		 -0.38049245 -0.1677738 0.22160313 -0.036906332 0.23758295 -0.66106021 -0.14291248
		 0.028402984 0.13527845 -0.3186456 0.22379333 -0.27564985 -0.082005605 -0.55383646
		 0.23746443 0.1081991 0.23813534 -0.27508652 0.23752943 -0.16365309 -0.13749138 -0.092545688
		 0.1828658 -0.56379175 0.2386249 -0.077636182 0.23808458 -0.25683481 0.24035764 -0.42109948
		 0.24042252 -0.65338922 0.24004838 -0.50685489 0.23515111 0.0086446404 0.2403563 0.1579762
		 -0.39796293 0.1397246 -0.38185966 -0.37407303 0.22414571 -0.20800616 0.21449214 -0.31822693
		 0.23752853 -0.54719961 0.23975626 -0.12243582 -0.40848821 -0.19856031 -0.40743053
		 -0.60905182 -0.078772828 0.028555632 0.238399 -0.27555609 0.091131821 -0.22033136
		 0.21533737 -0.31800103 -0.10508011 -0.53226674 0.23839977 -0.35004467 0.15969217
		 -0.069342792 0.12336366 -0.41726226 0.2384153 -0.45428371 0.19725782 -0.22228043
		 0.17164645 -0.44266927 0.23943102 -0.40948504 0.24028334 0.0036669075 0.24022332
		 0.1397246 -0.3869704 -0.35804886 0.24016231 -0.58536154 0.23949811 -0.20705737 -0.40853983
		 -0.60527205 -0.40791994 -0.60527205 -0.40791994 -0.34958142 0.20744684 0.1397246
		 -0.39218277 -0.30661219 0.23949799 -0.48746794 0.23998868 0.1397246 -0.39672661 -0.10916184
		 -0.020867422 0.0036669075 0.24022332 -0.10455789 0.23014587 -0.42109948 0.24042252
		 -0.44266927 0.22321025 -0.40948504 0.24028334 -0.64779556 0.076269791 -0.40450734
		 0.24027503 -0.298316 0.23998934 -0.66002607 0.24035853 -0.1240951 -0.39881802 -0.39952976
		 0.24042347 -0.3115899 0.13256334 -0.20705737 -0.40853983 0.0048795342 0.16819575
		 0.1579762 -0.39796293 -0.58584356 0.16957921 -0.58536154 0.23949811 -0.098450109
		 0.17035499 0.16129468 -0.40885162 -0.59455788 0.21651089 0.16129468 -0.40885162 0.0097773075
		 0.21567762 -0.20705737 -0.40853983 -0.48746794 0.23998868 -0.30661219 0.23949799
		 0.1397246 -0.39218277 0.1397246 -0.39672661 -0.1240951 -0.39881802 -0.66002607 0.24035853
		 -0.298316 0.23998934 -0.39952976 0.24042347 -0.3525722 0.23517841 -0.27474546 0.21904734
		 0.15846126 -0.35055369 -0.087591648 0.23963383 -0.11082111 0.24004859 -0.12243582
		 -0.40848821 -0.066663444 0.21081153 0.15846132 -0.3762269 -0.29001969 0.22453907
		 -0.63985336 -0.39757192 -0.38107735 0.22893441 -0.61122543 -0.40351784 -0.4110989
		 -0.40975595 -0.56711018 0.22677118 -0.60195363 -0.39584082 -0.57487011 0.22333965
		 -0.087591648 0.23963383 -0.59643978 -0.41459727 -0.15562074 -0.40927386 0.16101275
		 -0.38959479 -0.44704336 -0.40422976 -0.22390004 0.22550294 0.17622785 -0.3615163
		 -0.042791992 0.23963434 0.16984861 -0.35445642 -0.26231825 0.17295957 -0.067938805
		 0.16275793 -0.042791992 0.23963434 -0.47917199 -0.40012437 -0.44930613 0.13701476
		 -0.16807403 0.14053634 -0.54757226 0.18899378 0.02831763 0.12518595;
	setAttr ".uvtk[250:499]" -0.0045800209 0.18541729 -0.47917199 -0.40538764 -0.2210788
		 -0.41042036 -0.60295451 0.19921413 0.027875245 0.097590908 0.0064800978 0.13190649
		 -0.50050044 0.19422188 -0.22530909 -0.4053874 0.13285737 0.23631284 0.027866244 0.1045493
		 -0.15562074 -0.40361673 -0.52431405 0.22536984 -0.28746098 0.23079622 -0.16866739
		 0.1194533 -0.6168865 0.24010363 -0.61854577 -0.37477016 -0.16723548 0.19475672 -0.65101451
		 -0.36362642 -0.16909097 0.21345702 -0.18559943 -0.38845539 -0.16723548 0.18754643
		 0.10502319 0.22135335 -0.45096529 -0.40889829 -0.54878342 0.21991381 -0.59407693
		 -0.36195248 -0.27619666 0.18599424 0.16302501 0.21331736 -0.16800125 0.15086615 0.028501928
		 0.11299662 -0.46774781 -0.3523618 -0.66015369 0.20167604 0.028038323 0.119204 -0.59531683
		 0.23476604 0.027742922 0.086863324 -0.13323621 -0.4035694 -0.083170235 -0.040532187
		 -0.16887327 0.20327336 -0.44421828 -0.079970464 -0.16958092 0.18891639 -0.16810189
		 0.13447039 -0.47087586 0.17098701 -0.091749877 0.22567081 -0.42703933 0.028443918
		 -0.16934036 0.19608068 -0.16581495 -0.35546702 -0.25117517 0.23911834 -0.47348613
		 -0.097654089 -0.12024365 0.2388899 -0.022500038 -0.018750235 -0.16723548 0.21202844
		 -0.39918101 0.15144408 -0.09370181 0.20560864 -0.1605985 -0.40713602 -0.52187485
		 -0.14385656 -0.63679707 -0.40791965 0.1397246 -0.40712696 -0.16723548 0.15808335
		 -0.027858794 0.2058861 -0.46226728 -0.32159048 -0.42663825 0.2366159 -0.59965777
		 -0.3908093 -0.36364716 -0.31352866 -0.33950108 -0.0869634 -0.002813518 0.2383005
		 -0.66002607 -0.40959132 -0.317092 0.22326156 -0.1655762 -0.41033244 -0.13405053 -0.41041577
		 -0.16962256 0.22618699 -0.15630074 0.23169252 -0.2867012 0.23153481 -0.4663536 0.11162443
		 -0.16723548 0.1405938 -0.65579331 -0.20747343 -0.55708092 0.23139301 -0.45997024
		 0.084351346 -0.47917199 -0.40012437 -0.66002607 -0.40450644 -0.50012833 0.19407666
		 0.027998865 0.13259046 0.09323442 -0.417575 -0.66108775 -0.17331907 -0.1690359 0.15079528
		 -0.66002607 -0.40450644 -0.1240951 -0.40392768 -0.26015329 0.16303378 -0.29455632
		 0.23850256 -0.11165999 -0.18517879 -0.62518263 0.2298564 0.027851403 0.13262121 -0.48620558
		 0.23307529 -0.66002607 -0.40450644 -0.47917199 -0.40012437 -0.6009931 -0.3348096
		 -0.15230228 0.22215211 -0.31949472 0.19887072 -0.56149757 -0.40977472 -0.56152081
		 0.22789305 0.16009699 0.2085835 -0.1240951 -0.40392768 -0.66002607 -0.40450644 -0.54719961
		 0.18913537 -0.56153756 -0.41039246 -0.23107375 0.19856778 0.02764672 0.11299817 0.16461317
		 0.18093979 0.028555632 0.10454802 -0.25014836 0.22761449 0.15042673 0.23814702 -0.63428432
		 -0.14124534 0.091917813 -0.40705061 -0.62592375 0.24042857 -0.63445711 -0.14490631
		 -0.23528434 0.23728928 -0.10750262 -0.21966672 -0.39455205 0.23620346 -0.13517697
		 -0.18002912 -0.39455205 0.23620346 -0.25683481 0.23469377 -0.6335634 0.22927645 -0.25683481
		 0.23469377 0.013622403 0.23623306 -0.18614303 0.23916626 -0.14625023 0.23929349 -0.63692617
		 -0.19721189 -0.66078889 0.22218746 -0.30135465 0.16945142 -0.39455205 0.23620346
		 0.15389363 0.23993659 -0.25683481 0.23469377 -0.39455205 0.23620346 -0.22530909 0.14858046
		 -0.36136729 0.23586985 -0.29831594 0.12128209 -0.36136729 0.23586985 -0.55546045
		 0.23255026 -0.40625131 0.21326876 -0.32249981 -0.1884459 -0.11352263 0.22911972 -0.16723548
		 0.22604844 -0.17719094 -0.41033256 0.084655046 -0.070871815 -0.16650866 -0.37719268
		 -0.31455094 0.23484474 -0.24853855 0.17528552 -0.40244895 0.23329249 -0.17423616
		 -0.40862358 0.084468544 -0.048142865 -0.1655762 -0.41033244 -0.16795261 0.21426862
		 -0.31324917 0.23441151 -0.16847838 0.21157265 -0.1655762 -0.41033244 -0.0013108253
		 -0.022637263 -0.49133039 -0.10968895 -0.17719094 -0.41033256 -0.057725221 0.23527041
		 -0.10750262 0.23459211 -0.12108539 -0.39474338 -0.089250892 0.2345922 -0.044451237
		 0.23527086 -0.25517553 0.20193449 -0.40782577 0.22591427 0.028555632 0.17349586 -0.30524313
		 -0.48328003 0.028555632 0.17847359 0.013622403 0.22678781 0.056725979 -0.34920382
		 0.043488801 0.22794932 -0.40782577 0.22591427 0.007620424 -0.52642775 0.013622403
		 0.22678781 0.028555632 0.2291716 -0.35141182 -0.36244309 -0.57540631 -0.40957892
		 -0.057934105 -0.25835568 -0.65624982 -0.050862685 -0.57540631 -0.40957892 -0.1655762
		 -0.41033244 -0.39952976 -0.40908396 -0.17719094 -0.41033256 -0.0067017972 0.22739911
		 -0.16811763 0.19687104 -0.66002607 -0.40959132 -0.40411508 0.031350926 -0.39952976
		 0.23301545 -0.2516799 0.1752463 -0.2447101 0.22943127 -0.16723548 0.22021773 -0.13405053
		 -0.41041577 -0.1411659 -0.13763914 -0.039905906 0.23403057 -0.63771641 -0.38791418
		 -0.0052767992 0.22691768 -0.31992304 -0.18664858 -0.40343374 0.21245643 -0.63012564
		 -0.35362035 -0.032228768 0.20713484 -0.14029698 0.23977548 -0.66002607 -0.40959132
		 -0.1684538 0.19393763 -0.45740688 0.19656608 -0.1778468 0.23814344 -0.13637127 0.23748532
		 -0.086217791 0.15051767 -0.16365309 0.23813337 -0.1746486 0.23820654 -0.6401155 0.23895127
		 -0.15230228 0.20824555 -0.6401155 0.23895127 -0.64675236 0.238159 -0.38127828 0.23623392
		 -0.16723548 -0.13734528 -0.13736902 -0.13495561 -0.17872994 -0.13511494 -0.46453571
		 0.22874877 -0.16974048 0.2203438 -0.14898379 -0.33947963 0.17788707 -0.40806961 -0.13405053
		 -0.41041577 -0.61190891 -0.40807033 -0.34311563 -0.28016877 -0.57540631 -0.40957892
		 -0.65842968 -0.092576221 -0.2731294 -0.078550145 -0.65867209 -0.097216323 0.17788707
		 -0.40806961 -0.25238234 0.23808303 -0.16918518 0.21897659 -0.24356081 0.23040161
		 0.17788707 -0.40806961 -0.33447462 -0.13226059 -0.60324931 -0.18160203 -0.39952976
		 -0.40908396 -0.12148209 0.2378116 -0.16896968 0.22500372 -0.11248033 0.23001182 -0.39952976
		 -0.40908396 -0.32652313 -0.33265495 -0.61190891 -0.40807033 -0.60175329 -0.18600109
		 -0.15064304 -0.38183403 -0.087041974 -0.28830129 -0.57540631 -0.40957892 -0.14870186
		 0.17992288 -0.13405053 -0.41041577 0.17788707 -0.40806961 -0.37348485 -0.24617893
		 -0.61190891 -0.40807033 -0.66002607 -0.40959132;
	setAttr ".uvtk[500:749]" -0.13128822 -0.078826591 -0.5870207 -0.22932303 -0.61669785
		 -0.14205584 0.086628973 -0.31145 -0.17719094 -0.41033256 0.15963547 -0.40330166 -0.15562074
		 -0.40361673 -0.1514167 -0.41343284 -0.42109948 0.2306073 -0.57374698 -0.40527743
		 0.079887271 -0.4186579 0.027448595 0.14247948 -0.58370227 0.14834058 -0.1957912 -0.37305343
		 0.13972464 -0.402147 0.15963547 -0.40330166 -0.60340846 0.19902265 0.027591884 0.14242554
		 -0.42936653 -0.41578025 -0.1154152 -0.35665798 0.028555632 0.11919926 -0.17719094
		 -0.36400604 0.027957052 0.12518929 -0.10750262 -0.32805574 -0.64431667 0.23390204
		 -0.15230228 0.23673901 -0.6401155 0.23193786 -0.15728001 0.23679802 -0.62678945 -0.34958887
		 -0.42713422 0.23611391 0.0086446404 0.23330635 -0.61319005 -0.23515362 0.028407216
		 0.14503491 -0.42320752 -0.40713233 0.028555632 0.14497906 -0.6583668 0.2355535 -0.15230228
		 0.23673901 -0.14923905 -0.39398956 -0.12575434 -0.13798961 -0.17043366 -0.13740847
		 -0.38127828 0.23623392 -0.6583668 0.2355535 -0.4161219 -0.41214931 -0.50074166 0.18441063
		 -0.15562074 -0.40361673 0.15963547 -0.40330166 -0.0050675273 0.18533126 0.028433204
		 0.1547938 -0.45311463 0.22669104 -0.55051804 -0.38318574 0.028555632 0.086876139
		 -0.51836741 0.19523436 0.02722919 0.097580686 -0.55735987 -0.35808349 -0.60570693
		 0.20376465 0.15963547 -0.40330166 0.13972464 -0.402147 -0.44993579 -0.36287624 0.1081991
		 0.22667041 -0.4551779 -0.34662396 -0.6482439 -0.40045416 0.028555632 0.15474761 0.0069853961
		 0.1319931 0.10364889 0.23131961 -0.40417194 0.19289228 -0.15230228 0.23673901 -0.43055838
		 -0.35037953 -0.15728001 0.23679802 -0.61054081 0.20554492 -0.089250892 0.2345922
		 -0.40782577 0.236312 -0.45138365 0.24030221 -0.36279345 0.18964717 0.070861906 -0.34275877
		 -0.51899302 0.16598886 -0.55051804 -0.40190929 -0.43935084 0.23552611 -0.10750262
		 0.23459211 -0.072925121 0.23854837 0.028554678 0.16165984 -0.1290728 -0.40713501
		 -0.53049874 0.12330745 0.067909151 0.19519407 -0.20705737 -0.40853983 0.1397246 -0.3869704
		 -0.22376828 0.17171282 -0.077636182 0.23808458 -0.34809333 0.20738596 0.013622403
		 0.21528098 -0.44753152 0.17974699 0.1397246 -0.3869704 -0.15562074 -0.40927386 -0.40450734
		 0.24027503 -0.45137298 0.18017671 -0.60197759 -0.40207434 -0.4997803 0.23837331 -0.40450734
		 0.24027503 0.1648405 -0.35761362 0.17143111 -0.38597608 -0.4941048 0.22591218 -0.06104371
		 0.20999116 -0.29681551 0.18133575 0.17788707 -0.40456283 -0.21135147 0.24065828 -0.63160259
		 -0.39025331 -0.30242586 0.18221825 -0.19083221 -0.39612693 -0.44074845 -0.39966828
		 -0.61854577 -0.40497297 -0.12243582 -0.40848821 -0.31822693 0.23752853 -0.43271399
		 -0.41075617 -0.58040792 0.23586267 -0.33551711 0.23915786 -0.31822693 0.23752853
		 0.1648405 -0.33194035 -0.64988989 -0.37523645 -0.32984161 0.22669661 -0.26926202
		 0.22052592 -0.33481938 0.19480765 -0.64343393 -0.39382333 -0.62377393 -0.38836253
		 -0.41590488 -0.3877176 -0.34026933 0.19321001 -0.37334931 0.24023789 -0.27614188
		 0.22892892 -0.40284818 -0.40243727 0.16129468 -0.40885162 -0.24356081 0.23948914
		 -0.26810747 0.2400167 -0.59075737 0.21721652 -0.095887914 0.18727937 -0.24356081
		 0.23948914 -0.60527205 -0.40791994 0.0036669075 0.24022332 -0.099676564 0.18651307
		 -0.27296788 0.047448859 0.0036669075 0.24022332 -0.46141261 0.22944063 -0.1755317
		 -0.13505152 -0.19046493 0.23979238 -0.27508652 0.23752943 -0.086901844 0.21313059
		 -0.36608094 -0.1055394 -0.56379175 0.2386249 -0.077636182 0.23808458 -0.35307109
		 0.23943251 -0.36756402 -0.10540341 -0.22181921 0.21540374 -0.063521236 -0.16483298
		 -0.35307109 0.23943251 0.1397246 -0.3869704 -0.25683481 0.24035764 -0.067369699 -0.16447118
		 -0.44651079 0.22364002 -0.10584338 0.24004853 -0.48249042 0.23905209 0.043488801
		 0.23747385 -0.25683481 0.24035764 -0.40450734 0.24027503 -0.057725221 0.23963389
		 -0.10584338 0.24004853 -0.50117946 0.22268999 -0.057725221 0.23963389 0.16746871
		 -0.40818161 -0.057725221 0.23963389 -0.29563004 0.22542155 -0.10584338 0.24004853
		 -0.057725221 0.23963389 -0.6267966 -0.41229171 -0.48249042 0.23905209 -0.10584338
		 0.24004853 -0.43900895 -0.41531765 -0.092569381 0.23918617 -0.19710191 0.23918727
		 -0.57264793 0.2392942 -0.19710191 0.23918727 -0.082613915 0.23963383 0.17622785 -0.33584303
		 -0.082613915 0.23963383 -0.25683481 0.17443812 -0.082613915 0.23963383 -0.61450207
		 -0.38068557 -0.082613915 0.23963383 -0.19710191 0.23918727 -0.36634505 0.23544919
		 -0.19710191 0.23918727 -0.092569381 0.23918617 0.16461317 0.23752818 0.0086446404
		 0.2403563 0.16129468 -0.40885162 0.0086446404 0.2403563 -0.1269526 0.23952472 -0.58204311
		 0.17028493 -0.1307653 0.23888814 -0.20207964 0.23943114 -0.60527205 -0.40791994 -0.20207964
		 0.23943114 -0.41579235 0.23865446 -0.27176803 -0.00026957691 -0.63679707 -0.40791965
		 -0.169145 0.18658572 -0.47946769 -0.38851136 -0.16943438 0.15632594 -0.56876934 -0.40791965
		 0.036807001 -0.01835449 0.10419856 0.17669404 -0.61866629 0.23988587 -0.100931 0.23731497
		 -0.17042054 0.15867022 0.1081991 0.20690513 -0.57552493 -0.25185812 0.1064726 0.20102459
		 -0.45650667 -0.38556993 0.10683469 0.2065796 -0.16768934 0.18993255 -0.63679707 -0.40791965
		 -0.46705371 -0.074620083 0.1397246 -0.40712696 -0.43461889 0.23883232 -0.60164011
		 -0.32638246 0.1397246 -0.40712696 -0.63679707 -0.40791965 -0.49431145 0.17006171
		 -0.56876934 -0.40791965 -0.20207964 -0.40712637 -0.56876934 -0.40791965 -0.20207964
		 -0.40712637 -0.65547836 0.19336823 0.039384186 -0.21963835 -0.33851403 0.18052435
		 -0.62684178 0.22636628 -0.20207964 -0.40712637 -0.090910137 0.22643289 0.10598426
		 0.17684662 0.12689607 -0.41439795 -0.16988729 0.20504743 -0.096725568 0.22029164
		 -0.1605985 -0.40713602 -0.38766843 0.20089144 -0.33647859 0.18252429 -0.63273215
		 -0.040153161 -0.16815414 0.16047317 -0.10197963 0.23638335 -0.20207964 -0.40712637
		 -0.49612033 -0.10802843 -0.60527205 0.23494625 0.10393439 -0.40839708 0.1081991 0.20054373
		 -0.57374698 -0.25162613;
	setAttr ".uvtk[750:999]" -0.44764686 0.15499184 -0.54628789 0.16555616 -0.1290728
		 -0.40713501 -0.16925918 0.13443272 0.1397246 -0.40712696 -0.58370227 -0.28610367
		 -0.44983804 0.15681976 -0.66096711 0.017766997 -0.60702717 0.23140869 -0.16723548
		 0.11948515 -0.1290728 -0.40713501 -0.051489115 0.23756161 0.10391746 0.22110182 -0.4161219
		 0.19877216 0.028441787 0.16051593 -0.1605985 -0.40713602 -0.092569381 0.20585009
		 -0.26092732 -0.14953068 0.028431773 0.16270471 -0.032836497 0.19646341 -0.55109149
		 -0.41051823 -0.53720158 0.21550635 -0.62500203 -0.31353039 -0.55112684 -0.41106296
		 -0.45875591 0.23561868 0.027517498 0.15237164 -0.34936363 0.13341688 -0.65499085
		 -0.40864617 -0.63262665 0.1785087 -0.35173219 0.13106488 0.034288704 0.23774481 0.18030243
		 0.23944515 0.013622403 0.23623306 -0.25683481 0.23469377 -0.55166554 -0.41958416
		 -0.36136729 0.23586985 -0.43935084 0.23552611 -0.56096309 -0.40153581 -0.6583668
		 0.2355535 -0.38127828 0.23623392 0.18452404 -0.543486 0.030592263 -0.2560181 -0.65999651
		 0.13767175 -0.15230228 0.23673901 -0.6583668 0.2355535 -0.64177477 -0.40579277 0.13142841
		 -0.39123797 -0.21033292 0.12575106 -0.095327958 0.22060466 -0.060146272 -0.044514105
		 0.028416216 0.16165489 -0.39123362 0.2407887 0.028416634 0.16156557 -0.18714644 0.12286238
		 -0.16723548 0.20399025 -0.58038384 -0.40533113 -0.12568308 -0.37379587 -0.58038384
		 -0.40533113 -0.15562074 -0.40361673 -0.15728001 0.23679802 -0.007457912 0.20698863
		 -0.10750262 -0.36393231 -0.5995391 0.23631856 -0.15728001 0.23679802 -0.58038384
		 -0.40533113 -0.0035835207 0.20537671 -0.42144513 0.23025736 -0.47917199 -0.40538764
		 0.13972464 -0.402147 -0.42773628 -0.40215647 0.13972464 -0.402147 -0.65587932 0.19967839
		 -0.15230228 0.23673901 -0.47917199 -0.40538764 -0.15230228 0.23673901 -0.38459677
		 0.2307196 -0.44554836 -0.39164197 -0.3897773 0.23275986 0.10791181 0.22640401 -0.22530909
		 -0.4053874 -0.1240951 -0.40392768 -0.26033461 0.12416373 -0.1240951 -0.40392768 0.16627239
		 0.21499279 -0.39455205 0.23620346 -0.22530909 -0.4053874 -0.22862761 0.21026611 -0.2939437
		 0.23909813 -0.39455205 0.23620346 -0.23217936 0.20941404 -0.27218169 0.14111871 -0.18050946
		 -0.40532821 -0.5672397 -0.37661707 -0.65155369 0.23292705 -0.15310083 0.22188619
		 -0.18050946 -0.40532821 -0.47917199 -0.40012437 -0.54719961 0.2210449 -0.36136729
		 0.23586985 -0.18050946 -0.40532821 -0.36136729 0.23586985 -0.65007079 0.23166656
		 -0.5621326 -0.39666051 0.025237143 -0.10926946 -0.35804886 0.24016231 -0.66002607
		 0.24035853 -0.1240951 -0.39881802 -0.31376183 0.0061768144 0.1579762 -0.39796293
		 -0.31870455 -0.022031173 -0.46257985 0.23859906 -0.49244565 0.23832956 -0.1240951
		 -0.39881802 0.1397246 -0.38185966 0.019891262 -0.1702688 -0.31777865 0.071643546
		 -0.49244565 0.23832956 -0.47751272 0.23952416 0.1579762 -0.39796293 -0.017903298
		 0.24043626 -0.25683481 0.24035764 0.1397246 -0.39672661 0.1397246 -0.39218277 -0.63016021
		 0.16827425 -0.40948504 0.24028334 -0.63089913 0.13964599 0.14138387 0.2387633 -0.16723548
		 0.23832944 0.1397246 -0.39218277 -0.35307109 0.23943251 -0.019774675 0.1792317 -0.65378809
		 0.015330449 -0.16723548 0.23832944 -0.38625598 0.23783922 -0.40948504 0.24028334
		 0.018429518 0.23764649 0.1397246 -0.38185966 -0.15562074 -0.40927386 -0.35804886
		 0.24016231 0.022293806 0.23755279 0.0087246299 0.16779917 -0.47751272 0.23952416
		 0.16461317 0.23752818 0.1397246 -0.38185966 0.16461317 0.23752818 -0.092569381 0.23918617
		 -0.11082111 0.24004859 -0.59421772 -0.39864284 -0.15562074 -0.40927386 -0.3515327
		 0.15975302 -0.28153843 0.2389681 -0.35804886 0.24016231 -0.31960481 -0.10577075 -0.53226674
		 0.23839977 -0.46257985 0.23859906 -0.66002607 0.24035853 0.043488801 0.23747385 0.14138387
		 0.2387633 0.1397246 -0.39672661 -0.38625598 0.23783922 0.028555632 0.238399 -0.32460451
		 0.23875999 -0.35307109 0.23943251 -0.070999175 -0.1645374 0.0086446404 0.2403563
		 -0.39952976 0.24042347 -0.298316 0.23998934 -0.074317694 0.079837367 -0.58536154
		 0.23949811 -0.086102724 0.10593779 -0.47751272 0.23952416 -0.49244565 0.23832956
		 -0.298316 0.23998934 -0.20207964 0.23943114 -0.084875524 -0.10489734 -0.11955623
		 0.22783583 -0.49244565 0.23832956 -0.46257985 0.23859906 -0.58536154 0.23949811 -0.013352096
		 0.17794669 -0.44266927 0.23943102 -0.30661219 0.23949799 -0.48746794 0.23998868 -0.12115206
		 0.10496776 -0.42109948 0.24042252 -0.11939822 0.13355176 -0.38625598 0.23783922 -0.16723548
		 0.23832944 -0.48746794 0.23998868 -0.65338922 0.24004838 -0.012150764 0.23916808
		 -0.10983174 0.040362224 -0.16723548 0.23832944 0.14138387 0.2387633 -0.42109948 0.24042252
		 0.016940892 -0.16771105 -0.65338922 0.24004838 -0.24356081 0.23948914 -0.44266927
		 0.23943102 0.013079107 -0.16787937 -0.10834663 0.22937956 0.16461317 0.23752818 -0.47751272
		 0.23952416 -0.39952976 0.24042347 -0.46257985 0.23859906 -0.53226674 0.23839977 -0.37132281
		 -0.10531704 -0.20207964 0.23943114 0.14138387 0.2387633 0.043488801 0.23747385 -0.65338922
		 0.24004838 0.043488801 0.23747385 -0.48249042 0.23905209 -0.54719961 0.23975626 -0.26181251
		 0.23545527 -0.24356081 0.23948914 -0.27406728 0.091169223 -0.47222102 0.23899448
		 -0.44266927 0.23943102 -0.61078829 -0.078956828 0.028555632 0.238399 -0.38625598
		 0.23783922 -0.30661219 0.23949799 0.16984861 -0.38012958 -0.042791992 0.23963434
		 -0.20207964 0.23298126 -0.073558599 0.16357833 -0.11082111 0.24004859 -0.18382795
		 -0.40091568 -0.21462826 0.21782589 -0.58867997 -0.41116577 -0.11082111 0.24004859
		 -0.042791992 0.23963434 -0.42415577 -0.39503622 -0.087591648 0.23963383 -0.65385246
		 -0.3974421 -0.34712219 0.23677605 -0.54719961 0.23975626 -0.33691633 0.22347444 -0.66030842
		 -0.37885517 -0.26984692 0.2243675 -0.54719961 0.23975626 -0.087591648 0.23963383
		 -0.092569381 0.23918617 -0.12243582 -0.40848821 -0.19155602 -0.41221917 -0.48249042
		 0.23905209 -0.31822693 0.23752853 -0.34259182 0.23593566 -0.6401155 0.23895127;
	setAttr ".uvtk[1000:1249]" -0.069339931 0.12336667 -0.27325684 -0.00030697882
		 -0.077636182 0.23808458 0.1081991 0.23813534 -0.28006423 0.2387563 -0.64675236 0.238159
		 -0.6401155 0.23895127 -0.37293917 -0.10465635 0.1081991 0.23813534 -0.64675236 0.238159
		 -0.53226674 0.23839977 -0.086900741 0.21312413 -0.27508652 0.23752943 -0.47087586
		 0.23835513 -0.27508652 0.23752943 -0.55383646 0.23746443 0.028555632 0.238399 -0.55383646
		 0.23746443 -0.56379175 0.2386249 -0.32320464 0.23771608 0.1466652 -0.19725397 0.1081991
		 0.23813534 0.14622681 -0.54317677 0.18132524 -0.54350322 -0.38127828 0.23623392 -0.64675236
		 0.238159 0.14978246 -0.10583894 -0.077636182 0.23808458 -0.27530676 -0.12482116 -0.18294479
		 0.23922962 0.013622403 0.23623306 -0.55383646 0.23746443 0.013622403 0.23623306 0.17710368
		 0.23942786 0.17290936 0.23931032 -0.56379175 0.2386249 -0.11257739 -0.3896178 -0.10750262
		 0.23459211 -0.43935084 0.23552611 0.10053961 -0.40594846 -0.63181949 -0.089025661
		 0.079929024 -0.40493011 -0.40782577 0.236312 -0.089250892 0.2345922 -0.10750262 -0.4114778
		 0.083098829 -0.35662496 0.067254394 -0.29983431 -0.35638958 0.23338592 -0.1605985
		 -0.40713602 -0.40782577 0.236312 0.073407918 -0.41330099 -0.60214067 -0.36335236
		 -0.44598764 0.2312015 -0.40782577 0.236312 -0.15728001 0.23679802 0.10156213 -0.41652513
		 -0.43935084 0.23552611 -0.36136729 0.23586985 -0.059384465 0.22177982 -0.58453798
		 0.20571443 -0.044451237 0.23527086 -0.58856261 0.23373213 -0.063031346 0.2376703
		 -0.10750262 0.23459211 -0.39455205 0.23089209 -0.16900577 0.17746806 0.099786222
		 -0.37170839 0.00366503 0.06825529 -0.26174968 0.20976818 0.013622403 0.13756947 -0.51602101
		 0.23937589 -0.22433503 0.24072766 -0.40782577 0.23055428 -0.057725221 0.23527041
		 -0.40782577 0.23055428 -0.028704941 0.22687486 -0.087361455 0.22966546 0.13580732
		 0.070568725 -0.58194602 0.22593433 0.13624208 0.00054432452 -0.31729692 0.20416358
		 -0.16900463 0.17087877 -0.39455205 0.23089209 -0.044451237 0.23527086 0.1447023 0.2342096
		 -0.46589828 0.23420948 -0.54719961 0.23517257 -0.55556482 0.19725049 -0.08427316
		 0.23510674 -0.54056275 0.094719484 -0.50074166 0.21080619 0.0098256171 0.12454881
		 -0.54719961 0.23517257 0.1447023 0.2342096 -0.54707867 0.093766078 0.0036871433 0.081818208
		 0.086156011 -0.40110058 -0.08427316 0.23510674 -0.3627463 0.072216764 -0.50644344
		 0.20757553 -0.46589828 0.23420948 0.092032254 -0.40400183 -0.35970807 0.005634293
		 0.1447023 0.2342096 -0.16723548 0.23309052 -0.47917199 0.23420951 -0.52894831 0.23420939
		 -0.35631579 0.065393969 0.16793166 0.23344877 -0.36478484 0.16867003 -0.30795366
		 0.23518592 0.13806538 0.013984129 -0.52894831 0.23420939 -0.16723548 0.23309052 -0.35822159
		 0.16920823 0.13779734 0.057152584 -0.079030752 0.19835594 0.16793166 0.23344877 -0.07265842
		 0.19988599 0.010247827 0.04283534 -0.16723548 0.23309052 0.0096364617 -0.02381359
		 -0.30163443 0.2334497 -0.47917199 0.23420951 -0.37275714 -0.41344547 0.028555632
		 0.17349586 -0.43935084 0.23002827 -0.2219906 0.23708788 -0.52418423 0.23475054 -0.16723548
		 0.17762813 -0.66002607 0.23088935 0.028555632 0.17847359 -0.25743192 -0.2912814 -0.3619442
		 -0.015221968 -0.024540305 0.2280581 -0.43935084 0.23002827 0.028555632 0.17349586
		 -0.053799391 -0.26172179 0.013622403 0.063537881 -0.10370855 -0.42213696 0.028555632
		 0.17847359 -0.66002607 0.23088935 -0.16723548 0.17105067 -0.30824983 0.20167786 0.028555632
		 0.23301458 -0.56876934 0.21600381 -0.56047332 0.23388171 -0.48083109 0.22923177 -0.6018182
		 -0.030052647 -0.48083109 0.22923177 -0.16916542 0.18097931 -0.39455205 0.23089209
		 -0.56047332 0.23388171 0.028555632 0.23301458 -0.48083109 0.22923177 -0.39455205
		 0.23089209 -0.16850851 0.16739902 -0.61034656 0.18475527 -0.66002607 0.23088935 -0.1679437
		 0.18108979 -0.58379233 0.0015522093 -0.16728754 0.16751772 -0.66002607 0.23088935
		 0.028555632 0.23301458 0.013622403 0.23135644 -0.37487739 0.16499561 0.043488801
		 0.23265854 0.16793166 0.22847104 0.13909589 -0.050216332 0.16793166 0.22847104 -0.03067416
		 0.23520657 -0.40782577 0.23055428 0.043488801 0.23265854 0.013622403 0.23135644 0.16793166
		 0.22847104 -0.40782577 0.23055428 -0.23131801 0.23577446 0.15411882 0.16423529 -0.22920655
		 0.23080042 -0.43935084 0.23002827 0.013622403 0.23135644 -0.43935084 0.23002827 -0.025802881
		 0.23754534 -0.36634505 -0.059624091 -0.50380468 -0.47053942 -0.57785356 -0.3100512
		 0.028555632 0.2291716 -0.54769254 -0.15701541 -0.46092057 -0.2946893 -0.40782577
		 0.22591427 0.028555632 0.19772792 0.028555632 0.18279481 -0.38489366 -0.42468652
		 0.028555632 0.18279481 0.028555632 0.18777251 0.043488801 0.22794932 0.040170312
		 -0.28631258 0.028555632 0.17349586 -0.40782577 0.22591427 0.028555632 0.17847359
		 -0.012374401 -0.45519885 -0.54457045 -0.45846471 0.1132621 -0.37946784 0.028555632
		 0.22320551 0.1397246 -0.37927216 0.028555632 0.16949826 0.043488801 0.22198319 0.028555632
		 0.16949826 0.013622403 0.22215888 0.043488801 0.21761703 0.12818794 -0.37955564 0.08655107
		 0.23800865 0.028555632 0.16949826 0.043488801 0.21761703 0.028555632 0.21883935 0.043488801
		 0.22198319 0.028555632 0.21883935 0.028555632 0.21386164 0.098080397 0.23850739 0.028555632
		 0.21386164 0.013622403 0.22215888 0.028555632 0.22320551 0.028555632 0.20911327 0.05976367
		 -0.28880459 0.043488801 0.21761703 0.061740458 0.23912013 0.028555632 0.20413554
		 0.028555632 0.21883935 0.028555632 0.20413554 0.048308581 -0.28880286 0.028555632
		 0.21386164 0.051784962 0.23911411 0.028555632 0.20911327 0.013622403 0.22215888 0.028555632
		 0.19772792 0.028555632 0.19275022 0.058264017 -0.28879899 0.028555632 0.19275022
		 0.028555632 0.18777251 0.028555632 0.20413554 0.028555632 0.18777251 0.028555632
		 0.18279481 0.046808928 -0.28879297 0.028555632 0.18279481 0.028555632 0.19772792
		 0.028555632 0.20911327 0.028555632 0.2291716 -0.5278765 -0.3600269 0.028555632 0.19275022
		 -0.48249042 -0.12973979;
	setAttr ".uvtk[1250:1259]" 0.043488801 0.22794932 0.028555632 0.18777251 -0.23828186
		 -0.23319143 -0.39123362 0.2407887 -0.23828186 -0.23319143 0.067737132 -0.062489763
		 0.11041366 -0.38574582 -0.23828186 -0.23319143 -0.23828186 -0.23319143 -0.60818326
		 0.2368539;
createNode deleteComponent -n "deleteComponent53";
	rename -uid "CF0EAAAE-43B4-A69F-5646-BEB2C25EDB42";
	setAttr ".dc" -type "componentList" 1 "f[65]";
createNode polyCloseBorder -n "polyCloseBorder19";
	rename -uid "BC8D4FCD-474F-91DE-6C94-00B7E613E4AB";
	setAttr ".ics" -type "componentList" 3 "e[145:146]" "e[149]" "e[539]";
createNode polySplit -n "polySplit57";
	rename -uid "0C6BA7E2-4697-1084-5A38-01931A40EB61";
	setAttr -s 3 ".e[0:2]"  0 0.47393399 0;
	setAttr -s 3 ".d[0:2]"  -2147483503 -2147483109 -2147483017;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit58";
	rename -uid "F2BEB007-4C05-4E62-15F3-FF985525C9A8";
	setAttr -s 3 ".e[0:2]"  0 0.091895297 1;
	setAttr -s 3 ".d[0:2]"  -2147483013 -2147483010 -2147483499;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit59";
	rename -uid "A17664B7-450F-1CDD-AD95-A48B79F8999F";
	setAttr -s 3 ".e[0:2]"  1 0.51321399 0;
	setAttr -s 3 ".d[0:2]"  -2147483046 -2147483513 -2147483501;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit60";
	rename -uid "12658EBA-4D72-0F40-7190-368C66338CA7";
	setAttr -s 3 ".e[0:2]"  1 0.925937 0;
	setAttr -s 3 ".d[0:2]"  -2147483457 -2147483513 -2147483500;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent54";
	rename -uid "86150088-4BA3-7262-DF3D-EE97F6DBBA9B";
	setAttr ".dc" -type "componentList" 1 "f[82]";
createNode deleteComponent -n "deleteComponent55";
	rename -uid "478206D2-4A87-28B8-F45D-4BA6A74336F3";
	setAttr ".dc" -type "componentList" 1 "f[82]";
createNode deleteComponent -n "deleteComponent56";
	rename -uid "2CA6B64A-4BEA-0A62-1C33-50AC1616D2A0";
	setAttr ".dc" -type "componentList" 1 "f[267]";
createNode deleteComponent -n "deleteComponent57";
	rename -uid "92BA7591-4226-62E5-57F2-7EABF4A0305A";
	setAttr ".dc" -type "componentList" 1 "f[267]";
createNode deleteComponent -n "deleteComponent58";
	rename -uid "CCCF659E-4494-8B11-78EC-2B981C1554D3";
	setAttr ".dc" -type "componentList" 1 "f[268]";
createNode deleteComponent -n "deleteComponent59";
	rename -uid "0D006353-478E-6FA9-E9DE-07898DB877DF";
	setAttr ".dc" -type "componentList" 1 "f[267]";
createNode polyExtrudeEdge -n "polyExtrudeEdge11";
	rename -uid "4C832F6E-4B27-4E3D-F831-0BAED246A518";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[161]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -29.89011 263.30872 0 ;
	setAttr ".rs" 57523;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -29.890110025309298 263.30872428305383 -31.915200530419074 ;
	setAttr ".cbx" -type "double3" -29.890110025309298 263.30872428305383 31.915200530419074 ;
createNode polyTweak -n "polyTweak85";
	rename -uid "C9E55200-4359-9F43-DB91-888D3B2D0E45";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[190]" -type "float3" 0 -0.024105361 0 ;
	setAttr ".tk[191]" -type "float3" 0 0.015977874 0 ;
	setAttr ".tk[194]" -type "float3" 0 -0.024105361 0 ;
	setAttr ".tk[195]" -type "float3" 0 0.015977874 0 ;
	setAttr ".tk[226]" -type "float3" 0 -0.024105361 0 ;
	setAttr ".tk[227]" -type "float3" 0 -0.024105361 0 ;
	setAttr ".tk[230]" -type "float3" 0 0.015977874 0 ;
	setAttr ".tk[231]" -type "float3" 0 0.015977874 0 ;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "7ED038A3-46D2-A4C9-ED7C-2A9F39092C26";
	setAttr ".ics" -type "componentList" 2 "vtx[93]" "vtx[336]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak86";
	rename -uid "93A8F50D-4EFD-AC51-859D-35A982D28701";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[93]" -type "float3" -0.00022244453 0 0 ;
	setAttr ".tk[335]" -type "float3" 0.15215003 0 0 ;
	setAttr ".tk[336]" -type "float3" 0.15237248 0 0 ;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "2C8D61BE-4862-984C-34C8-73A32ADFA719";
	setAttr ".ics" -type "componentList" 2 "vtx[92]" "vtx[335]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak87";
	rename -uid "4EFF5E3D-430C-F0D0-517A-53B31FE7C56E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[92]" -type "float3" -0.0037442446 0 0 ;
	setAttr ".tk[335]" -type "float3" 0.0037441254 0 0 ;
createNode polySplit -n "polySplit61";
	rename -uid "7B4FA18F-4209-9585-C460-D7A6793FDCE8";
	setAttr -s 3 ".e[0:2]"  0.51264399 0.51146501 0.50726801;
	setAttr -s 3 ".d[0:2]"  -2147483002 -2147483487 -2147483512;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit62";
	rename -uid "F2FAF013-4285-F03F-32E0-4E865390F241";
	setAttr -s 3 ".e[0:2]"  0.94139498 0.94066697 0.946679;
	setAttr -s 3 ".d[0:2]"  -2147483002 -2147483487 -2147483512;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent60";
	rename -uid "6C444A73-4319-D66E-BA8A-5CADD342AACC";
	setAttr ".dc" -type "componentList" 1 "f[312]";
createNode deleteComponent -n "deleteComponent61";
	rename -uid "0497AC70-4670-0DFF-B6FE-8F80C68F25A9";
	setAttr ".dc" -type "componentList" 1 "f[203]";
createNode polyBridgeEdge -n "polyBridgeEdge34";
	rename -uid "3A993E2E-4737-20C8-A70B-A0BD8D32FE7B";
	setAttr ".ics" -type "componentList" 2 "e[423]" "e[651]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 230;
	setAttr ".sv2" 336;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge35";
	rename -uid "F5986682-473B-2170-41E6-AB9FCFDC9C99";
	setAttr ".ics" -type "componentList" 2 "e[422]" "e[649]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 231;
	setAttr ".sv2" 335;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge36";
	rename -uid "6805EC96-4F9B-1202-6841-22A0938827F5";
	setAttr ".ics" -type "componentList" 2 "e[421]" "e[653]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 195;
	setAttr ".sv2" 339;
	setAttr ".d" 1;
createNode polyDelEdge -n "polyDelEdge26";
	rename -uid "51EF97EB-4BA4-5AA3-8611-9C82E496B152";
	setAttr ".ics" -type "componentList" 1 "e[421:423]";
	setAttr ".cv" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge12";
	rename -uid "5BBE895C-4C70-A18C-19D6-6D88A8CAB53F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[165]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -39.259514 320.85373 0 ;
	setAttr ".rs" 59290;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.259513977679767 320.85372685165521 -31.915200530419074 ;
	setAttr ".cbx" -type "double3" -39.259513977679767 320.85372685165521 31.915200530419074 ;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "23C283A9-40EA-B881-8461-88A5722CBF94";
	setAttr ".ics" -type "componentList" 2 "vtx[95]" "vtx[338]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak88";
	rename -uid "CE92A7C3-4253-E6BA-299A-9C86B1E10B47";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[95]" -type "float3" -0.0040739775 0 0 ;
	setAttr ".tk[337]" -type "float3" 0.18937714 0 0 ;
	setAttr ".tk[338]" -type "float3" 0.193451 0 0 ;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "925B1069-468F-E8A4-86CF-1EA175D5246B";
	setAttr ".ics" -type "componentList" 2 "vtx[94]" "vtx[337]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak89";
	rename -uid "C85E6A48-442D-A50B-1AEE-AA85A01D341E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[94]" -type "float3" 0.00086987019 0 0 ;
	setAttr ".tk[337]" -type "float3" -0.00086987019 0 0 ;
createNode polySplit -n "polySplit63";
	rename -uid "0D335FE7-4AD9-07B3-6EDD-D0BA42C4B55A";
	setAttr -s 2 ".e[0:1]"  0.51660103 0.51523298;
	setAttr -s 2 ".d[0:1]"  -2147483483 -2147483504;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit64";
	rename -uid "10E36921-4D7A-DCED-B2E6-D88E90600BAE";
	setAttr -s 2 ".e[0:1]"  0.933779 0.94260198;
	setAttr -s 2 ".d[0:1]"  -2147483483 -2147483504;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit65";
	rename -uid "7845EF88-4E5B-95B3-58B4-04A602DF9AB0";
	setAttr -s 2 ".e[0:1]"  0 0.51919001;
	setAttr -s 2 ".d[0:1]"  -2147482995 -2147482996;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit66";
	rename -uid "C4FF79CE-47EA-B4A2-9D3B-86A184A468C1";
	setAttr -s 2 ".e[0:1]"  1 0.93270499;
	setAttr -s 2 ".d[0:1]"  -2147483483 -2147482996;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent62";
	rename -uid "CF7F3198-4A8D-5C6E-FCC1-98AD859B15DF";
	setAttr ".dc" -type "componentList" 1 "f[316]";
createNode deleteComponent -n "deleteComponent63";
	rename -uid "9EA5FB13-42E3-4A19-6212-31B49A8B22BD";
	setAttr ".dc" -type "componentList" 1 "f[198]";
createNode polyBridgeEdge -n "polyBridgeEdge37";
	rename -uid "7556A0F3-435A-5417-3E04-DEBC1418C85A";
	setAttr ".ics" -type "componentList" 2 "e[411]" "e[659]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 190;
	setAttr ".sv2" 337;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge38";
	rename -uid "3F961D13-4D92-0754-2689-0393FB7AF711";
	setAttr ".ics" -type "componentList" 2 "e[409]" "e[660]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 224;
	setAttr ".sv2" 342;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge39";
	rename -uid "06579B22-4A71-9E96-4E60-F287EB13C8A8";
	setAttr ".ics" -type "componentList" 2 "e[412]" "e[655]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 225;
	setAttr ".sv2" 339;
	setAttr ".d" 1;
createNode polyDelEdge -n "polyDelEdge27";
	rename -uid "86B15FE5-4384-63A3-4644-689C88478DBE";
	setAttr ".ics" -type "componentList" 2 "e[409]" "e[411:412]";
	setAttr ".cv" yes;
createNode polyCloseBorder -n "polyCloseBorder20";
	rename -uid "B945B2EC-49D6-7DED-A56C-109903D4AFC0";
	setAttr ".ics" -type "componentList" 4 "e[372]" "e[536]" "e[633]" "e[644]";
createNode polyCloseBorder -n "polyCloseBorder21";
	rename -uid "C47A2D2A-4D88-CD66-0652-718E5D179A7A";
	setAttr ".ics" -type "componentList" 3 "e[363]" "e[538:539]" "e[652]";
createNode polyCloseBorder -n "polyCloseBorder22";
	rename -uid "C115430D-4A75-3578-E58D-7AB12C33E759";
	setAttr ".ics" -type "componentList" 4 "e[369]" "e[525]" "e[645]" "e[656]";
createNode polyCloseBorder -n "polyCloseBorder23";
	rename -uid "78A1D072-41F9-8353-AFBD-C79FC852789C";
	setAttr ".ics" -type "componentList" 4 "e[371]" "e[523]" "e[527]" "e[632]";
createNode polyPlanarProj -n "polyPlanarProj5";
	rename -uid "92D0E1FE-45FC-8667-F2EE-16B0FBED1A02";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:318]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 181.82170104980469 0 ;
	setAttr ".ps" -type "double2" 109.74130249023438 368.30679321289063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak90";
	rename -uid "B6569C5A-4BE0-E165-94BC-8CABE7F21F06";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[220:223]" -type "float3"  -0.077122383 0 0 -0.077122383
		 0 0 -0.077122383 0 0 -0.077122383 0 0;
createNode polyMapCut -n "polyMapCut53";
	rename -uid "CEEA07E8-45F5-3C5E-2161-4A85CC4B6915";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:657]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "1B910AA8-42B6-5FFC-A485-B7825BD2C267";
	setAttr ".uopa" yes;
	setAttr -s 1300 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.077620625 -0.071079314 0.014749169
		 0.014817953 -0.017422885 0.0014929175 -0.00094759464 -0.070517123 0.017176986 0.010469496
		 0.025882065 0.046625853 -0.086412311 0.10711303 -0.0055838525 -0.0047384501 0 0.019174546
		 0.25620496 0.022348251 0 0.019174546 0.28240442 0 0.032347679 0.22482076 0 -0.002491802
		 0.23950091 -0.46248686 0.020886898 0.083995223 -0.12452829 0 0.2187748 -0.0029075108
		 -0.058347523 0 0 -0.002491802 0.020590544 0 0.24122334 0 -0.24122334 0 -0.020590544
		 0 0 -0.019174546 -0.25518274 -0.05249434 0.25571108 0.0041034967 0 -0.019174546 0.020886898
		 -0.083995223 0.00094759464 0.070517123 0.061297476 -0.065665856 -0.025729001 -0.049789786
		 0 0.010941744 -0.047347665 0 0 -0.010941744 -0.042170197 -0.002156198 0 0.01081109
		 -0.092735887 0.20232499 -0.098228693 0 0.090764165 0.0021265149 0 -0.010941744 0.041159272
		 0.029690742 0 0.010941744 0.047347665 0 0 0.01081109 -0.088713601 -0.0022847056 0.098228693
		 0 0.090794414 -0.19806397 0.085307777 -0.18843248 0.10270864 0 -0.067969322 0.006596446
		 0.098228693 0 0.060535729 0.00059086084 -0.087137759 -0.012093842 0.089163423 0.012577057
		 -0.098228693 0 0.068002075 -0.0054626465 -0.098228693 0 -0.060535729 0.00059086084
		 -0.07948336 0.17564946 0 0.010941744 0.047347665 0 -0.047347665 0 0 -0.010941744
		 -0.047347665 0 0 0.010941744 0.047347665 0 0 -0.010941744 -0.04660213 -0.0052866936
		 -0.18978024 0.01397872 -0.11230421 -0.010158181 0.12375802 -0.020457387 0.014531434
		 -0.0084469318 0.046342224 0.006526053 0.024831265 -0.0003939271 0.18763798 -0.012600124
		 0.11013174 0.0092452168 0 0.0064579248 0.024831265 -0.0003939271 -0.0017325282 0.01659435
		 -0.0137344 0.049152136 0.003731668 0.0024699569 0.031060517 -0.01015991 -0.011424601
		 -0.039583981 0.013680875 0.017580926 -0.032575786 -0.063717186 0.030753553 -0.0096422434
		 0.018021345 0.015374124 -0.02341783 0.0069000721 -0.028916359 -0.030445218 0.019139707
		 0.014209747 -0.00095312297 0.01573199 0.01504004 0.027882695 0.009382695 0.00020051003
		 0.0020011514 -0.00068557262 0.020532191 -0.035176396 -0.0022052526 0.020385683 -0.0018481314
		 0.025490284 0 -0.0064578652 0 -0.0064578652 0.016252801 0 0.030975804 0.044862449
		 -0.01104565 0.0075455904 -0.027645886 0.0080353618 0.024184644 -0.023132861 0.0094509721
		 0 0.025475681 0.047945917 0.011993468 -0.051612675 0.0027906299 -0.015895784 0.0094509721
		 0 -0.008127749 -0.058069468 -0.012155384 0.0066787004 -0.0073080063 0.00020223856
		 -0.088885024 0.001236558 0.1046468 0.074993372 -0.23018557 -0.0014061332 -0.015538186
		 -0.023748457 0.0027086735 0.0029973984 0.061755002 -0.0024287105 0.14572152 0 -0.11724547
		 0.012825847 0.0095396638 0.00075912476 -0.010228038 0.00072032213 0.017721772 0.038251281
		 0.0053730607 0.041216969 0.0096817613 0 -0.09212935 0.05288583 -0.00058299303 -0.021501541
		 -0.016414732 0.035411537 0.0090509653 -0.043104351 0.017981946 -0.038792491 0.11812592
		 0.0015118718 -0.017746046 0.17210722 5.030632e-05 -0.035613537 0.005351007 0.014144003
		 0.012633085 -0.038231552 0.00089800358 -0.0034253001 0.085960269 -0.053114593 -0.12180281
		 0.0096232295 0.097649872 -0.0012796521 0 0 0.15797594 0.018859982 -0.15797597 0.018859982
		 0 -0.0064578652 -0.19928735 0.019166827 0.0031469464 -0.0012283921 0.15797597 -0.018859982
		 0.042159557 0 -0.18631566 0.018859982 0.042787313 -0.0043871403 0.18631566 -0.018859982
		 -0.0088738799 -0.0040060282 0.18631566 0.018859982 -0.042787284 -0.0043871403 -0.18631566
		 -0.018859982 0.0089741945 0.0097205043 0.067695618 -0.2075513 -0.019983351 0 0 -0.005392313
		 -0.02181074 0 -0.022441417 0.018065691 -0.03871429 0.29785395 0.00041657686 0.0024745464
		 0.037508309 0.0065120459 0.018027723 -0.00052011013 -0.14161651 0.05304879 -0.00041657686
		 0.0024745464 -0.019799024 0.0028781891 0.020149589 0.064722419 0.14092577 0.023578942
		 -0.012377262 -0.014247775 -0.018143386 0.0028764606 -0.15839255 0.018859982 0.057744861
		 -0.0043871403 -0.019983351 0 -0.019983351 0 0.15839252 0.018859982 -0.05774489 -0.0043871403
		 0.02181074 0 0.02181074 0 -0.02181074 0 0.019799054 -0.0028781891 0.01296556 0.0064226389
		 -0.057744861 0.0043871403 -0.01296556 -0.0064226389 -0.042787313 0.0043871403 -0.07058239
		 -0.0079396367 -0.019983351 0 0.018034935 -0.0021694899 0.042787313 -0.0043871403
		 0.017512798 -0.0011611581 0.057744861 -0.0043871403 -0.018801451 0.0016235709 -0.019983351
		 0 -0.01296553 0.0064226389 0.05774489 0.0043871403 0.01296553 -0.0064226389 0.042787284
		 0.0043871403 0.070763886 -0.004706502 0.02181074 0 -0.019215733 0.0011951923 -0.042787284
		 -0.0043871403 -0.019696802 0.002141118 -0.05774489 -0.0043871403 0.020113982 -0.0041120648
		 0.02181074 0 0.018467069 0.01732707 -0.02181074 0 0.019906878 -0.0073398948 -0.02181074
		 0 -0.01296556 -0.0064226389 -0.057744861 0.0043871403 0.01296556 0.0064226389 -0.042787313
		 0.0043871403 0.01296553 -0.0064226389 0.05774489 0.0043871403 -0.01296553 0.0064226389
		 0.042787284 0.0043871403 0.015192628 0.024904966 0.017058313 0.025042534 -0.0063302815
		 0.0045731068 0 -0.017681003 0 -0.005392313 0.02181074 0 0.018629849 0.0014680624
		 -0.0063303411 0.0045731664 0.016891778 -0.0013732314 -0.0014175177 -0.01469326 -0.022441387
		 0.018065512 -0.024665803 0.028138816 -0.024170935 0.027447045 0.010224104 0.0038775206
		 0.0027981997 0.014760554 -0.019874543 0.0098574758 0 -0.0011918545 -0.010224164 0.0038775206
		 -0.02181074 0 -0.0052803159 -0.0047974586 -0.0074977875 -0.0097307563 -0.024665833
		 0.028138995 0.0063303411 -0.0045731664 0 -0.0011918545 0.017447025 0.011374235 -0.019634962
		 0.0033861995 -0.018629879 -0.0014680028 0 -0.017681003 0.022319555 0.037194252 -0.0029317141
		 0.011963248 -0.010381341 0.0095083117 0.028455615 0.031335175;
	setAttr ".uvtk[250:499]" -0.021723777 0.037453771 -0.0050455034 0.015046358
		 0.021723777 -0.037453771 0.00021719933 0.021417499 0.019840837 -0.037498295 -0.014890194
		 -0.0067164898 -0.030749857 0.0090940595 -0.0094509721 0 0.019461751 -0.010084093
		 -0.0094987154 0.0070149899 -0.024176717 0.0078266859 -0.0036529601 0.014805734 0.013292193
		 0.023360431 0.0044378638 -0.014409482 0.0017635524 -0.036968708 -0.019225478 0.010500729
		 -0.0016559362 0.03631717 0.023610771 -0.0090036988 0.00036692619 -0.03446728 0.017797768
		 -0.0096039176 -0.00011152029 0.035523057 -0.11653793 0.0021901131 -0.0045511425 0.013116837
		 -0.024108768 -0.025938451 0.0018374324 -0.014598489 0.044632733 -0.019251645 -0.0032368302
		 0.029014289 0.013204277 -0.0095199943 0.012433708 -0.0070147514 -0.028991088 0.0099585056
		 0.0051852167 -0.01519376 -0.01082696 0.056801856 -0.014416829 0.0042874813 -0.0019740462
		 -0.05713594 -0.01462093 0.0068451762 0.022183329 -0.017257214 0.0013509393 -0.016011238
		 -0.019840837 0.037498295 -0.010176599 0 0.0097501874 0 -0.107849 -0.046758533 0.00081861019
		 0.033814251 -0.0017575622 -0.037921011 0.0019935668 0.038279474 -0.12378097 0.043412805
		 -0.00012922287 -0.035317898 -0.12022251 -0.010457635 0.12024713 -0.0064876676 0.11930647
		 -0.0075917244 -0.14905724 -0.22471184 0.0018098652 -0.036100686 -0.08323136 -0.10446507
		 -0.12268931 -0.0076130033 0.10669941 -0.008790195 0.13520864 0.0061849952 0.083878219
		 -0.25938696 -0.00080245733 0.034163535 -0.10419354 0.041873455 -0.031428531 -0.0016270876
		 0.1153658 -0.0017662048 0.017721802 -0.038251281 -0.13445359 0.0078988075 -0.14567983
		 0 0.017537177 0.037852764 -0.0014053881 -0.036822557 -5.0008297e-05 -0.030996799
		 -0.0026225746 0.057200968 -0.015834183 0 0.0041785538 -0.01295197 0.019965112 -0.0059757829
		 0 -0.0064579248 -0.012808174 0 0.0051694363 -0.014212728 0.0075582117 -0.057013988
		 -0.092136621 0.014736295 0.091988444 0.12254798 0.11836052 -0.0012494922 0.14563549
		 0 -0.12451017 0.010549903 -0.11079711 0 0.14514291 0 0.0024886429 0.035793602 0.0068135858
		 0.0056986213 0.0062442422 0.0065395832 -0.015094578 0.0073214173 -0.10680637 0.01781553
		 -0.0048188567 -0.007836163 0.020757973 0.0024262667 -0.016473278 -0.033337772 0.018379003
		 0.00080114603 0.014695719 0.005959928 0.0011239946 -0.0031690001 -0.021723777 0.037453771
		 0 0.0064578652 0 0.0064578652 0.01603654 0 -0.017283008 0.012998462 -0.013450712
		 -0.00034725666 0.017143309 -0.012851059 -0.016238898 0 0.0062454343 -0.062180161
		 0.0011239946 -0.0031690001 0.013826817 -0.013121486 0.016767979 -0.0043412447 0.016217649
		 0.032911122 0.016252801 0 0 0.0064578652 0 0.0064578652 0.021723777 -0.037453771
		 0.02578932 -0.015667856 -0.016051844 0 0.0029056817 -0.017180383 -0.016453758 0 0
		 0.0035433173 0 -0.0064578652 0 -0.0064578652 0 0.0035433173 0.0089109838 -0.050289273
		 0.038269892 0.041545153 -0.16377072 0.051017225 -0.15564977 0.0016424656 0 0.0035433173
		 -0.024499051 -0.00055104494 0.020082504 -0.022582471 0 0.0064578652 -0.017744794
		 -0.038154185 0.024686351 -0.010422468 -0.022296175 0.0060508847 -0.017814249 -0.037582338
		 -0.013098329 0 -0.0066816658 0.055649638 -0.0011239946 0.0031690001 0.012284413 0.012562454
		 0.01851958 -0.0070046782 -0.023150861 -0.00081890821 0.013106585 0 0 -0.0064579248
		 0 -0.0064579248 -0.019840837 0.037498295 0.0085925162 0.005055666 0.011395991 -0.0070311427
		 -0.0011239946 0.0031690001 0.019840837 -0.037498295 0 -0.0064579248 0 -0.0064579248
		 0.012953252 0 0.016246125 0.032176077 0.024831265 -0.0003939271 0 0.0064579248 -0.030270174
		 0.014476955 -0.012962878 0 0 0.0064579248 0 0.0064579248 0.10352916 0.005618751 -0.12722218
		 0.0014178753 0.023126036 0.048432708 -0.020607188 0.035355866 0 0.0064579248 -0.0092432052
		 0.037027478 -0.0047178119 0.013581276 0.012953252 0 0.012412339 -0.010368824 -0.024999812
		 0.017299473 0.0014415681 -0.020731688 -0.013250291 0 -0.0062017739 -0.0068959594
		 0.10729778 0.017026782 -0.14987138 -0.012144804 -0.04966256 0.0007879138 0.060535729
		 -0.00059086084 0.17409235 -0.0086608529 0.18006766 0.0023043752 0.037838042 0.028991878
		 -0.0010907948 0.033618987 -0.10993043 0 0.10955548 -0.0025936961 0.14078575 0.0045545101
		 -0.10465708 0.062454283 0.00057220459 0.021456301 -0.1727953 -0.0019128919 -0.060535729
		 -0.00059086084 0.037246883 0.00059092045 -0.028481543 0.0056036711 0.11079711 0 0.0031014085
		 0.035413265 -0.016609162 0.01001811 0.0062125325 0.0069411993 -0.037246883 -0.00059092045
		 0 0.0064579248 0.029466212 0.03911382 -0.0071333647 0.037111163 0.12289035 -0.051213145
		 0.010003746 -0.0011553168 -0.1057758 0.022492826 0.15039116 0.011480629 0.037246883
		 0.00059092045 -0.060535729 -0.00059086084 -0.17413658 0.0076082945 -0.1820488 -0.0012901425
		 0.0094596148 -0.0057256818 -0.0036563873 0.022718668 0.032668412 0.076347709 0 0.0064579248
		 -0.037246883 -0.00059092045 -0.10378903 -0.0061939359 0.0095053911 0.0065688491 -0.13635787
		 -0.005145669 0.10471117 -0.0025708079 0.10900009 -0.0077283382 0.17278847 0.00059479475
		 0.060535729 -0.00059086084 -0.04966256 0.0007879138 0.026226133 -0.0040995479 -0.10386366
		 -0.0098723173 -0.0092568994 0.00095653534 -0.0092553496 0 0.0098870397 0.0019886494
		 -0.10483012 -0.073050916 0.12028223 0.010378659 -0.0047512054 -0.04082787 0.017721772
		 0.038251281 -0.037785113 0.030256331 0.088824153 -0.019850969 0.029527515 -1.6868114e-05
		 -0.017721802 0.038251281 0.23034665 -0.00050133467 0.0095290542 0.00099343061 0.10084021
		 -0.022051692 -0.001999557 0.036610246 -0.11572286 0.0037407875 0.11634886 -0.012482703
		 -0.0097985566 0.00079399347 -0.014077127 -0.023756742 0.0077340603 -0.01817888 0.013754487
		 0.0094081759 0.00072211027 -0.016928077 -0.011533856 -0.046969712 -0.02898705 0.029348493
		 -0.022319555 -0.037194252 0.0011239648 0.0036877394 -0.028755009 0.015821159 -0.0008970499
		 0.0029926896 -0.029466093 -0.033139884 0.028656304 -0.0077016354 -0.016577423 -0.0093964934
		 -0.0011239648 -0.0036877394 0.014511287 0.037239075 -0.0089222789 0.020760298 -0.003298521
		 -0.0066642165 -0.0013760328 0.017148316;
	setAttr ".uvtk[500:749]" 0.011436462 0.033599675 -0.0037326217 -0.0020373464
		 0.02844435 -0.014755309 0.0011239648 0.0036877394 -0.022319555 -0.037194252 0.023540795
		 -0.0025460124 -0.0039479733 -0.0058124661 0.032705009 -0.01868391 0.010589957 0.0017200708
		 -0.025202394 -0.025281191 0.00016188622 0.016925037 0.014511287 0.037239075 -0.0011239648
		 -0.0036877394 0.025663137 0.024391234 0.0075698495 -0.0028580427 -0.012718499 0.050498307
		 -0.0178321 -0.0070174336 -0.022414267 0.0090548396 0.014897108 0.0070171952 -0.032937527
		 0.019422531 0.037475586 0.051659644 -0.044048071 0.040227771 -0.011007249 -0.0336411
		 0.029904902 0.033284664 -0.046636105 0.040446281 0.024641216 0.014650106 -0.029731333
		 0.0099034309 0.0094655156 0 0.00035381317 -0.017409503 -0.024568141 0 0 0.0064578652
		 -0.029916763 -0.027300358 0 -0.0064578652 0 0.0053150058 0.15501285 0.014560878 0.16793549
		 -0.0013964176 -0.083611429 0.043567955 -0.010806859 -0.029720128 0.013022423 -0.050295651
		 0.0094655156 0 0.001796186 -0.029551029 0 0.0064578652 -0.024568141 0 0.033662558
		 -0.018308222 0.0094653964 0 -0.031993032 0.019827425 0.0094653964 0 0.024567366 0.026429176
		 0.01665169 0.021140516 0.021559 -0.16360325 -0.13492087 -0.0065684915 -0.0020844638
		 -0.035829186 0.12416524 -0.010676682 -0.096433401 0.0023790002 -0.011653066 -0.013753772
		 -0.039026678 -0.029406071 0.12214768 -0.0094964504 -0.0026659369 -0.03510952 0.11079711
		 0 0.048022091 -0.18117422 0.098577201 0.099112689 -0.10993043 0 0.00094759464 -0.070517123
		 -0.0020278692 0.16114044 -0.036547124 0.33124387 0.002027899 0.16114044 -0.00094759464
		 -0.070517123 0.038943529 -0.2233545 0.020886898 -0.083995223 -0.00094759464 0.070517123
		 -0.039096594 0.22651842 0.00094759464 0.070517123 -0.020886898 -0.083995223 -0.013475269
		 -0.19274619 0.016414762 0.035411537 -0.074897766 0.22959983 0.076695561 -0.042355776
		 0.016414762 0.035411537 -0.11079711 0 -0.016414732 0.035411537 0.10993043 0 -0.11825106
		 -0.0016488433 0.0017708242 0.037429154 -0.14563549 0 -0.18720895 -0.29289335 -0.017030001
		 -0.021606922 -0.096043229 -0.011389256 0.12251002 0.0077691078 0.0031847358 0.038079202
		 0.14514291 0 -0.14445174 0.002568543 -0.00035905838 0.027578056 -0.044274539 -0.032177389
		 -0.11823538 0.0013864636 0.017358363 -0.17507118 0.012031436 0.014220178 0.039889276
		 0.030680418 -0.0049419403 -0.01072526 0.14092785 -0.042514801 -0.14563549 0 -0.001924783
		 -0.037645638 -0.013582826 0.0018247366 0.15553969 0.014560878 0.13784701 -0.0612486
		 0.02224499 0.055134773 0.11202914 0.019166827 0.15564972 -0.0016424656 -0.15797594
		 -0.018859982 0.08725822 -0.038333654 0.15797594 0.018859982 0 0 0 -0.0070866942 -0.15553968
		 -0.014560878 -0.14214468 -0.01687324 -0.15512326 0.0016424656 0.012377203 0.014247775
		 -0.0033280849 -0.037882686 -0.057772428 -0.20945644 -0.017981946 -0.038792491 -0.14514291
		 0 0.017981946 -0.038792491 0.17005676 0.25633442 -0.016414762 -0.035411537 0.047664821
		 -0.040486872 0.094826758 0.010289907 0.044435501 -0.040278912 0.017981946 0.038792491
		 -0.12058568 -0.0058088303 9.304285e-05 0.03541708 0.12076497 0.0056527853 0.017981946
		 0.038792491 0.049015343 0.19137359 -0.031136781 -0.044714689 0.016414732 -0.035411537
		 0.13332948 0.0083431005 0.0006865859 -0.033583403 -0.13361725 -0.0079596639 0.016414732
		 -0.035411537 -0.11314 -0.10505879 -0.017981946 0.038792491 -0.030535817 -0.045092463
		 -0.021171317 0.16656721 -0.057002544 0.21096134 -0.016414762 -0.035411537 0.11866087
		 0.015701115 -0.14514291 0 -0.017981946 -0.038792491 0.16620946 0.26127088 -0.017981946
		 0.038792491 0.14563549 0 -0.11500411 0.052746236 -0.024617761 -0.048813581 -0.036539093
		 -0.04131788 -0.089631081 -0.015850961 0.10993043 0 -0.012863949 0.011000276 0.020799413
		 -0.029278994 0.00087147951 0.0031730533 -0.014177158 0.012606978 0.0037241727 -0.0019153953
		 -0.0091302693 0.044208109 -0.00056520104 0.015760183 0.012034908 0.0036821961 0.0021037608
		 -0.025063694 -0.014386058 -0.0036284328 0.022158563 0.0019713044 -0.022520572 0.015880048
		 -0.006261453 -0.0051307678 0.0094981492 -0.055691957 0.03045772 0.045098364 -0.0037229508
		 0.0023530126 -0.019863218 0.028663635 -0.00087270141 -0.003610611 -0.0020049363 0.00028902292
		 0.022196263 -0.029582679 -0.0021072328 0.018351972 0.0080862343 0.005916357 0.003346011
		 -0.017339349 -0.01198487 -0.005756855 -0.014374375 -0.02550298 0.03486681 -0.014541984
		 0.015771493 0.030720472 -0.020724103 0.029125869 0.00041303039 -0.0044457912 -0.012089923
		 -0.011805892 -0.014310986 -0.00065439939 -0.0019406974 0.062644184 0.024831265 -0.0003939271
		 0 0.0064579248 -0.022409931 0.035723627 -0.0064436942 0.023655474 -0.12482622 0.0090625882
		 -0.02181074 0 0.019983351 0 -0.018027723 0.00052011013 -0.0014619231 0 0.019692957
		 -0.0005222559 0.019215703 -0.0011951923 -0.018261701 0.007312119 0.019983351 0 -0.02181074
		 0 0.019983351 0 -0.017512798 0.0011611581 -0.019874573 -0.0098574162 0.018764257
		 -0.0096212029 0.019983351 0 -0.017447054 -0.011374176 0.016530812 -0.01110369 0.0088738799
		 0.0040060282 0.020059466 0.010547757 -0.018429637 0.010469437 0.0052803159 0.0047974586
		 -0.0027981102 -0.014760613 0.024170935 -0.027447164 -0.016891748 0.001373291 -0.0089740753
		 -0.0097206235 0.021498978 -0.017679751 0.0014175177 0.01469326 -0.02181074 0 0.019983351
		 0 0.0074977875 0.0097307563 -0.010224104 -0.0038775206 0.018764198 -0.0096212029
		 0.019983351 0 -0.017447025 -0.011374176 0.016530752 -0.01110369 0.0088738203 0.0040060878
		 0.019634962 -0.0033861995 -0.015192658 -0.024904907 0.0052802563 0.0047974586 -0.0027981997
		 -0.014760554 0.024170935 -0.027447045 -0.017976761 0.003465414 -0.0089741945 -0.0097205043
		 0.01429677 0.0084414482 0.0014175773 0.014693201 -0.02181074 0 0.019983351 0 0.033618867
		 0.002528429 0.019696772 -0.002141118 -0.016699553 -0.017278194 0.019983351 0 -0.02181074
		 0 0.019983351 0 -0.018034935 0.0021694303 0.0013510585 -0.0029473901 0.019983351
		 0 0.013582885 -0.001824677 -0.15501279 -0.014560878 0.06327951 -0.21392071;
	setAttr ".uvtk[750:999]" 0.15797597 -0.018859982 -0.032840073 -0.09167856 -0.14141634
		 0.019717693 0.15797597 -0.018859982 -0.041428626 0 0.15839255 -0.018859982 -0.14117935
		 0.017353117 0.018143415 -0.0028764606 -0.15425968 0.024818718 0.15839255 -0.018859982
		 -0.019983351 0 0.18631566 -0.018859982 -0.15362918 0.018679976 0.018261731 -0.007312119
		 0 0.013480425 0 0.0094363689 0.18631566 -0.018859982 0.18631566 -0.018859982 -0.019983351
		 0 0 0.017681003 0 0.005392313 -0.018764257 0.0096212029 0 0.0011919737 -0.016530812
		 0.01110369 0 -0.017681003 0.018429637 -0.010469437 0 -0.013480544 0 -0.0011918545
		 -0.024170935 0.027447224 0 -0.0094363689 0 -0.005392313 -0.021498978 0.017679751
		 0 -0.0094363689 0 -0.005392313 0.019874543 -0.0098574758 0 -0.013480544 0 -0.0011918545
		 0.0063302815 -0.0045731664 0 -0.017681003 -0.017058313 -0.025042474 0 0.0011919737
		 0.024665803 -0.028138816 0 0.017681003 0 0.005392313 0.022441387 -0.018065512 0 0.013480425
		 0 0.0094363689 -0.18631566 -0.018859982 -0.18631566 -0.018859982 0.02181074 0 -0.18631566
		 -0.018859982 0.15400916 0.015764475 -0.018467039 -0.01732707 0.15289986 0.035253942
		 -0.15839252 -0.018859982 0.02181074 0 -0.15839252 -0.018859982 0.14134258 0.01606822
		 -0.038183838 -0.005038321 0.14574289 0 -0.0040647388 -0.036077619 0.0063422322 -0.012141883
		 0.0021336973 -0.033760011 -0.14586791 0 -0.0027084947 0.0034323931 -0.010150164 -0.0020046234
		 0.11626041 -0.015236259 -0.11902928 0.0076304674 0.0017400682 0.03708303 0.11691135
		 -0.0041216016 -0.10552534 -0.075807631 0.010061681 -0.00077801943 0.013747096 0.022773504
		 0.11660284 -0.0021855235 0.0043054819 0.0358724 0.14561689 0 -0.11712095 0.0087201595
		 -0.017537177 -0.037852764 0.13781917 -0.047802389 -0.015499055 -0.025318086 -0.017537177
		 -0.037852764 -0.14567983 0 0.12129849 -0.04013443 -0.14557514 0 0.017537147 -0.037852764
		 0.14572152 0 0.017537147 -0.037852764 0.0089868009 -0.014149189 -0.061885744 -0.0010587573
		 0.019025207 -0.011986852 0.031416386 0.011653006 -0.017537147 0.037852764 0.12063444
		 -0.009055078 0.017721802 -0.038251281 0.0083447099 -0.022011518 0.020267934 -0.010693729
		 -0.11536384 0.014893115 -0.0024683774 0.033499599 -0.1209116 0.009016335 -0.017537147
		 0.037852764 -0.107092 0.03872329 -0.019052029 -0.014281094 0.00039595366 -0.018731356
		 -0.017721772 -0.038251281 -0.11872667 -0.009103477 0.017537177 0.037852764 -0.011683881
		 -0.019804299 -0.018109024 -0.015302777 0.10570866 0.073865175 -0.0014404655 -0.034203351
		 0.11866695 0.0091824532 -0.017721772 -0.038251281 0.11904132 0.014379919 -0.11697626
		 0.004117012 0.10308278 -0.0043305755 0.23039374 -0.00030857325 -0.017721802 0.038251281
		 0.11578652 -0.0037395954 -0.11575087 0.028318346 -0.23013854 -0.0012133718 0.092671335
		 0.042250931 -0.0079219341 0.0026566982 0.041045487 -0.034243643 0.013502061 0.027541459
		 -0.010491788 -0.0020052791 0.032026902 -0.04480803 -0.00040923059 0.0048423409 -0.018912882
		 0.01208216 -0.0089666396 0.042938113 -0.0051975101 0.02128464 -0.020380273 0.010598421
		 0.072546482 -0.0046919584 0.32445538 0.0062062144 0 0.0053150058 0 -0.0064578652
		 -0.050709128 -0.074925005 -0.01983434 0 0 -0.0064579248 0.050870419 0.062781036 0
		 -0.0064578652 0 0.0035433173 -0.32442531 -0.0011505485 -0.072415933 0.0017496347
		 -0.035205685 -0.018788457 0.01603654 0 0 0.0064578652 0.0091585517 -0.036887586 0.10703999
		 -0.059152544 -0.11542946 0.0017650127 -0.0094509721 0 -0.014511287 -0.037239075 -0.037628829
		 0.014018893 -0.014511287 -0.037239075 -0.036034882 -0.051122904 0.015102684 0 0.0094509721
		 0 0.006703794 0.057634056 0.021230996 -0.0077020526 0.015102684 0 -0.02321732 -0.014214694
		 0.0019183755 -0.015527546 -0.0094509721 0 -0.0046758056 0.013022244 -0.025014281
		 -0.047405481 0.020552218 -0.0067861676 -0.0094509721 0 0.022319555 0.037194252 0.011075199
		 0.046478987 0.010368884 0 0.0094509721 0 0.010368884 0 0.010345459 0.029179633 -0.020702422
		 0.0041221976 -0.13122913 0.018705547 0.15839252 0.018859982 -0.05774489 -0.0043871403
		 -0.01296553 0.0064226389 -0.033993412 0.0078526735 0.042787284 0.0043871403 -0.057218943
		 0.0036207438 0.05774489 0.0043871403 -0.01296553 0.0064226389 -0.01296553 0.0064226389
		 0.18631566 0.018859982 -0.1816832 0.015176237 0.020448476 -0.0067669749 0.01296553
		 -0.0064226389 0.042787284 0.0043871403 0.042787284 0.0043871403 0.17935026 -0.029802561
		 -0.18631566 0.018859982 0.042787313 -0.0043871403 -0.01296556 -0.0064226389 0.055955172
		 -0.020334184 -0.057744861 0.0043871403 0.031997323 -0.0062013268 -0.042787313 0.0043871403
		 -0.01296556 -0.0064226389 -0.01296556 -0.0064226389 -0.15839255 0.018859982 0.12853855
		 -0.013696134 -0.069151044 0.02491194 0.01296556 0.0064226389 -0.057744861 0.0043871403
		 -0.057744861 0.0043871403 0.15653783 -0.019996464 -0.18631566 -0.018859982 0.02181074
		 0 -0.15839252 -0.018859982 0.15637451 -0.013885319 -0.019906878 0.0073398948 -0.042787284
		 -0.0043871403 0.18631566 0.018859982 0.18631566 0.018859982 -0.18631566 -0.018859982
		 0 0.0094363689 0 0.013480425 0.010224164 -0.0038775206 0.02181074 0 -0.019692928
		 0.0005222559 0.14198625 -0.05316174 -0.15839252 -0.018859982 -0.14198685 0.050894558
		 0.00041657686 -0.0024745464 -0.05774489 -0.0043871403 -0.05774489 -0.0043871403 -0.18631566
		 0.018859982 0.042787313 -0.0043871403 0.042787313 -0.0043871403 0.057744861 -0.0043871403
		 -0.00041657686 -0.0024745464 0.14179087 -0.019790232 -0.15839255 0.018859982 -0.17749724
		 -0.04402262 0.18631566 0.018859982 -0.042787284 -0.0043871403 0.01296553 -0.0064226389
		 -0.052051693 -0.03739208 0.05774489 0.0043871403 -0.03249887 -0.0040096045 0.042787284
		 0.0043871403 0.01296553 -0.0064226389 0.01296553 -0.0064226389 0.15839252 0.018859982
		 -0.12941179 -0.0069957972 0.06443657 0.045513809 -0.01296553 0.0064226389 0.05774489
		 0.0043871403 0.05774489 0.0043871403 0.13015026 0.050518572;
	setAttr ".uvtk[1000:1249]" -0.15839255 0.018859982 0.057744861 -0.0043871403
		 0.01296556 0.0064226389 0.033214211 0.02172935 -0.042787313 0.0043871403 0.057094932
		 0.0058277845 -0.057744861 0.0043871403 0.01296556 0.0064226389 0.01296556 0.0064226389
		 -0.18631566 0.018859982 0.18099129 0.035579741 -0.019726872 -0.019617558 -0.01296556
		 -0.0064226389 -0.042787313 0.0043871403 -0.042787313 0.0043871403 -0.15542415 -0.052836657
		 0.18631566 -0.018859982 -0.019983351 0 0.15839255 -0.018859982 -0.1557174 -0.033261657
		 0.016699553 0.017278254 0.18631566 0.018859982 -0.042787284 -0.0043871403 -0.042787284
		 -0.0043871403 -0.05774489 -0.0043871403 0.00041657686 -0.0024745464 -0.14129326 -0.023706496
		 0.15839252 0.018859982 0.042787313 -0.0043871403 -0.18631566 0.018859982 -0.18631566
		 0.018859982 0.18631566 -0.018859982 0 0.0094363689 0 0.013480425 -0.01429677 -0.0084414482
		 -0.019983351 0 0.037573516 -0.0010315776 0.038789809 -0.29857135 0.15839255 -0.018859982
		 -0.036521375 0.29322553 -0.00041657686 -0.0024745464 0.057744861 -0.0043871403 0.057744861
		 -0.0043871403 0.017447054 0.011374176 0 0.0011919737 0.024665833 -0.028138995 -0.020059496
		 -0.010547757 0 -0.013480544 0.022441417 -0.018065691 0.0027981102 0.014760613 0.019874573
		 0.0098574162 0 0.005392313 0 0.017681003 -0.0014175773 -0.014693201 0 0.0011919737
		 -0.016530752 0.011103749 0.017976761 -0.003465414 0 -0.013480544 -0.018764198 0.0096212029
		 -0.0052802563 -0.0047975183 -0.033618867 -0.002528429 0 0.005392313 0 0.017681003
		 0 -0.0094363689 0.02181074 0 0.0089740753 0.0097206235 0 -0.0094363689 -0.019983351
		 0 -0.0088738203 -0.0040060878 -0.15797594 -0.018859982 0.020142674 0.064725518 -0.038249075
		 0.0025052428 0.042159557 0 -0.15797594 -0.018859982 0.14161712 -0.050781608 0 0 0.15797594
		 0.018859982 -0.1409751 -0.015940607 0.15797594 0.018859982 0 0 -0.00041657686 0.0024745464
		 -0.032844126 -0.091675818 0.15797597 -0.018859982 0.036445796 -0.29250807 -0.15797597
		 0.018859982 0 0 0.00041657686 0.0024745464 0 0 -0.15797597 0.018859982 0.14080483
		 -0.017280579 -0.037520885 -0.0062593818 -0.15797594 -0.018859982 -0.32439059 0.032224655
		 -0.32445529 -0.0062062144 0 -0.0070866942 0 0 0.038195014 -0.01169157 -0.041428626
		 0 -0.13097513 0.42147195 0.15512323 -0.0016424656 0 -0.0053150058 0 0 0 -0.0053150058
		 0.32442522 0.0011505485 0.3237164 -0.014273703 -0.15797597 0.018859982 -0.031813234
		 0.038667083 0 -0.0064579248 0.013106585 0 0.01100719 0.027667165 0 -0.0064579248
		 -0.01983434 0 -0.00030249357 -0.0013851523 0.00086188316 -0.01144588 0.0090768039
		 -0.043306887 0.0161722 0.0057117939 0.066672266 0.0039772391 -0.016644716 -0.01164037
		 0.013588071 -0.0073503256 0.006131053 -0.018766344 0.00030249357 -0.0013851523 0.060535729
		 0.00059086084 0.00030249357 -0.0013851523 -0.010731518 -0.012402415 0.010931849 -0.00061368942
		 -0.01579994 0.00072032213 -0.066653967 -0.0027404428 0.015779316 -3.7312508e-05 -0.010463238
		 0.00021237135 0.0026028454 -0.012888253 -0.00030249357 -0.0013851523 -0.060535729
		 0.00059086084 -0.047347665 0 0 0.010941744 -0.047347665 0 0.042820692 -0.0035475492
		 0 -0.010941744 -0.041159302 -0.029690742 -0.0067429543 -0.031337202 -0.0098792315
		 -0.002384305 -0.047347665 0 0.047347665 0 -0.042820692 0.0035475492 0.010351717 0.008312881
		 0.0033735931 0.010553002 0 -0.010941744 0.010793686 -0.0035279989 -0.012372851 0.00048243999
		 0 0.010941744 -0.0068665445 0.037492335 -0.010540694 -0.0088225603 0.047347665 0
		 0.047347665 0 0 0.010941744 0.047347665 0 -0.043108106 -0.012602329 0 -0.010941744
		 0.042170227 0.002156198 0.014141917 -0.013429999 0.0097443163 -0.00057500601 0.047347665
		 0 -0.047347665 0 0.043108106 0.012602329 -0.0097236633 -0.00010794401 -0.014173687
		 -0.012491524 0 -0.010941744 -0.011507332 -0.0017127395 0.010750592 -0.0011615157
		 -0.047347665 0 -0.01069963 -9.6082687e-05 0.011116296 -0.0025587082 0 0.010941744
		 0.085161686 -0.11273408 0.0020278692 -0.16114044 -0.0041774511 0.0034687519 -0.0002117753
		 0.0084781051 0.0055277348 0.038205087 -0.0022230744 0.01960516 -0.00030249357 0.0034687519
		 -0.002027899 -0.16114044 0.037797689 -0.32562289 -0.017429978 0.001881063 -0.0086695552
		 0.011670053 -0.0041774511 0.0034687519 0.0020278692 -0.16114044 0.088087022 -0.12389767
		 0.017371953 -0.00023531914 -0.037852943 -0.036923587 -0.002027899 -0.16114044 -0.00030249357
		 0.0034687519 0.0029025078 0.015358746 -0.014794976 0.015776396 0.098228693 0 0.07948336
		 -0.17564946 0.098228693 0 0 -0.01081109 -0.089163408 -0.012577057 0 -0.01081109 0.0017451346
		 -0.014794469 0.00030249357 0.0013851523 -0.098228693 0 0.098228693 0 0 0.01081109
		 0.00030249357 0.0013851523 -0.0028560758 -0.010982454 0.088713586 0.0022847056 0.00030249357
		 -0.0034687519 -0.00038394332 0.0066351891 -0.090794414 0.19806397 -0.0026492774 0.0085119605
		 0.00030249357 -0.0034687519 -0.098228693 0 -0.10270864 0 0.09119457 0.012418091 -0.098228693
		 0 0 -0.01081109 -0.081424832 0.17991048 0 -0.01081109 0.0031827688 -0.0062004328
		 -0.00030249357 0.0013851523 0.098228693 0 -0.10270864 0 0 0.01081109 -0.00030249357
		 0.0013851523 -0.0031055808 -0.0038272142 0.088852942 -0.19380301 -0.0028136969 0.014115453
		 0.0041774511 -0.0034687519 0.10270864 0 0.0041774511 -0.0034687519 0.016218305 0.006932795
		 -0.094820976 -0.0024508238 -0.079234421 0.071935058 -0.040699661 -0.0075359941 -0.020886898
		 -0.083995223 0.060478747 -0.060096011 0.061701357 -0.0027968138 -0.00094759464 0.070517123
		 -0.058347523 0 0.12452829 0 -0.080169886 0.03359127 -0.12452829 0 0.058347523 0 -0.020886898
		 0.083995223 0.041178226 0.034627169 -0.0020278692 0.16114044 0.00094759464 -0.070517123
		 0.002027899 0.16114044 -0.091412306 0.12619409 -0.060087532 0.0019410849;
	setAttr ".uvtk[1250:1299]" -0.25605187 0.0059463661 0 0.019174546 -0.25571108
		 -0.0041034985 0.28240442 0 0 0.019174546 -0.28240442 0 0.020590544 0 0.28240442 0
		 -0.25620496 -0.022348251 0.25518274 0.05249434 -0.28240442 0 -0.28240442 0 -0.020590544
		 0 0 -0.019174546 -0.020590544 0 -0.28240442 0 0.2560519 -0.0059463643 0.28240442
		 0 0.020590544 0 0 -0.019174546 0 0.002491802 -0.21877477 0.0029075108 0.24122334
		 0 0.21876496 -0.00053730235 0 0.002491802 0.020590544 0 0 0.002491802 -0.23950094
		 0.46248686 -0.24122334 0 0.23688757 -0.45748606 0 0.002491802 -0.020590544 0 0.058347523
		 0 0.24122334 0 -0.21876498 0.00053730235 -0.24122334 0 -0.058347523 0 0 -0.002491802
		 -0.058347523 0 -0.24122334 0 -0.23688757 0.45748603 0.24122334 0 0.058347523 0 0
		 -0.002491802 0.020886898 0.083995223 -0.08601585 0.073361956 0.12452829 0 0.066236734
		 -0.0057299472 -0.020886898 0.083995223 0.058347523 0;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "768DF272-4CB1-B2F8-F801-8BB9CB10F7F2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:318]";
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "641FF85E-4C68-3CA8-E076-ACB0C813C56A";
	setAttr ".uopa" yes;
	setAttr -s 1300 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.37734979 -0.23817903 -0.1064657
		 0.05514887 -0.44677013 -0.099354833 -0.17597048 0.055373132 -0.48447341 -0.016729113
		 -0.50371516 -0.34969562 -0.027006969 -0.29812586 -0.35164356 -0.2961781 -0.029061615
		 0.0553075 -0.017861485 0.058034569 -0.053717747 0.05572379 -0.22836407 0.052327171
		 -0.2497738 -0.17083889 -0.31157744 0.054232486 -0.049504459 0.058557719 -0.002350986
		 0.055626869 -0.070155114 0.053351887 -0.04436779 0.058558851 -0.082483113 0.053253315
		 -0.42150319 0.055259533 -0.22836407 0.055214159 -0.49958152 0.055112764 -0.50266349
		 0.055742338 -0.24993789 0.056139484 -0.029061615 0.0553075 -0.017760992 -0.32223076
		 -0.024965197 0.057860047 -0.053717747 0.05572379 -0.33212399 0.055520453 -0.17597048
		 0.055373132 -0.20649074 -0.1753701 -0.42766726 -0.26579463 -0.40814757 0.058245718
		 -0.42150319 0.057461619 -0.49958152 0.058245867 -0.11843994 -0.045297712 -0.24274667
		 0.056334496 -0.005859226 -0.13578689 -0.11022124 0.056480378 -0.35268217 0.0071080942
		 -0.2458287 0.058389127 -0.11627945 0.039179862 -0.26123852 0.058387607 -0.027006954
		 0.058072567 -0.081455797 0.057119995 -0.27562106 -0.10232389 -0.46876103 0.056482345
		 -0.2210602 0.025787145 0.0038130283 0.0022840817 -0.16672455 0.056929052 -0.50455499
		 0.02978465 -0.11022124 0.056480378 -0.30746818 0.058390081 -0.34765756 -0.12516871
		 -0.2808724 0.029944152 -0.31157744 0.05692938 -0.47081584 0.034579307 -0.46876103
		 0.056482345 -0.15439664 0.059337318 -0.23031054 -0.10626143 -0.40814757 0.058245718
		 -0.25404721 0.057504117 -0.42150319 0.057461619 -0.49958152 0.058245867 -0.22836407
		 0.058104068 -0.26123852 0.058387607 -0.027006954 0.058072567 -0.2458287 0.058389127
		 -0.43794072 0.056952506 -0.4033258 0.058389515 -0.34547949 0.055116028 -0.18932576
		 0.036480397 -0.39581954 0.055891126 -0.43172777 -0.34891033 -0.15131465 0.058850139
		 -0.45848757 -0.34945762 -0.1513108 0.052538723 -0.33417857 0.058390021 -0.15131465
		 0.058850139 -0.20775987 0.032797903 -0.44624764 0.017165722 -0.053717732 0.04798767
		 -0.27356642 0.057033032 -0.055004478 -0.34518254 -0.18621372 -0.33538127 -0.18102969
		 -0.34729421 -0.42587793 -0.26614475 -0.26441193 0.040627062 -0.41170788 0.053890705
		 0.0027857125 0.057188928 -0.26598322 0.041952044 -0.15087938 -0.32872629 -0.13919413
		 0.040250629 -0.17627259 -0.0052591562 -0.070716202 0.048297733 0.011094838 -0.35064131
		 -0.20884494 -0.34310895 -0.40712023 -0.32950318 -0.030089036 -0.34948874 -0.24993789
		 0.059390217 -0.45540559 -0.35028899 -0.25160968 -0.31476128 -0.082559377 0.047479004
		 -0.20473562 0.013288798 -0.40488601 0.018211188 -0.04241699 -0.34850281 -0.24327548
		 0.050625592 -0.30173755 0.024231762 -0.41742897 0.043534279 -0.045499027 -0.34926099
		 -0.40724599 0.054452807 -0.24962407 0.036138207 -0.25115567 0.039498299 -0.50021136
		 -0.090318739 -0.15336937 -0.10650361 -0.16672455 0.053249031 -0.027100891 -0.34480786
		 -0.056662351 -0.087944508 -0.054745078 0.035890907 -0.40917504 -0.3494041 -0.29971308
		 -0.1591872 -0.16688849 0.052566916 -0.16687472 0.052623093 -0.39376473 -0.34852082
		 -0.28486133 0.054774344 -0.37116313 -0.34878647 -0.26058054 -0.19717205 -0.46978843
		 0.046852499 -0.34445208 -0.34943092 -0.26226586 0.054302633 -0.14309597 -0.34996766
		 -0.22933979 0.015414031 -0.22264619 -0.29125804 -0.22955789 0.046587825 -0.046676636
		 -0.34546697 -0.21760397 -0.30804646 -0.053811669 0.04800728 -0.23740895 0.011722477
		 -0.48646677 0.050428689 -0.088607609 0.0046252031 -0.44615948 0.058489799 -0.070155114
		 0.059360892 -0.34342474 0.059017599 -0.030089036 -0.34948874 -0.17371394 -0.17241317
		 -0.34333128 0.029131562 -0.0013236403 0.059123605 -0.36910844 0.059247673 -0.057827085
		 -0.34793067 -0.43485868 -0.34690899 -0.039335042 -0.34690344 -0.3718226 -0.34187865
		 -0.19343503 -0.34690404 -0.15131465 -0.34896165 -0.16466992 -0.34793162 -0.0280343
		 -0.34467489 -0.24430181 0.042474777 -0.32698733 0.058916479 -0.068100423 -0.34600234
		 -0.27356642 -0.34966266 -0.20288454 0.049450904 -0.4480263 -0.25222254 0.0027857125
		 -0.33688086 -0.31288266 -0.041866302 -0.50163621 -0.0039212704 -0.31233591 -0.15340412
		 0.0038130134 -0.33996284 -0.50283766 -0.063901976 -0.32904452 -0.0074996613 -0.37479413
		 0.058102608 -0.20165364 0.030125767 -0.50283647 -0.030823942 -0.036253035 -0.34647399
		 -0.32185072 -0.34823328 -0.023924947 -0.34697479 -0.21500881 -0.34847265 -0.42253053
		 -0.34750211 -0.26432049 -0.34667778 -0.24069203 -0.34975612 -0.13693199 -0.34955603
		 -0.13693199 -0.34955603 -0.50255245 -0.034497049 -0.33109665 -0.34895259 -0.43794072
		 -0.34647954 -0.2694571 -0.34710723 -0.019815624 -0.34871483 -0.070155114 -0.10777527
		 -0.023924947 -0.34697479 -0.36725557 0.051198393 -0.43485868 -0.34690899 -0.095838547
		 0.052337497 -0.32185072 -0.34823328 -0.27004278 -0.050920963 -0.39787412 -0.34852874
		 -0.28589439 -0.34710747 -0.13384992 -0.34853244 -0.14001396 -0.34925163 -0.32698739
		 -0.3473559 -0.11124855 -0.0061149597 -0.24069203 -0.34975612 -0.32928884 0.011237266
		 -0.15131465 -0.34896165 -0.072495222 0.019286066 -0.26432049 -0.34667778 -0.34595621
		 0.023665428 -0.28281236 -0.35018539 -0.077861071 0.048184216 -0.28281236 -0.35018539
		 -0.32627302 0.040474236 -0.24069203 -0.34975612 -0.2694571 -0.34710723 -0.43794072
		 -0.34647954 -0.33109665 -0.34895259 -0.019815624 -0.34871483 -0.14001396 -0.34925163
		 -0.13384992 -0.34853244 -0.28589439 -0.34710747 -0.32698739 -0.3473559 -0.30812627
		 0.053667814 -0.26199377 0.049977392 0.0031465888 -0.30375952 -0.37321782 -0.34637988
		 -0.35780764 -0.3460027 -0.27356642 -0.34966266 -0.10765392 0.029844284 0.0031466186
		 -0.31969225 -0.47800726 0.048105776 -0.42537725 -0.34215522 -0.032347143 -0.34762347
		 -0.27516627 -0.34654862 -0.44507587 -0.34865975 -0.0054329634 0.050898045 -0.2694571
		 -0.34182155 -0.01021117 0.04878509 -0.37321782 -0.34637988 -0.35469484 -0.34722215
		 -0.26740247 -0.35018551 -0.15245903 -0.33726472 -0.21972291 0.056414485 -0.1898983
		 -0.34735388 0.014086396 -0.31063426 -0.24171929 -0.34696287 0.01015836 -0.30616266
		 -0.25434172 0.021598846 -0.09994787 0.0012654979 -0.24171929 -0.34696287 -0.065018415
		 -0.34931654 -0.4019835 0.005810203 -0.22888045 0.025696814 -0.013612211 0.037721366;
	setAttr ".uvtk[250:499]" -0.068100423 -0.34938192 -0.036864325 -0.32755935
		 -0.068100423 -0.34938192 -0.24891061 -0.3391223 -0.18007983 -0.3504523 -0.4421469
		 0.043966413 -0.28261286 0.033205509 -0.045499027 -0.34926099 -0.41948259 0.056103766
		 -0.17639492 -0.014140751 -0.10144299 0.053750932 -0.22225092 -0.33347118 -0.23527937
		 -0.33649391 -0.23232625 -0.3506971 -0.17752083 0.048734516 -0.42458522 -0.33652639
		 -0.027006984 0.047934949 -0.44457787 -0.32966471 -0.31272006 0.049074918 -0.37010288
		 -0.32978165 -0.17597048 0.042445481 -0.072110623 0.045434862 -0.013651639 -0.34017932
		 -0.25399512 0.048535079 -0.42679006 -0.32569313 -0.080033809 0.022878259 -0.11633012
		 0.042006612 -0.22883566 0.032057405 -0.17600353 -0.0089392625 -0.32874316 0.055856764
		 -0.052647188 -0.32789201 0.0055013299 -0.24321125 -0.027243033 0.041545302 -0.33828807
		 0.058175236 -0.13525513 0.052638441 -0.28341782 0.043055952 -0.27253753 -0.29939777
		 -0.18007983 -0.3504523 -0.37116313 -0.34878647 -0.37116313 -0.34878647 -0.12971079
		 -0.12218285 -0.28357762 0.057390004 -0.17702188 0.047579437 -0.17656036 0.049292624
		 -0.43366683 -0.13805568 -0.1774147 0.043289065 -0.47513491 0.057730675 -0.45129609
		 0.058367193 -0.27819282 -0.34874809 -0.39233565 0.058877319 -0.028303117 0.048750162
		 -0.11133897 -0.29537827 -0.45495737 -0.34384573 -0.36327535 -0.094544142 -0.21465255
		 -0.34241843 -0.46331608 -0.11362565 -0.31157744 0.048195183 -0.27097225 -0.13376534
		 -0.17252685 -0.30559772 -0.027704254 0.029939145 -0.18316172 -0.34852123 -0.4826988
		 -0.13549781 -0.46876115 -0.34940428 -0.40506554 -0.34938449 -0.22836407 0.036631346
		 -0.034124523 -0.32951683 -0.35010695 0.044274628 -0.18624382 -0.35028875 -0.23404403
		 -0.30471671 -0.11776519 0.058361501 -0.17391588 -0.35033071 -0.19138043 -0.34953058
		 -0.26178324 -0.34627968 0.014086396 -0.22946334 -0.3463459 -0.24272202 -0.2182862
		 -0.13004711 -0.22836407 0.015496941 -0.28692168 -0.35022998 -0.48551011 0.050101191
		 -0.034198314 -0.34954643 -0.3187688 -0.35028797 -0.055187583 0.0518215 -0.41122961
		 0.05431518 -0.10097519 0.054205716 -0.46594435 -0.34688616 -0.2066692 -0.13755581
		 -0.39603519 0.05636999 -0.14617798 -0.3118434 -0.41336715 -0.30871677 -0.17662947
		 -0.0012707394 -0.44847214 0.054300278 -0.07118246 -0.34941077 -0.068100423 -0.34938192
		 -0.030089036 -0.34948874 -0.023924947 -0.34948885 -0.18624382 -0.35028875 -0.062608704
		 -0.3472352 -0.17622365 -0.0012314301 -0.027006969 -0.30843306 -0.18624382 -0.35028875
		 -0.32596004 0.054878414 -0.07118246 -0.34941077 -0.075379282 0.05708918 -0.029501081
		 0.044471711 -0.42885554 -0.30565739 -0.45540559 -0.35028899 -0.24993789 0.059390217
		 -0.030089036 -0.34948874 -0.068100423 -0.34938192 0.0077865571 -0.24407266 -0.45540559
		 -0.35028899 -0.4526273 -0.31986713 -0.45540559 -0.35028899 -0.09994787 0.058938801
		 -0.023924947 -0.34948885 -0.24993789 0.059390217 -0.09994787 0.058938801 -0.0085149556
		 -0.34632945 -0.23965685 -0.34457576 -0.23002125 -0.17100877 -0.17793976 -0.17341816
		 -0.09994787 0.058938801 -0.45850313 -0.34110689 -0.012462363 -0.35155576 -0.24993789
		 0.059390217 -0.21461542 -0.32242435 -0.33233291 0.036590248 -0.11470234 0.054339916
		 -0.25382549 -0.31827527 -0.19138043 -0.34953058 -0.28515887 0.043794364 -0.07118246
		 -0.34941077 -0.44856554 0.054242522 -0.139238 0.057925552 -0.17153074 -0.35059094
		 -0.21911825 -0.34953004 -0.33417857 0.058390021 -0.1769978 -0.35033071 -0.18007983
		 -0.3504523 -0.11433056 0.054691553 -0.075291812 0.057024598 -0.07118246 -0.34941077
		 -0.18007983 -0.3504523 -0.1769978 -0.35033071 -0.17391588 -0.35033071 -0.19138043
		 -0.34953058 -0.26859552 -0.31642437 -0.15131465 0.058850139 -0.1769978 -0.35033071
		 -0.34023643 0.059370846 -0.21911825 -0.34953004 -0.17391588 -0.35033071 -0.1769978
		 -0.35033071 -0.42561257 -0.34900743 -0.48672032 -0.11798045 -0.2644732 -0.28267515
		 -0.26639134 0.057725489 -0.17391588 -0.35033071 -0.27040672 0.052571177 -0.26331192
		 -0.32937312 -0.19138043 -0.34953058 -0.27846736 -0.32091045 -0.27858377 0.057345003
		 -0.14370224 0.057428151 -0.21911825 -0.34953004 -0.4703691 0.044070303 -0.4922356
		 0.05635187 -0.42754203 -0.34273076 -0.15131465 0.058850139 -0.15439664 0.059337318
		 -0.49958152 0.018259736 -0.3992008 0.049237281 -0.35834777 -0.32284665 -0.053922802
		 0.052589893 -0.037280366 -0.34954643 -0.48988295 0.057946324 -0.35067809 0.050847411
		 -0.27366418 -0.13474923 -0.48038709 0.05377996 -0.50196576 0.035524815 -0.30746818
		 0.058390081 -0.50266349 0.058586866 -0.35063118 0.058412343 -0.034198314 -0.34954643
		 -0.31201905 0.049574584 -0.35164356 -0.33474565 -0.47983843 0.05659309 -0.50266349
		 0.058586866 0.007922411 0.058546871 -0.19754435 -0.34514129 -0.19959898 -0.27486563
		 -0.23350073 0.039348692 -0.24685597 0.053273052 -0.20450185 -0.13657498 -0.44191694
		 0.050610244 -0.50266349 0.058586866 -0.30746818 0.058390081 -0.47585189 0.046077073
		 -0.46248388 -0.34024835 -0.24906111 0.052464038 -0.26021117 0.016611459 -0.17391588
		 -0.33701438 0.007922411 0.058546871 -0.50266349 0.058586866 -0.44405591 0.05685541
		 -0.46567845 -0.34749901 -0.14622593 0.056665778 -0.49444479 0.05508706 -0.49644244
		 0.058249861 -0.47337365 0.028825074 -0.15439664 0.059337318 -0.15131465 0.058850139
		 -0.14617798 0.049213171 -0.11535788 -0.12118661 -0.16695823 0.052640766 -0.37116313
		 -0.34878647 -0.027429104 0.027561396 -0.10097519 -0.27121496 -0.46942091 0.050452322
		 -0.28178507 0.056215435 -0.39376473 -0.34852082 -0.26729578 -0.0096695982 -0.19396134
		 0.0099148173 -0.14617798 -0.25514203 -0.18316172 -0.34852123 -0.1670443 0.051939726
		 -0.16697119 0.05258733 -0.23350073 -0.050316155 -0.17597048 0.047905833 -0.029566184
		 0.038980126 -0.28897631 0.014838072 -0.027006954 0.012912484 -0.21809085 -0.34739435
		 -0.41248059 -0.0098238848 -0.22836407 0.025732189 -0.22256254 0.037066281 -0.25910431
		 0.055603385 -0.4085499 -0.026617255 -0.065018415 -0.34931654 -0.35780764 -0.3493796
		 -0.28238368 0.033116072 -0.054060549 0.046352148 -0.2032253 -0.3514033 -0.22582264
		 0.058096826 -0.22947277 0.032013744 -0.35780764 -0.3493796 0.0038130283 -0.34945786
		 -0.070155114 0.0087404568 -0.10581192 0.058496147 -0.40865284 -0.29208267;
	setAttr ".uvtk[500:749]" -0.04960838 -0.35169005 -0.054151326 0.046371043 -0.27381074
		 0.057129502 -0.35780764 -0.3493796 -0.065018415 -0.34931654 -0.43104869 -0.30897987
		 -0.41580516 0.058746427 -0.44892681 0.048136592 -0.18067653 -0.34185755 0.0025651753
		 0.057362288 -0.40270972 0.039029479 0.0038130283 -0.34945786 -0.35780764 -0.3493796
		 -0.013419807 0.037568867 -0.18070118 -0.34223795 -0.31125724 0.013011815 -0.17653011
		 -0.0089383684 -0.39992881 0.022007793 -0.17597048 -0.014141526 -0.30027688 -0.0053532422
		 -0.12408754 0.057295412 -0.20111682 -0.30701989 -0.20289011 -0.344881 -0.049647838
		 -0.3451643 -0.20122315 -0.30927414 -0.40504807 0.055449218 -0.40609288 -0.31331867
		 -0.053717732 0.058590412 -0.42313343 -0.28891176 -0.053717732 0.058590412 -0.48622602
		 0.05839172 -0.054781139 -0.35171664 -0.48622602 0.05839172 -0.083510458 0.059318542
		 -0.18764104 0.058463812 -0.16294725 0.05851388 -0.20274349 -0.34148133 -0.24420972
		 0.051419765 -0.43775713 0.030021667 -0.053717732 0.058590412 -0.1219528 0.058397382
		 -0.48622602 0.05839172 -0.053717732 0.058590412 -0.31350547 0.043913811 -0.036253035
		 0.059348315 -0.43588603 0.00036138482 -0.036253035 0.059348315 -0.25810647 0.056316048
		 -0.5037204 0.038797975 -0.32596636 -0.17300534 -0.21051408 -0.34843445 -0.053717762
		 0.051736176 -0.48394549 0.057233602 -0.087484628 -0.15467507 -0.50137901 0.051127523
		 -0.36310601 -0.34220016 -0.48314399 0.056966782 -0.31234288 0.047914535 -0.034198314
		 -0.34954643 -0.45026881 -0.11601901 -0.37615955 -0.097648799 -0.037280366 -0.34954643
		 -0.15336934 0.055308312 -0.5036909 0.052225739 -0.10176837 -0.37732065 -0.027006984
		 0.052623302 -0.17597048 0.055373132 -0.45118845 -0.2543003 -0.33212399 0.055520453
		 -0.15336934 0.055308312 -0.48142517 -0.36342591 -0.17597048 0.055373132 -0.002350986
		 0.055626869 -0.16158797 -0.26027179 -0.060909063 -0.34973055 -0.48513466 -0.2611627
		 -0.21464194 -0.25136679 -0.060909063 -0.34973055 -0.034198314 -0.34954643 -0.34445208
		 -0.34943092 -0.037280366 -0.34954643 -0.22890295 0.022603214 -0.027550191 0.049236834
		 -0.28692168 -0.35022998 -0.37835455 0.056234658 -0.49958152 0.050956935 -0.08556515
		 -0.1544348 -0.45097649 -0.3498106 -0.22990794 0.047433436 -0.3187688 -0.35028797
		 -0.15981658 -0.17358246 -0.043821901 -0.34568208 -0.43638957 -0.34461981 -0.22982518
		 0.022517741 -0.32437968 -0.17189869 -0.50198543 0.038297743 -0.43171549 -0.32350338
		 -0.033170968 -0.3321479 -0.19244079 0.05871895 -0.28692168 -0.35022998 -0.027757168
		 0.047430575 -0.2035767 0.029699832 -0.18250443 0.05782792 -0.19035308 0.056855291
		 -0.3394357 0.0092161614 -0.17371394 0.058877826 -0.18053512 0.057866842 0.0027857125
		 -0.33342457 -0.16672455 0.040474355 0.0027857125 -0.33342457 -0.24171929 0.05863288
		 -0.09994787 0.058938801 -0.17597048 -0.17337924 -0.15747868 -0.17193007 -0.18307646
		 -0.17199987 -0.20796631 0.04951632 -0.22836407 0.047389567 -0.10097519 -0.28553402
		 -0.26123852 -0.34966874 -0.3187688 -0.35028797 -0.14309597 -0.34996766 -0.4016732
		 -0.1378305 -0.060909063 -0.34973055 -0.21598427 -0.27705181 -0.089911997 0.0023372788
		 -0.21613355 -0.27990901 -0.26123852 -0.34966874 -0.45570064 -0.34448326 -0.22872438
		 0.048223764 -0.45026881 -0.34921312 -0.26123852 -0.34966874 -0.21519117 -0.15793887
		 -0.24827719 -0.27936721 -0.34445208 -0.34943092 -0.21541511 -0.34308243 -0.05478552
		 0.051092923 -0.20987229 -0.34788519 -0.34445208 -0.34943092 -0.32904196 -0.26174337
		 -0.14309597 -0.34996766 -0.24719918 -0.28201735 -0.22014551 -0.29208416 -0.50305784
		 -0.27960169 -0.060909063 -0.34973055 -0.16445683 0.021956354 -0.3187688 -0.35028797
		 -0.26123852 -0.34966874 -0.41302139 -0.11216074 -0.14309597 -0.34996766 -0.28692168
		 -0.35022998 -0.22610052 -0.1346308 -0.23658271 -0.30811656 -0.25796831 -0.25554264
		 -0.48519862 -0.090120703 -0.037280366 -0.34954643 -0.2458287 -0.35518849 -0.26641709
		 0.049272656 -0.33461332 0.048933953 -0.082458705 0.047404766 -0.3347044 0.048909664
		 -0.016670331 -0.34856522 -0.43767619 -0.31812 -0.027006969 0.041759133 -0.43515456
		 -0.2851724 -0.029779136 0.044219792 -0.43280399 -0.30050814 0.012158379 -0.22862941
		 -0.11808085 0.058062911 -0.2766484 0.056408614 -0.25245887 -0.31264305 -0.33417857
		 0.047310531 -0.012877986 -0.34324026 -0.33427298 0.047285467 -0.070230484 0.049818665
		 -0.33959442 -0.35128754 -0.11843994 0.016725453 -0.13487729 0.052966624 -0.16569339
		 -0.32994235 -0.13974553 0.057484597 -0.12250662 0.032221228 -0.34774637 0.042731583
		 -0.22973911 -0.32014799 0.011130229 -0.34218574 -0.070155114 0.049790144 -0.4420501
		 0.044026136 -0.17597048 -0.0052298903 -0.33460671 0.037385345 -0.15131465 0.058850139
		 -0.33417857 0.058390021 -0.33852857 -0.34290648 -0.15012112 -0.28207415 -0.4985553
		 -0.11724022 -0.24069203 -0.34975612 -0.21500881 -0.34847265 -0.50375247 -0.030783113
		 -0.36910844 0.059247673 -0.50163609 -0.03453448 -0.32390541 0.040229976 -0.098832458
		 0.025574982 -0.21500881 -0.34847265 -0.26740247 -0.35018551 -0.39787412 -0.34852874
		 -0.10119787 0.025839567 -0.35128498 -0.3395111 -0.36746639 -0.33989465 -0.39787412
		 -0.34852874 0.0070745647 -0.30823117 -0.14604393 -0.33503652 -0.36397171 -0.34756756
		 -0.10419354 0.030349404 -0.48219168 0.021503359 -0.14206862 -0.3464812 -0.197625
		 -0.33802193 -0.42029673 -0.33764881 -0.48564625 0.022046775 -0.20764314 0.056411028
		 -0.21584676 0.059223175 -0.41225696 -0.34671241 -0.27356642 -0.34966266 -0.32698733
		 0.058916479 -0.21089958 0.052395821 -0.013621062 0.056496143 -0.29760766 0.059234053
		 -0.32698733 0.058916479 0.0070745945 -0.29229832 0.01113838 -0.32629585 -0.29411298
		 0.051561087 -0.25861734 0.050887853 -0.29719496 0.028809488 0.015113682 -0.33774072
		 -0.282893 -0.33721673 -0.44803518 -0.33508968 -0.3005507 0.027825743 -0.037105709
		 -0.34066343 -0.16219263 -0.34776056 -0.43999541 -0.3441534 -0.28281236 -0.35018539
		 -0.079401135 0.059322149 -0.15724544 -0.34093332 -0.075520933 0.048618764 -0.36191702
		 0.02480334 -0.079401135 0.059322149 -0.13693199 -0.34955603 -0.023924947 -0.34697479
		 -0.36424994 0.02433151 -0.31128895 -0.06876412 -0.023924947 -0.34697479 -0.2060432
		 0.049942344 -0.18110712 -0.17196083 -0.23350073 0.058053404;
	setAttr ".uvtk[750:999]" -0.34342474 0.059017599 -0.33985621 0.047763288 -0.34311521
		 -0.15368691 -0.0013236403 0.059123605 -0.36910844 0.059247673 -0.23658271 -0.34720123
		 -0.34402841 -0.15360323 -0.50255227 -0.0038803816 -0.1187911 -0.19130301 -0.23658271
		 -0.34720123 -0.21500881 -0.34847265 -0.057827085 -0.34793067 -0.12116075 -0.19108021
		 -0.098203897 0.052602112 0.0038129985 -0.34600246 -0.33006936 -0.34530115 -0.20987229
		 0.058893234 -0.057827085 -0.34793067 -0.39787412 -0.34852874 -0.13693199 -0.3467629
		 0.0038129985 -0.34600246 -0.36832786 -0.34955168 -0.13693199 -0.3467629 -0.14848375
		 -0.34870946 -0.13693199 -0.3467629 -0.48146176 0.048649192 0.0038129985 -0.34600246
		 -0.13693199 -0.3467629 -0.41733742 -0.35121894 -0.33006936 -0.34530115 0.0038129985
		 -0.34600246 -0.21477573 0.049587071 -0.019815654 -0.34535325 -0.065018401 -0.34600234
		 -0.0088429153 0.058609098 -0.065018401 -0.34600234 -0.18316172 -0.34623599 0.014086396
		 -0.2947014 -0.18316172 -0.34623599 -0.2509653 0.022509277 -0.18316172 -0.34623599
		 -0.27718389 -0.33248973 -0.18316172 -0.34623599 -0.065018401 -0.34600234 -0.032792866
		 -0.33771473 -0.065018401 -0.34600234 -0.019815654 -0.34535325 -0.17597048 0.058893353
		 -0.19343503 -0.34690404 -0.28281236 -0.35018539 -0.19343503 -0.34690404 -0.15802984
		 0.057668418 -0.070155114 0.019720584 -0.16037758 0.057276517 -0.40095615 -0.34647411
		 -0.13693199 -0.34955603 -0.40095615 -0.34647411 -0.37388897 0.058249921 -0.31055015
		 -0.098146796 -0.46876115 -0.34940428 -0.1771463 0.041853905 -0.031201988 -0.32762599
		 -0.2297181 0.035549283 -0.40917504 -0.3494041 -0.056816041 -0.099309146 -0.028086901
		 0.01268536 -0.29007226 0.01470405 -0.28384608 -0.34157825 -0.23032533 0.036992729
		 -0.070155114 0.036538452 -0.10206994 -0.27135777 -0.028520316 0.027725965 -0.017063707
		 -0.32581496 -0.070995212 0.036338001 -0.17624994 0.043914795 -0.46876115 -0.34940428
		 -0.44772768 -0.13476115 -0.40506554 -0.34938449 -0.42775595 0.058247179 -0.15722315
		 -0.31580198 -0.40506554 -0.34938449 -0.46876115 -0.34940428 -0.46572673 0.057797492
		 -0.40917504 -0.3494041 -0.027006969 -0.34938437 -0.40917504 -0.3494041 -0.027006969
		 -0.34938437 -0.0097105652 0.034711987 -0.055229127 -0.22324973 -0.47617853 0.025608957
		 0.0079223663 0.055030555 -0.027006969 -0.34938437 -0.27767569 -0.34827888 -0.18316172
		 -0.34852123 -0.16543789 -0.27515048 -0.47492522 0.026840419 -0.29873329 -0.15773004
		 -0.22892974 0.038102835 -0.28449184 -0.34215176 -0.027006969 -0.34938437 -0.46684039
		 -0.11343652 -0.25404721 0.011133822 -0.27701795 0.016345086 -0.39376473 -0.34852082
		 -0.47566342 0.057252228 -0.40506554 -0.34938449 -0.14617798 -0.29100025 -0.25539643
		 0.012259366 -0.15468098 -0.10533607 -0.28286576 0.054037094 -0.46876115 0.051037461
		 -0.39376473 -0.34852082 -0.15155998 0.048770398 -0.072791487 0.04527998 -0.41636634
		 0.033580065 -0.16711237 0.051956385 -0.18316172 -0.34852123 -0.027006969 0.030087739
		 -0.27893138 -0.21804219 -0.16679271 0.053265601 -0.13437641 0.02692911 -0.17426889
		 -0.34231532 -0.2714231 0.047101945 -0.17160834 -0.30788827 -0.17429073 -0.34265083
		 -0.34306806 -0.34579027 -0.070794314 0.048327208 -0.48285913 -0.0033974349 0.0069758445
		 -0.34722996 0.0043603033 0.025562167 -0.48431754 -0.0048457682 -0.058366686 0.058384001
		 0.016623586 0.057938308 -0.083510458 0.059318542 -0.48622602 0.05839172 -0.1746224
		 -0.34789765 -0.036253035 0.059348315 0.007922411 0.058546871 -0.18034737 -0.33678448
		 -0.023924947 -0.34948885 -0.09994787 0.058938801 0.019223034 -0.42415178 -0.060642749
		 -0.24565057 -0.012492612 0.00041678734 -0.18624382 -0.35028875 -0.023924947 -0.34948885
		 0.015113682 -0.34547305 -0.24777776 -0.048537463 -0.028705582 0.039172888 -0.045499027
		 -0.34926099 0.0038130283 -0.34945786 -0.070266783 -0.015193786 0.0038130283 -0.34945786
		 -0.11433056 0.043038219 -0.053717732 0.058590412 -0.045499027 -0.34926099 -0.39787412
		 0.039886117 -0.10543472 0.058862865 -0.053717732 0.058590412 -0.39992231 0.03895703
		 -0.077561587 -0.0047538579 -0.04241699 -0.34850281 -0.41026497 -0.33472288 -0.23852317
		 0.058032662 -0.41541761 0.059090525 -0.04241699 -0.34850281 -0.065018415 -0.34931654
		 -0.25301993 0.049231619 -0.036253035 0.059348315 -0.04241699 -0.34850281 -0.036253035
		 0.059348315 -0.23761003 0.05725649 -0.40712023 -0.34706467 -0.062963769 -0.15607992
		 -0.42253053 -0.34750211 -0.13384992 -0.34853244 -0.14001396 -0.34925163 -0.1125859
		 -0.083937526 -0.15131465 -0.34896165 -0.11562937 -0.10130653 -0.038307667 -0.34339654
		 0.0038130134 -0.34308815 -0.14001396 -0.34925163 -0.16466992 -0.34793162 -0.066255465
		 -0.19364029 -0.11505926 -0.043626338 0.0038130134 -0.34308815 -0.26637512 -0.34402525
		 -0.15131465 -0.34896165 -0.090701818 0.058241546 -0.057827085 -0.34793067 -0.019815624
		 -0.34871483 -0.33109665 -0.34895259 -0.25918388 0.0057307798 -0.32185072 -0.34823328
		 -0.25963885 -0.011897054 -0.13898665 -0.34382522 -0.065018415 -0.34308803 -0.33109665
		 -0.34895259 -0.23658271 -0.34720123 -0.091854125 0.020554841 -0.27373278 -0.088444352
		 -0.065018415 -0.34308803 -0.35780764 -0.3423692 -0.32185072 -0.34823328 -0.067155525
		 0.057533652 -0.16466992 -0.34793162 -0.26740247 -0.35018551 -0.42253053 -0.34750211
		 -0.064776108 0.057475954 -0.32692122 0.010993125 -0.26637512 -0.34402525 -0.17597048
		 0.058893353 -0.16466992 -0.34793162 -0.17597048 0.058893353 -0.019815654 -0.34535325
		 -0.35780764 -0.3460027 -0.34650677 -0.34162414 -0.26740247 -0.35018551 -0.5037539
		 -0.063864529 -0.28988409 0.058443636 -0.42253053 -0.34750211 -0.31332344 -0.15382937
		 0.0038130134 -0.33996284 -0.038307667 -0.34339654 -0.13384992 -0.34853244 -0.20987229
		 0.058893234 -0.13898665 -0.34382522 -0.019815624 -0.34871483 -0.35780764 -0.3423692
		 0.0027857125 -0.33688086 -0.31757605 0.058315516 -0.23658271 -0.34720123 -0.12357658
		 -0.1911329 -0.19343503 -0.34690404 -0.32698739 -0.3473559 -0.28589439 -0.34710747
		 -0.33109665 -0.032070812 -0.26432049 -0.34667778 -0.33835334 -0.015999403 -0.26637512
		 -0.34402525 0.0038130134 -0.34308815 -0.28589439 -0.34710747 -0.40095615 -0.34647411
		 -0.13212091 -0.15440947 -0.35895234 0.059059262 0.0038130134 -0.34308815 -0.038307667
		 -0.34339654 -0.26432049 -0.34667778 -0.087780684 0.02077812;
	setAttr ".uvtk[1000:1249]" -0.036253035 -0.34647399 -0.43794072 -0.34647954 -0.2694571
		 -0.34710723 -0.077538073 -0.030292209 -0.43485868 -0.34690899 -0.076458156 -0.012691673
		 -0.35780764 -0.3423692 -0.065018415 -0.34308803 -0.2694571 -0.34710723 -0.039335042
		 -0.34690344 -0.087040931 0.058475226 -0.070567578 -0.070073128 -0.065018415 -0.34308803
		 -0.13898665 -0.34382522 -0.43485868 -0.34690899 -0.069127798 -0.19206065 -0.039335042
		 -0.34690344 -0.079401135 0.059322149 -0.036253035 -0.34647399 -0.071505696 -0.19216424
		 -0.36958849 0.050726563 -0.17597048 0.058893353 -0.26637512 -0.34402525 -0.32698739
		 -0.3473559 -0.038307667 -0.34339654 0.0038130134 -0.33996284 -0.34650677 -0.15355062
		 -0.40095615 -0.34647411 -0.13898665 -0.34382522 -0.20987229 0.058893234 -0.039335042
		 -0.34690344 -0.20987229 0.058893234 -0.33006936 -0.34530115 -0.068100423 -0.34600234
		 -0.15336934 -0.34374189 -0.079401135 0.059322149 -0.31196594 -0.041843265 -0.36377263
		 -0.056557238 -0.036253035 -0.34647399 -0.44909549 -0.25233579 0.0027857125 -0.33688086
		 -0.35780764 -0.3423692 -0.43794072 -0.34647954 0.01015833 -0.32209527 -0.24171929
		 -0.34696287 -0.19191588 -0.33329475 -0.10340822 0.00076037832 -0.35780764 -0.3460027
		 -0.20333026 0.059359729 -0.1841891 -0.34262669 -0.34991664 -0.34933507 -0.35780764
		 -0.3460027 -0.24171929 -0.34696287 -0.45311546 -0.33959615 -0.37321782 -0.34637988
		 0.0086984932 -0.33996898 -0.30477041 0.054651558 -0.068100423 -0.34600234 -0.29846919
		 0.049577057 0.0047232211 -0.32852411 -0.15831651 -0.35056931 -0.068100423 -0.34600234
		 -0.37321782 -0.34637988 -0.019815654 -0.34535325 -0.27356642 -0.34966266 -0.19857164
		 0.052399516 -0.33006936 -0.34530115 -0.32698733 0.058916479 -0.30196387 0.057250023
		 0.0027857125 -0.33342457 -0.32904202 -0.0075007938 -0.31146693 -0.098169774 -0.36910844
		 0.059247673 -0.070155114 0.059360892 -0.28897631 0.058313191 -0.24171929 0.05863288
		 0.0027857125 -0.33342457 -0.34750211 -0.15314376 -0.070155114 0.059360892 -0.24171929
		 0.05863288 0.0038130134 -0.33996284 -0.33985472 0.047762334 -0.34342474 0.059017599
		 -0.36294436 -0.056950942 -0.34342474 0.059017599 -0.44615948 0.058489799 0.0027857125
		 -0.33688086 -0.44615948 0.058489799 -0.0013236403 0.059123605 -0.31671417 0.05767262
		 -0.0051555037 -0.20990372 -0.070155114 0.059360892 -0.0054254532 -0.42290586 0.017253369
		 -0.42416239 -0.09994787 0.058938801 -0.24171929 0.05863288 -0.0032360852 -0.15361494
		 -0.36910844 0.059247673 -0.2857421 -0.16645747 -0.18567182 0.058502793 -0.083510458
		 0.059318542 -0.44615948 0.058489799 -0.083510458 0.059318542 0.014653951 0.057927608
		 0.011004388 0.058910817 -0.0013236403 0.059123605 -0.33520597 -0.34851027 -0.33417857
		 0.058390021 -0.21911825 -0.34953004 -0.19806351 -0.35166371 0.007922411 0.058546871
		 -0.036253035 0.059348315 -0.13179529 0.05701825 -0.22945417 0.041155428 -0.3568238
		 -0.29362047 -0.47900176 -0.026429232 -0.50362945 0.023083299 -0.47287053 0.01625091
		 -0.12784818 0.055697471 -0.36336052 0.05935505 -0.072209775 0.056335092 -0.30746818
		 0.058390081 -0.072209775 0.056335092 -0.3233878 0.052138329 -0.11208326 0.053800106
		 0.010641336 -0.093036115 -0.47177756 0.041275501 0.010908991 -0.13615364 -0.44039345
		 0.040162563 -0.17705987 0.037990093 -0.13179529 0.05701825 -0.15439664 0.059337318
		 -0.22836407 0.058104068 -0.2458287 0.058389127 -0.027006954 0.058072567 -0.11226735
		 0.039766937 -0.26123852 0.058387607 -0.10302985 -0.023366537 -0.11843994 0.038105667
		 -0.47520834 0.0082334597 -0.027006954 0.058072567 -0.22836407 0.058104068 -0.10704195
		 -0.023953613 -0.47898817 -0.018077906 -0.36521661 -0.31171864 -0.26123852 0.058387607
		 -0.48193276 -0.029392656 -0.12195078 0.036116391 -0.2458287 0.058389127 -0.36159825
		 -0.31350511 -0.48006183 -0.07039085 -0.22836407 0.058104068 -0.25404721 0.057504117
		 -0.49958152 0.058245867 -0.42150319 0.057461619 -0.1224812 -0.045629144 -0.40814757
		 0.058245718 -0.12769601 0.017963083 -0.43464029 0.059264541 0.012031674 -0.12787807
		 -0.42150319 0.057461619 -0.25404721 0.057504117 -0.12365469 0.018294485 0.011866629
		 -0.10129711 -0.10695359 0.034521192 -0.40814757 0.058245718 -0.10302985 0.035463333
		 -0.44823742 -0.045532167 -0.25404721 0.057504117 -0.44861376 -0.086571276 -0.4307493
		 0.058195472 -0.49958152 0.058245867 -0.14334017 -0.33431995 -0.5036909 0.052225739
		 -0.093783855 0.057127237 -0.36191702 0.057113856 -0.13287464 0.052849412 -0.22836407
		 0.041253954 -0.096865863 0.057127237 -0.027006984 0.052623302 -0.072328627 -0.25909746
		 -0.48143876 -0.083233058 -0.32082337 0.052866906 -0.093783855 0.057127237 -0.5036909
		 0.052225739 -0.31910038 -0.2374251 -0.44615948 -0.032784577 -0.34983194 -0.33620077
		 -0.027006984 0.052623302 -0.096865863 0.057127237 -0.17597048 0.038095981 -0.43482268
		 0.038632005 -0.31157744 0.05692938 -0.21706356 0.025507212 -0.46876103 0.056482345
		 -0.081455797 0.057119995 -0.27962446 -0.1024828 -0.081455797 0.057119995 -0.22955243
		 0.043317467 -0.13179529 0.05701825 -0.46876103 0.056482345 -0.31157744 0.05692938
		 -0.081455797 0.057119995 -0.13179529 0.05701825 -0.1767544 0.035847425 -0.28487569
		 0.029785156 -0.096865863 0.057127237 -0.22880016 0.043385476 -0.2263139 -0.1065414
		 -0.17600258 0.035920471 -0.096865863 0.057127237 -0.31157744 0.05692938 -0.16672455
		 0.056929052 -0.34867859 0.007260235 -0.11022124 0.056480378 -0.24274667 0.056334496
		 -0.0098558962 -0.13550696 -0.24274667 0.056334496 -0.32460034 0.05726853 -0.072209775
		 0.056335092 -0.11022124 0.056480378 -0.16672455 0.056929052 -0.24274667 0.056334496
		 -0.072209775 0.056335092 -0.36766034 0.056305081 -0.00060555339 -0.0034583211 -0.36636025
		 0.053242326 -0.093783855 0.057127237 -0.16672455 0.056929052 -0.093783855 0.057127237
		 -0.32160085 0.058708638 -0.34342474 -0.13104942 -0.37804949 -0.35141414 -0.42577362
		 -0.26272565 -0.002350986 0.055626869 -0.40720201 -0.16849381 -0.35164356 -0.24313436
		 -0.15336934 0.055308312 -0.082483113 0.053253315 -0.17597048 0.052324422 -0.18220435
		 -0.29859823 -0.17597048 0.052324422 -0.33315134 0.05232475 -0.33212399 0.055520453
		 -0.26123852 -0.25256693 -0.5036909 0.052225739 -0.15336934 0.055308312 -0.027006984
		 0.052623302 -0.29359299 -0.35655856 -0.40315086 -0.34397912;
	setAttr ".uvtk[1250:1299]" -0.024860173 -0.32253778 -0.053717747 0.05572379 -0.0085149407
		 -0.32241744 -0.22836407 0.052327171 -0.029061615 0.0553075 -0.22836407 0.052327171
		 -0.24993789 0.056139484 -0.50266349 0.055742338 -0.015618682 -0.3225919 -0.041307509
		 0.057673365 -0.22836407 0.052327171 -0.50266349 0.055742338 -0.22836407 0.055214159
		 -0.029061615 0.0553075 -0.22836407 0.055214159 -0.49958152 0.055112764 -0.034208328
		 0.057980448 -0.49958152 0.055112764 -0.24993789 0.056139484 -0.053717747 0.05572379
		 -0.42150319 0.055259533 -0.044661552 -0.26651436 -0.50266349 0.055742338 -0.043444365
		 0.058555365 -0.31157744 0.054232486 -0.22836407 0.055214159 -0.31157744 0.054232486
		 -0.050721645 -0.26651329 -0.49958152 0.055112764 -0.048581064 0.058551669 -0.42150319
		 0.055259533 -0.24993789 0.056139484 -0.082483113 0.053253315 -0.070155114 0.053351887
		 -0.045584977 -0.2665109 -0.070155114 0.053351887 -0.33315134 0.05232475 -0.31157744
		 0.054232486 -0.33315134 0.05232475 -0.17597048 0.052324422 -0.05164507 -0.26650721
		 -0.17597048 0.052324422 -0.082483113 0.053253315 -0.42150319 0.055259533 -0.002350986
		 0.055626869 -0.39500022 -0.29349816 -0.070155114 0.053351887 -0.36705375 -0.15169889
		 -0.33212399 0.055520453 -0.33315134 0.05232475;
createNode polyPlanarProj -n "polyPlanarProj8";
	rename -uid "8ECCC181-4824-6004-7AAC-13AD8E699C4C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 54 "f[0:1]" "f[11]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[42]" "f[44]" "f[46]" "f[48:56]" "f[82:91]" "f[94:95]" "f[98]" "f[101:102]" "f[104:107]" "f[109:110]" "f[112:115]" "f[117:118]" "f[120:123]" "f[125]" "f[127]" "f[129]" "f[131]" "f[133]" "f[135:136]" "f[138:142]" "f[144]" "f[146:150]" "f[152:154]" "f[156:157]" "f[160:161]" "f[164:166]" "f[168:170]" "f[175]" "f[183:188]" "f[190:192]" "f[194]" "f[197]" "f[200:210]" "f[212:213]" "f[215:238]" "f[240:254]" "f[258:259]" "f[262:284]" "f[286]" "f[297:298]" "f[300]" "f[302]" "f[309]" "f[314]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 181.82170104980469 0 ;
	setAttr ".ps" -type "double2" 109.74130249023438 368.30679321289063 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "58925DFB-499D-D9CF-5608-C981B678680E";
	setAttr ".uopa" yes;
	setAttr -s 321 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.065062165 0.069182605 ;
	setAttr ".uvtk[1]" -type "float2" 0.059618473 -0.092949688 ;
	setAttr ".uvtk[2]" -type "float2" -0.060959071 -0.096108079 ;
	setAttr ".uvtk[4]" -type "float2" -0.063738525 0.066435903 ;
	setAttr ".uvtk[5]" -type "float2" -0.06454134 -0.36076367 ;
	setAttr ".uvtk[6]" -type "float2" 0.059408724 0.057314277 ;
	setAttr ".uvtk[7]" -type "float2" 0.035142273 0.28051561 ;
	setAttr ".uvtk[9]" -type "float2" -0.08690083 -0.15047163 ;
	setAttr ".uvtk[12]" -type "float2" 0.2187748 0.0029075108 ;
	setAttr ".uvtk[17]" -type "float2" 0.21876496 0.00053730235 ;
	setAttr ".uvtk[25]" -type "float2" -0.21877477 -0.0029075108 ;
	setAttr ".uvtk[26]" -type "float2" -0.21876498 -0.00053730235 ;
	setAttr ".uvtk[30]" -type "float2" 0.2560519 -0.0059463643 ;
	setAttr ".uvtk[31]" -type "float2" 0.25518274 0.05249434 ;
	setAttr ".uvtk[35]" -type "float2" -0.25605187 0.0059463661 ;
	setAttr ".uvtk[37]" -type "float2" -0.25518274 -0.05249434 ;
	setAttr ".uvtk[39]" -type "float2" 0.25620496 0.022348251 ;
	setAttr ".uvtk[41]" -type "float2" 0.25571108 0.0041034967 ;
	setAttr ".uvtk[45]" -type "float2" -0.25620496 -0.022348251 ;
	setAttr ".uvtk[47]" -type "float2" -0.25571108 -0.0041034985 ;
	setAttr ".uvtk[48]" -type "float2" 0.067333758 0.14018953 ;
	setAttr ".uvtk[53]" -type "float2" -0.064845145 0.13749087 ;
	setAttr ".uvtk[54]" -type "float2" 0.11359596 0.24031165 ;
	setAttr ".uvtk[59]" -type "float2" 0.088620186 0.46909374 ;
	setAttr ".uvtk[71]" -type "float2" 0.10172528 0.19654728 ;
	setAttr ".uvtk[79]" -type "float2" -0.097367942 0.19254628 ;
	setAttr ".uvtk[80]" -type "float2" 0.20628357 0.42224905 ;
	setAttr ".uvtk[84]" -type "float2" 0.16862535 0.76670462 ;
	setAttr ".uvtk[86]" -type "float2" 0.043108106 0.012602329 ;
	setAttr ".uvtk[87]" -type "float2" 0.042170227 0.002156198 ;
	setAttr ".uvtk[90]" -type "float2" -0.043108106 -0.012602329 ;
	setAttr ".uvtk[91]" -type "float2" -0.042170197 -0.002156198 ;
	setAttr ".uvtk[92]" -type "float2" -0.028598666 0.077565193 ;
	setAttr ".uvtk[96]" -type "float2" -0.03995347 0.1011101 ;
	setAttr ".uvtk[97]" -type "float2" 0.028598636 -0.077565193 ;
	setAttr ".uvtk[101]" -type "float2" 0.0399535 -0.1011101 ;
	setAttr ".uvtk[103]" -type "float2" 0.085307777 -0.18843248 ;
	setAttr ".uvtk[104]" -type "float2" 0.088852942 -0.19380301 ;
	setAttr ".uvtk[107]" -type "float2" -0.081424832 0.17991048 ;
	setAttr ".uvtk[108]" -type "float2" -0.092735887 0.20232499 ;
	setAttr ".uvtk[111]" -type "float2" -0.086685479 0.0021152496 ;
	setAttr ".uvtk[112]" -type "float2" -0.095247775 0.013085365 ;
	setAttr ".uvtk[113]" -type "float2" 0.090741694 -0.0024541616 ;
	setAttr ".uvtk[114]" -type "float2" 0.09119153 -0.012746453 ;
	setAttr ".uvtk[115]" -type "float2" 0.089163423 0.012577057 ;
	setAttr ".uvtk[116]" -type "float2" 0.088713586 0.0022847056 ;
	setAttr ".uvtk[117]" -type "float2" -0.089163408 -0.012577057 ;
	setAttr ".uvtk[118]" -type "float2" -0.088713601 -0.0022847056 ;
	setAttr ".uvtk[119]" -type "float2" -0.07948336 0.17564946 ;
	setAttr ".uvtk[120]" -type "float2" -0.090794414 0.19806397 ;
	setAttr ".uvtk[121]" -type "float2" 0.07948336 -0.17564946 ;
	setAttr ".uvtk[122]" -type "float2" 0.090794414 -0.19806397 ;
	setAttr ".uvtk[123]" -type "float2" 0.032819808 -0.093980491 ;
	setAttr ".uvtk[124]" -type "float2" -0.03488791 -0.096312284 ;
	setAttr ".uvtk[125]" -type "float2" 0.058535695 -0.10270643 ;
	setAttr ".uvtk[126]" -type "float2" 0.032611012 -0.10599738 ;
	setAttr ".uvtk[127]" -type "float2" -0.061345309 -0.10596162 ;
	setAttr ".uvtk[128]" -type "float2" -0.03456223 -0.10837644 ;
	setAttr ".uvtk[130]" -type "float2" -0.075332046 -0.3287743 ;
	setAttr ".uvtk[131]" -type "float2" -0.085203081 -0.20449948 ;
	setAttr ".uvtk[132]" -type "float2" -0.10291171 -0.19629538 ;
	setAttr ".uvtk[133]" -type "float2" -0.092725337 -0.2327942 ;
	setAttr ".uvtk[134]" -type "float2" -0.080929458 -0.40598312 ;
	setAttr ".uvtk[135]" -type "float2" -0.083132207 -0.35660717 ;
	setAttr ".uvtk[137]" -type "float2" 0.05490616 0.34377134 ;
	setAttr ".uvtk[138]" -type "float2" -0.10723495 0.11793125 ;
	setAttr ".uvtk[139]" -type "float2" -0.10688677 0.1038003 ;
	setAttr ".uvtk[141]" -type "float2" 0.031876892 0.29434144 ;
	setAttr ".uvtk[142]" -type "float2" -0.27828118 -0.13152844 ;
	setAttr ".uvtk[144]" -type "float2" -0.2399835 -0.22663558 ;
	setAttr ".uvtk[145]" -type "float2" -0.23670906 -0.19645721 ;
	setAttr ".uvtk[146]" -type "float2" -0.25562343 -0.10529017 ;
	setAttr ".uvtk[147]" -type "float2" -0.0054792464 -0.0048772097 ;
	setAttr ".uvtk[148]" -type "float2" -0.022527635 -0.02836138 ;
	setAttr ".uvtk[150]" -type "float2" -0.20897454 -0.28205192 ;
	setAttr ".uvtk[151]" -type "float2" -0.23348886 -0.3394866 ;
	setAttr ".uvtk[155]" -type "float2" 0.21787766 0.28379488 ;
	setAttr ".uvtk[156]" -type "float2" 0.17310572 0.24288118 ;
	setAttr ".uvtk[158]" -type "float2" 0.15199047 0.32209396 ;
	setAttr ".uvtk[160]" -type "float2" 0.095856071 0.26632965 ;
	setAttr ".uvtk[161]" -type "float2" -0.10512131 0.10476923 ;
	setAttr ".uvtk[163]" -type "float2" -0.11746868 0.087630153 ;
	setAttr ".uvtk[164]" -type "float2" -0.24373946 -0.089910567 ;
	setAttr ".uvtk[165]" -type "float2" -0.094250321 0.1048246 ;
	setAttr ".uvtk[167]" -type "float2" -0.078517854 0.11122453 ;
	setAttr ".uvtk[168]" -type "float2" 0.051193893 0.29296589 ;
	setAttr ".uvtk[169]" -type "float2" 0.067902684 0.26672667 ;
	setAttr ".uvtk[170]" -type "float2" 0.070303917 0.28404683 ;
	setAttr ".uvtk[171]" -type "float2" 0.11440995 0.42181385 ;
	setAttr ".uvtk[172]" -type "float2" 0.10725787 0.38457787 ;
	setAttr ".uvtk[173]" -type "float2" 0.086398959 0.29661822 ;
	setAttr ".uvtk[174]" -type "float2" 0.086063147 0.28735483 ;
	setAttr ".uvtk[175]" -type "float2" 0.084099695 0.1983583 ;
	setAttr ".uvtk[176]" -type "float2" 0.073806316 0.18209088 ;
	setAttr ".uvtk[177]" -type "float2" 0.097168744 0.28943646 ;
	setAttr ".uvtk[178]" -type "float2" 0.097468168 0.29709828 ;
	setAttr ".uvtk[179]" -type "float2" 0.00063759089 -0.0011308789 ;
	setAttr ".uvtk[180]" -type "float2" -0.0015068054 -0.017930508 ;
	setAttr ".uvtk[181]" -type "float2" -0.044991672 -0.15893722 ;
	setAttr ".uvtk[183]" -type "float2" -0.036946476 -0.12055743 ;
	setAttr ".uvtk[186]" -type "float2" -0.022745788 -0.031621397 ;
	setAttr ".uvtk[187]" -type "float2" -0.01874578 -0.021195948 ;
	setAttr ".uvtk[188]" -type "float2" 0.022904634 0.14560533 ;
	setAttr ".uvtk[190]" -type "float2" 0.027065635 0.15137285 ;
	setAttr ".uvtk[191]" -type "float2" -0.00048542023 0.035040319 ;
	setAttr ".uvtk[192]" -type "float2" -0.0021685362 0.023818374 ;
	setAttr ".uvtk[193]" -type "float2" -0.23067236 -0.34928697 ;
	setAttr ".uvtk[195]" -type "float2" 0.22047177 0.27464354 ;
	setAttr ".uvtk[198]" -type "float2" -0.045956731 -0.17225158 ;
	setAttr ".uvtk[199]" -type "float2" -0.0029331446 -0.031062424 ;
	setAttr ".uvtk[200]" -type "float2" -0.021864355 -0.10610908 ;
	setAttr ".uvtk[202]" -type "float2" 0.030768722 -0.033225358 ;
	setAttr ".uvtk[203]" -type "float2" -0.011872351 -0.088786364 ;
	setAttr ".uvtk[204]" -type "float2" -0.011864305 -0.088805377 ;
	setAttr ".uvtk[205]" -type "float2" -0.045974195 -0.17225754 ;
	setAttr ".uvtk[206]" -type "float2" -0.2306565 -0.34927917 ;
	setAttr ".uvtk[207]" -type "float2" -0.021841228 -0.10611045 ;
	setAttr ".uvtk[208]" -type "float2" 0.030784786 -0.03323245 ;
	setAttr ".uvtk[209]" -type "float2" 0.22047397 0.27466559 ;
	setAttr ".uvtk[211]" -type "float2" 0.0030953288 -0.045259595 ;
	setAttr ".uvtk[215]" -type "float2" 0.082213596 0.18562555 ;
	setAttr ".uvtk[218]" -type "float2" 0.082192674 0.18561506 ;
	setAttr ".uvtk[219]" -type "float2" 0.0030894279 -0.045281172 ;
	setAttr ".uvtk[220]" -type "float2" 0.0025723875 -0.014747322 ;
	setAttr ".uvtk[221]" -type "float2" 0.0033108592 -0.071250618 ;
	setAttr ".uvtk[224]" -type "float2" -0.012567878 -0.094912112 ;
	setAttr ".uvtk[225]" -type "float2" -0.046548605 -0.17875528 ;
	setAttr ".uvtk[226]" -type "float2" -0.22992212 -0.35474211 ;
	setAttr ".uvtk[227]" -type "float2" -0.020488203 -0.11049849 ;
	setAttr ".uvtk[228]" -type "float2" 0.031948507 -0.037457526 ;
	setAttr ".uvtk[229]" -type "float2" 0.22203597 0.27123165 ;
	setAttr ".uvtk[230]" -type "float2" 0.081498221 0.18017352 ;
	setAttr ".uvtk[231]" -type "float2" 0.002283901 -0.051272929 ;
	setAttr ".uvtk[232]" -type "float2" -0.0054708421 -0.074070811 ;
	setAttr ".uvtk[233]" -type "float2" 0.0046274662 -0.075477839 ;
	setAttr ".uvtk[234]" -type "float2" -0.066740453 -0.22261095 ;
	setAttr ".uvtk[235]" -type "float2" -0.035231769 -0.13903576 ;
	setAttr ".uvtk[236]" -type "float2" -0.036741018 -0.15512747 ;
	setAttr ".uvtk[237]" -type "float2" -0.074342489 -0.26168793 ;
	setAttr ".uvtk[238]" -type "float2" 0.029681623 -0.091804504 ;
	setAttr ".uvtk[239]" -type "float2" -0.18453193 -0.34216475 ;
	setAttr ".uvtk[240]" -type "float2" -0.21756947 -0.40440398 ;
	setAttr ".uvtk[242]" -type "float2" 0.033287466 -0.10339111 ;
	setAttr ".uvtk[243]" -type "float2" 0.26488054 0.29604924 ;
	setAttr ".uvtk[244]" -type "float2" 0.075484276 -0.011490524 ;
	setAttr ".uvtk[247]" -type "float2" 0.078405738 -0.022299886 ;
	setAttr ".uvtk[251]" -type "float2" 0.30269545 0.33378184 ;
	setAttr ".uvtk[253]" -type "float2" -0.027428657 -0.089746177 ;
	setAttr ".uvtk[258]" -type "float2" 0.049432561 0.14492249 ;
	setAttr ".uvtk[261]" -type "float2" 0.059736326 0.162907 ;
	setAttr ".uvtk[262]" -type "float2" -0.029560536 -0.10531807 ;
	setAttr ".uvtk[263]" -type "float2" -0.029904813 -0.11338282 ;
	setAttr ".uvtk[264]" -type "float2" -0.031366318 -0.12901098 ;
	setAttr ".uvtk[265]" -type "float2" 0.051718056 -0.066337228 ;
	setAttr ".uvtk[266]" -type "float2" 0.048676908 -0.054643095 ;
	setAttr ".uvtk[267]" -type "float2" -0.085207164 -0.28648889 ;
	setAttr ".uvtk[268]" -type "float2" -0.080173016 -0.25968558 ;
	setAttr ".uvtk[269]" -type "float2" -0.26252943 -0.43906987 ;
	setAttr ".uvtk[270]" -type "float2" -0.27621925 -0.47453302 ;
	setAttr ".uvtk[271]" -type "float2" 0.35393327 0.415694 ;
	setAttr ".uvtk[272]" -type "float2" 0.33466852 0.40432155 ;
	setAttr ".uvtk[274]" -type "float2" 0.077242933 0.22540772 ;
	setAttr ".uvtk[275]" -type "float2" 0.081030831 0.22574735 ;
	setAttr ".uvtk[280]" -type "float2" -0.13851061 -0.25709325 ;
	setAttr ".uvtk[286]" -type "float2" -0.12626547 -0.26333338 ;
	setAttr ".uvtk[288]" -type "float2" -0.12558013 -0.28535765 ;
	setAttr ".uvtk[289]" -type "float2" -0.14043468 -0.27858949 ;
	setAttr ".uvtk[290]" -type "float2" 0.17541718 -0.029589474 ;
	setAttr ".uvtk[291]" -type "float2" 0.17240417 -0.0097784996 ;
	setAttr ".uvtk[292]" -type "float2" 0.12298465 -0.038397074 ;
	setAttr ".uvtk[293]" -type "float2" 0.12577987 -0.055386245 ;
	setAttr ".uvtk[294]" -type "float2" -0.052539945 -0.20336479 ;
	setAttr ".uvtk[295]" -type "float2" -0.046435356 -0.16831481 ;
	setAttr ".uvtk[296]" -type "float2" -0.095396906 -0.20610267 ;
	setAttr ".uvtk[297]" -type "float2" -0.10540539 -0.23385024 ;
	setAttr ".uvtk[298]" -type "float2" -0.079899937 -0.29412878 ;
	setAttr ".uvtk[299]" -type "float2" -0.014686972 -0.29044157 ;
	setAttr ".uvtk[300]" -type "float2" -0.051645786 -0.23083317 ;
	setAttr ".uvtk[301]" -type "float2" -0.10468158 -0.25795686 ;
	setAttr ".uvtk[302]" -type "float2" 0.12926072 -0.020025074 ;
	setAttr ".uvtk[303]" -type "float2" 0.093515575 -0.056920052 ;
	setAttr ".uvtk[304]" -type "float2" 0.085038424 -0.09564817 ;
	setAttr ".uvtk[305]" -type "float2" 0.11316562 -0.054385543 ;
	setAttr ".uvtk[306]" -type "float2" 0.094226599 -0.11625105 ;
	setAttr ".uvtk[307]" -type "float2" 0.11853439 -0.074331939 ;
	setAttr ".uvtk[308]" -type "float2" 0.19752347 -0.11712271 ;
	setAttr ".uvtk[309]" -type "float2" 0.19625902 -0.05976969 ;
	setAttr ".uvtk[310]" -type "float2" -0.09207058 -0.30586946 ;
	setAttr ".uvtk[311]" -type "float2" -0.056803584 -0.21979612 ;
	setAttr ".uvtk[312]" -type "float2" 0.11020008 0.2619555 ;
	setAttr ".uvtk[313]" -type "float2" -0.16956758 -0.39371783 ;
	setAttr ".uvtk[314]" -type "float2" -0.310274 -0.45486733 ;
	setAttr ".uvtk[315]" -type "float2" 0.28942594 0.38887167 ;
	setAttr ".uvtk[318]" -type "float2" -0.050996691 0.12074769 ;
	setAttr ".uvtk[322]" -type "float2" -0.096121252 0.1080147 ;
	setAttr ".uvtk[324]" -type "float2" -0.064114302 0.038202703 ;
	setAttr ".uvtk[325]" -type "float2" -0.04840669 0.051771283 ;
	setAttr ".uvtk[326]" -type "float2" 0.029176831 0.12523335 ;
	setAttr ".uvtk[327]" -type "float2" 0.036521554 0.13633209 ;
	setAttr ".uvtk[328]" -type "float2" 0.0054936707 0.01283437 ;
	setAttr ".uvtk[329]" -type "float2" 0.030887425 0.13635612 ;
	setAttr ".uvtk[330]" -type "float2" 0.038265526 0.14708531 ;
	setAttr ".uvtk[331]" -type "float2" -0.062924504 0.032432914 ;
	setAttr ".uvtk[335]" -type "float2" -0.23663205 -0.20288157 ;
	setAttr ".uvtk[337]" -type "float2" -0.04742232 0.047341287 ;
	setAttr ".uvtk[338]" -type "float2" 0.024184644 -0.023132861 ;
	setAttr ".uvtk[346]" -type "float2" 0.0077340603 -0.01817888 ;
	setAttr ".uvtk[348]" -type "float2" -0.02898705 0.029348493 ;
	setAttr ".uvtk[354]" -type "float2" -0.0029317141 0.011963248 ;
	setAttr ".uvtk[361]" -type "float2" 0.0018374324 -0.014598489 ;
	setAttr ".uvtk[368]" -type "float2" -0.020702422 0.0041221976 ;
	setAttr ".uvtk[369]" -type "float2" -0.0046758056 0.013022244 ;
	setAttr ".uvtk[370]" -type "float2" 0.023540795 -0.0025460124 ;
	setAttr ".uvtk[372]" -type "float2" 0.044632733 -0.019251645 ;
	setAttr ".uvtk[375]" -type "float2" 0.0019183755 -0.015527546 ;
	setAttr ".uvtk[378]" -type "float2" -0.037628829 0.014018893 ;
	setAttr ".uvtk[384]" -type "float2" -0.0089222789 0.020760298 ;
	setAttr ".uvtk[396]" -type "float2" 0.0027906299 -0.015895784 ;
	setAttr ".uvtk[404]" -type "float2" -0.022414267 0.0090548396 ;
	setAttr ".uvtk[405]" -type "float2" 0.00016188622 0.016925037 ;
	setAttr ".uvtk[409]" -type "float2" 0.019461751 -0.010084093 ;
	setAttr ".uvtk[411]" -type "float2" -0.0050455034 0.015046358 ;
	setAttr ".uvtk[413]" -type "float2" 0.017143309 -0.012851059 ;
	setAttr ".uvtk[415]" -type "float2" 0.0051852167 -0.01519376 ;
	setAttr ".uvtk[416]" -type "float2" -0.017283008 0.012998462 ;
	setAttr ".uvtk[422]" -type "float2" 0.00021719933 0.021417499 ;
	setAttr ".uvtk[423]" -type "float2" -0.017814249 -0.037582338 ;
	setAttr ".uvtk[424]" -type "float2" 0.0013509393 -0.016011238 ;
	setAttr ".uvtk[425]" -type "float2" 0.016246125 0.032176077 ;
	setAttr ".uvtk[427]" -type "float2" -0.096121192 0.10801446 ;
	setAttr ".uvtk[428]" -type "float2" -0.076498896 0.10812569 ;
	setAttr ".uvtk[433]" -type "float2" -0.07818532 0.025227249 ;
	setAttr ".uvtk[434]" -type "float2" -0.096118271 0.1080153 ;
	setAttr ".uvtk[435]" -type "float2" -0.067980409 0.048751771 ;
	setAttr ".uvtk[436]" -type "float2" -0.064792246 0.11840075 ;
	setAttr ".uvtk[440]" -type "float2" -0.045679003 0.02798444 ;
	setAttr ".uvtk[441]" -type "float2" -0.034445882 -0.042459965 ;
	setAttr ".uvtk[442]" -type "float2" -0.25102574 -0.19203991 ;
	setAttr ".uvtk[443]" -type "float2" -0.038815558 0.061993301 ;
	setAttr ".uvtk[449]" -type "float2" 0.11462113 0.26492655 ;
	setAttr ".uvtk[450]" -type "float2" 0.017828882 0.12214595 ;
	setAttr ".uvtk[457]" -type "float2" 0.011588573 0.034344494 ;
	setAttr ".uvtk[458]" -type "float2" 0.026089847 0.10214162 ;
	setAttr ".uvtk[463]" -type "float2" -0.024318576 0.0093580484 ;
	setAttr ".uvtk[464]" -type "float2" 0.041318536 0.16877341 ;
	setAttr ".uvtk[465]" -type "float2" 0.1216923 0.29515946 ;
	setAttr ".uvtk[466]" -type "float2" 0.048414111 0.14962047 ;
	setAttr ".uvtk[467]" -type "float2" 0.052566111 0.23398137 ;
	setAttr ".uvtk[468]" -type "float2" 0.060173452 0.2568152 ;
	setAttr ".uvtk[469]" -type "float2" 0.14631104 0.32371378 ;
	setAttr ".uvtk[470]" -type "float2" 0.093261033 0.26830816 ;
	setAttr ".uvtk[471]" -type "float2" -0.23795193 -0.23256576 ;
	setAttr ".uvtk[472]" -type "float2" 0.086787134 0.25462484 ;
	setAttr ".uvtk[473]" -type "float2" 0.15591154 0.22120571 ;
	setAttr ".uvtk[474]" -type "float2" -0.23315138 -0.28038585 ;
	setAttr ".uvtk[475]" -type "float2" -0.22551328 -0.18784249 ;
	setAttr ".uvtk[476]" -type "float2" -0.023618579 -0.0048481822 ;
	setAttr ".uvtk[477]" -type "float2" 0.0041411519 -0.0016949177 ;
	setAttr ".uvtk[478]" -type "float2" -0.042230427 -0.14522034 ;
	setAttr ".uvtk[479]" -type "float2" -0.087952822 -0.18871087 ;
	setAttr ".uvtk[480]" -type "float2" -0.12028417 -0.2695806 ;
	setAttr ".uvtk[481]" -type "float2" -0.11883017 -0.29622418 ;
	setAttr ".uvtk[482]" -type "float2" -0.058219254 -0.32658195 ;
	setAttr ".uvtk[483]" -type "float2" 0.0070834756 -0.33434296 ;
	setAttr ".uvtk[485]" -type "float2" 0.28764254 -0.096243739 ;
	setAttr ".uvtk[487]" -type "float2" 0.27478629 -0.039429843 ;
	setAttr ".uvtk[493]" -type "float2" 0.23402584 0.0077754259 ;
	setAttr ".uvtk[497]" -type "float2" 0.22656554 0.028683662 ;
	setAttr ".uvtk[499]" -type "float2" 0.16067272 0.019573808 ;
	setAttr ".uvtk[505]" -type "float2" 0.120395 -0.013527095 ;
	setAttr ".uvtk[507]" -type "float2" 0.01504004 0.027882695 ;
	setAttr ".uvtk[510]" -type "float2" -0.0021072328 0.018351972 ;
	setAttr ".uvtk[515]" -type "float2" -0.014374375 -0.02550298 ;
	setAttr ".uvtk[517]" -type "float2" 0.0014415681 -0.020731688 ;
	setAttr ".uvtk[519]" -type "float2" 0.015771493 0.030720472 ;
	setAttr ".uvtk[521]" -type "float2" -0.0022052526 0.020385683 ;
	setAttr ".uvtk[524]" -type "float2" -0.017744794 -0.038154185 ;
	setAttr ".uvtk[526]" -type "float2" 0.0041785538 -0.01295197 ;
	setAttr ".uvtk[528]" -type "float2" -0.012863949 0.011000276 ;
	setAttr ".uvtk[534]" -type "float2" -0.0047178119 0.013581276 ;
	setAttr ".uvtk[535]" -type "float2" 0.012412339 -0.010368824 ;
	setAttr ".uvtk[536]" -type "float2" 0.0051694363 -0.014212728 ;
	setAttr ".uvtk[538]" -type "float2" -0.024499051 -0.00055104494 ;
	setAttr ".uvtk[543]" -type "float2" -0.00056520104 0.015760183 ;
	setAttr ".uvtk[545]" -type "float2" 0.022158563 0.0019713044 ;
	setAttr ".uvtk[548]" -type "float2" 0.0029056817 -0.017180383 ;
	setAttr ".uvtk[549]" -type "float2" 0.11073911 0.36433125 ;
	setAttr ".uvtk[550]" -type "float2" -0.037654757 -0.095996439 ;
	setAttr ".uvtk[551]" -type "float2" 0.094945461 0.26318908 ;
	setAttr ".uvtk[552]" -type "float2" 0.095812351 0.19289744 ;
	setAttr ".uvtk[553]" -type "float2" -0.013547778 0.055186391 ;
	setAttr ".uvtk[554]" -type "float2" 0.0074272156 0.14472872 ;
	setAttr ".uvtk[555]" -type "float2" 0.01701647 0.013878763 ;
	setAttr ".uvtk[556]" -type "float2" 0.051070511 0.24958295 ;
	setAttr ".uvtk[557]" -type "float2" -0.0017325282 0.01659435 ;
	setAttr ".uvtk[558]" -type "float2" 0.028656304 -0.0077016354 ;
	setAttr ".uvtk[559]" -type "float2" 0.00072211027 -0.016928077 ;
	setAttr ".uvtk[560]" -type "float2" -0.027645886 0.0080353618 ;
	setAttr ".uvtk[561]" -type "float2" -0.059224188 0.032187223 ;
	setAttr ".uvtk[564]" -type "float2" -0.008103013 0.020246029 ;
	setAttr ".uvtk[567]" -type "float2" 0.056893528 -0.030372143 ;
	setAttr ".uvtk[570]" -type "float2" 0.010433733 -0.02206111 ;
	setAttr ".uvtk[573]" -type "float2" 0.013022423 -0.050295651 ;
	setAttr ".uvtk[574]" -type "float2" 0.032705009 -0.01868391 ;
	setAttr ".uvtk[575]" -type "float2" -0.0137344 0.049152136 ;
	setAttr ".uvtk[576]" -type "float2" -0.031993032 0.019827425 ;
	setAttr ".uvtk[577]" -type "float2" -0.011348724 -0.015643775 ;
	setAttr ".uvtk[578]" -type "float2" 0.0080398917 0.016758263 ;
	setAttr ".uvtk[579]" -type "float2" 0.012047708 0.016811848 ;
	setAttr ".uvtk[580]" -type "float2" -0.0087388158 -0.017926276 ;
	setAttr ".uvtk[581]" -type "float2" -0.1192117 0.086622357 ;
	setAttr ".uvtk[582]" -type "float2" -0.12302569 0.093746483 ;
	setAttr ".uvtk[583]" -type "float2" 0.062541664 0.27402586 ;
	setAttr ".uvtk[584]" -type "float2" -0.016950443 0.007445097 ;
	setAttr ".uvtk[585]" -type "float2" -0.0042914003 0.015319347 ;
	setAttr ".uvtk[586]" -type "float2" 0.014861494 -0.0050512552 ;
	setAttr ".uvtk[587]" -type "float2" 0.0063803345 -0.017713189 ;
	setAttr ".uvtk[588]" -type "float2" 0.016313046 0.033397675 ;
	setAttr ".uvtk[589]" -type "float2" -0.0032348484 0.024595499 ;
	setAttr ".uvtk[590]" -type "float2" -0.016559198 -0.033825815 ;
	setAttr ".uvtk[591]" -type "float2" 0.0034810007 -0.024167359 ;
createNode polyLayoutUV -n "polyLayoutUV5";
	rename -uid "ABE7CA8B-4A15-2E93-8FAE-A8B0C0D1CE98";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 54 "f[0:1]" "f[11]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[42]" "f[44]" "f[46]" "f[48:56]" "f[82:91]" "f[94:95]" "f[98]" "f[101:102]" "f[104:107]" "f[109:110]" "f[112:115]" "f[117:118]" "f[120:123]" "f[125]" "f[127]" "f[129]" "f[131]" "f[133]" "f[135:136]" "f[138:142]" "f[144]" "f[146:150]" "f[152:154]" "f[156:157]" "f[160:161]" "f[164:166]" "f[168:170]" "f[175]" "f[183:188]" "f[190:192]" "f[194]" "f[197]" "f[200:210]" "f[212:213]" "f[215:238]" "f[240:254]" "f[258:259]" "f[262:284]" "f[286]" "f[297:298]" "f[300]" "f[302]" "f[309]" "f[314]";
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "DFD70266-4A0B-2A71-7666-DA8316D976B5";
	setAttr ".uopa" yes;
	setAttr -s 321 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.38057038 -0.27714345 ;
	setAttr ".uvtk[1]" -type "float2" -0.49368301 -0.28385279 ;
	setAttr ".uvtk[2]" -type "float2" -0.49145231 -0.4775086 ;
	setAttr ".uvtk[4]" -type "float2" -0.37863049 -0.48233628 ;
	setAttr ".uvtk[5]" -type "float2" 0.082908832 -0.23273364 ;
	setAttr ".uvtk[6]" -type "float2" 0.015247636 -0.14232343 ;
	setAttr ".uvtk[7]" -type "float2" -0.14239877 -0.27368411 ;
	setAttr ".uvtk[9]" -type "float2" -0.065619811 -0.35701811 ;
	setAttr ".uvtk[12]" -type "float2" 0.30500659 0.34639472 ;
	setAttr ".uvtk[17]" -type "float2" 0.30316073 0.34638774 ;
	setAttr ".uvtk[25]" -type "float2" 0.30559382 -0.30339608 ;
	setAttr ".uvtk[26]" -type "float2" 0.30743963 -0.30338904 ;
	setAttr ".uvtk[30]" -type "float2" 0.32518798 0.34728402 ;
	setAttr ".uvtk[31]" -type "float2" 0.31099737 0.34667015 ;
	setAttr ".uvtk[35]" -type "float2" 0.34387404 -0.41333616 ;
	setAttr ".uvtk[37]" -type "float2" 0.35806468 -0.41272235 ;
	setAttr ".uvtk[39]" -type "float2" 0.35858449 0.34739214 ;
	setAttr ".uvtk[41]" -type "float2" 0.34438485 0.34704331 ;
	setAttr ".uvtk[45]" -type "float2" 0.36306766 -0.41344434 ;
	setAttr ".uvtk[47]" -type "float2" 0.3772673 -0.41309547 ;
	setAttr ".uvtk[48]" -type "float2" -0.33111033 -0.27420041 ;
	setAttr ".uvtk[53]" -type "float2" -0.32920423 -0.48445648 ;
	setAttr ".uvtk[54]" -type "float2" -0.014390748 -0.10271258 ;
	setAttr ".uvtk[59]" -type "float2" -0.1759789 -0.23725137 ;
	setAttr ".uvtk[71]" -type "float2" -0.25226459 -0.22040513 ;
	setAttr ".uvtk[79]" -type "float2" -0.24943873 -0.53693193 ;
	setAttr ".uvtk[80]" -type "float2" -0.024241488 -0.0077428594 ;
	setAttr ".uvtk[84]" -type "float2" -0.26752946 -0.21024865 ;
	setAttr ".uvtk[86]" -type "float2" -0.44665006 0.024970017 ;
	setAttr ".uvtk[87]" -type "float2" -0.45472828 0.024307601 ;
	setAttr ".uvtk[90]" -type "float2" -0.44430438 -0.10280729 ;
	setAttr ".uvtk[91]" -type "float2" -0.43622622 -0.10214484 ;
	setAttr ".uvtk[92]" -type "float2" -0.41208681 -0.070010491 ;
	setAttr ".uvtk[96]" -type "float2" -0.40406695 -0.071183987 ;
	setAttr ".uvtk[97]" -type "float2" -0.38560209 0.055013888 ;
	setAttr ".uvtk[101]" -type "float2" -0.39362189 0.056187354 ;
	setAttr ".uvtk[103]" -type "float2" -0.45542845 -0.0029368177 ;
	setAttr ".uvtk[104]" -type "float2" -0.46426085 -0.014415272 ;
	setAttr ".uvtk[107]" -type "float2" -0.48275122 -0.27836809 ;
	setAttr ".uvtk[108]" -type "float2" -0.47476235 -0.27892771 ;
	setAttr ".uvtk[111]" -type "float2" -0.5053494 -0.26780578 ;
	setAttr ".uvtk[112]" -type "float2" -0.49782583 -0.28018162 ;
	setAttr ".uvtk[113]" -type "float2" -0.48685035 -0.0037321821 ;
	setAttr ".uvtk[114]" -type "float2" -0.49485263 -0.0034144595 ;
	setAttr ".uvtk[115]" -type "float2" 0.31963679 0.056769483 ;
	setAttr ".uvtk[116]" -type "float2" 0.31163457 0.05645176 ;
	setAttr ".uvtk[117]" -type "float2" 0.32213137 -0.20793957 ;
	setAttr ".uvtk[118]" -type "float2" 0.33013365 -0.20762181 ;
	setAttr ".uvtk[119]" -type "float2" -0.44350353 -0.27536002 ;
	setAttr ".uvtk[120]" -type "float2" -0.4355146 -0.27591965 ;
	setAttr ".uvtk[121]" -type "float2" -0.41702399 -0.011966892 ;
	setAttr ".uvtk[122]" -type "float2" -0.42501298 -0.011407264 ;
	setAttr ".uvtk[123]" -type "float2" -0.49776253 -0.32358524 ;
	setAttr ".uvtk[124]" -type "float2" -0.4961156 -0.43829 ;
	setAttr ".uvtk[125]" -type "float2" -0.50892013 -0.28461757 ;
	setAttr ".uvtk[126]" -type "float2" -0.5047313 -0.32373276 ;
	setAttr ".uvtk[127]" -type "float2" -0.50662088 -0.47778141 ;
	setAttr ".uvtk[128]" -type "float2" -0.50305092 -0.43805993 ;
	setAttr ".uvtk[130]" -type "float2" 0.055507176 -0.26115963 ;
	setAttr ".uvtk[131]" -type "float2" -0.032267731 -0.33501452 ;
	setAttr ".uvtk[132]" -type "float2" -0.055382892 -0.36832666 ;
	setAttr ".uvtk[133]" -type "float2" -0.027739506 -0.34032744 ;
	setAttr ".uvtk[134]" -type "float2" 0.092718892 -0.24430844 ;
	setAttr ".uvtk[135]" -type "float2" 0.059709184 -0.26666889 ;
	setAttr ".uvtk[137]" -type "float2" 0.30045688 -0.08874131 ;
	setAttr ".uvtk[138]" -type "float2" 0.23263219 0.070768915 ;
	setAttr ".uvtk[139]" -type "float2" 0.22909343 0.073113613 ;
	setAttr ".uvtk[141]" -type "float2" 0.2882939 -0.062666781 ;
	setAttr ".uvtk[142]" -type "float2" 0.15103957 0.24696153 ;
	setAttr ".uvtk[144]" -type "float2" 0.094615392 0.25149158 ;
	setAttr ".uvtk[145]" -type "float2" 0.12507203 0.22994936 ;
	setAttr ".uvtk[146]" -type "float2" 0.1634649 0.21959189 ;
	setAttr ".uvtk[147]" -type "float2" 0.16012013 0.037747823 ;
	setAttr ".uvtk[148]" -type "float2" 0.15327063 0.054334603 ;
	setAttr ".uvtk[150]" -type "float2" 0.0791265 0.23351547 ;
	setAttr ".uvtk[151]" -type "float2" 0.059101187 0.26524368 ;
	setAttr ".uvtk[155]" -type "float2" 0.24565226 -0.17497826 ;
	setAttr ".uvtk[156]" -type "float2" 0.23993483 -0.13724321 ;
	setAttr ".uvtk[158]" -type "float2" 0.26311967 -0.14003778 ;
	setAttr ".uvtk[160]" -type "float2" 0.26972315 -0.10033423 ;
	setAttr ".uvtk[161]" -type "float2" 0.22784647 0.072429292 ;
	setAttr ".uvtk[163]" -type "float2" 0.22249314 0.084534548 ;
	setAttr ".uvtk[164]" -type "float2" 0.15507126 0.2087293 ;
	setAttr ".uvtk[165]" -type "float2" 0.20674478 0.072390161 ;
	setAttr ".uvtk[167]" -type "float2" 0.2090082 0.067869924 ;
	setAttr ".uvtk[168]" -type "float2" 0.27465037 -0.061695226 ;
	setAttr ".uvtk[169]" -type "float2" -0.29612991 0.091839872 ;
	setAttr ".uvtk[170]" -type "float2" -0.29920778 0.091943197 ;
	setAttr ".uvtk[171]" -type "float2" -0.39651236 -0.059737869 ;
	setAttr ".uvtk[172]" -type "float2" -0.37936798 -0.035650797 ;
	setAttr ".uvtk[173]" -type "float2" -0.37034526 -0.1087159 ;
	setAttr ".uvtk[174]" -type "float2" -0.36820331 -0.11101652 ;
	setAttr ".uvtk[175]" -type "float2" -0.36728451 -0.14144766 ;
	setAttr ".uvtk[176]" -type "float2" -0.34673628 -0.11044539 ;
	setAttr ".uvtk[177]" -type "float2" -0.3677561 -0.068543322 ;
	setAttr ".uvtk[178]" -type "float2" -0.36760345 -0.065752633 ;
	setAttr ".uvtk[179]" -type "float2" -0.21732736 0.061652862 ;
	setAttr ".uvtk[180]" -type "float2" -0.21452034 0.061811678 ;
	setAttr ".uvtk[181]" -type "float2" -0.11492769 0.27272546 ;
	setAttr ".uvtk[183]" -type "float2" -0.13297676 0.24013534 ;
	setAttr ".uvtk[186]" -type "float2" -0.14267617 0.25928321 ;
	setAttr ".uvtk[187]" -type "float2" -0.145688 0.26006785 ;
	setAttr ".uvtk[188]" -type "float2" -0.20142704 0.26037875 ;
	setAttr ".uvtk[190]" -type "float2" -0.21465594 0.23417902 ;
	setAttr ".uvtk[191]" -type "float2" -0.1825127 0.2379072 ;
	setAttr ".uvtk[192]" -type "float2" -0.18015093 0.23929772 ;
	setAttr ".uvtk[193]" -type "float2" 0.057111941 0.26465771 ;
	setAttr ".uvtk[195]" -type "float2" 0.24382007 -0.17602265 ;
	setAttr ".uvtk[198]" -type "float2" -0.11303173 0.27204385 ;
	setAttr ".uvtk[199]" -type "float2" -0.21275324 0.06080427 ;
	setAttr ".uvtk[200]" -type "float2" 0.13278738 0.06626039 ;
	setAttr ".uvtk[202]" -type "float2" 0.15465087 0.014782809 ;
	setAttr ".uvtk[203]" -type "float2" -0.19862449 0.072961621 ;
	setAttr ".uvtk[204]" -type "float2" -0.19861102 0.072967283 ;
	setAttr ".uvtk[205]" -type "float2" -0.1130275 0.27203149 ;
	setAttr ".uvtk[206]" -type "float2" 0.057100736 0.26465219 ;
	setAttr ".uvtk[207]" -type "float2" 0.13277104 0.066261314 ;
	setAttr ".uvtk[208]" -type "float2" 0.15463951 0.014787786 ;
	setAttr ".uvtk[209]" -type "float2" 0.24381852 -0.17603821 ;
	setAttr ".uvtk[211]" -type "float2" -0.22936732 0.024495147 ;
	setAttr ".uvtk[215]" -type "float2" -0.36579922 -0.14277971 ;
	setAttr ".uvtk[218]" -type "float2" -0.36579189 -0.14279455 ;
	setAttr ".uvtk[219]" -type "float2" -0.22935206 0.024490975 ;
	setAttr ".uvtk[220]" -type "float2" -0.22427654 0.043416969 ;
	setAttr ".uvtk[221]" -type "float2" 0.14323458 0.041639917 ;
	setAttr ".uvtk[224]" -type "float2" -0.19779336 0.072470389 ;
	setAttr ".uvtk[225]" -type "float2" -0.11193369 0.27221426 ;
	setAttr ".uvtk[226]" -type "float2" 0.055993579 0.2650151 ;
	setAttr ".uvtk[227]" -type "float2" 0.1318154 0.065865062 ;
	setAttr ".uvtk[228]" -type "float2" 0.15381756 0.014276467 ;
	setAttr ".uvtk[229]" -type "float2" 0.24330372 -0.17710835 ;
	setAttr ".uvtk[230]" -type "float2" -0.36544403 -0.14387345 ;
	setAttr ".uvtk[231]" -type "float2" -0.22861564 0.023922019 ;
	setAttr ".uvtk[232]" -type "float2" -0.21251357 0.049254589 ;
	setAttr ".uvtk[233]" -type "float2" 0.14230463 0.041130088 ;
	setAttr ".uvtk[234]" -type "float2" -0.08095859 0.25795284 ;
	setAttr ".uvtk[235]" -type "float2" -0.16662896 0.056462936 ;
	setAttr ".uvtk[236]" -type "float2" -0.16433609 0.055396967 ;
	setAttr ".uvtk[237]" -type "float2" -0.062431201 0.29202756 ;
	setAttr ".uvtk[238]" -type "float2" 0.096380614 0.05266156 ;
	setAttr ".uvtk[239]" -type "float2" 0.023934595 0.25613177 ;
	setAttr ".uvtk[240]" -type "float2" 0.0078248866 0.29101858 ;
	setAttr ".uvtk[242]" -type "float2" 0.093833797 0.051772587 ;
	setAttr ".uvtk[243]" -type "float2" 0.21304271 -0.19463694 ;
	setAttr ".uvtk[244]" -type "float2" 0.12306841 -0.0040639415 ;
	setAttr ".uvtk[247]" -type "float2" 0.12100499 -0.0055019334 ;
	setAttr ".uvtk[251]" -type "float2" 0.22577822 -0.23036 ;
	setAttr ".uvtk[253]" -type "float2" -0.20144206 0.0029361472 ;
	setAttr ".uvtk[258]" -type "float2" -0.34054628 -0.16652137 ;
	setAttr ".uvtk[261]" -type "float2" -0.36232141 -0.19868791 ;
	setAttr ".uvtk[262]" -type "float2" -0.1995163 0.0014304146 ;
	setAttr ".uvtk[263]" -type "float2" -0.18474764 0.031996958 ;
	setAttr ".uvtk[264]" -type "float2" -0.18278205 0.030964695 ;
	setAttr ".uvtk[265]" -type "float2" 0.10904469 0.025601529 ;
	setAttr ".uvtk[266]" -type "float2" 0.11119267 0.026414566 ;
	setAttr ".uvtk[267]" -type "float2" -0.038717136 0.34479499 ;
	setAttr ".uvtk[268]" -type "float2" -0.048575625 0.33003551 ;
	setAttr ".uvtk[269]" -type "float2" -0.0025460534 0.33077285 ;
	setAttr ".uvtk[270]" -type "float2" -0.011192005 0.34674779 ;
	setAttr ".uvtk[271]" -type "float2" 0.25003013 -0.28201702 ;
	setAttr ".uvtk[272]" -type "float2" 0.24532178 -0.26491216 ;
	setAttr ".uvtk[274]" -type "float2" -0.39119568 -0.22844908 ;
	setAttr ".uvtk[275]" -type "float2" -0.40050802 -0.24408874 ;
	setAttr ".uvtk[280]" -type "float2" -0.10967664 -0.016482599 ;
	setAttr ".uvtk[286]" -type "float2" -0.1052693 -0.036062248 ;
	setAttr ".uvtk[288]" -type "float2" -0.10304354 -0.035578258 ;
	setAttr ".uvtk[289]" -type "float2" -0.10782389 -0.017841585 ;
	setAttr ".uvtk[290]" -type "float2" 0.021676354 -0.031041987 ;
	setAttr ".uvtk[291]" -type "float2" 0.023804478 -0.031704552 ;
	setAttr ".uvtk[292]" -type "float2" 0.030480944 -0.011491306 ;
	setAttr ".uvtk[293]" -type "float2" 0.028506659 -0.012821801 ;
	setAttr ".uvtk[294]" -type "float2" -0.13026617 0.044238202 ;
	setAttr ".uvtk[295]" -type "float2" -0.15502191 0.020321511 ;
	setAttr ".uvtk[296]" -type "float2" -0.13404499 -0.014259882 ;
	setAttr ".uvtk[297]" -type "float2" -0.11444698 0.0068995282 ;
	setAttr ".uvtk[298]" -type "float2" -0.085202262 -0.0033144131 ;
	setAttr ".uvtk[299]" -type "float2" -0.08209382 0.042745315 ;
	setAttr ".uvtk[300]" -type "float2" -0.12419508 0.044869773 ;
	setAttr ".uvtk[301]" -type "float2" -0.11075042 0.0074106976 ;
	setAttr ".uvtk[302]" -type "float2" 0.054276548 -0.012821205 ;
	setAttr ".uvtk[303]" -type "float2" 0.079523228 0.018950157 ;
	setAttr ".uvtk[304]" -type "float2" 0.057282232 0.046303742 ;
	setAttr ".uvtk[305]" -type "float2" 0.037416063 0.011447482 ;
	setAttr ".uvtk[306]" -type "float2" 0.050792657 0.047525726 ;
	setAttr ".uvtk[307]" -type "float2" 0.033624135 0.012205683 ;
	setAttr ".uvtk[308]" -type "float2" 0.0060627945 0.048141412 ;
	setAttr ".uvtk[309]" -type "float2" 0.0069558509 0.0019203946 ;
	setAttr ".uvtk[310]" -type "float2" -0.031225901 0.27950624 ;
	setAttr ".uvtk[311]" -type "float2" -0.076749429 0.34654126 ;
	setAttr ".uvtk[312]" -type "float2" -0.4170092 -0.20517153 ;
	setAttr ".uvtk[313]" -type "float2" -0.026078623 0.28347096 ;
	setAttr ".uvtk[314]" -type "float2" 0.031175815 0.34193051 ;
	setAttr ".uvtk[315]" -type "float2" 0.27727646 -0.25399986 ;
	setAttr ".uvtk[318]" -type "float2" 0.18961839 0.061143748 ;
	setAttr ".uvtk[322]" -type "float2" 0.20741557 0.070137016 ;
	setAttr ".uvtk[324]" -type "float2" 0.18445835 0.064377539 ;
	setAttr ".uvtk[325]" -type "float2" 0.18874221 0.054794095 ;
	setAttr ".uvtk[326]" -type "float2" -0.25283876 0.080295883 ;
	setAttr ".uvtk[327]" -type "float2" -0.26067784 0.06976267 ;
	setAttr ".uvtk[328]" -type "float2" -0.22719103 0.047029428 ;
	setAttr ".uvtk[329]" -type "float2" -0.25480714 0.081299417 ;
	setAttr ".uvtk[330]" -type "float2" -0.2623851 0.071199082 ;
	setAttr ".uvtk[331]" -type "float2" 0.18341249 0.064317398 ;
	setAttr ".uvtk[335]" -type "float2" 0.12343382 0.23106828 ;
	setAttr ".uvtk[337]" -type "float2" 0.18825249 0.053787671 ;
	setAttr ".uvtk[338]" -type "float2" -0.36521891 0.079231761 ;
	setAttr ".uvtk[346]" -type "float2" -0.38039967 0.023192398 ;
	setAttr ".uvtk[348]" -type "float2" -0.37254283 -0.010376044 ;
	setAttr ".uvtk[354]" -type "float2" -0.35941717 0.054443501 ;
	setAttr ".uvtk[361]" -type "float2" -0.49649206 0.12102514 ;
	setAttr ".uvtk[368]" -type "float2" -0.45717415 0.078305595 ;
	setAttr ".uvtk[369]" -type "float2" -0.46346024 0.10297554 ;
	setAttr ".uvtk[370]" -type "float2" -0.50500476 0.15443332 ;
	setAttr ".uvtk[372]" -type "float2" -0.44375315 0.16188918 ;
	setAttr ".uvtk[375]" -type "float2" -0.43881145 0.10665514 ;
	setAttr ".uvtk[378]" -type "float2" -0.42422977 0.085786574 ;
	setAttr ".uvtk[384]" -type "float2" -0.42400667 0.13362886 ;
	setAttr ".uvtk[396]" -type "float2" -0.49215522 0.14876251 ;
	setAttr ".uvtk[404]" -type "float2" -0.45717415 0.10573306 ;
	setAttr ".uvtk[405]" -type "float2" -0.46273276 0.13975768 ;
	setAttr ".uvtk[409]" -type "float2" -0.49626002 0.17388767 ;
	setAttr ".uvtk[411]" -type "float2" -0.35293606 0.096451871 ;
	setAttr ".uvtk[413]" -type "float2" -0.33323231 0.13468347 ;
	setAttr ".uvtk[415]" -type "float2" -0.38448468 0.095786951 ;
	setAttr ".uvtk[416]" -type "float2" -0.40439668 0.057121627 ;
	setAttr ".uvtk[422]" -type "float2" -0.45717415 0.036693774 ;
	setAttr ".uvtk[423]" -type "float2" -0.46699831 0.078365199 ;
	setAttr ".uvtk[424]" -type "float2" -0.50440216 0.11609947 ;
	setAttr ".uvtk[425]" -type "float2" -0.49652228 0.082064919 ;
	setAttr ".uvtk[427]" -type "float2" 0.20741548 0.070137165 ;
	setAttr ".uvtk[428]" -type "float2" 0.20763056 0.070058607 ;
	setAttr ".uvtk[433]" -type "float2" 0.19457473 0.073866807 ;
	setAttr ".uvtk[434]" -type "float2" 0.20741339 0.070136599 ;
	setAttr ".uvtk[435]" -type "float2" 0.20238905 0.057251506 ;
	setAttr ".uvtk[436]" -type "float2" 0.19936217 0.062801383 ;
	setAttr ".uvtk[440]" -type "float2" 0.17141485 0.067147456 ;
	setAttr ".uvtk[441]" -type "float2" 0.16159943 0.064292364 ;
	setAttr ".uvtk[442]" -type "float2" 0.13518387 0.22682944 ;
	setAttr ".uvtk[443]" -type "float2" 0.18199074 0.043127112 ;
	setAttr ".uvtk[449]" -type "float2" 0.25646943 -0.099343248 ;
	setAttr ".uvtk[450]" -type "float2" -0.25095865 0.056742154 ;
	setAttr ".uvtk[457]" -type "float2" -0.24238354 0.051334254 ;
	setAttr ".uvtk[458]" -type "float2" -0.23682964 0.077933572 ;
	setAttr ".uvtk[463]" -type "float2" -0.16993767 0.22365323 ;
	setAttr ".uvtk[464]" -type "float2" -0.27740309 0.073532663 ;
	setAttr ".uvtk[465]" -type "float2" -0.36623403 -0.04864312 ;
	setAttr ".uvtk[466]" -type "float2" -0.26387534 0.093501203 ;
	setAttr ".uvtk[467]" -type "float2" -0.273002 0.09567859 ;
	setAttr ".uvtk[468]" -type "float2" -0.28912953 0.10105165 ;
	setAttr ".uvtk[469]" -type "float2" 0.26527253 -0.13721859 ;
	setAttr ".uvtk[470]" -type "float2" 0.26997221 -0.098313101 ;
	setAttr ".uvtk[471]" -type "float2" 0.091321938 0.25171682 ;
	setAttr ".uvtk[472]" -type "float2" 0.27454469 -0.088648625 ;
	setAttr ".uvtk[473]" -type "float2" 0.25207901 -0.12193394 ;
	setAttr ".uvtk[474]" -type "float2" 0.096202515 0.23233876 ;
	setAttr ".uvtk[475]" -type "float2" 0.11558064 0.22044623 ;
	setAttr ".uvtk[476]" -type "float2" 0.17313865 0.037727289 ;
	setAttr ".uvtk[477]" -type "float2" -0.22598749 0.04452499 ;
	setAttr ".uvtk[478]" -type "float2" -0.17133343 -0.0075183287 ;
	setAttr ".uvtk[479]" -type "float2" -0.14632881 -0.039811917 ;
	setAttr ".uvtk[480]" -type "float2" -0.10085689 -0.06264741 ;
	setAttr ".uvtk[481]" -type "float2" -0.095368549 -0.061620481 ;
	setAttr ".uvtk[482]" -type "float2" -0.0622807 -0.018811174 ;
	setAttr ".uvtk[483]" -type "float2" -0.051086411 0.027312003 ;
	setAttr ".uvtk[485]" -type "float2" -0.026778322 0.033394627 ;
	setAttr ".uvtk[487]" -type "float2" -0.017697971 -0.012445517 ;
	setAttr ".uvtk[493]" -type "float2" 0.011090983 -0.057432778 ;
	setAttr ".uvtk[497]" -type "float2" 0.016360156 -0.058870263 ;
	setAttr ".uvtk[499]" -type "float2" 0.062900029 -0.04078985 ;
	setAttr ".uvtk[505]" -type "float2" 0.091348104 -0.011698134 ;
	setAttr ".uvtk[507]" -type "float2" -0.4445444 0.079860531 ;
	setAttr ".uvtk[510]" -type "float2" -0.40305868 0.032835864 ;
	setAttr ".uvtk[515]" -type "float2" -0.41118762 0.06381049 ;
	setAttr ".uvtk[517]" -type "float2" -0.45355555 0.11419677 ;
	setAttr ".uvtk[519]" -type "float2" 0.25694573 0.10100003 ;
	setAttr ".uvtk[521]" -type "float2" 0.29871118 0.055103324 ;
	setAttr ".uvtk[524]" -type "float2" 0.28717652 0.096449874 ;
	setAttr ".uvtk[526]" -type "float2" 0.24834052 0.13184576 ;
	setAttr ".uvtk[528]" -type "float2" 0.29871118 0.10294931 ;
	setAttr ".uvtk[534]" -type "float2" 0.26376364 0.15455179 ;
	setAttr ".uvtk[535]" -type "float2" 0.23346946 0.17146766 ;
	setAttr ".uvtk[536]" -type "float2" 0.26681948 0.12075716 ;
	setAttr ".uvtk[538]" -type "float2" -0.35492566 0.034050874 ;
	setAttr ".uvtk[543]" -type "float2" -0.31329444 0.079999618 ;
	setAttr ".uvtk[545]" -type "float2" -0.3035554 0.11520403 ;
	setAttr ".uvtk[548]" -type "float2" -0.34318051 0.076507293 ;
	setAttr ".uvtk[549]" -type "float2" -0.36506769 -0.033191927 ;
	setAttr ".uvtk[550]" -type "float2" -0.15032411 0.23963508 ;
	setAttr ".uvtk[551]" -type "float2" -0.3492178 -0.070113666 ;
	setAttr ".uvtk[552]" -type "float2" -0.35436895 -0.094902582 ;
	setAttr ".uvtk[553]" -type "float2" -0.19674182 0.2286813 ;
	setAttr ".uvtk[554]" -type "float2" -0.2099632 0.22030848 ;
	setAttr ".uvtk[555]" -type "float2" -0.22792864 0.073221199 ;
	setAttr ".uvtk[556]" -type "float2" -0.28402135 0.079951338 ;
	setAttr ".uvtk[557]" -type "float2" -0.41434076 0.025119446 ;
	setAttr ".uvtk[558]" -type "float2" -0.45044658 0.075689636 ;
	setAttr ".uvtk[559]" -type "float2" -0.44392982 0.033651583 ;
	setAttr ".uvtk[560]" -type "float2" -0.4082956 -0.013877399 ;
	setAttr ".uvtk[561]" -type "float2" 0.29871118 -0.052737065 ;
	setAttr ".uvtk[564]" -type "float2" 0.2916159 0.0087886676 ;
	setAttr ".uvtk[567]" -type "float2" 0.26813835 0.04454013 ;
	setAttr ".uvtk[570]" -type "float2" 0.27354985 -0.014421649 ;
	setAttr ".uvtk[573]" -type "float2" -0.47313383 0.035175376 ;
	setAttr ".uvtk[574]" -type "float2" -0.49546126 0.071385406 ;
	setAttr ".uvtk[575]" -type "float2" -0.49010572 0.0094776079 ;
	setAttr ".uvtk[576]" -type "float2" -0.46939376 -0.024112709 ;
	setAttr ".uvtk[577]" -type "float2" -0.35243449 0.15834515 ;
	setAttr ".uvtk[578]" -type "float2" -0.38854995 0.13545971 ;
	setAttr ".uvtk[579]" -type "float2" -0.42053518 0.082068466 ;
	setAttr ".uvtk[580]" -type "float2" -0.38181588 0.10660391 ;
	setAttr ".uvtk[581]" -type "float2" 0.22372425 0.085246377 ;
	setAttr ".uvtk[582]" -type "float2" 0.2251853 0.087850563 ;
	setAttr ".uvtk[583]" -type "float2" -0.29213002 0.10108497 ;
	setAttr ".uvtk[584]" -type "float2" -0.32869175 0.10410481 ;
	setAttr ".uvtk[585]" -type "float2" -0.28128341 0.14107288 ;
	setAttr ".uvtk[586]" -type "float2" -0.26689568 0.17301327 ;
	setAttr ".uvtk[587]" -type "float2" -0.31092241 0.14314307 ;
	setAttr ".uvtk[588]" -type "float2" 0.25421768 0.067397289 ;
	setAttr ".uvtk[589]" -type "float2" 0.29871118 0.020707272 ;
	setAttr ".uvtk[590]" -type "float2" 0.28530544 0.061970077 ;
	setAttr ".uvtk[591]" -type "float2" 0.24072111 0.10805529 ;
createNode polyPlanarProj -n "polyPlanarProj9";
	rename -uid "34F536EA-4FED-9B11-675A-EA81F80AB6FA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 12.710277557373047 -23.770175933837891 ;
	setAttr ".ps" -type "double2" 52.944328308105469 1.8354873657226563 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "935F09E4-4F19-4C35-FF0D-999FE078E186";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[14]" -type "float2" -0.73005497 -0.47819972 ;
	setAttr ".uvtk[599]" -type "float2" -0.73005497 0.47819972 ;
	setAttr ".uvtk[609]" -type "float2" 0.22634467 0.47819972 ;
	setAttr ".uvtk[613]" -type "float2" 0.22634467 -0.47819972 ;
createNode polyPlanarProj -n "polyPlanarProj10";
	rename -uid "188F32EF-4E3E-10BE-BAC6-0EBE3A0E9F9D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[11]" "f[17]" "f[19]" "f[46]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 127.16461181640625 0 ;
	setAttr ".ps" -type "double2" 61.98284912109375 258.99261474609375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "C22DE076-4EA1-10AE-9466-2CA507BAB1F1";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[12]" -type "float2" -0.31235731 0.32579702 ;
	setAttr ".uvtk[17]" -type "float2" -0.31235731 0.32061386 ;
	setAttr ".uvtk[25]" -type "float2" 0.31235731 0.32061386 ;
	setAttr ".uvtk[26]" -type "float2" 0.31235731 0.32579702 ;
	setAttr ".uvtk[30]" -type "float2" -0.36568213 0.32579702 ;
	setAttr ".uvtk[31]" -type "float2" -0.36568213 0.36568218 ;
	setAttr ".uvtk[35]" -type "float2" 0.36568213 0.36568218 ;
	setAttr ".uvtk[37]" -type "float2" 0.36568213 0.32579702 ;
	setAttr ".uvtk[39]" -type "float2" -0.36568213 0.36568218 ;
	setAttr ".uvtk[41]" -type "float2" -0.36568213 0.32579702 ;
	setAttr ".uvtk[45]" -type "float2" 0.36568213 0.32579702 ;
	setAttr ".uvtk[47]" -type "float2" 0.36568213 0.36568218 ;
	setAttr ".uvtk[115]" -type "float2" 0.10023537 -0.34319377 ;
	setAttr ".uvtk[116]" -type "float2" 0.10023537 -0.36568213 ;
	setAttr ".uvtk[117]" -type "float2" 0.35462576 -0.36568213 ;
	setAttr ".uvtk[118]" -type "float2" 0.35462576 -0.34319377 ;
createNode polyLayoutUV -n "polyLayoutUV6";
	rename -uid "7476C289-49B5-B5E5-1511-5A9F27F11086";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:318]";
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "F95BBA2D-45C5-328C-3D08-1B8F11B52C75";
	setAttr ".uopa" yes;
	setAttr -s 881 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798
		 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798;
	setAttr ".uvtk[250:499]" 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798;
	setAttr ".uvtk[500:749]" 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798;
	setAttr ".uvtk[750:880]" 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559 0.26079798 0.31429559
		 0.26079798;
createNode polyPlanarProj -n "polyPlanarProj11";
	rename -uid "859BEFD0-427B-CF01-338B-FEB7D4B1CAC1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 18.553844700249435 0 0 0 0 226.4342367016487 0 0 0 0 16.660077069476763 0
		 0 107.17970558051377 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 12.710277557373047 23.770175933837891 ;
	setAttr ".ps" -type "double2" 52.944328308105469 1.8354873657226563 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "ECA7674D-4573-2027-9945-05AD1E087CE3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[12]" -type "float2" -0.45569628 0.4556962 ;
	setAttr ".uvtk[17]" -type "float2" -0.45569628 -0.45569623 ;
	setAttr ".uvtk[25]" -type "float2" 0.45569625 -0.45569623 ;
	setAttr ".uvtk[26]" -type "float2" 0.45569625 0.4556962 ;
createNode polyMapCut -n "polyMapCut56";
	rename -uid "B26BC2C5-4698-653E-7FED-D6BCA3108A41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1:2]" "e[98:99]" "e[101]" "e[103]" "e[106:107]" "e[109]" "e[111]";
createNode polyLayoutUV -n "polyLayoutUV9";
	rename -uid "EF374EB0-49B0-3DA1-17D0-D2950EAA8C5C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:318]";
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "663FC2BD-4AE1-82B9-A283-B08225305FDB";
	setAttr ".uopa" yes;
	setAttr -s 901 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709
		 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709;
	setAttr ".uvtk[250:499]" 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709;
	setAttr ".uvtk[500:749]" 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709;
	setAttr ".uvtk[750:900]" 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733 0.26176709 0.3178733
		 0.26176709;
createNode polyMapCut -n "polyMapCut57";
	rename -uid "3B077976-4F5C-EC5C-24A8-FEA7B021DD1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[186]" "e[378:379]" "e[381]" "e[384:386]" "e[452]" "e[454]" "e[457]" "e[460]" "e[464]" "e[468]" "e[471]" "e[473]";
createNode polyMapCut -n "polyMapCut58";
	rename -uid "9B3252A7-4431-E142-391A-2E9024F8DCD4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[179]" "e[181]" "e[183]" "e[436]" "e[441]" "e[445]" "e[449]" "e[467]" "e[470]" "e[474:476]" "e[520]" "e[612:613]" "e[616:617]";
createNode polyMapCut -n "polyMapCut59";
	rename -uid "C7D8C588-483E-38B3-3962-598BD15BC28E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[419]" "e[423:425]";
createNode polyMapCut -n "polyMapCut60";
	rename -uid "72DB55EA-424F-CF23-6670-6099DDC6BB96";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[462:463]" "e[465:466]";
createNode polyMapCut -n "polyMapCut61";
	rename -uid "24DF4831-4D87-89FA-4324-CAB4CFA8D9B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[421:422]";
createNode polyMapCut -n "polyMapCut62";
	rename -uid "E4969679-4EEA-5FE4-E225-14A4EDEB8E04";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[416]" "e[418]";
createNode polyMapCut -n "polyMapCut63";
	rename -uid "64ACF3A7-4443-B6C9-1963-CBB502339992";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[139]" "e[197]" "e[203:205]";
createNode polyMapCut -n "polyMapCut64";
	rename -uid "670AEC33-4388-AECE-97D0-F5A0A953AD98";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[1:2]" "e[6:9]" "e[44:45]" "e[58:580]" "e[583:657]";
createNode polyMapCut -n "polyMapCut65";
	rename -uid "3FB90B5B-4DBE-FA32-EF3A-24ADC6D2224A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[4:5]" "e[8:9]" "e[12:14]" "e[16]" "e[19:21]" "e[28:30]" "e[32]" "e[35:37]" "e[44:57]" "e[581:582]";
createNode polyLayoutUV -n "polyLayoutUV12";
	rename -uid "BAC3B105-46E4-34B5-A031-C9AC10B6A65A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:318]";
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "C3A7F495-4127-D9DE-E373-918216AF07BB";
	setAttr ".uopa" yes;
	setAttr -s 1300 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.16820759 0.19613332 0.25613895 0.50968069
		 0.36726147 0.17156374 0.52426273 0.051996358 0.40600187 0.39376166 0.40804094 0.46668243
		 0.49125856 0.3744531 0.47370034 0.12152649 0.47940516 0.052210189 0.19747677 0.5079779
		 0.4100799 0.051989533 0.4804247 0.058107711 0.22657427 0.21130657 0.2877425 0.053359516
		 0.43760616 0.49352291 0.13380176 0.05132363 0.19191217 0.053058513 0.339697 0.21130657
		 0.28366464 0.053673066 0.29182041 0.053903826 0.55994487 0.052783586 0.1225875 0.053041615
		 0.32750183 0.052464761 0.097100526 0.052224137 0.47940516 0.052210189 0.339697 0.32442936
		 0.22657427 0.32442936 0.4100799 0.051989533 0.35910541 0.051266946 0.52426273 0.051996358
		 0.042048603 0.048291333 0.060751975 0.048291333 0.11850962 0.049965627 0.55892545
		 0.049898989 0.46003491 0.049892642 0.060751975 0.3912507 0.12564597 0.051568128 0.042048603
		 0.3912507 0.29182041 0.050503559 0.063457668 0.048291333 0.43352818 0.049950846 0.082161039
		 0.048291333 0.52120429 0.049659319 0.31526822 0.049354143 0.54465252 0.050977089
		 0.082161039 0.3912507 0.11239275 0.050267227 0.063457668 0.3912507 0.24546528 0.07630939
		 0.2877425 0.050671227 0.3656286 0.45819038 0.29182041 0.050503559 0.32750183 0.049391665
		 0.14093816 0.30619261 0.41869879 0.18234697 0.1225875 0.050503202 0.39172918 0.4824104
		 0.11239275 0.050267227 0.14807451 0.049949892 0.54165441 0.27293384 0.11850962 0.049965627
		 0.11545119 0.05023659 0.55892545 0.049898989 0.46003491 0.049892642 0.53241861 0.049957462
		 0.52120429 0.049659319 0.31526822 0.049354143 0.43352818 0.049950846 0.16438618 0.04879526
		 0.40722841 0.048464485 0.54975003 0.52161866 0.20360729 0.047750331 0.38968998 0.054301925
		 0.44883573 0.5354538 0.21230167 0.049566366 0.12768489 0.52689284 0.21409974 0.52665681
		 0.27958673 0.049526192 0.21230167 0.049566366 0.20210698 0.21578962 0.36828083 0.17711753
		 0.32750183 0.068591394 0.36522222 0.048017778 0.50526643 0.52199018 0.47578806 0.047959663
		 0.51233816 0.51848412 0.2545366 0.060245253 0.25882518 0.060596921 0.054380119 0.53362066
		 0.29997623 0.42542359 0.25329122 0.12808017 0.24900264 0.12772848 0.56177139 0.11687551
		 0.13450763 0.07480628 0.135113 0.061742999 0.22576916 0.53005123 0.55751383 0.11749844
		 0.54771101 0.05050201 0.147055 0.047244169 0.097100526 0.048963554 0.18273687 0.51201642
		 0.55196869 0.049879052 0.059029013 0.5212056 0.33259928 0.047435172 0.3372882 0.053528942
		 0.2908009 0.047508128 0.12461004 0.53522861 0.34710473 0.19365728 0.34286338 0.19395432
		 0.37337822 0.047460772 0.17914665 0.46307588 0.32916701 0.18815985 0.3251729 0.19472989
		 0.31934607 0.047967322 0.32359433 0.047798641 0.3050735 0.090380616 0.31561905 0.090380616
		 0.31561905 0.20967218 0.3050735 0.20967218 0.3650074 0.18830851 0.36076623 0.18860558
		 0.3509497 0.048477329 0.35519093 0.04818023 0.25830474 0.53077394 0.36973715 0.15074314
		 0.26422817 0.51008648 0.085758716 0.086853035 0.086761981 0.16863519 0.46823168 0.50946617
		 0.38765121 0.51945847 0.42313188 0.45213512 0.18579528 0.52568394 0.20348027 0.51341248
		 0.19803008 0.40447959 0.14705506 0.46842897 0.44032943 0.51088035 0.32772148 0.068545587
		 0.22453532 0.46791875 0.44270349 0.058016963 0.44458234 0.05677212 0.49367815 0.048445113
		 0.52970034 0.39902303 0.4035657 0.32436052 0.147055 0.047244169 0.26747265 0.51410282
		 0.4059251 0.058126725 0.3111946 0.048334844 0.09489426 0.51855528 0.15022245 0.15951481
		 0.44882065 0.047911324 0.1895844 0.064390458 0.52732122 0.050762363 0.18273687 0.50565374
		 0.19191217 0.04750479 0.42435288 0.047882982 0.084866762 0.28227505 0.32579327 0.38355967
		 0.26531416 0.048927672 0.13221014 0.46660286 0.36930031 0.047846831 0.51827794 0.43023458
		 0.27701539 0.12646119 0.15317193 0.047968335 0.27985734 0.12003464 0.053313971 0.52112693
		 0.10502082 0.53155375 0.19497064 0.048741587 0.32750183 0.058536895 0.36420292 0.41889772
		 0.27022234 0.051553018 0.27016747 0.049918927 0.31860554 0.44136974 0.49107492 0.05035273
		 0.15754965 0.091180094 0.15641251 0.092401452 0.15592471 0.10855681 0.10933426 0.075782992
		 0.29673621 0.4623552 0.14163184 0.45577657 0.34657425 0.52718854 0.28162569 0.52160615
		 0.50895727 0.06607265 0.43658662 0.0477686 0.3998552 0.42860475 0.48654163 0.047217287
		 0.44066459 0.047768541 0.38968992 0.42345563 0.38927346 0.42185655 0.3891083 0.39226571
		 0.44882065 0.047911324 0.091889739 0.33630821 0.084866732 0.34146461 0.26531416 0.32747397
		 0.18495992 0.048879303 0.15011352 0.047458835 0.37439781 0.15335326 0.20924324 0.047732539
		 0.48960012 0.047769643 0.34381568 0.19692606 0.049556524 0.49257508 0.24900264 0.17968941
		 0.19191217 0.04750479 0.14297712 0.085701115 0.55441028 0.15275495 0.2341446 0.049775131
		 0.35051084 0.18673462 0.2891835 0.074366219 0.10265544 0.04715354 0.42537224 0.066328026
		 0.37439781 0.16253701 0.48654163 0.047217287 0.05837658 0.51185107 0.43658662 0.0477686
		 0.44066459 0.047768541 0.20924324 0.047732539 0.2619471 0.38758352 0.15011352 0.047458835
		 0.48960012 0.047769643 0.25924844 0.39065084 0.085257709 0.29878497 0.54465312 0.0583371
		 0.097100526 0.06022466 0.52936023 0.047918327 0.36930031 0.047846831 0.14093816 0.50295615
		 0.17777202 0.16523141 0.19497064 0.48299137 0.31526822 0.512016 0.2316716 0.51211822
		 0.4804247 0.31195176 0.05526641 0.44525495 0.22437638 0.50706232 0.21582812 0.49361363
		 0.43192065 0.052343376 0.064473987 0.45111981 0.14943624 0.51950085 0.26633361 0.52093375
		 0.50718606 0.084368862 0.10802245 0.048256792 0.21199015 0.48770723 0.27080816 0.082794972
		 0.34585238 0.047605045 0.26327521 0.50658566 0.56123018 0.40791717 0.24799594 0.52185494
		 0.34585238 0.047605045 0.3050735 0.047685392 0.41117537 0.066904522 0.56013179 0.083783872
		 0.3382892 0.4709093;
	setAttr ".uvtk[250:499]" 0.14093816 0.047650076 0.084866762 0.19035622 0.14093816
		 0.047650076 0.34250575 0.53145397 0.22147691 0.046994366 0.4429298 0.080514498 0.38635868
		 0.10368989 0.37337822 0.047460772 0.042048603 0.45727849 0.36111659 0.075558402 0.23276478
		 0.53400081 0.31153619 0.4488695 0.10972127 0.49968475 0.33364272 0.51602596 0.094042093
		 0.50856882 0.41752493 0.050392188 0.25430056 0.50567424 0.042048603 0.40501663 0.32138515
		 0.42305067 0.22604835 0.4480817 0.28090397 0.053209253 0.54159409 0.45430586 0.19358423
		 0.46459395 0.44498217 0.067720272 0.068937421 0.49015471 0.33180887 0.47297192 0.17109713
		 0.50272489 0.56002718 0.068922646 0.36020207 0.063405521 0.50221956 0.41318753 0.29840034
		 0.048331238 0.1395877 0.49969429 0.15474311 0.054496147 0.084866732 0.45722657 0.51189214
		 0.53334779 0.057865053 0.49935406 0.37965387 0.049548902 0.22147691 0.046994366 0.13199413
		 0.50500339 0.50183409 0.081678666 0.55597728 0.049886413 0.54652131 0.49566448 0.22555479
		 0.048675187 0.14059651 0.06263385 0.54319853 0.21591631 0.36718333 0.47329193 0.43279636
		 0.49062863 0.51894033 0.49876887 0.095841944 0.50316679 0.09419173 0.47871444 0.30201644
		 0.050422616 0.50338781 0.068272628 0.23402131 0.48980263 0.28311777 0.50193369 0.19046628
		 0.47982302 0.40475792 0.49323067 0.06486395 0.51077378 0.47730529 0.51627344 0.24641839
		 0.4737463 0.30779105 0.48095408 0.4906196 0.091016181 0.33634198 0.41428784 0.082641304
		 0.47779712 0.14852643 0.10311694 0.20814598 0.44215819 0.17661995 0.45880091 0.11248133
		 0.48970464 0.53241861 0.046946473 0.25479642 0.051930882 0.46907932 0.047911741 0.11545116
		 0.047688462 0.11239275 0.047757365 0.25002205 0.061379023 0.11952907 0.46757287 0.25307971
		 0.049191482 0.4588207 0.52049565 0.064477175 0.50104326 0.34993023 0.51555139 0.082137793
		 0.51465935 0.17487237 0.53042358 0.38005114 0.52176487 0.2708945 0.066241063 0.053262889
		 0.53262877 0.23167163 0.53293818 0.14510712 0.52088469 0.36851871 0.29609466 0.39019454
		 0.053183086 0.086378932 0.53349042 0.38359493 0.048089989 0.13534135 0.065487541
		 0.45770848 0.056370057 0.28264511 0.047460772 0.14093816 0.047650076 0.147055 0.047244169
		 0.18273687 0.50919825 0.53241861 0.046946473 0.39165401 0.077840395 0.13439333 0.065395691
		 0.38748294 0.09566135 0.53241861 0.046946473 0.49571711 0.41547325 0.28264511 0.047460772
		 0.042253166 0.49875176 0.1600188 0.047658749 0.38051474 0.061249711 0.18273687 0.51201642
		 0.097100526 0.048963554 0.147055 0.047244169 0.14093816 0.047650076 0.13424823 0.50170696
		 0.18273687 0.51201642 0.16996747 0.45994502 0.18273687 0.51201642 0.34177452 0.048932679
		 0.18273687 0.50919825 0.097100526 0.048963554 0.34177452 0.048932679 0.52324325 0.51963758
		 0.14909402 0.48262402 0.15243125 0.46952724 0.17448664 0.44220915 0.34177452 0.048932679
		 0.50008357 0.047704495 0.53246605 0.53184855 0.097100526 0.048963554 0.49746007 0.077027328
		 0.51060718 0.4582029 0.46192318 0.057308085 0.48971885 0.088106103 0.11239275 0.047757365
		 0.061932981 0.49762881 0.28264511 0.047460772 0.45792681 0.056504793 0.52119797 0.52099454
		 0.48960012 0.062707402 0.12054861 0.047846474 0.27958673 0.049526192 0.4620738 0.047013827
		 0.22147691 0.046994366 0.46105444 0.056486435 0.042048603 0.49890268 0.28264511 0.047460772
		 0.22147691 0.046994366 0.4620738 0.047013827 0.11545116 0.047688462 0.11239275 0.047757365
		 0.43272895 0.47732392 0.21230167 0.049566366 0.4620738 0.047013827 0.089418918 0.45443311
		 0.12054861 0.047846474 0.11545116 0.047688462 0.4620738 0.047013827 0.43454766 0.53568017
		 0.41415769 0.50016749 0.41710883 0.48210427 0.39729029 0.51146096 0.11545116 0.047688462
		 0.40667194 0.5235039 0.43490803 0.46398515 0.11239275 0.047757365 0.27169684 0.4679423
		 0.04657051 0.46596807 0.26123628 0.44764557 0.12054861 0.047846474 0.28844529 0.46829522
		 0.29901648 0.48882207 0.43905604 0.52101529 0.21230167 0.049566366 0.14807451 0.049949892
		 0.35400814 0.48511782 0.39759028 0.069848545 0.53649658 0.4813973 0.54171216 0.45927459
		 0.56156915 0.43924215 0.5573861 0.4573105 0.56189638 0.53159225 0.32834744 0.057333238
		 0.32823324 0.057374932 0.35957921 0.44477847 0.32750183 0.049391665 0.22147688 0.049950786
		 0.56178677 0.51391715 0.1657497 0.43766209 0.10621724 0.53190899 0.45751631 0.52774048
		 0.45456982 0.52613348 0.22147688 0.049950786 0.38765121 0.049262978 0.14807454 0.52249247
		 0.090983629 0.14149599 0.27090776 0.054660894 0.55579239 0.30344328 0.39762551 0.31533191
		 0.17367688 0.063613422 0.22147688 0.049950786 0.32750183 0.049391665 0.40349579 0.45554662
		 0.13702208 0.50537586 0.52212352 0.44398221 0.23928222 0.37137637 0.49571711 0.49446562
		 0.38765121 0.049262978 0.22147688 0.049950786 0.17867437 0.049021848 0.1444858 0.52231634
		 0.20221904 0.51701421 0.35971349 0.52526343 0.56101173 0.13380472 0.39770579 0.49585474
		 0.14807451 0.049949892 0.21230167 0.049566366 0.20210698 0.53442693 0.18681479 0.32354462
		 0.21026275 0.39916328 0.3765167 0.452813 0.077688694 0.4660421 0.16723871 0.52076393
		 0.13142654 0.40698352 0.2432141 0.49365452 0.47775471 0.43629602 0.26735312 0.51235425
		 0.24712664 0.063126452 0.36041677 0.40296021 0.28372082 0.057876833 0.26919398 0.069331177
		 0.41860604 0.52441156 0.28771335 0.53078353 0.37584281 0.48807177 0.43931764 0.50419372
		 0.37731147 0.063662566 0.12791967 0.51882887 0.083673209 0.51139379 0.077730417 0.48690781
		 0.55892545 0.083701201 0.26385316 0.48157504 0.45691955 0.051205464 0.25903258 0.50591099
		 0.3050735 0.047685392 0.45697653 0.047467716 0.38582355 0.10389883 0.32830286 0.072412737
		 0.16134784 0.53712332 0.30559587 0.51246381 0.56151569 0.0690246 0.45697653 0.047467716
		 0.28672305 0.047898658 0.55879939 0.064659961 0.24297261 0.52291381 0.55134463 0.51641977;
	setAttr ".uvtk[500:749]" 0.49265862 0.53719455 0.32851487 0.07236845 0.36579317
		 0.047792412 0.45697653 0.047467716 0.3050735 0.047685392 0.2143406 0.48920646 0.063953549
		 0.52227527 0.53405285 0.45424578 0.51151294 0.50578147 0.30049139 0.42501894 0.51202881
		 0.47921035 0.28672305 0.047898658 0.45697653 0.047467716 0.3378396 0.47126567 0.51157033
		 0.50667006 0.51634431 0.46276647 0.36143255 0.063403226 0.53883684 0.4360173 0.36012489
		 0.07556022 0.42919409 0.46295142 0.18922204 0.46700311 0.4070214 0.48731723 0.16056454
		 0.52188432 0.49275082 0.52194738 0.41314501 0.4653669 0.17401141 0.46074766 0.43376243
		 0.44657585 0.52426273 0.049213566 0.5263018 0.50459933 0.52426273 0.049213566 0.1287044
		 0.049705006 0.50474453 0.53725684 0.1287044 0.049705006 0.47838569 0.048937298 0.54485482
		 0.47720429 0.56093764 0.46822399 0.54323262 0.49514544 0.12679309 0.53337312 0.11213845
		 0.47410309 0.52426273 0.049213566 0.18423426 0.46442831 0.1287044 0.049705006 0.52426273
		 0.049213566 0.090037107 0.4497095 0.39172918 0.048929162 0.084866732 0.43102011 0.39172918
		 0.048929162 0.45458823 0.049540587 0.10590303 0.45156357 0.25680259 0.45582169 0.51508737
		 0.047959812 0.28689444 0.46318883 0.15238351 0.39071468 0.092420757 0.34636256 0.083847284
		 0.39872202 0.39320236 0.31776926 0.34298861 0.053925492 0.54276454 0.4121103 0.56193221
		 0.38526341 0.55847275 0.40758076 0.53955513 0.4328132 0.090983629 0.11606381 0.53547716
		 0.051996477 0.56096441 0.056002922 0.094750345 0.083400734 0.4804247 0.054357387
		 0.52426273 0.051996358 0.10721427 0.064420857 0.35910541 0.051266946 0.53547716 0.051996477
		 0.10434136 0.095722683 0.52426273 0.051996358 0.13380176 0.05132363 0.42735791 0.070160903
		 0.43921101 0.050937541 0.43636793 0.083803482 0.42537224 0.10163609 0.30201513 0.45439002
		 0.32118827 0.46653956 0.3381685 0.49488416 0.31761318 0.4818587 0.36497861 0.41021237
		 0.44665706 0.048948623 0.13301966 0.40696576 0.29404274 0.503021 0.26887447 0.48339519
		 0.26123628 0.46643853 0.28460947 0.4822962 0.39903826 0.45582956 0.37541729 0.48061654
		 0.38253409 0.45871091 0.40620321 0.4342449 0.34687185 0.054030307 0.35910541 0.051266946
		 0.19191217 0.053058513 0.13380176 0.05132363 0.29182041 0.053903826 0.28366464 0.053673066
		 0.13380176 0.054878749 0.43760616 0.43785939 0.13380176 0.054878749 0.34687185 0.054030307
		 0.2877425 0.053359516 0.34687185 0.054030307 0.19191217 0.053058513 0.19191217 0.053058513
		 0.28366464 0.053673066 0.097100526 0.052224137 0.29182041 0.053903826 0.49326962
		 0.43785939 0.3611443 0.048684426 0.34177452 0.048932679 0.1225875 0.053041615 0.49326962
		 0.49352291 0.2877425 0.053359516 0.55994487 0.052783586 0.2877425 0.053359516 0.32750183
		 0.052464761 0.29182041 0.053903826 0.4100799 0.051989533 0.097100526 0.052224137
		 0.1225875 0.053041615 0.1225875 0.053041615 0.55994487 0.052783586 0.47940516 0.052210189
		 0.55994487 0.052783586 0.32750183 0.052464761 0.4804247 0.058107711 0.32750183 0.052464761
		 0.097100526 0.052224137 0.4804247 0.058107711 0.47940516 0.052210189 0.4804247 0.058107711
		 0.4100799 0.051989533 0.4804247 0.054357387 0.53547716 0.051996477 0.56096441 0.056002922
		 0.35910541 0.051266946 0.34687185 0.054030307 0.13380176 0.054878749 0.13380176 0.054878749
		 0.28366464 0.053673066 0.53547716 0.051996477 0.13380176 0.05132363 0.47408515 0.5185442
		 0.34585238 0.050546356 0.2877425 0.050671227 0.34585238 0.050546356 0.33074695 0.53528184
		 0.3337847 0.52812594 0.15113297 0.0509694 0.12564597 0.051568128 0.2877425 0.050671227
		 0.29182041 0.050503559 0.15113297 0.0509694 0.48109347 0.52190894 0.39735037 0.53121078
		 0.32851732 0.061734028 0.058793753 0.52137905 0.32873023 0.061790802 0.54229796 0.5248614
		 0.12564597 0.051568128 0.1541914 0.053996392 0.12564597 0.051568128 0.16066852 0.048247166
		 0.29182041 0.050503559 0.12403378 0.46562439 0.46981704 0.048609354 0.042048603 0.46815598
		 0.2877425 0.050671227 0.32750183 0.065527029 0.53343707 0.51241976 0.32772207 0.065585978
		 0.13397792 0.058189489 0.31328797 0.53202748 0.1225875 0.050503202 0.51100934 0.53258097
		 0.19191217 0.05042506 0.52238399 0.52202463 0.42544717 0.055796482 0.10696593 0.49330983
		 0.37235814 0.050370403 0.22568667 0.51029485 0.13380176 0.058255829 0.44270349 0.080375023
		 0.13380176 0.074737854 0.51591963 0.45634508 0.21230167 0.049566366 0.27958673 0.049526192
		 0.31079769 0.51244545 0.19191217 0.05042506 0.42720371 0.055967338 0.28366464 0.050925471
		 0.54465252 0.050977089 0.1225875 0.050503202 0.11239275 0.050267227 0.28366464 0.050925471
		 0.37411577 0.050529368 0.54465252 0.050977089 0.54465252 0.050977089 0.11239275 0.050267227
		 0.1225875 0.050503202 0.42537224 0.050713755 0.19191217 0.05042506 0.4804247 0.054357387
		 0.56096441 0.056002922 0.34585238 0.050546356 0.47226876 0.53219348 0.4804247 0.054357387
		 0.19191217 0.05042506 0.37133938 0.055350639 0.32036555 0.52623641 0.34585238 0.050546356
		 0.56096441 0.056002922 0.46003491 0.049892642 0.11545119 0.05023659 0.11850962 0.049965627
		 0.11545119 0.05023659 0.36930031 0.047846831 0.26531416 0.048927672 0.55892545 0.049898989
		 0.11850962 0.049965627 0.55892545 0.049898989 0.26531416 0.048927672 0.46003491 0.049892642
		 0.11545119 0.05023659 0.53241861 0.049957462 0.43352818 0.049950846 0.52120429 0.049659319
		 0.53241861 0.049957462 0.31526822 0.049354143 0.52120429 0.049659319 0.31526822 0.049354143
		 0.43352818 0.049950846 0.53241861 0.049957462 0.14807451 0.049949892 0.28366464 0.050925471
		 0.42791754 0.050961144 0.39397669 0.46676505 0.47826028 0.53389573 0.15113297 0.0509694
		 0.32750183 0.049391665 0.15113297 0.0509694 0.32373846 0.52099991 0.36346626 0.47384757
		 0.37388617 0.055580981 0.28366464 0.050925471 0.39172918 0.048929162 0.38765121 0.049262978
		 0.14928746 0.53773171;
	setAttr ".uvtk[750:999]" 0.12054861 0.047846474 0.27958673 0.049526192 0.30303454
		 0.52553833 0.47838569 0.048937298 0.49367815 0.048445113 0.47838569 0.048937298 0.3611443
		 0.048684426 0.34177452 0.048932679 0.49367815 0.048445113 0.15317193 0.047968335
		 0.49367815 0.048445113 0.19497064 0.048741587 0.3611443 0.048684426 0.3611443 0.048684426
		 0.26531416 0.048927672 0.54363298 0.048041262 0.4100799 0.048999824 0.54363298 0.048041262
		 0.36930031 0.047846831 0.39580709 0.047909655 0.34585238 0.047605045 0.52936023 0.047918327
		 0.52936023 0.047918327 0.34585238 0.047605045 0.13176286 0.048063405 0.15317193 0.047968335
		 0.54363298 0.048041262 0.4100799 0.048999824 0.4100799 0.048999824 0.54363298 0.048041262
		 0.1348213 0.04870642 0.19497064 0.048741587 0.39580709 0.047909655 0.43046969 0.047700442
		 0.12564594 0.048705198 0.43046969 0.047700442 0.50591189 0.047915258 0.48960012 0.047769643
		 0.50591189 0.047915258 0.25817785 0.048898436 0.50591189 0.047915258 0.53547716 0.048940726
		 0.50591189 0.047915258 0.43046969 0.047700442 0.44882065 0.047911324 0.43046969 0.047700442
		 0.39580709 0.047909655 0.53547716 0.048940726 0.18273687 0.50565374 0.1348213 0.04870642
		 0.18273687 0.50565374 0.1439966 0.048114993 0.48654163 0.047217287 0.1439966 0.048114993
		 0.13176286 0.048063405 0.44882065 0.047911324 0.48654163 0.047217287 0.12564594 0.048705198
		 0.42027491 0.048325695 0.15011352 0.047458835 0.42027491 0.048325695 0.25817785 0.048898436
		 0.15011352 0.047458835 0.48960012 0.047769643 0.18273687 0.50565374 0.15317193 0.047968335
		 0.13176286 0.048063405 0.44066459 0.047768541 0.1348213 0.04870642 0.4100799 0.048999824
		 0.12564594 0.048705198 0.19497064 0.048741587 0.52936023 0.047918327 0.39580709 0.047909655
		 0.53547716 0.048940726 0.42435288 0.047882982 0.53547716 0.048940726 0.25817785 0.048898436
		 0.42435288 0.047882982 0.13176286 0.048063405 0.1439966 0.048114993 0.43658662 0.0477686
		 0.1439966 0.048114993 0.1348213 0.04870642 0.43658662 0.0477686 0.44066459 0.047768541
		 0.19191217 0.04750479 0.25817785 0.048898436 0.42027491 0.048325695 0.42435288 0.047882982
		 0.20924324 0.047732539 0.42027491 0.048325695 0.12564594 0.048705198 0.19191217 0.04750479
		 0.20924324 0.047732539 0.11137322 0.51973569 0.39172918 0.048929162 0.2908009 0.047508128
		 0.39172918 0.048929162 0.44270349 0.066093124 0.3050735 0.047685392 0.2908009 0.047508128
		 0.063047856 0.52147132 0.11350664 0.51792216 0.2908009 0.047508128 0.16203517 0.49928087
		 0.52426273 0.049213566 0.24209124 0.52205712 0.15724987 0.49711019 0.37337822 0.047460772
		 0.52426273 0.049213566 0.1664252 0.5003143 0.28672305 0.047898658 0.28672305 0.047898658
		 0.37337822 0.047460772 0.21637958 0.51797551 0.18273687 0.50919825 0.53241861 0.046946473
		 0.34177452 0.048932679 0.18273687 0.50919825 0.51074404 0.49392828 0.49654198 0.50685114
		 0.38765121 0.049262978 0.39172918 0.048929162 0.49659276 0.50763494 0.32140386 0.51918358
		 0.13529536 0.061674125 0.4973678 0.51989394 0.23539326 0.5220806 0.1287044 0.049705006
		 0.47838569 0.048937298 0.42845875 0.52840465 0.15892583 0.4509047 0.21289441 0.3898041
		 0.18861595 0.52808803 0.45196033 0.24113886 0.42231375 0.52319676 0.43740469 0.50864941
		 0.51794118 0.16228738 0.47402185 0.3878307 0.46234012 0.40553692 0.47012687 0.53055358
		 0.084866732 0.14754774 0.087982535 0.066087492 0.26200438 0.53085208 0.46708143 0.28838992
		 0.36844581 0.068754949 0.37061155 0.089848168 0.46589714 0.3911989 0.4620738 0.53040868
		 0.46454978 0.50958824 0.34304655 0.38311753 0.096194416 0.1430117 0.13091263 0.053798564
		 0.36439455 0.5222398 0.40232509 0.31819856 0.41573942 0.52911121 0.35808605 0.39096716
		 0.12062502 0.060112096 0.25216791 0.19766581 0.36425894 0.43320695 0.18672144 0.36606589
		 0.4025653 0.35575071 0.39905131 0.35011372 0.45187896 0.53125441 0.15928879 0.4384459
		 0.2882179 0.12648191 0.51265198 0.49244776 0.23982745 0.049333163 0.25342435 0.15237643
		 0.086088538 0.51491892 0.41859531 0.5175004 0.14658615 0.16832051 0.26225573 0.049978204
		 0.14451855 0.46511936 0.27890909 0.53027183 0.5454644 0.084915556 0.2407192 0.47300035
		 0.34394556 0.1019595 0.3593654 0.059896268 0.56152946 0.34841374 0.35910541 0.059361942
		 0.25816745 0.051465698 0.36193496 0.054306187 0.080788851 0.5309208 0.36137962 0.054274209
		 0.37439781 0.14602618 0.55833882 0.36268744 0.35502756 0.51077276 0.56126952 0.34787938
		 0.5181458 0.42916164 0.5296334 0.38968626 0.042048603 0.50520074 0.37495303 0.14605819
		 0.40679479 0.057532676 0.56166303 0.36834696 0.4100799 0.53243542 0.26939204 0.059871681
		 0.33667696 0.38462004 0.51363355 0.35370919 0.52087849 0.35501376 0.1042369 0.52509308
		 0.1092746 0.51972222 0.13730267 0.18051454 0.14890966 0.15318589 0.18908459 0.047859825
		 0.28917757 0.074363269 0.089964181 0.28181002 0.08583948 0.28282955 0.10117844 0.28125331
		 0.18390381 0.048568256 0.16701549 0.38585725 0.16078737 0.38382062 0.17144132 0.065178491
		 0.26694822 0.3608447 0.36909324 0.50385034 0.33667696 0.04749722 0.20751572 0.4016808
		 0.26531416 0.36089948 0.26531416 0.053676374 0.12587544 0.46203363 0.16438618 0.51220226
		 0.36420292 0.50756681 0.26533186 0.055269517 0.084866732 0.32239923 0.36420292 0.4088299
		 0.4474327 0.050331093 0.49812192 0.48585138 0.5592503 0.32818404 0.56112903 0.32693925
		 0.32870346 0.056137182 0.047547251 0.52558285 0.39696932 0.33889052 0.23099244 0.4540762
		 0.24492475 0.1981816 0.28701627 0.12888168 0.34993023 0.17922983 0.38255364 0.43818703
		 0.22144753 0.054795481 0.08577317 0.38307109 0.32138503 0.38919058 0.34763497 0.065411814
		 0.12324655 0.42460528 0.30494791 0.41135284 0.21742433 0.049433358 0.37468904 0.52578807
		 0.12806082 0.41812751 0.1683946 0.52560925 0.11731377 0.46488613 0.082534015 0.46488619;
	setAttr ".uvtk[1000:1249]" 0.21377638 0.39575562 0.20108747 0.40799227 0.094209671
		 0.049536504 0.049067497 0.39872232 0.40301728 0.38524261 0.086845964 0.047045119
		 0.086338639 0.39135852 0.4834832 0.049047478 0.24411374 0.46805835 0.23473004 0.39584312
		 0.35684258 0.52071124 0.092932254 0.31307977 0.23473004 0.37424728 0.21637958 0.049966075
		 0.30390316 0.41188559 0.23082584 0.39965072 0.33667696 0.50833601 0.38757432 0.32391083
		 0.4042927 0.29128498 0.28311595 0.52169043 0.074374437 0.51989579 0.23988992 0.38893095
		 0.084866732 0.38383338 0.22054106 0.055558033 0.070069134 0.49688166 0.28835237 0.52945375
		 0.092642188 0.28579772 0.084866732 0.3153652 0.36199892 0.53332895 0.54556149 0.057748862
		 0.085775018 0.28509068 0.092003107 0.28712741 0.055673957 0.50180566 0.18681479 0.28873467
		 0.084866732 0.28567895 0.18682283 0.30183935 0.18951738 0.2987799 0.25925255 0.39064303
		 0.15999901 0.38452777 0.40280247 0.29120061 0.56182963 0.17804354 0.53947377 0.048571624
		 0.340433 0.52156055 0.55628633 0.13630642 0.091249228 0.076780982 0.35200334 0.2294227
		 0.11338633 0.067531563 0.29418141 0.45188227 0.084866732 0.064109392 0.40103817 0.40230694
		 0.26656806 0.32821226 0.40029991 0.40356091 0.091428339 0.060946383 0.19223687 0.31523913
		 0.33793128 0.51683521 0.22232673 0.40090504 0.09973371 0.066368528 0.52549976 0.056444414
		 0.1560941 0.068371512 0.48482925 0.066333361 0.37724376 0.46189606 0.34639597 0.057439126
		 0.32935774 0.3879517 0.48410219 0.057250299 0.25742173 0.46402442 0.12049335 0.053537853
		 0.15617523 0.069853105 0.14171296 0.45725799 0.042048603 0.39427719 0.089764714 0.056555368
		 0.35951239 0.19653139 0.34279394 0.22915713 0.090983629 0.085990347 0.29144663 0.43872198
		 0.11065161 0.054371543 0.14833146 0.3989661 0.15610686 0.36939868 0.1450161 0.092098273
		 0.16233975 0.05239094 0.30950391 0.42858222 0.25170547 0.46936351 0.52324325 0.41286549
		 0.23778367 0.49786192 0.32839966 0.5175845 0.097594172 0.060495384 0.1490379 0.071443059
		 0.431427 0.052072681 0.4163844 0.049960531 0.10015896 0.062190928 0.33621192 0.50106764
		 0.27958673 0.51760632 0.27716899 0.51466089 0.10129923 0.062622555 0.22061825 0.4729358
		 0.17865896 0.49434444 0.2807 0.49898827 0.53649658 0.51184177 0.39580709 0.5061146
		 0.19206205 0.51121151 0.55484742 0.05023814 0.22909927 0.05940602 0.41198426 0.51613939
		 0.29997623 0.49845332 0.14422259 0.07230664 0.23022899 0.059054323 0.24594423 0.49828416
		 0.49146312 0.52173376 0.15203753 0.054807402 0.49193728 0.49719584 0.44270349 0.49910575
		 0.12252253 0.48787501 0.16744471 0.50928777 0.44435364 0.52355814 0.37847221 0.049291976
		 0.29487881 0.058468826 0.1769163 0.52641618 0.41751975 0.50220305 0.51406795 0.52157664
		 0.29606038 0.058725722 0.35604703 0.49165085 0.38378245 0.51713824 0.52934456 0.51000214
		 0.099692345 0.52330619 0.357337 0.50351673 0.39491874 0.49877954 0.33259928 0.51657414
		 0.27612633 0.53390431 0.35168678 0.48877934 0.20108747 0.50277555 0.1624248 0.50988209
		 0.27716976 0.53335637 0.24152523 0.062363811 0.153263 0.49514151 0.53853571 0.049106456
		 0.56089127 0.17857835 0.56191099 0.15920916 0.38925552 0.30261561 0.042055786 0.48612085
		 0.084866762 0.1817275 0.24901131 0.17968878 0.15459281 0.058371939 0.46819085 0.284908
		 0.085374117 0.1819379 0.10316277 0.047363974 0.15215242 0.18793041 0.48700261 0.29191768
		 0.32227772 0.49320421 0.084866762 0.22612204 0.15350446 0.18840241 0.10937446 0.048728742
		 0.061418712 0.51142257 0.10427138 0.22902529 0.26617849 0.48718092 0.50183409 0.049754031
		 0.071965367 0.52992737 0.20101291 0.49832761 0.50551587 0.061931886 0.4084397 0.50540859
		 0.50656366 0.062638171 0.22660288 0.049381532 0.073978424 0.52952468 0.50384706 0.049351461
		 0.13787973 0.04934714 0.46819085 0.49752259 0.1103538 0.49610192 0.37439781 0.063117333
		 0.4151774 0.51631677 0.36256832 0.50521588 0.11447206 0.51464665 0.16948357 0.26310983
		 0.34148329 0.53225332 0.17050603 0.26231053 0.097100526 0.28779724 0.20995051 0.51820344
		 0.1115264 0.27665615 0.084866732 0.29908696 0.25007352 0.075812496 0.27619421 0.050239213
		 0.36816573 0.29065973 0.24900264 0.14708997 0.26288047 0.059043594 0.54416519 0.061393477
		 0.29278624 0.057252087 0.36125433 0.29067066 0.31934607 0.37543228 0.37084174 0.53036708
		 0.10421377 0.26122046 0.1287044 0.44552484 0.51508737 0.44450828 0.24955416 0.06825722
		 0.34381336 0.1008865 0.36206377 0.51024657 0.50715345 0.47206569 0.5611608 0.3017869
		 0.26355493 0.073500223 0.27831504 0.52940196 0.52426273 0.38464871 0.043704957 0.51056898
		 0.19727936 0.35645679 0.37268788 0.3017337 0.24707064 0.048817404 0.47532719 0.43116519
		 0.31565058 0.054101624 0.49571711 0.45589674 0.53450245 0.067867853 0.34630829 0.12154079
		 0.34745127 0.12303746 0.20021549 0.047546454 0.14148328 0.48515204 0.091627806 0.1713914
		 0.49648976 0.32125741 0.21072063 0.42728606 0.54409373 0.44522509 0.55446923 0.42688176
		 0.19916517 0.061390378 0.13052747 0.099110045 0.27631396 0.061690129 0.52546299 0.18389845
		 0.19061279 0.07991121 0.26225576 0.10131583 0.14048925 0.070982672 0.29609916 0.52395564
		 0.54425573 0.22008526 0.13939381 0.070219226 0.4100799 0.066141076 0.29938835 0.50821137
		 0.42580855 0.066599585 0.42217773 0.061501957 0.52793145 0.21034861 0.37467098 0.1631051
		 0.1946556 0.41798028 0.12562674 0.076212205 0.50844347 0.17918238 0.25591427 0.36934945
		 0.32686502 0.46466917 0.1709488 0.37775955 0.24435428 0.3522729 0.29997623 0.43179283
		 0.51574796 0.090225972 0.16132778 0.1728026 0.33857661 0.46131814 0.047282398 0.41285214
		 0.50591189 0.072136261 0.054638058 0.4330301 0.56001157 0.19775972 0.56128573 0.20999235
		 0.33871603 0.49857199 0.20680884 0.2797704 0.56122893 0.19719383 0.26755098 0.52036774;
	setAttr ".uvtk[1250:1299]" 0.15750688 0.38816693 0.18416661 0.36573604 0.30523938
		 0.050757892 0.38177621 0.48608246 0.34464002 0.51665914 0.23371053 0.050039001 0.39551175
		 0.29267859 0.22335353 0.2712723 0.34993023 0.18663767 0.35502088 0.45374689 0.56094348
		 0.49171242 0.56159687 0.063896812 0.32087952 0.48858073 0.22944319 0.50465071 0.51640779
		 0.51118219 0.50281781 0.080957271 0.17945406 0.51700002 0.29741657 0.049052604 0.29487881
		 0.07030905 0.45791692 0.51786435 0.18100777 0.50359392 0.37337822 0.50590503 0.29684129
		 0.07058049 0.50535023 0.068544097 0.46505439 0.49797779 0.18681479 0.30184147 0.058368504
		 0.51185304 0.2504645 0.07551045 0.14298311 0.085698403 0.42174226 0.052055009 0.42174137
		 0.061230429 0.15769136 0.38759407 0.37439859 0.15336157 0.042048603 0.48611787 0.38924837
		 0.30261251 0.39594585 0.29241464 0.34381336 0.19693255 0.12503898 0.076404907 0.42173624
		 0.052057691 0.15458411 0.058372505 0.50897038 0.047065295 0.5079509 0.06643451 0.40396315
		 0.20521879 0.56099588 0.29076093 0.47022986 0.35871837 0.49012327 0.096562333 0.24445352
		 0.18793124 0.14194992 0.1945709 0.40703183 0.28482789 0.16717759 0.30506697;
select -ne :time1;
	setAttr ".o" 77;
	setAttr ".unw" 77;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV21.out" "StreetLampShape.i";
connectAttr "polyTweakUV21.uvtk[0]" "StreetLampShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace5.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace6.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace8.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace9.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace10.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace11.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace12.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace13.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak15.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace14.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak16.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace16.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace17.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak18.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace18.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak19.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace19.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak20.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace20.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak21.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace21.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak22.ip";
connectAttr "polyTweak22.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyTweak23.ip";
connectAttr "polyTweak23.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyBridgeEdge1.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyTweak24.ip";
connectAttr "polyTweak24.out" "polyExtrudeEdge1.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak25.ip";
connectAttr "polyTweak25.out" "polyBridgeEdge2.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyExtrudeFace22.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace22.out" "polyExtrudeFace23.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak26.ip";
connectAttr "polyTweak26.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyTweak27.ip";
connectAttr "polyTweak27.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyExtrudeEdge2.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge3.mp";
connectAttr "polyTweak28.out" "polyExtrudeFace24.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace24.mp";
connectAttr "polyBridgeEdge3.out" "polyTweak28.ip";
connectAttr "polyExtrudeFace24.out" "polyExtrudeFace25.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace25.mp";
connectAttr "polyTweak29.out" "polyExtrudeFace26.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyExtrudeFace27.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace27.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polyExtrudeFace28.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace28.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polyExtrudeFace29.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace29.mp";
connectAttr "polyExtrudeFace28.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyExtrudeFace30.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace30.mp";
connectAttr "polyExtrudeFace29.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyExtrudeFace31.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace31.mp";
connectAttr "polyExtrudeFace30.out" "polyTweak34.ip";
connectAttr "polyExtrudeFace31.out" "polyTweak35.ip";
connectAttr "polyTweak35.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polyTweak36.ip";
connectAttr "polyTweak36.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polyTweak37.out" "polyDelEdge1.ip";
connectAttr "polySplit17.out" "polyTweak37.ip";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polyTweak38.ip";
connectAttr "polyTweak38.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polyTweak39.ip";
connectAttr "polyTweak39.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polySplit29.ip";
connectAttr "polyTweak40.out" "polyExtrudeFace32.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace32.mp";
connectAttr "polySplit29.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyDelEdge3.ip";
connectAttr "polyExtrudeFace32.out" "polyTweak41.ip";
connectAttr "polyDelEdge3.out" "polyDelEdge4.ip";
connectAttr "polyDelEdge4.out" "polyDelEdge5.ip";
connectAttr "polyDelEdge5.out" "polyPlanarProj1.ip";
connectAttr "StreetLampShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "StreetLampShape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyDelEdge6.ip";
connectAttr "polyDelEdge6.out" "polyExtrudeFace33.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeFace33.mp";
connectAttr "polyTweak42.out" "polyMapCut4.ip";
connectAttr "polyExtrudeFace33.out" "polyTweak42.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyTweak43.out" "polyMapCut7.ip";
connectAttr "polyMapCut6.out" "polyTweak43.ip";
connectAttr "polyMapCut7.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyMapCut10.ip";
connectAttr "polyTweak44.out" "polyMapCut11.ip";
connectAttr "polyMapCut10.out" "polyTweak44.ip";
connectAttr "polyMapCut11.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyMapCut18.ip";
connectAttr "polyMapCut18.out" "polyMapCut19.ip";
connectAttr "polyTweak45.out" "polyMapCut20.ip";
connectAttr "polyMapCut19.out" "polyTweak45.ip";
connectAttr "polyMapCut20.out" "polyMapCut21.ip";
connectAttr "polyMapCut21.out" "polyMapCut22.ip";
connectAttr "polyMapCut22.out" "polyMapCut23.ip";
connectAttr "polyMapCut23.out" "polyMapCut24.ip";
connectAttr "polyMapCut24.out" "polyMapCut25.ip";
connectAttr "polyMapCut25.out" "polyMapCut26.ip";
connectAttr "polyMapCut26.out" "polyMapCut27.ip";
connectAttr "polyMapCut27.out" "polyMapCut28.ip";
connectAttr "polyMapCut28.out" "polyMapCut29.ip";
connectAttr "polyMapCut29.out" "polyMapCut30.ip";
connectAttr "polyTweak46.out" "polyMapCut31.ip";
connectAttr "polyMapCut30.out" "polyTweak46.ip";
connectAttr "polyMapCut31.out" "polyMapCut32.ip";
connectAttr "polyMapCut32.out" "polyMapCut33.ip";
connectAttr "polyMapCut33.out" "polyMapCut34.ip";
connectAttr "polyMapCut34.out" "polyMapCut35.ip";
connectAttr "polyMapCut35.out" "polyMapCut36.ip";
connectAttr "polyMapCut36.out" "polyMapCut37.ip";
connectAttr "polyMapCut37.out" "polyMapCut38.ip";
connectAttr "polyMapCut38.out" "polyMapCut39.ip";
connectAttr "polyMapCut39.out" "polyMapCut40.ip";
connectAttr "polyMapCut40.out" "polyMapCut41.ip";
connectAttr "polyMapCut41.out" "polyMapCut42.ip";
connectAttr "polyMapCut42.out" "polyMapCut43.ip";
connectAttr "polyMapCut43.out" "polyMapCut44.ip";
connectAttr "polyMapCut44.out" "polyMapCut45.ip";
connectAttr "polyMapCut45.out" "polyMapCut46.ip";
connectAttr "polyMapCut46.out" "polyMapCut47.ip";
connectAttr "polyMapCut47.out" "polyMapCut48.ip";
connectAttr "polyMapCut48.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut49.ip";
connectAttr "polyMapCut49.out" "polyMapCut50.ip";
connectAttr "polyMapCut50.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polyTweak47.ip";
connectAttr "polyTweak47.out" "polySplit34.ip";
connectAttr "polySplit34.out" "polySplit35.ip";
connectAttr "polySplit35.out" "polySplit36.ip";
connectAttr "polySplit36.out" "polySplit37.ip";
connectAttr "polySplit37.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyExtrudeEdge3.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak48.ip";
connectAttr "polyTweak48.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyBridgeEdge4.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "polyBridgeEdge5.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "polyDelEdge7.ip";
connectAttr "polyDelEdge7.out" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "polyTweak49.out" "polyExtrudeEdge4.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge4.mp";
connectAttr "deleteComponent16.og" "polyTweak49.ip";
connectAttr "polyTweak50.out" "polyBridgeEdge6.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge6.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak50.ip";
connectAttr "polyBridgeEdge6.out" "polyTweak51.ip";
connectAttr "polyTweak51.out" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "polyBridgeEdge7.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge7.mp";
connectAttr "polyBridgeEdge7.out" "polyBridgeEdge8.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge8.mp";
connectAttr "polyTweak52.out" "polyBridgeEdge9.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge9.mp";
connectAttr "polyBridgeEdge8.out" "polyTweak52.ip";
connectAttr "polyBridgeEdge9.out" "polySplit38.ip";
connectAttr "polySplit38.out" "polySplit39.ip";
connectAttr "polyTweak53.out" "polyMergeVert1.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert1.mp";
connectAttr "polySplit39.out" "polyTweak53.ip";
connectAttr "polyTweak54.out" "polyMergeVert2.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak54.ip";
connectAttr "polyTweak55.out" "polyDelEdge8.ip";
connectAttr "polyMergeVert2.out" "polyTweak55.ip";
connectAttr "polyDelEdge8.out" "polyDelEdge9.ip";
connectAttr "polyDelEdge9.out" "polyDelEdge10.ip";
connectAttr "polyTweak56.out" "polyCloseBorder3.ip";
connectAttr "polyDelEdge10.out" "polyTweak56.ip";
connectAttr "polyCloseBorder3.out" "polyCloseBorder4.ip";
connectAttr "polyCloseBorder4.out" "polyCloseBorder5.ip";
connectAttr "polyCloseBorder5.out" "polyCloseBorder6.ip";
connectAttr "polyCloseBorder6.out" "polyTweak57.ip";
connectAttr "polyTweak57.out" "polySplit40.ip";
connectAttr "polySplit40.out" "polySplit41.ip";
connectAttr "polyTweak58.out" "polyMergeVert3.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert3.mp";
connectAttr "polySplit41.out" "polyTweak58.ip";
connectAttr "polyTweak59.out" "polyMergeVert4.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak59.ip";
connectAttr "polyTweak60.out" "polyDelEdge11.ip";
connectAttr "polyMergeVert4.out" "polyTweak60.ip";
connectAttr "polyDelEdge11.out" "polyDelEdge12.ip";
connectAttr "polyDelEdge12.out" "polyTweak61.ip";
connectAttr "polyTweak61.out" "polySplit42.ip";
connectAttr "polySplit42.out" "polySplit43.ip";
connectAttr "polySplit43.out" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "polyExtrudeEdge5.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge5.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweak62.ip";
connectAttr "polyTweak62.out" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "polyBridgeEdge10.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge10.mp";
connectAttr "polyBridgeEdge10.out" "polyBridgeEdge11.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge11.mp";
connectAttr "polyBridgeEdge11.out" "polyBridgeEdge12.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge12.mp";
connectAttr "polyBridgeEdge12.out" "polyDelEdge13.ip";
connectAttr "polyDelEdge13.out" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "polySplit44.ip";
connectAttr "polySplit44.out" "polySplit45.ip";
connectAttr "polySplit45.out" "polyExtrudeEdge6.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge6.mp";
connectAttr "polyExtrudeEdge6.out" "polyTweak63.ip";
connectAttr "polyTweak63.out" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "polyBridgeEdge13.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge13.mp";
connectAttr "polyBridgeEdge13.out" "polyBridgeEdge14.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge14.mp";
connectAttr "polyBridgeEdge14.out" "polyBridgeEdge15.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge15.mp";
connectAttr "polyBridgeEdge15.out" "polyDelEdge14.ip";
connectAttr "polyDelEdge14.out" "polyCloseBorder7.ip";
connectAttr "polyCloseBorder7.out" "polyCloseBorder8.ip";
connectAttr "polyCloseBorder8.out" "polyCloseBorder9.ip";
connectAttr "polyCloseBorder9.out" "polyCloseBorder10.ip";
connectAttr "polyCloseBorder10.out" "polyTweak64.ip";
connectAttr "polyTweak64.out" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "polyTweak65.ip";
connectAttr "polyTweak65.out" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "polyDelEdge15.ip";
connectAttr "polyDelEdge15.out" "polyExtrudeEdge7.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge7.mp";
connectAttr "polyExtrudeEdge7.out" "polyTweak66.ip";
connectAttr "polyTweak66.out" "polySplit46.ip";
connectAttr "polySplit46.out" "polySplit47.ip";
connectAttr "polySplit47.out" "polySplit48.ip";
connectAttr "polySplit48.out" "polySplit49.ip";
connectAttr "polySplit49.out" "polyTweak67.ip";
connectAttr "polyTweak67.out" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "polyBridgeEdge16.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge16.mp";
connectAttr "polyBridgeEdge16.out" "polyBridgeEdge17.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge17.mp";
connectAttr "polyBridgeEdge17.out" "polyBridgeEdge18.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge18.mp";
connectAttr "polyBridgeEdge18.out" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "deleteComponent34.ig";
connectAttr "deleteComponent34.og" "polyDelEdge16.ip";
connectAttr "polyDelEdge16.out" "polyBridgeEdge19.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge19.mp";
connectAttr "polyBridgeEdge19.out" "polyBridgeEdge20.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge20.mp";
connectAttr "polyBridgeEdge20.out" "polyBridgeEdge21.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge21.mp";
connectAttr "polyBridgeEdge21.out" "deleteComponent35.ig";
connectAttr "deleteComponent35.og" "deleteComponent36.ig";
connectAttr "deleteComponent36.og" "polyDelEdge17.ip";
connectAttr "polyDelEdge17.out" "polyTweak68.ip";
connectAttr "polyTweak68.out" "deleteComponent37.ig";
connectAttr "deleteComponent37.og" "deleteComponent38.ig";
connectAttr "deleteComponent38.og" "polyExtrudeEdge8.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge8.mp";
connectAttr "polyTweak69.out" "polyMergeVert5.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert5.mp";
connectAttr "polyExtrudeEdge8.out" "polyTweak69.ip";
connectAttr "polyMergeVert5.out" "polyTweak70.ip";
connectAttr "polyTweak70.out" "polySplit50.ip";
connectAttr "polySplit50.out" "deleteComponent39.ig";
connectAttr "deleteComponent39.og" "deleteComponent40.ig";
connectAttr "deleteComponent40.og" "polyBridgeEdge22.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge22.mp";
connectAttr "polyBridgeEdge22.out" "polyBridgeEdge23.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge23.mp";
connectAttr "polyBridgeEdge23.out" "polyBridgeEdge24.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge24.mp";
connectAttr "polyBridgeEdge24.out" "polyDelEdge18.ip";
connectAttr "polyDelEdge18.out" "polyExtrudeEdge9.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge9.mp";
connectAttr "polyTweak71.out" "polyMergeVert6.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert6.mp";
connectAttr "polyExtrudeEdge9.out" "polyTweak71.ip";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polySplit51.ip";
connectAttr "polySplit51.out" "polySplit52.ip";
connectAttr "polySplit52.out" "polyTweak72.ip";
connectAttr "polyTweak72.out" "deleteComponent41.ig";
connectAttr "deleteComponent41.og" "deleteComponent42.ig";
connectAttr "deleteComponent42.og" "polyBridgeEdge25.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge25.mp";
connectAttr "polyBridgeEdge25.out" "polyBridgeEdge26.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge26.mp";
connectAttr "polyBridgeEdge26.out" "polyBridgeEdge27.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge27.mp";
connectAttr "polyBridgeEdge27.out" "polyDelEdge19.ip";
connectAttr "polyTweak73.out" "polyCloseBorder11.ip";
connectAttr "polyDelEdge19.out" "polyTweak73.ip";
connectAttr "polyCloseBorder11.out" "polyCloseBorder12.ip";
connectAttr "polyCloseBorder12.out" "polyCloseBorder13.ip";
connectAttr "polyCloseBorder13.out" "polyCloseBorder14.ip";
connectAttr "polyCloseBorder14.out" "polyDelEdge20.ip";
connectAttr "polyDelEdge20.out" "polyDelEdge21.ip";
connectAttr "polyDelEdge21.out" "deleteComponent43.ig";
connectAttr "deleteComponent43.og" "deleteComponent44.ig";
connectAttr "deleteComponent44.og" "polyDelEdge22.ip";
connectAttr "polyDelEdge22.out" "polyDelEdge23.ip";
connectAttr "polyDelEdge23.out" "polyExtrudeEdge10.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge10.mp";
connectAttr "polyTweak74.out" "polyMergeVert8.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert8.mp";
connectAttr "polyExtrudeEdge10.out" "polyTweak74.ip";
connectAttr "polyMergeVert8.out" "deleteComponent45.ig";
connectAttr "deleteComponent45.og" "deleteComponent46.ig";
connectAttr "deleteComponent46.og" "deleteComponent47.ig";
connectAttr "deleteComponent47.og" "deleteComponent48.ig";
connectAttr "polyTweak75.out" "polyMergeVert9.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert9.mp";
connectAttr "deleteComponent48.og" "polyTweak75.ip";
connectAttr "polyTweak76.out" "polyMergeVert10.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert9.out" "polyTweak76.ip";
connectAttr "polyTweak77.out" "polyMergeVert11.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert10.out" "polyTweak77.ip";
connectAttr "polyTweak78.out" "polyMergeVert12.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert11.out" "polyTweak78.ip";
connectAttr "polyTweak79.out" "polyMergeVert13.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert12.out" "polyTweak79.ip";
connectAttr "polyMergeVert13.out" "polySplit53.ip";
connectAttr "polySplit53.out" "polySplit54.ip";
connectAttr "polySplit54.out" "polySplit55.ip";
connectAttr "polySplit55.out" "polySplit56.ip";
connectAttr "polySplit56.out" "deleteComponent49.ig";
connectAttr "deleteComponent49.og" "deleteComponent50.ig";
connectAttr "deleteComponent50.og" "deleteComponent51.ig";
connectAttr "deleteComponent51.og" "polyBridgeEdge28.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge28.mp";
connectAttr "polyBridgeEdge28.out" "polyBridgeEdge29.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge29.mp";
connectAttr "polyBridgeEdge29.out" "polyBridgeEdge30.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge30.mp";
connectAttr "polyBridgeEdge30.out" "polyDelEdge24.ip";
connectAttr "polyTweak80.out" "polyMergeVert14.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert14.mp";
connectAttr "polyDelEdge24.out" "polyTweak80.ip";
connectAttr "polyTweak81.out" "polyMergeVert15.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert14.out" "polyTweak81.ip";
connectAttr "polyTweak82.out" "polyMergeVert16.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert15.out" "polyTweak82.ip";
connectAttr "polyTweak83.out" "polyMergeVert17.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert16.out" "polyTweak83.ip";
connectAttr "polyMergeVert17.out" "deleteComponent52.ig";
connectAttr "deleteComponent52.og" "polyBridgeEdge31.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge31.mp";
connectAttr "polyBridgeEdge31.out" "polyBridgeEdge32.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge32.mp";
connectAttr "polyBridgeEdge32.out" "polyBridgeEdge33.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge33.mp";
connectAttr "polyBridgeEdge33.out" "polyDelEdge25.ip";
connectAttr "polyDelEdge25.out" "polyCloseBorder15.ip";
connectAttr "polyCloseBorder15.out" "polyCloseBorder16.ip";
connectAttr "polyCloseBorder16.out" "polyCloseBorder17.ip";
connectAttr "polyCloseBorder17.out" "polyCloseBorder18.ip";
connectAttr "polyTweak84.out" "polyMapCut51.ip";
connectAttr "polyCloseBorder18.out" "polyTweak84.ip";
connectAttr "polyMapCut51.out" "polyPlanarProj3.ip";
connectAttr "StreetLampShape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyPlanarProj4.ip";
connectAttr "StreetLampShape.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyMapCut52.ip";
connectAttr "polyMapCut52.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polySplitEdge1.ip";
connectAttr "polySplitEdge1.out" "polySplitVert1.ip";
connectAttr "polySplitVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "deleteComponent53.ig";
connectAttr "deleteComponent53.og" "polyCloseBorder19.ip";
connectAttr "polyCloseBorder19.out" "polySplit57.ip";
connectAttr "polySplit57.out" "polySplit58.ip";
connectAttr "polySplit58.out" "polySplit59.ip";
connectAttr "polySplit59.out" "polySplit60.ip";
connectAttr "polySplit60.out" "deleteComponent54.ig";
connectAttr "deleteComponent54.og" "deleteComponent55.ig";
connectAttr "deleteComponent55.og" "deleteComponent56.ig";
connectAttr "deleteComponent56.og" "deleteComponent57.ig";
connectAttr "deleteComponent57.og" "deleteComponent58.ig";
connectAttr "deleteComponent58.og" "deleteComponent59.ig";
connectAttr "polyTweak85.out" "polyExtrudeEdge11.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge11.mp";
connectAttr "deleteComponent59.og" "polyTweak85.ip";
connectAttr "polyTweak86.out" "polyMergeVert18.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert18.mp";
connectAttr "polyExtrudeEdge11.out" "polyTweak86.ip";
connectAttr "polyTweak87.out" "polyMergeVert19.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert18.out" "polyTweak87.ip";
connectAttr "polyMergeVert19.out" "polySplit61.ip";
connectAttr "polySplit61.out" "polySplit62.ip";
connectAttr "polySplit62.out" "deleteComponent60.ig";
connectAttr "deleteComponent60.og" "deleteComponent61.ig";
connectAttr "deleteComponent61.og" "polyBridgeEdge34.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge34.mp";
connectAttr "polyBridgeEdge34.out" "polyBridgeEdge35.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge35.mp";
connectAttr "polyBridgeEdge35.out" "polyBridgeEdge36.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge36.mp";
connectAttr "polyBridgeEdge36.out" "polyDelEdge26.ip";
connectAttr "polyDelEdge26.out" "polyExtrudeEdge12.ip";
connectAttr "StreetLampShape.wm" "polyExtrudeEdge12.mp";
connectAttr "polyTweak88.out" "polyMergeVert20.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert20.mp";
connectAttr "polyExtrudeEdge12.out" "polyTweak88.ip";
connectAttr "polyTweak89.out" "polyMergeVert21.ip";
connectAttr "StreetLampShape.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert20.out" "polyTweak89.ip";
connectAttr "polyMergeVert21.out" "polySplit63.ip";
connectAttr "polySplit63.out" "polySplit64.ip";
connectAttr "polySplit64.out" "polySplit65.ip";
connectAttr "polySplit65.out" "polySplit66.ip";
connectAttr "polySplit66.out" "deleteComponent62.ig";
connectAttr "deleteComponent62.og" "deleteComponent63.ig";
connectAttr "deleteComponent63.og" "polyBridgeEdge37.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge37.mp";
connectAttr "polyBridgeEdge37.out" "polyBridgeEdge38.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge38.mp";
connectAttr "polyBridgeEdge38.out" "polyBridgeEdge39.ip";
connectAttr "StreetLampShape.wm" "polyBridgeEdge39.mp";
connectAttr "polyBridgeEdge39.out" "polyDelEdge27.ip";
connectAttr "polyDelEdge27.out" "polyCloseBorder20.ip";
connectAttr "polyCloseBorder20.out" "polyCloseBorder21.ip";
connectAttr "polyCloseBorder21.out" "polyCloseBorder22.ip";
connectAttr "polyCloseBorder22.out" "polyCloseBorder23.ip";
connectAttr "polyTweak90.out" "polyPlanarProj5.ip";
connectAttr "StreetLampShape.wm" "polyPlanarProj5.mp";
connectAttr "polyCloseBorder23.out" "polyTweak90.ip";
connectAttr "polyPlanarProj5.out" "polyMapCut53.ip";
connectAttr "polyMapCut53.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyLayoutUV2.ip";
connectAttr "polyLayoutUV2.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyPlanarProj8.ip";
connectAttr "StreetLampShape.wm" "polyPlanarProj8.mp";
connectAttr "polyPlanarProj8.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyLayoutUV5.ip";
connectAttr "polyLayoutUV5.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyPlanarProj9.ip";
connectAttr "StreetLampShape.wm" "polyPlanarProj9.mp";
connectAttr "polyPlanarProj9.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyPlanarProj10.ip";
connectAttr "StreetLampShape.wm" "polyPlanarProj10.mp";
connectAttr "polyPlanarProj10.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyLayoutUV6.ip";
connectAttr "polyLayoutUV6.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyPlanarProj11.ip";
connectAttr "StreetLampShape.wm" "polyPlanarProj11.mp";
connectAttr "polyPlanarProj11.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyMapCut56.ip";
connectAttr "polyMapCut56.out" "polyLayoutUV9.ip";
connectAttr "polyLayoutUV9.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyMapCut57.ip";
connectAttr "polyMapCut57.out" "polyMapCut58.ip";
connectAttr "polyMapCut58.out" "polyMapCut59.ip";
connectAttr "polyMapCut59.out" "polyMapCut60.ip";
connectAttr "polyMapCut60.out" "polyMapCut61.ip";
connectAttr "polyMapCut61.out" "polyMapCut62.ip";
connectAttr "polyMapCut62.out" "polyMapCut63.ip";
connectAttr "polyMapCut63.out" "polyMapCut64.ip";
connectAttr "polyMapCut64.out" "polyMapCut65.ip";
connectAttr "polyMapCut65.out" "polyLayoutUV12.ip";
connectAttr "polyLayoutUV12.out" "polyTweakUV21.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "StreetLampShape.iog" ":initialShadingGroup.dsm" -na;
// End of JapaneseStreetLamp2.ma
