//Maya ASCII 2018 scene
//Name: TreeStump.ma
//Last modified: Mon, Mar 02, 2020 11:43:11 PM
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
	rename -uid "43E610EA-45D7-176E-DA84-7298F376E284";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.316102988286588 171.30523186509515 -720.82877963313911 ;
	setAttr ".r" -type "double3" -17.138352728999774 899.79999999988479 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4BF1A6D6-4B70-8CC5-4FC4-5FBAAC7211CB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 736.53080109028531;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -157.48256709264217 -38.548075624303173 -314.57758622394533 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "66D27A49-407F-FCBA-AE95-9FAAA9B9AA5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6F3CDFB7-4382-204B-30A0-CCB72FB35BC2";
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
	rename -uid "2FD5AD9E-4A31-0DF9-0E68-5EA57999F1BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8EACB6B9-4FA5-2876-7D4F-28935618122E";
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
	rename -uid "5A101AA6-4A54-96B8-F543-FFA315C803C2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "70077FEA-4A35-0FE9-E793-B29700751478";
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
createNode transform -n "Stump";
	rename -uid "A9F751E4-4C62-1912-6982-4BABE9253AB8";
	setAttr ".t" -type "double3" 0 10.720691944828445 0 ;
	setAttr ".s" -type "double3" 5.793062105965979 5.793062105965979 5.793062105965979 ;
createNode mesh -n "StumpShape" -p "Stump";
	rename -uid "3E97326B-485A-BD67-84A3-30B6DEC1D781";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53341065759101913 0.48917878134804393 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[5]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[6]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[7]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[44]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[45]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[46]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[138]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[139]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[141]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[142]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[144]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[145]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[147]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[148]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[150]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[151]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[153]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[154]" -type "float3" 2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7B03E435-4829-212F-5FA1-1E9261F5B507";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "BDC910C7-4D5A-0C47-03F0-8583C11FA66C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BD40EFE5-416B-7900-9520-B6A5D762B638";
createNode displayLayerManager -n "layerManager";
	rename -uid "BC40455F-45E8-E3AD-7421-268A3ECF4C07";
createNode displayLayer -n "defaultLayer";
	rename -uid "EFD2AA9B-4A3E-1AE9-8E46-E68D2082DBCD";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D5F41B03-4D03-1FBC-2211-3FB133DC71BE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "286E6058-4747-2CCC-599E-58BD86EE505E";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "ADB94E61-4B52-92F8-BA2D-64AF8EC4C304";
	setAttr ".sa" 10;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "22277947-45BD-1FC8-9511-9291FB4D9504";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.5586371e-06 76.481239 -4.5586371e-06 ;
	setAttr ".rs" 43000;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -76.481245828215648 76.481236710941758 -72.737994038085361 ;
	setAttr ".cbx" -type "double3" 76.481236710941758 76.481236710941758 72.737984920811471 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "24B4AB61-4F14-B1EE-75AD-3D93634C02FA";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.5586371e-06 76.481239 -9.1172742e-06 ;
	setAttr ".rs" 41196;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -73.151640195940999 76.481236710941758 -69.571355117998223 ;
	setAttr ".cbx" -type "double3" 73.151631078667108 76.481236710941758 69.571336883450428 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "C0E8B7EB-416C-C360-CD70-DD9863716C71";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[20:29]" -type "float3"  -0.035220508 0 0.025589202
		 -0.013453037 0 0.041404184 0.013453038 0 0.04140418 0.035220508 0 0.025589187 0.043534935
		 0 -7.7846529e-09 0.0352205 0 -0.025589203 0.01345303 0 -0.041404184 -0.013453039
		 0 -0.041404184 -0.0352205 0 -0.025589202 -0.043534935 0 -5.1897686e-09;
createNode polyTweak -n "polyTweak2";
	rename -uid "4C6740BE-466B-11CE-C9DA-2599C6143BFE";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[30:39]" -type "float3"  0 -0.017153479 0 0 -0.017153479
		 0 0 -0.017153479 0 0 -0.017153479 0 0 -0.017153479 0 0 -0.017153479 0 0 -0.017153479
		 0 0 -0.017153479 0 0 -0.017153479 0 0 -0.017153479 0;
createNode polySplit -n "polySplit1";
	rename -uid "C5A923EA-4D1F-2196-31FF-2DB51C89B3AF";
	setAttr -s 11 ".e[0:10]"  0.49597999 0.49597999 0.49597999 0.49597999
		 0.49597999 0.49597999 0.49597999 0.49597999 0.49597999 0.49597999 0.49597999;
	setAttr -s 11 ".d[0:10]"  -2147483628 -2147483627 -2147483626 -2147483625 -2147483624 -2147483623 
		-2147483622 -2147483621 -2147483620 -2147483619 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "5C645056-464E-059D-E1EA-3F9D01135644";
	setAttr ".ics" -type "componentList" 1 "f[39:40]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 50.057621 -38.548073 36.368992 ;
	setAttr ".rs" 34816;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 23.634007080858655 -76.481236710941758 0 ;
	setAttr ".cbx" -type "double3" 76.481236710941758 -0.61490769970916914 72.737980362174525 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "705C1F7B-44F7-F76A-3D87-CDAB7BF747F9";
	setAttr ".ics" -type "componentList" 1 "f[39:40]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 76.692902 -38.548073 57.269287 ;
	setAttr ".rs" 40817;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 50.26928396794635 -76.481236710941758 20.900299632227785 ;
	setAttr ".cbx" -type "double3" 103.11651359802946 -0.61490769970916914 93.638277715083845 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "608DB7BA-4175-1FE3-9A4C-468656DC9D5A";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[50:55]" -type "float3"  0.34825894 0 0.27327356 0.34825894
		 0 0.27327356 0.34825894 0 0.27327356 0.34825894 0 0.27327356 0.34825894 0 0.27327356
		 0.34825894 0 0.27327356;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "D976CD8B-41B0-7B8E-294B-119AA41402B1";
	setAttr ".ics" -type "componentList" 1 "f[39:40]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 131.35732 -38.548073 103.37424 ;
	setAttr ".rs" 61387;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 122.80370751456496 -50.827425241083738 91.601223443880286 ;
	setAttr ".cbx" -type "double3" 139.91093173415965 -26.268723728204137 115.14724883167847 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "0F6B3C90-476E-F76E-2468-92805855F165";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[50:61]" -type "float3"  0.10135701 0.14550596 -0.13950597
		 -0.045328218 0.14550596 -0.032932892 -0.045328218 -0.14550596 -0.032932892 0.10135701
		 -0.14550596 -0.13950597 -0.10135702 0.14550596 0.13950601 -0.10135702 -0.14550596
		 0.13950601 0.94839501 0.33542624 0.28123206 0.61025107 0.33542624 0.52690858 0.61025107
		 -0.33542627 0.52690858 0.94839501 -0.33542627 0.28123206 0.48109084 0.33542624 0.92442185
		 0.48109084 -0.33542627 0.92442185;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "E145442B-4BC3-52EE-1A6A-06996EEB88CF";
	setAttr ".ics" -type "componentList" 1 "f[39:40]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 162.15796 -29.437021 108.25983 ;
	setAttr ".rs" 43259;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 154.45249125955047 -40.498793870383814 97.654181580962657 ;
	setAttr ".cbx" -type "double3" 169.86341931966544 -18.375247834577078 118.86546458770057 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "819AA819-4F7B-B278-F1C9-1EAA5B0B0B97";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[62:67]" -type "float3"  0.41381112 0.13504791 0.048616044
		 0.39776212 0.13504791 0.060276315 0.39776212 0.10320801 0.060276315 0.41381112 0.10320801
		 0.048616044 0.39163193 0.13504791 0.07914301 0.39163193 0.10320801 0.07914301;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "9B18102B-447D-9285-FFFD-8298954696FA";
	setAttr ".ics" -type "componentList" 2 "f[32]" "f[41]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 50.057617 -38.548073 -36.368999 ;
	setAttr ".rs" 64472;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 23.633997963584765 -76.481236710941758 -72.737998596722306 ;
	setAttr ".cbx" -type "double3" 76.481236710941758 -0.61490769970916914 0 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "2A2710E5-4634-4602-82A3-FE98ABD01C70";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[48]" -type "float3" 0 0.087593719 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.087593719 0 ;
	setAttr ".tk[56]" -type "float3" 0 -0.17384449 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.17384449 0 ;
	setAttr ".tk[58]" -type "float3" 0 -0.086250797 0 ;
	setAttr ".tk[59]" -type "float3" 0 -0.17384449 0 ;
	setAttr ".tk[60]" -type "float3" 0 -0.17384449 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.17384449 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.22595066 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.22595066 0 ;
	setAttr ".tk[64]" -type "float3" 0 -0.22595066 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.22595066 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.22595066 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.22595066 0 ;
	setAttr ".tk[68]" -type "float3" 0.37352452 -0.2757563 0.12643431 ;
	setAttr ".tk[69]" -type "float3" 0.29427853 -0.2757563 0.18400978 ;
	setAttr ".tk[70]" -type "float3" 0.29427853 -0.43297344 0.18400978 ;
	setAttr ".tk[71]" -type "float3" 0.37352452 -0.43297344 0.12643431 ;
	setAttr ".tk[72]" -type "float3" 0.26400954 -0.2757563 0.27716857 ;
	setAttr ".tk[73]" -type "float3" 0.26400954 -0.43297344 0.27716857 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "10C8F3CF-4785-F307-D126-C1B5BFE22606";
	setAttr ".ics" -type "componentList" 2 "f[32]" "f[41]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 78.582901 -38.548073 -83.362564 ;
	setAttr ".rs" 52497;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 56.474842476800696 -76.481236710941758 -107.31608494646818 ;
	setAttr ".cbx" -type "double3" 100.6909631690021 -0.61490769970916914 -59.409045616278149 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "3127EB24-407F-B7F0-F695-898A99BEEE1E";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[74:79]" -type "float3"  0.34773639 0 -0.57612395 0.4293974
		 0 -0.45211205 0.4293974 0 -0.45211205 0.34773639 0 -0.57612395 0.31654468 0 -0.77677935
		 0.31654468 0 -0.77677935;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "956CFC98-4BFE-334E-FE9A-66810C136904";
	setAttr ".ics" -type "componentList" 2 "f[32]" "f[41]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 111.25819 -38.548073 -106.71957 ;
	setAttr ".rs" 44968;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 94.402104687230974 -57.959923310654993 -124.98272685754516 ;
	setAttr ".cbx" -type "double3" 128.11426427314706 -19.136221099995936 -88.456402160217351 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "B576C4C3-417B-A034-DBAB-D5AC0C4CF701";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[80:85]" -type "float3"  0.39652216 0.24216808 -0.28783122
		 0.49590281 0.24216808 -0.23099315 0.49590281 -0.24216807 -0.23099315 0.39652216 -0.24216807
		 -0.28783122 0.35856244 0.24216808 -0.37979713 0.35856244 -0.24216807 -0.37979713;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "E184D2F2-49F8-4558-D9F0-76BA392A2EE6";
	setAttr ".ics" -type "componentList" 2 "f[32]" "f[41]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 167.44283 -51.691517 -132.71768 ;
	setAttr ".rs" 65362;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 150.58674889467747 -71.103367119213004 -150.9808430586711 ;
	setAttr ".cbx" -type "double3" 184.29890848059352 -32.279664908553947 -114.45450924406941 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "D5434AF6-46D1-1E06-BE88-E0BFECB72246";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[86:91]" -type "float3"  0.73461998 -0.17185187 -0.33992794
		 0.73461998 -0.17185187 -0.33992794 0.73461998 -0.17185187 -0.33992794 0.73461998
		 -0.17185187 -0.33992794 0.73461998 -0.17185187 -0.33992794 0.73461998 -0.17185187
		 -0.33992794;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "82C47B42-4CE4-5C0A-4242-E88291F82D20";
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
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1115\n            -height 854\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1115\\n    -height 854\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1115\\n    -height 854\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0B2D3CFB-4A81-A7FC-5720-E0B4C5B9E371";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "BDB6221C-4D99-B327-9517-E0A5BE9A7D98";
	setAttr ".ics" -type "componentList" 1 "f[33:35]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -26.423624 -38.548073 -36.368996 ;
	setAttr ".rs" 47518;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -76.481245828215648 -76.481236710941758 -72.737998596722306 ;
	setAttr ".cbx" -type "double3" 23.633997963584765 -0.61490769970916914 4.5586369461382483e-06 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "396BB074-4CF8-4A9F-B45B-61A1EC94BC02";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[40]" -type "float3" 0 0.10827283 0 ;
	setAttr ".tk[74]" -type "float3" -0.016527219 0.070330471 0.0094523774 ;
	setAttr ".tk[75]" -type "float3" 0.036955971 0.070330471 0.040040858 ;
	setAttr ".tk[76]" -type "float3" 0.036955971 -0.056488167 0.040040858 ;
	setAttr ".tk[77]" -type "float3" -0.016527219 0.037942357 0.0094523774 ;
	setAttr ".tk[78]" -type "float3" -0.036955971 0.070330471 -0.040040862 ;
	setAttr ".tk[79]" -type "float3" -0.036955971 -0.056488167 -0.040040862 ;
	setAttr ".tk[83]" -type "float3" 0 0.10827283 0 ;
	setAttr ".tk[86]" -type "float3" -0.023764867 0.074250102 0.013591845 ;
	setAttr ".tk[87]" -type "float3" 0.053139903 0.074250102 0.057575855 ;
	setAttr ".tk[88]" -type "float3" 0.053139903 -0.048144206 0.057575855 ;
	setAttr ".tk[89]" -type "float3" -0.023764867 0.034022726 0.013591845 ;
	setAttr ".tk[90]" -type "float3" -0.05313991 0.074250102 -0.057575855 ;
	setAttr ".tk[91]" -type "float3" -0.05313991 -0.048144206 -0.057575855 ;
	setAttr ".tk[92]" -type "float3" 0.34445971 0.060954262 -0.41124746 ;
	setAttr ".tk[93]" -type "float3" 0.53514045 0.060954262 -0.30219162 ;
	setAttr ".tk[94]" -type "float3" 0.53514045 -0.24251486 -0.30219162 ;
	setAttr ".tk[95]" -type "float3" 0.34445971 -0.1629415 -0.41124746 ;
	setAttr ".tk[96]" -type "float3" 0.27162617 0.060954262 -0.58770323 ;
	setAttr ".tk[97]" -type "float3" 0.27162617 -0.24251486 -0.58770323 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "309BDB8A-4F1A-F474-8177-F187A5759623";
	setAttr ".ics" -type "componentList" 1 "f[33:35]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -71.547249 -38.548073 -73.012268 ;
	setAttr ".rs" 48633;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -108.24870001018303 -67.735943034833198 -100.81142970894075 ;
	setAttr ".cbx" -type "double3" -34.845801421681728 -9.3602002361584944 -45.213112826869633 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "4219F677-4C32-7DE6-4AD8-1F9E4EC12354";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[98:105]" -type "float3"  -0.76462936 0.1143456 -0.36706305
		 -0.59972787 0.1143456 -0.36706328 -0.59972787 -0.1143456 -0.36706328 -0.76462936
		 -0.1143456 -0.36706305 -0.46632019 0.1143456 -0.45266291 -0.46632019 -0.1143456 -0.45266291
		 -0.41536266 0.1143456 -0.59116614 -0.41536266 -0.1143456 -0.59116614;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "94A2DD8F-4A4E-A4A9-C5AB-179209422FAD";
	setAttr ".ics" -type "componentList" 1 "f[33:35]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -128.95906 -38.548077 -97.325523 ;
	setAttr ".rs" 65300;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -154.67128759841734 -63.995317019583887 -125.33213726219276 ;
	setAttr ".cbx" -type "double3" -103.24684502831954 -13.100833089363222 -69.318916038468871 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "3C59DE00-49BC-59B4-518C-BD8F626BB3C7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[106:113]" -type "float3"  -0.89435065 0.048909146 -0.32061076
		 -0.60698003 0.048909146 -0.066120774 -0.60698003 -0.048909146 -0.066120774 -0.89435065
		 -0.048909146 -0.32061076 -0.60698003 0.048909146 -0.16125505 -0.60698003 -0.048909146
		 -0.16125505 -0.60698003 0.048909146 -0.31518587 -0.60698003 -0.048909146 -0.31518587;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "AED8852D-415B-7C2A-D023-B99C4036B60D";
	setAttr ".ics" -type "componentList" 1 "f[33:35]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -157.48256 -38.548077 -121.76405 ;
	setAttr ".rs" 39847;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -183.19478837769105 -63.995317019583887 -121.76432005629766 ;
	setAttr ".cbx" -type "double3" -131.77033669031937 -13.100833089363222 -121.76376390259024 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "C369E3D5-42B5-32C1-2AAA-5C9D808E3037";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[114:121]" -type "float3"  -0.37294763 0 0.046649542
		 -0.37294763 0 -0.20783789 -0.37294763 0 -0.20783789 -0.37294763 0 0.046649542 -0.37294763
		 0 -0.39037323 -0.37294763 0 -0.39037323 -0.37294763 0 -0.68572176 -0.37294763 0 -0.68572176;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "D4091F68-4DED-FDD4-0680-5E999E800A1A";
	setAttr ".ics" -type "componentList" 1 "f[33:35]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -157.48257 -38.548077 -175.40408 ;
	setAttr ".rs" 64320;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -174.46321164015342 -55.353723216726081 -175.40426018221865 ;
	setAttr ".cbx" -type "double3" -140.5019225451309 -21.742428031880269 -175.40389549126294 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "C3BED921-47BE-A52B-EC54-0DA1441A1F41";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[122:129]" -type "float3"  -0.11416633 0.11298975 -0.70134753
		 -0.057875313 0.11298975 -0.7013486 -0.057875313 -0.11298974 -0.7013486 -0.11416633
		 -0.11298974 -0.70134753 0.066615209 0.11298975 -0.70134908 0.066615209 -0.11298974
		 -0.70134908 0.11416632 0.11298975 -0.70135015 0.11416632 -0.11298974 -0.70135015;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "B392ADF3-4D2C-A341-A698-6EA63BB68AB7";
	setAttr ".ics" -type "componentList" 1 "f[37:38]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -19.12031 -38.548073 58.846268 ;
	setAttr ".rs" 36461;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -61.874625436329538 -76.481236710941758 44.954551497921614 ;
	setAttr ".cbx" -type "double3" 23.634007080858655 -0.61490769970916914 72.737980362174525 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "1339E6FE-4422-631A-0D99-EC90C7B3B438";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[100]" -type "float3" 0 0.025872754 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.025872754 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.025872754 0 ;
	setAttr ".tk[111]" -type "float3" 0 0.025872754 0 ;
	setAttr ".tk[114]" -type "float3" 0.07644555 0 -0.17799906 ;
	setAttr ".tk[115]" -type "float3" 0.07644555 0 -0.17799906 ;
	setAttr ".tk[116]" -type "float3" 0.07644555 0.025872754 -0.17799906 ;
	setAttr ".tk[117]" -type "float3" 0.07644555 0 -0.17799906 ;
	setAttr ".tk[118]" -type "float3" 0.07644555 0 -0.17799906 ;
	setAttr ".tk[119]" -type "float3" 0.07644555 0.025872754 -0.17799906 ;
	setAttr ".tk[120]" -type "float3" 0.07644555 0 -0.17799906 ;
	setAttr ".tk[121]" -type "float3" 0.07644555 0 -0.17799906 ;
	setAttr ".tk[122]" -type "float3" 0 0 -0.47838783 ;
	setAttr ".tk[123]" -type "float3" 0 0 -0.47838783 ;
	setAttr ".tk[124]" -type "float3" 0 0.025872754 -0.47838783 ;
	setAttr ".tk[125]" -type "float3" 0 0 -0.47838783 ;
	setAttr ".tk[126]" -type "float3" 0 0 -0.47838783 ;
	setAttr ".tk[127]" -type "float3" 0 0.025872754 -0.47838783 ;
	setAttr ".tk[128]" -type "float3" 0 0 -0.47838783 ;
	setAttr ".tk[129]" -type "float3" 0 0 -0.47838783 ;
	setAttr ".tk[130]" -type "float3" -0.12804581 0.12672621 -1.4759493 ;
	setAttr ".tk[131]" -type "float3" -0.06491141 0.12672621 -1.4759504 ;
	setAttr ".tk[132]" -type "float3" -0.06491141 -0.10085348 -1.4759504 ;
	setAttr ".tk[133]" -type "float3" -0.12804581 -0.12672623 -1.4759493 ;
	setAttr ".tk[134]" -type "float3" 0.074713819 0.12672621 -1.4759511 ;
	setAttr ".tk[135]" -type "float3" 0.074713819 -0.10085348 -1.4759511 ;
	setAttr ".tk[136]" -type "float3" 0.12804581 0.12672621 -1.475952 ;
	setAttr ".tk[137]" -type "float3" 0.12804581 -0.12672623 -1.475952 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "6F9B863E-4058-AA5C-E5DF-358F0F66C095";
	setAttr ".ics" -type "componentList" 1 "f[37:38]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -19.12031 -38.548073 113.45766 ;
	setAttr ".rs" 63941;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -40.811844586749018 -76.481236710941758 113.45751710940119 ;
	setAttr ".cbx" -type "double3" 2.5712262312781409 -0.61490769970916914 113.45779062761797 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "5E0C5FFF-4AC3-740E-4E98-3D88AF432ACB";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[138:143]" -type "float3"  0.27539799 0 0.89568329 0.029074527
		 0 0.53241569 0.029074514 0 0.53241575 0.27539799 0 0.89568329 -0.27539802 0 0.53241569
		 -0.27539802 0 0.53241575;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "6C672AC6-4105-D9CF-E9B3-218C93C6579A";
	setAttr ".ics" -type "componentList" 1 "f[37:38]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -19.120312 -38.548073 151.68044 ;
	setAttr ".rs" 50626;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.606158052686588 -76.481236710941758 144.54930835775974 ;
	setAttr ".cbx" -type "double3" 1.3655349961213616 -0.61490769970916914 158.8115510801868 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "2CEB0A21-452B-1B56-D3D6-898A0927E659";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[144:149]" -type "float3"  0.015764561 0 0.5930087 0.0016649314
		 0 0.5096103 0.0016649312 0 0.5096103 0.015764561 0 0.5930087 -0.015764536 0 0.40652475
		 -0.015764536 0 0.40652475;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "9135860E-49F7-3332-4B8E-189783E6E033";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:147]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 36.389793395996094 4.1167678833007813 -17.109970092773438 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 339.09571838378906 454.5556640625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak18";
	rename -uid "5D2C7F9E-4B98-742D-A2B6-15B823B3C549";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk";
	setAttr ".tk[0]" -type "float3" 0.011302427 0 -0.17272495 ;
	setAttr ".tk[1]" -type "float3" -0.22125857 0 -0.13455154 ;
	setAttr ".tk[2]" -type "float3" -0.10495574 0 -0.082365692 ;
	setAttr ".tk[3]" -type "float3" -0.0035749753 0 -0.12276125 ;
	setAttr ".tk[4]" -type "float3" -0.0027051549 0 -0.18812262 ;
	setAttr ".tk[5]" -type "float3" -0.037854187 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.011302427 0 -0.35719705 ;
	setAttr ".tk[10]" -type "float3" 0 0.086817272 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.014086389 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.10130564 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.1076543 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.070705876 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.061067749 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.057161193 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.086817272 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.014086389 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.10130564 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.1076543 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.070705876 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.061067749 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.057161193 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[32]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.017827554 0 ;
	setAttr ".tk[40]" -type "float3" 0.011302427 0 -0.17272495 ;
	setAttr ".tk[41]" -type "float3" -0.22125857 0 -0.13455154 ;
	setAttr ".tk[42]" -type "float3" -0.10495576 0 -0.082365699 ;
	setAttr ".tk[43]" -type "float3" -0.0035749753 0 -0.12276125 ;
	setAttr ".tk[44]" -type "float3" 0.035149034 0 -0.18812262 ;
	setAttr ".tk[46]" -type "float3" 0 0.065823808 0 ;
	setAttr ".tk[49]" -type "float3" 0.011302427 0 -0.35719705 ;
	setAttr ".tk[74]" -type "float3" 0.011302427 0 0.0051207459 ;
	setAttr ".tk[75]" -type "float3" 0.011302427 0 0.070610575 ;
	setAttr ".tk[76]" -type "float3" 0.011302427 0 0.070610575 ;
	setAttr ".tk[77]" -type "float3" 0.011302427 0 0.0051207459 ;
	setAttr ".tk[78]" -type "float3" 0.011302427 0 -0.10084409 ;
	setAttr ".tk[79]" -type "float3" 0.011302427 0 -0.10084409 ;
	setAttr ".tk[80]" -type "float3" 0.011302427 0 0.098421007 ;
	setAttr ".tk[81]" -type "float3" 0.011302427 0 0.15567264 ;
	setAttr ".tk[82]" -type "float3" 0.011302427 0 0.15567264 ;
	setAttr ".tk[83]" -type "float3" 0.011302427 0 0.098421007 ;
	setAttr ".tk[84]" -type "float3" 0.011302427 0 0.0057859123 ;
	setAttr ".tk[85]" -type "float3" 0.011302427 0 0.0057859123 ;
	setAttr ".tk[86]" -type "float3" 0.011302427 0 0.20083916 ;
	setAttr ".tk[87]" -type "float3" 0.011302427 0 0.24428678 ;
	setAttr ".tk[88]" -type "float3" 0.011302427 0 0.24428678 ;
	setAttr ".tk[89]" -type "float3" 0.011302427 0 0.20083916 ;
	setAttr ".tk[90]" -type "float3" 0.011302427 0 0.13053955 ;
	setAttr ".tk[91]" -type "float3" 0.011302427 0 0.13053955 ;
	setAttr ".tk[92]" -type "float3" 0.011302427 0 0.33417186 ;
	setAttr ".tk[93]" -type "float3" 0.011302427 0 0.35719705 ;
	setAttr ".tk[94]" -type "float3" 0.011302427 0 0.35719705 ;
	setAttr ".tk[95]" -type "float3" 0.011302427 0 0.33417186 ;
	setAttr ".tk[96]" -type "float3" 0.011302427 0 0.29691616 ;
	setAttr ".tk[97]" -type "float3" 0.011302427 0 0.29691616 ;
	setAttr ".tk[98]" -type "float3" -0.07523188 0 -0.041548472 ;
	setAttr ".tk[99]" -type "float3" 0.016646007 0 -0.041548472 ;
	setAttr ".tk[100]" -type "float3" 0.016646007 0 -0.041548472 ;
	setAttr ".tk[101]" -type "float3" -0.07523188 0 -0.041548472 ;
	setAttr ".tk[102]" -type "float3" 0.090976842 0 -0.072425395 ;
	setAttr ".tk[103]" -type "float3" 0.090976842 0 -0.072425395 ;
	setAttr ".tk[104]" -type "float3" 0.11936862 0 -0.12238532 ;
	setAttr ".tk[105]" -type "float3" 0.11936862 0 -0.12238532 ;
	setAttr ".tk[106]" -type "float3" 0.34106806 0 -0.0058967429 ;
	setAttr ".tk[107]" -type "float3" 0.37467822 0 -0.034195889 ;
	setAttr ".tk[108]" -type "float3" 0.37467822 0 -0.034195889 ;
	setAttr ".tk[109]" -type "float3" 0.34106806 0 -0.0058967429 ;
	setAttr ".tk[110]" -type "float3" 0.44900861 0 -0.054493912 ;
	setAttr ".tk[111]" -type "float3" 0.44900861 0 -0.054493912 ;
	setAttr ".tk[112]" -type "float3" 0.47740078 0 -0.087336808 ;
	setAttr ".tk[113]" -type "float3" 0.47740078 0 -0.087336808 ;
	setAttr ".tk[114]" -type "float3" 0.44145679 0 -0.010806629 ;
	setAttr ".tk[115]" -type "float3" 0.47506702 0 -0.010806918 ;
	setAttr ".tk[116]" -type "float3" 0.47506702 0 -0.010806918 ;
	setAttr ".tk[117]" -type "float3" 0.44145679 0 -0.010806629 ;
	setAttr ".tk[118]" -type "float3" 0.54939765 0 -0.010807117 ;
	setAttr ".tk[119]" -type "float3" 0.54939765 0 -0.010807117 ;
	setAttr ".tk[120]" -type "float3" 0.57778966 0 -0.010807434 ;
	setAttr ".tk[121]" -type "float3" 0.57778966 0 -0.010807434 ;
	setAttr ".tk[122]" -type "float3" 0.48010534 0 0.46305379 ;
	setAttr ".tk[123]" -type "float3" 0.50230187 0 0.46305376 ;
	setAttr ".tk[124]" -type "float3" 0.50230187 0 0.46305376 ;
	setAttr ".tk[125]" -type "float3" 0.48010534 0 0.46305379 ;
	setAttr ".tk[126]" -type "float3" 0.55139101 0 0.46305346 ;
	setAttr ".tk[127]" -type "float3" 0.55139101 0 0.46305346 ;
	setAttr ".tk[128]" -type "float3" 0.5701412 0 0.46305341 ;
	setAttr ".tk[129]" -type "float3" 0.5701412 0 0.46305341 ;
	setAttr ".tk[130]" -type "float3" 0.50606799 0 0.57398212 ;
	setAttr ".tk[131]" -type "float3" 0.51546317 0 0.57398206 ;
	setAttr ".tk[132]" -type "float3" 0.51546317 0 0.57398206 ;
	setAttr ".tk[133]" -type "float3" 0.50606799 0 0.57398212 ;
	setAttr ".tk[134]" -type "float3" 0.53624189 0 0.57398194 ;
	setAttr ".tk[135]" -type "float3" 0.53624189 0 0.57398194 ;
	setAttr ".tk[136]" -type "float3" 0.54417837 0 0.57398194 ;
	setAttr ".tk[137]" -type "float3" 0.54417837 0 0.57398194 ;
	setAttr ".tk[138]" -type "float3" 0 0.052724309 0 ;
	setAttr ".tk[139]" -type "float3" 0 0.052724309 0 ;
	setAttr ".tk[140]" -type "float3" 0 -0.31000286 0 ;
	setAttr ".tk[141]" -type "float3" 0 -0.37582666 0 ;
	setAttr ".tk[142]" -type "float3" 0 0.052724309 0 ;
	setAttr ".tk[143]" -type "float3" 0 -0.37582666 0 ;
	setAttr ".tk[144]" -type "float3" 0.10432533 0.044279121 -0.036315612 ;
	setAttr ".tk[145]" -type "float3" 0.011013656 0.044279121 -0.0038346469 ;
	setAttr ".tk[146]" -type "float3" 0.011013643 -0.27625063 -0.0038346469 ;
	setAttr ".tk[147]" -type "float3" 0.10432533 -0.34207442 -0.036315612 ;
	setAttr ".tk[148]" -type "float3" -0.10432533 0.044279121 0.036315612 ;
	setAttr ".tk[149]" -type "float3" -0.10432533 -0.34207442 0.036315612 ;
	setAttr ".tk[150]" -type "float3" 0.59972501 0.068084583 0.67148906 ;
	setAttr ".tk[151]" -type "float3" 0.42331827 0.068084583 0.73289436 ;
	setAttr ".tk[152]" -type "float3" 0.42331827 -0.5964967 0.73289436 ;
	setAttr ".tk[153]" -type "float3" 0.59972501 -0.66232061 0.67148906 ;
	setAttr ".tk[154]" -type "float3" 0.20526889 0.068084583 0.80879909 ;
	setAttr ".tk[155]" -type "float3" 0.20526889 -0.66232061 0.80879909 ;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "A88CD37A-40B9-23E5-CA7E-83BA4A333309";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:147]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 36.389793395996094 4.1167678833007813 -17.109970092773438 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 339.09571838378906 454.5556640625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "1B044422-45FE-9B38-A9CA-03AEDF273439";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:147]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 36.389793395996094 4.1167678833007813 -17.109970092773438 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 454.5556640625 161.19601440429688 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "1D9A7DA6-4F28-1773-8CFB-5C8FD0415DEB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:147]";
	setAttr ".ix" -type "matrix" 76.481236710941758 0 0 0 0 76.481236710941758 0 0 0 0 76.481236710941758 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 36.389793395996094 4.1167678833007813 -17.109970092773438 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 454.5556640625 161.19601440429688 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "560856FC-497F-12D1-DE52-928D2B3D8C24";
	setAttr ".dc" -type "componentList" 3 "e[7:8]" "e[23:24]" "e[82:83]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "0F44D137-46CF-69E8-C6C7-83B3124531E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[80]" "e[83:84]" "e[86]" "e[88:89]";
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "8D244EA2-4012-7573-5CD2-6B9296D2D1EB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[38:39]" "f[43:60]";
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "E668A624-4D53-E7FE-61C0-E4A99568BE78";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[67]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[68]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[69]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[70]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[71]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[72]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[75]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[76]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[77]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[78]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[79]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[80]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[81]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[82]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[83]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[84]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[85]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[86]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[87]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[88]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[89]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[90]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[91]" -type "float2" 0.17923774 0.068687335 ;
	setAttr ".uvtk[92]" -type "float2" 0.17923774 0.068687335 ;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "C462D7DA-4F33-8199-972A-308115D495D0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:141]";
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "48859B12-47B8-8234-7B48-15A56ADBAA4F";
	setAttr ".uopa" yes;
	setAttr -s 161 ".uvtk[0:160]" -type "float2" -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 0.059405763
		 0.64253759 0.05321423 0.6433115 0.052241493 0.58528262 0.057534561 0.58459711 0.042297296
		 0.64404291 0.04234457 0.5850448 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.060535379 0.52476025 -0.17073281 0.54205501 -0.18629473 0.46740896 -0.088460624
		 0.46849453 0.012243569 0.56588495 -0.013900802 0.49408537 0.01220227 0.64475042 0.016143449
		 0.64428186 0.00373137 0.52477252 0.0096048415 0.48917782 -0.0026375353 0.64681059
		 0.0042696893 0.52926397 0.027040541 0.61526525 0.03515242 0.61877352 0.036727361
		 0.49100399 0.025921546 0.49447986 0.0062286928 0.61973876 0.0013162047 0.489878 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517
		 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234 -0.0010392517 0.064946234
		 -0.0010392517 0.064946234;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "DEE1A3AB-4AC2-835C-3883-44A6DCBC5FCC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[91]" "e[103]" "e[115:116]" "e[121]" "e[123]" "e[125]";
createNode polySplit -n "polySplit2";
	rename -uid "5E88FA65-459A-A731-62FD-8EBFDB21D18B";
	setAttr -s 6 ".e[0:5]"  0 0.5 0 0 0 0;
	setAttr -s 6 ".d[0:5]"  -2147483563 -2147483561 -2147483579 -2147483580 -2147483569 -2147483641;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "5361216E-44C3-A452-E907-DEB93A9CB8FE";
	setAttr -s 2 ".e[0:1]"  0 0.448448;
	setAttr -s 2 ".d[0:1]"  -2147483562 -2147483348;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "52B5856C-4D7D-56AB-BCFC-CE80D7477F9F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[296:301]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "E9AE1AC8-44D8-71FF-2995-7AA1EDFDDB7E";
	setAttr ".uopa" yes;
	setAttr -s 43 ".uvtk";
	setAttr ".uvtk[21]" -type "float2" 0.47585127 0.41880545 ;
	setAttr ".uvtk[67]" -type "float2" -0.1035721 -0.024578273 ;
	setAttr ".uvtk[68]" -type "float2" -0.085389383 -0.081293225 ;
	setAttr ".uvtk[69]" -type "float2" -0.080790848 -0.038013279 ;
	setAttr ".uvtk[70]" -type "float2" -0.079378314 -0.02322793 ;
	setAttr ".uvtk[71]" -type "float2" -0.080990881 -0.069791794 ;
	setAttr ".uvtk[72]" -type "float2" -0.07825166 -0.050568819 ;
	setAttr ".uvtk[75]" -type "float2" 0.15060329 -0.0076950192 ;
	setAttr ".uvtk[76]" -type "float2" 0.2181675 0.3440004 ;
	setAttr ".uvtk[77]" -type "float2" 0.32427904 0.011249185 ;
	setAttr ".uvtk[78]" -type "float2" 0.19405976 -0.10557985 ;
	setAttr ".uvtk[79]" -type "float2" 0.050764531 0.0059851408 ;
	setAttr ".uvtk[80]" -type "float2" 0.091626748 -0.14526099 ;
	setAttr ".uvtk[81]" -type "float2" 0.03590297 -0.097738564 ;
	setAttr ".uvtk[82]" -type "float2" 0.0077102445 0.10967314 ;
	setAttr ".uvtk[83]" -type "float2" 0.058640271 0.038645148 ;
	setAttr ".uvtk[84]" -type "float2" 0.037719272 -0.0055752397 ;
	setAttr ".uvtk[85]" -type "float2" 0.033419326 -0.069148362 ;
	setAttr ".uvtk[86]" -type "float2" 0.027212009 -0.042710245 ;
	setAttr ".uvtk[87]" -type "float2" -0.028795559 -0.09258014 ;
	setAttr ".uvtk[88]" -type "float2" -0.050213754 0.046191335 ;
	setAttr ".uvtk[89]" -type "float2" -0.014013842 0.0053241253 ;
	setAttr ".uvtk[90]" -type "float2" -0.024735589 -0.023071229 ;
	setAttr ".uvtk[91]" -type "float2" -0.026053768 -0.071444452 ;
	setAttr ".uvtk[92]" -type "float2" -0.019949768 -0.0402233 ;
	setAttr ".uvtk[155]" -type "float2" 0.31797686 0.29028437 ;
	setAttr ".uvtk[156]" -type "float2" 0.42964277 0.26164153 ;
	setAttr ".uvtk[157]" -type "float2" 0.3180851 0.50702566 ;
	setAttr ".uvtk[158]" -type "float2" 0.20670751 0.57303691 ;
	setAttr ".uvtk[159]" -type "float2" 0.11078146 0.63146144 ;
	setAttr ".uvtk[160]" -type "float2" 0.21503136 0.38843235 ;
	setAttr ".uvtk[161]" -type "float2" -0.10028501 -0.053757846 ;
	setAttr ".uvtk[162]" -type "float2" -0.11480001 -0.0068768859 ;
	setAttr ".uvtk[163]" -type "float2" -0.10245487 -0.039171398 ;
	setAttr ".uvtk[164]" -type "float2" -0.098854393 -0.0069971085 ;
	setAttr ".uvtk[165]" -type "float2" -0.091210991 0.050110579 ;
	setAttr ".uvtk[166]" -type "float2" -0.041012265 0.11048353 ;
	setAttr ".uvtk[167]" -type "float2" -0.0093519166 0.37364143 ;
	setAttr ".uvtk[169]" -type "float2" 0.18672261 0.54695237 ;
	setAttr ".uvtk[172]" -type "float2" 0.039055914 0.72896969 ;
	setAttr ".uvtk[173]" -type "float2" 0.2256687 0.41493902 ;
	setAttr ".uvtk[174]" -type "float2" 0.42288944 0.275197 ;
	setAttr ".uvtk[175]" -type "float2" 0.56794679 0.17574069 ;
createNode polySplit -n "polySplit4";
	rename -uid "562717D9-45CB-4AE4-305C-96B32540CB26";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483561 -2147483352;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "22334EA7-4646-0AE3-C007-85BC45BFF1F2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[7]" "e[18]" "e[71]" "e[78]" "e[303]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "2581F53A-48B9-12FD-7C7A-E3814D9A0341";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "C7929EF0-43C7-8BF7-F997-DDAF78B57A5E";
	setAttr ".uopa" yes;
	setAttr -s 140 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.31029183 -0.31070358 ;
	setAttr ".uvtk[1]" -type "float2" 0 0.54469097 ;
	setAttr ".uvtk[2]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[3]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[4]" -type "float2" 0 0.54469097 ;
	setAttr ".uvtk[5]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[6]" -type "float2" 0 0.54469097 ;
	setAttr ".uvtk[7]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[8]" -type "float2" 0 0.54469097 ;
	setAttr ".uvtk[9]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[10]" -type "float2" 0 0.54469097 ;
	setAttr ".uvtk[11]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[12]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[13]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[14]" -type "float2" 0 0.54469097 ;
	setAttr ".uvtk[15]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[16]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[17]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[18]" -type "float2" 0 0.54469097 ;
	setAttr ".uvtk[19]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[20]" -type "float2" 0.10175097 0.1574441 ;
	setAttr ".uvtk[22]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[23]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[24]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[25]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[26]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[27]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[28]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[29]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[30]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[31]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[32]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[33]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[34]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[35]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[36]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[37]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[38]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[39]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[40]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[41]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[42]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[43]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[44]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[45]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[46]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[47]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[48]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[49]" -type "float2" 0.10080421 0.14797992 ;
	setAttr ".uvtk[50]" -type "float2" 0.11779794 0.15700343 ;
	setAttr ".uvtk[51]" -type "float2" 0.079725832 0.062365323 ;
	setAttr ".uvtk[52]" -type "float2" 0.068124115 0.0017017871 ;
	setAttr ".uvtk[53]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[54]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[55]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[56]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[57]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[58]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[59]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[60]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[61]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[62]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[63]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[64]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[65]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[66]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[73]" -type "float2" 0.10103431 0.1432295 ;
	setAttr ".uvtk[74]" -type "float2" 0.072867483 0.034725234 ;
	setAttr ".uvtk[93]" -type "float2" 0.10451955 0.24306506 ;
	setAttr ".uvtk[94]" -type "float2" 0.088052571 0.14904495 ;
	setAttr ".uvtk[95]" -type "float2" -0.10281663 -0.14263535 ;
	setAttr ".uvtk[96]" -type "float2" -0.15379369 -0.27496445 ;
	setAttr ".uvtk[97]" -type "float2" 0.02793178 0.077832133 ;
	setAttr ".uvtk[98]" -type "float2" -0.19237559 -0.30292115 ;
	setAttr ".uvtk[99]" -type "float2" 0.091136545 0.11902694 ;
	setAttr ".uvtk[100]" -type "float2" 0.090684414 0.072044373 ;
	setAttr ".uvtk[101]" -type "float2" -0.026908666 -0.10835859 ;
	setAttr ".uvtk[102]" -type "float2" -0.082111657 -0.2169071 ;
	setAttr ".uvtk[103]" -type "float2" 0.02779156 0.033487752 ;
	setAttr ".uvtk[104]" -type "float2" -0.08283174 -0.20690638 ;
	setAttr ".uvtk[105]" -type "float2" 0.10550892 0.15702075 ;
	setAttr ".uvtk[106]" -type "float2" 0.11107504 0.13474587 ;
	setAttr ".uvtk[107]" -type "float2" 0.01781103 -0.025529504 ;
	setAttr ".uvtk[108]" -type "float2" -0.01190871 -0.10531266 ;
	setAttr ".uvtk[109]" -type "float2" 0.061315387 0.11447413 ;
	setAttr ".uvtk[110]" -type "float2" -0.00684762 -0.086884722 ;
	setAttr ".uvtk[111]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[112]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[113]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[114]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[115]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[116]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[117]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[118]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[119]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[120]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[121]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[122]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[123]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[124]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[125]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[126]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[127]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[128]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[129]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[130]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[131]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[132]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[133]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[134]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[135]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[136]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[137]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[138]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[139]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[140]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[141]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[142]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[143]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[144]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[145]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[146]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[147]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[148]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[149]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[150]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[151]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[152]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[153]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[154]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[168]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[170]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[171]" -type "float2" -0.040009826 0.0078095947 ;
	setAttr ".uvtk[176]" -type "float2" -0.3369731 -0.43173555 ;
	setAttr ".uvtk[177]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[178]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[179]" -type "float2" 0 0.54469109 ;
	setAttr ".uvtk[180]" -type "float2" -0.14821282 -0.013556629 ;
	setAttr ".uvtk[181]" -type "float2" 0 0.54469103 ;
	setAttr ".uvtk[182]" -type "float2" 0.12715024 0.41341481 ;
createNode polyMapCut -n "polyMapCut6";
	rename -uid "EFF79493-4CE8-7A23-5E9D-9EAE7A1EB974";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[127]" "e[139]" "e[151]" "e[163]" "e[165]" "e[167]" "e[172]" "e[175]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "8CB31490-432D-CC83-E858-66B0F4E6A20C";
	setAttr ".uopa" yes;
	setAttr -s 38 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.16676804 0.19756901 ;
	setAttr ".uvtk[20]" -type "float2" 0.062926829 0.19294812 ;
	setAttr ".uvtk[49]" -type "float2" 0.046643645 -0.18732876 ;
	setAttr ".uvtk[50]" -type "float2" 0.078007817 -0.16220737 ;
	setAttr ".uvtk[51]" -type "float2" 0.085493952 -0.15585621 ;
	setAttr ".uvtk[52]" -type "float2" 0.065091759 -0.1380734 ;
	setAttr ".uvtk[73]" -type "float2" 0.017649442 -0.1881315 ;
	setAttr ".uvtk[74]" -type "float2" 0.032866508 -0.14634572 ;
	setAttr ".uvtk[93]" -type "float2" 0.061941504 0.078785866 ;
	setAttr ".uvtk[94]" -type "float2" 0.07581377 0.11455275 ;
	setAttr ".uvtk[95]" -type "float2" 0.13188978 0.078739315 ;
	setAttr ".uvtk[96]" -type "float2" 0.11076596 0.12060675 ;
	setAttr ".uvtk[97]" -type "float2" -0.27603173 0.12423545 ;
	setAttr ".uvtk[98]" -type "float2" 0.064018354 0.17934665 ;
	setAttr ".uvtk[99]" -type "float2" 0.065932423 0.045307919 ;
	setAttr ".uvtk[100]" -type "float2" 0.072099566 0.042016089 ;
	setAttr ".uvtk[101]" -type "float2" 0.099921197 0.048170716 ;
	setAttr ".uvtk[102]" -type "float2" 0.088950634 0.066318765 ;
	setAttr ".uvtk[103]" -type "float2" -0.1700459 0.038373813 ;
	setAttr ".uvtk[104]" -type "float2" 0.014311254 0.089245781 ;
	setAttr ".uvtk[105]" -type "float2" 0.07007122 -0.080372795 ;
	setAttr ".uvtk[106]" -type "float2" 0.071497738 -0.095019847 ;
	setAttr ".uvtk[107]" -type "float2" 0.0959315 -0.063653484 ;
	setAttr ".uvtk[108]" -type "float2" 0.077435791 -0.049206167 ;
	setAttr ".uvtk[109]" -type "float2" -0.090616912 -0.097893327 ;
	setAttr ".uvtk[110]" -type "float2" 0.018954813 -0.040338293 ;
	setAttr ".uvtk[171]" -type "float2" -0.36687905 0.31140929 ;
	setAttr ".uvtk[176]" -type "float2" 0.058187082 0.36759281 ;
	setAttr ".uvtk[180]" -type "float2" 0.15505466 0.042308837 ;
	setAttr ".uvtk[182]" -type "float2" 0.038595319 0.056863785 ;
	setAttr ".uvtk[183]" -type "float2" -0.021789789 -0.18048552 ;
	setAttr ".uvtk[184]" -type "float2" 0.099068046 -0.17226365 ;
	setAttr ".uvtk[185]" -type "float2" -0.016992211 -0.19787307 ;
	setAttr ".uvtk[186]" -type "float2" 0.059415489 -0.18666008 ;
	setAttr ".uvtk[187]" -type "float2" -0.13482352 -0.1360932 ;
	setAttr ".uvtk[188]" -type "float2" -0.22711347 -0.026513502 ;
	setAttr ".uvtk[189]" -type "float2" -0.32124853 0.014996096 ;
	setAttr ".uvtk[190]" -type "float2" -0.45976299 0.094928041 ;
createNode polyMapCut -n "polyMapCut7";
	rename -uid "E640CDA7-430F-67CB-FEC8-A8B4170AD802";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1:3]" "e[19]" "e[72:74]";
createNode polySplit -n "polySplit5";
	rename -uid "F3081684-486C-10DD-CC1C-F0B65673484F";
	setAttr -s 15 ".e[0:14]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5;
	setAttr -s 15 ".d[0:14]"  -2147483646 -2147483464 -2147483448 -2147483432 -2147483416 -2147483399 
		-2147483396 -2147483414 -2147483430 -2147483446 -2147483462 -2147483575 -2147483638 -2147483621 -2147483601;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "7158AF3C-44B8-C1E4-87A7-8280615AA2E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[242]" "e[247]" "e[249]" "e[254]" "e[256]" "e[309]" "e[319:323]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "58F3140D-4680-20C3-814D-39923FD0A586";
	setAttr ".uopa" yes;
	setAttr -s 71 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 0.65322107 -0.68321073 ;
	setAttr ".uvtk[4]" -type "float2" 0.57873988 -0.74553853 ;
	setAttr ".uvtk[6]" -type "float2" 0.52554047 -0.83915079 ;
	setAttr ".uvtk[8]" -type "float2" 0.49621859 -0.92925042 ;
	setAttr ".uvtk[25]" -type "float2" 0.42985803 -0.64232576 ;
	setAttr ".uvtk[26]" -type "float2" 0.4172492 -0.6805914 ;
	setAttr ".uvtk[27]" -type "float2" 0.49308178 -0.039129466 ;
	setAttr ".uvtk[28]" -type "float2" 0.59019947 -0.046940416 ;
	setAttr ".uvtk[53]" -type "float2" 0.38804296 -0.50505131 ;
	setAttr ".uvtk[54]" -type "float2" 0.41143453 -0.46630663 ;
	setAttr ".uvtk[55]" -type "float2" 0.42668256 -0.61329728 ;
	setAttr ".uvtk[56]" -type "float2" 0.42459396 -0.59313381 ;
	setAttr ".uvtk[57]" -type "float2" 0.38765308 -0.5285098 ;
	setAttr ".uvtk[58]" -type "float2" 0.42590663 -0.62835759 ;
	setAttr ".uvtk[59]" -type "float2" 0.41187531 -0.56873304 ;
	setAttr ".uvtk[60]" -type "float2" 0.42296326 -0.62307101 ;
	setAttr ".uvtk[111]" -type "float2" 0.4525263 -0.14883237 ;
	setAttr ".uvtk[112]" -type "float2" 0.51988035 -0.15874892 ;
	setAttr ".uvtk[113]" -type "float2" 0.56853682 -0.65872204 ;
	setAttr ".uvtk[114]" -type "float2" 0.52289236 -0.72128421 ;
	setAttr ".uvtk[115]" -type "float2" 0.40543476 -0.66475689 ;
	setAttr ".uvtk[116]" -type "float2" 0.48763379 -0.79464573 ;
	setAttr ".uvtk[117]" -type "float2" 0.41696966 -0.63817847 ;
	setAttr ".uvtk[118]" -type "float2" 0.46627447 -0.85599625 ;
	setAttr ".uvtk[119]" -type "float2" 0.41517374 -0.172647 ;
	setAttr ".uvtk[120]" -type "float2" 0.46426961 -0.22358333 ;
	setAttr ".uvtk[121]" -type "float2" 0.50621045 -0.66445881 ;
	setAttr ".uvtk[122]" -type "float2" 0.49265495 -0.72567594 ;
	setAttr ".uvtk[123]" -type "float2" 0.40242445 -0.64038873 ;
	setAttr ".uvtk[124]" -type "float2" 0.46224532 -0.78950673 ;
	setAttr ".uvtk[125]" -type "float2" 0.40692791 -0.6237601 ;
	setAttr ".uvtk[126]" -type "float2" 0.44544086 -0.82285988 ;
	setAttr ".uvtk[127]" -type "float2" 0.41742843 -0.22104888 ;
	setAttr ".uvtk[128]" -type "float2" 0.44061077 -0.23411165 ;
	setAttr ".uvtk[129]" -type "float2" 0.48182121 -0.68157423 ;
	setAttr ".uvtk[130]" -type "float2" 0.47098979 -0.71784252 ;
	setAttr ".uvtk[131]" -type "float2" 0.40079528 -0.59114707 ;
	setAttr ".uvtk[132]" -type "float2" 0.45090768 -0.76804864 ;
	setAttr ".uvtk[133]" -type "float2" 0.40670925 -0.57227486 ;
	setAttr ".uvtk[134]" -type "float2" 0.44309932 -0.77419907 ;
	setAttr ".uvtk[135]" -type "float2" 0.41884193 -0.33183134 ;
	setAttr ".uvtk[136]" -type "float2" 0.42947751 -0.34481817 ;
	setAttr ".uvtk[137]" -type "float2" 0.45222399 -0.63401127 ;
	setAttr ".uvtk[138]" -type "float2" 0.45000076 -0.66396737 ;
	setAttr ".uvtk[139]" -type "float2" 0.40387377 -0.59138334 ;
	setAttr ".uvtk[140]" -type "float2" 0.44351768 -0.7018106 ;
	setAttr ".uvtk[141]" -type "float2" 0.41069371 -0.57876545 ;
	setAttr ".uvtk[142]" -type "float2" 0.4403522 -0.70484662 ;
	setAttr ".uvtk[199]" -type "float2" 0.41276312 -0.71869171 ;
	setAttr ".uvtk[201]" -type "float2" 0.40177414 -0.691697 ;
	setAttr ".uvtk[202]" -type "float2" 0.39809242 -0.6659736 ;
	setAttr ".uvtk[203]" -type "float2" 0.39268368 -0.61697787 ;
	setAttr ".uvtk[204]" -type "float2" 0.39494303 -0.60783821 ;
	setAttr ".uvtk[205]" -type "float2" 0.38748962 -0.52032971 ;
	setAttr ".uvtk[206]" -type "float2" 0.42628893 -0.62082541 ;
	setAttr ".uvtk[207]" -type "float2" 0.44667464 -0.68281943 ;
	setAttr ".uvtk[208]" -type "float2" 0.46071637 -0.74341565 ;
	setAttr ".uvtk[209]" -type "float2" 0.47744152 -0.7576673 ;
	setAttr ".uvtk[210]" -type "float2" 0.50479251 -0.75779545 ;
	setAttr ".uvtk[212]" -type "float2" 0.55116355 -0.79112774 ;
	setAttr ".uvtk[216]" -type "float2" 0.40716624 -0.31740808 ;
	setAttr ".uvtk[217]" -type "float2" 0.40473723 -0.58059061 ;
	setAttr ".uvtk[218]" -type "float2" 0.4073033 -0.45968938 ;
	setAttr ".uvtk[219]" -type "float2" 0.39438856 -0.2050246 ;
	setAttr ".uvtk[220]" -type "float2" 0.38204178 -0.14835988 ;
	setAttr ".uvtk[221]" -type "float2" 0.41040203 -0.12007588 ;
	setAttr ".uvtk[222]" -type "float2" 0.43438056 -0.0047138631 ;
	setAttr ".uvtk[223]" -type "float2" 0.40876493 -0.57387424 ;
	setAttr ".uvtk[224]" -type "float2" 0.38780236 -0.53451967 ;
	setAttr ".uvtk[225]" -type "float2" 0.3878172 -0.51216835 ;
	setAttr ".uvtk[226]" -type "float2" 0.41511545 -0.47222012 ;
createNode polyMapCut -n "polyMapCut9";
	rename -uid "99B6BD21-422F-1966-6623-05A8A13C78C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[5:6]" "e[20]" "e[76:77]" "e[266]" "e[269]" "e[278]" "e[281]" "e[291]" "e[294]";
createNode polyMapCut -n "polyMapCut10";
	rename -uid "8CB95D2E-475B-438B-9E2C-0E82B641C16F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[259]" "e[271]" "e[283:284]" "e[289]" "e[291]" "e[293]";
createNode polyMapCut -n "polyMapCut11";
	rename -uid "FBEF8369-4166-515A-50F1-9B92D137F054";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[87]";
createNode polyMapCut -n "polyMapCut12";
	rename -uid "3DF465A9-4078-BD44-F8F2-D391652303F2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[75]";
createNode polyMapCut -n "polyMapCut13";
	rename -uid "7C6CA75D-45F2-6578-2066-759C644CB79B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
createNode polyMapCut -n "polyMapCut14";
	rename -uid "61B7D8DC-4736-7EA4-8964-71ACE6CFB7E8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[302]";
createNode polyMapCut -n "polyMapCut15";
	rename -uid "8C8F9AC9-4DBD-88D3-C02F-CBB696E88710";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:17]" "e[316]";
createNode polyMapCut -n "polyMapCut16";
	rename -uid "1B2C5A5B-48C2-41C4-5506-DAB109A9233E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[23]" "e[25]" "e[27]" "e[29]" "e[31]" "e[33]" "e[35]" "e[37]" "e[39:40]" "e[317]";
createNode polyMapCut -n "polyMapCut17";
	rename -uid "76543E63-4032-C255-FC05-CE962F9E820F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[59:60]" "e[318]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "9C29FA20-438F-8C20-26FA-1196A8A4369D";
	setAttr ".uopa" yes;
	setAttr -s 281 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -3.4838915e-05 0.00011402369 0.00018119812
		 6.7740679e-05 0.58520418 -0.28955817 0.51814884 -0.21668363 0.00014585257 3.489852e-05
		 0.66176462 -0.36730528 0.00014781952 -1.3828278e-05 0.031961828 -0.074214697 0.00018155575
		 -6.0155988e-05 0.71226972 -0.38946605 -0.11409944 -0.16730601 0.66496617 -0.24540436
		 -0.047655225 -0.17342395 0.57991004 -0.17770612 0.035528719 -0.057809591 0.52160943
		 -0.088840127 0.46895635 0.56103671 0.47699654 -0.039928555 0.10511118 -0.10502768
		 0.4741464 -0.10566509 0.00013512373 8.1777573e-05 0.24172354 0.053449601 -0.19295382
		 0 0.34579593 0.4184081 -0.16953328 0.1068573 0.00015050173 -0.00016031414 9.7334385e-05
		 -0.0001835078 0.00010037422 0.00016033649 0.00014781952 0.00015607476 0.083335638
		 0 0.060678482 0.00329566 0.090750664 -0.040835381 0.083335638 0 0.039994061 -0.044271946
		 -0.020944595 -0.0017287731 -0.078359723 0.052477479 -0.10873121 0.096551776 -0.1007883
		 0.11499727 -0.058020145 0.099605083 0.056378841 -0.021225691 -0.0062002242 0.002969861
		 0.088679612 -0.059863448 0.084004402 -0.1360929 0.046890378 -0.12246275 -0.017884851
		 -0.019425273 -0.069409907 0.0051159859 -0.10329717 0.05782938 -0.10065091 0.10163128
		 -0.062817693 0.062777281 2.2768974e-05 -9.8805875e-05 4.4763088e-05 -7.9978257e-05
		 2.7924776e-05 -7.5243413e-05 1.4930964e-05 -7.8074634e-05 -0.00015193224 1.3142824e-05
		 -0.00013974309 3.1381845e-05 -0.00013199449 5.6475401e-06 -0.00013276935 1.0117888e-05
		 -0.00015407801 4.3213367e-07 -0.00013312697 -2.6524067e-06 -0.00014066696 -2.5138259e-05
		 -0.00013503432 -6.3627958e-06 -0.013002813 -0.072435975 0.053049624 0.0093567371
		 -0.035744071 -0.16600162 -0.046605825 -0.1533137 0.040868223 0.005695045 -0.010462165
		 -0.12978673 -4.1406602e-05 -9.7155571e-06 -3.3697113e-05 -3.1173229e-05 -3.2311305e-05
		 -1.2814999e-05 -3.2855198e-05 -7.390976e-06 -3.1144358e-05 -2.6464462e-05 -3.0084513e-05
		 -1.7702579e-05 1.4483929e-05 -0.00010186993 7.3313713e-06 -8.5238367e-05 6.4998865e-05
		 -5.7339668e-05 3.2097101e-05 8.4102154e-05 6.6816807e-05 5.5372715e-05 7.095933e-05
		 2.7000904e-05 8.1419945e-05 -3.6299229e-05 8.7052584e-05 5.6624413e-06 1.28299e-05
		 -4.2915344e-05 -4.0568411e-06 3.6358833e-05 1.0706484e-05 2.1755695e-05 1.2524426e-05
		 7.0333481e-06 1.8455088e-05 -3.1173229e-05 1.8723309e-05 -7.6889992e-06 -1.0166317e-05
		 -3.7193298e-05 -2.2106804e-05 1.7344952e-05 -7.6293945e-06 5.3048134e-06 -9.0450048e-06
		 -4.2319298e-06 -6.0424209e-06 -2.7358532e-05 -5.5879354e-06 -1.257658e-05 8.675456e-05
		 8.4429979e-05 9.8586082e-05 5.2303076e-05 1.0997057e-05 9.8079443e-05 -1.5497208e-05
		 7.2896481e-05 -0.00010707974 1.8388033e-05 -4.1037798e-05 6.5177679e-05 6.4313412e-05
		 4.2557716e-05 7.9095364e-05 1.4826655e-05 1.79708e-05 5.1558018e-05 -6.9141388e-06
		 3.0010939e-05 -7.0363283e-05 -8.4489584e-06 -2.9683113e-05 1.9863248e-05 5.6535006e-05
		 -3.1352043e-05 6.9200993e-05 -5.171448e-05 2.2441149e-05 -2.2009015e-05 4.6789646e-06
		 -3.6537647e-05 -3.3348799e-05 -6.4477324e-05 -1.0550022e-05 -4.2982399e-05 4.8696995e-05
		 0.00013056397 8.4757805e-05 0.00012528896 0.00011056662 5.1766634e-05 8.6307526e-05
		 2.4527311e-05 5.2392483e-05 -0.00014764071 9.0718269e-05 -1.4439225e-05 9.4234943e-05
		 -0.00013143569 0.00011706352 -5.2928925e-05 2.3365021e-05 0.00013032556 2.8848648e-05
		 0.00010257959 5.120039e-05 3.5345554e-05 6.4909458e-05 9.3728304e-06 3.6418438e-05
		 -0.00012243539 6.4253807e-05 -2.4855137e-05 6.2227249e-05 -0.00011240703 7.9989433e-05
		 -4.8905611e-05 -8.5234642e-06 0.0001039803 3.6358833e-06 9.6827745e-05 2.5749207e-05
		 2.5570393e-05 2.0086765e-05 1.2546778e-05 -1.3649464e-05 -9.7474083e-05 9.8347664e-06
		 -1.4841557e-05 -1.1086464e-05 -8.7052584e-05 5.9604645e-06 -2.4929643e-05 -5.5909157e-05
		 7.2449446e-05 -5.0246716e-05 6.5356493e-05 -3.8266182e-05 2.1249056e-05 -3.939867e-05
		 1.1518598e-05 -6.1750412e-05 -7.0072711e-05 -4.2438507e-05 -9.1344118e-06 -5.8531761e-05
		 -6.2994659e-05 -4.3869019e-05 -1.7493963e-05 0.23071212 0.28836662 -0.12605828 0.03426373
		 -0.078317702 -0.1089974 -0.032196045 -0.092769265 0.16104227 0.28943014 0.032156289
		 -0.013512552 0.15735048 0.19990814 -0.11715066 -0.0054891109 -0.069858134 -0.18112129
		 -0.041492641 -0.1857512 0.12610865 0.19898176 -0.0016816258 -0.12629145 -0.054098785
		 -0.050137103 -0.014878392 -0.02336967 0.10267758 -0.080698639 -0.20212215 0.059427738
		 -0.089605629 0.068438232 -0.049735308 -0.033378303 -3.8549304e-05 -2.0325184e-05
		 -4.4971704e-05 -2.6226044e-06 -4.0240586e-05 -1.502037e-05 -3.9607286e-05 -2.9802322e-06
		 -3.4095719e-05 1.7523766e-05 -1.6657636e-05 3.683567e-05 3.6880374e-06 8.8810921e-05
		 0.36030897 0.5746761 0.27677214 -0.17937374 -0.09424144 0 -0.00014264882 6.4611435e-05
		 -0.017076612 0.13896364 0.00026494265 -0.035020649 -0.060711622 -0.041470587 -0.0060216188
		 0.046457708 -7.2017312e-05 0.00011274219 0.027166247 0 -0.040534288 0.13345146 0.38335377
		 0.24487245 1.7911196e-05 0.00016397238 0.095025778 0 0.00010555983 0.00014790893
		 -7.2717667e-06 -9.7656623e-05 5.1707029e-05 -9.0487301e-05 -1.2308359e-05 -0.00010461733
		 3.4540892e-05 -9.3467534e-05 -4.4584274e-05 -7.4356794e-05 -8.5949898e-05 -2.2977591e-05
		 -0.00012035668 -2.5779009e-06 -0.00015314296 2.771616e-05 0.72769862 -0.07158047
		 0.80781621 -0.026819229 0.62858236 -0.039852142 0.50515854 0.043798566 -0.071659863
		 0.12133181 0.08661902 0 0.14094448 0 0.14972508 0 8.1419945e-05 -0.00020493567 0.11378175
		 0 4.0113926e-05 -0.00016289949 2.7477741e-05 -0.00013682991 -1.7106533e-05 -0.00011179317
		 -6.5982342e-05 -7.9326332e-05 -0.00015354156 4.9173832e-06 -0.00013256073 1.5497208e-06
		 -4.1007996e-05 1.2516975e-06 1.4781952e-05 -1.4007092e-06 6.455183e-05 -7.763505e-06
		 8.815527e-05 5.1558018e-06 0.6762982 -0.063620508 0.00014615059 1.1250377e-05 0.052699178
		 -0.026857615 0.084947526 -0.098860025 0.087462485 -0.050536752 -6.1988831e-05 8.0376863e-05
		 -0.00014510751 -3.1203032e-05 -0.00014188886 3.4958124e-05 -2.0802021e-05 0.0001128912
		 1.3232231e-05 0.00014361739 3.7550926e-05 0.00014615059 8.3744526e-05 0.00017905235
		 -0.00014272332 -2.7701259e-05 -0.00015452504 -2.8163195e-06 -0.0001527071 9.2685223e-06
		 -0.00013780594 2.810359e-05 0.74733549 0.36306858 0.60737014 0.54647875 0.071659863
		 -0.12133181 -0.13183165 0 -0.19295382 0 0.22511315 0.43808347 0.021703303 -0.052910447
		 -0.066491783 -0.097206056 0.0024858117 -0.063704431 -0.068556607 -0.082765341 -0.11612749
		 -0.036695957 -0.12799227 -0.022845984 -0.14888841 0.00078684092 0.34531814 0.44008803
		 -0.064576924 -0.028423786 -0.014752388 -0.077591002 0.82532829 0.1831367 -0.001281321
		 0 0.014752388 0.077591002 0.064855635 -0.18949217 -0.19204378 0.26620388 0.68832242
		 -0.40219319 0.71724898 -0.43253314;
	setAttr ".uvtk[250:280]" 0.014100611 0.077805877 0.063033044 0.060626745 -0.041720212
		 0.079067826 -0.084492028 0.0032998323 -0.095827758 -0.050027132 -0.073115706 -0.048950553
		 -0.024783432 -0.10422444 0.073406875 0.020570993 0.086016119 0.062273145 0.050151795
		 -0.02555871 0.03035292 -0.071956992 0.013265908 0.074389696 0.060060859 0.057360768
		 -0.040110826 0.076789498 -0.081031978 0.0030424595 -0.09186399 -0.048178792 -0.070150435
		 -0.045692921 -0.023945272 -0.10079634 0.069959998 0.02082181 0.082032382 0.060409546
		 0.11256623 0 0.083369076 -0.05907166 -0.011256635 0 0.0039492548 0.057123065 -0.10584891
		 0 -0.16431016 0 -0.16431016 0 -0.10584891 0 -0.011256635 0 0.14179683 0 0.14179695
		 0;
createNode polyLayoutUV -n "polyLayoutUV3";
	rename -uid "D73168ED-4689-8CDB-2F6F-F2BD923BB36C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:162]";
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "4BE289FC-4012-7830-AEFE-86B7B3854721";
	setAttr ".uopa" yes;
	setAttr -s 281 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.43265697 -0.44045779 -0.14711228
		 -0.15099183 -0.2185967 -0.056487646 -0.21623701 -0.099196583 -0.12096742 -0.12618935
		 -0.24904685 -0.022907404 -0.12141606 -0.088937908 -0.23653504 -0.48255607 -0.14472768
		 -0.053084519 -0.33277819 -0.03440851 -0.27075747 -0.41797844 -0.35329852 -0.071390629
		 -0.28074554 -0.36724201 -0.34377941 -0.11165854 -0.31430706 -0.33415756 -0.32059166
		 -0.14518413 -0.27534029 -0.21844009 -0.27853808 -0.15311375 -0.46887794 -0.079768404
		 -0.23807029 -0.13775532 -0.40938088 -0.31781039 0.058262177 -0.16837659 -0.14995137
		 -0.080468461 -0.31652287 -0.21075615 -0.19261098 -0.44002596 -0.11832199 0.020026308
		 -0.078325741 0.035254765 -0.086880885 -0.22000822 -0.12203369 -0.2168999 -0.14995137
		 -0.084316283 0.096546933 -0.0030884426 0.084586427 0.014463637 -0.14995137 -0.084316283
		 0.043900229 0.015830401 0.030515308 -0.0010900479 0.030099267 -0.022649316 0.042178757
		 -0.040178835 0.062271245 -0.047515068 0.082883075 -0.041393191 0.09825702 -0.0025948565
		 0.099894777 -0.02594286 0.085410133 0.015430514 0.064017989 0.026631985 0.041157372
		 0.020012889 0.029298419 -0.00065278821 0.026539665 -0.023756085 0.040017493 -0.042902857
		 0.062216617 -0.048800174 0.084791198 -0.044133566 -0.27907029 -0.39887014 -0.29265812
		 -0.38299689 -0.29607108 -0.39516851 -0.29403117 -0.40453377 0.099674061 -0.1106832
		 0.090365782 -0.12610024 0.084298179 -0.10761303 0.085129187 -0.11075208 0.099829927
		 -0.10134801 0.084607169 -0.10161987 0.090190753 -0.085340023 0.085778549 -0.098838598
		 -0.13414934 -0.23321167 -0.16668044 -0.20841244 -0.15871398 -0.24372795 -0.15133896
		 -0.24657652 -0.16522405 -0.21507624 -0.16069631 -0.23549166 0.096201353 -0.40427479
		 0.088192903 -0.38201693 0.086750284 -0.40107694 0.08731968 -0.40668705 0.085548289
		 -0.38688418 0.084439591 -0.39598671 -0.27686045 -0.40486285 -0.28885654 -0.41001633
		 -0.014277322 -0.35484102 0.01987021 -0.50165427 -0.016157551 -0.47188321 -0.020456893
		 -0.44236717 -0.031316206 -0.37664685 -0.037172124 -0.42022505 0.039897241 -0.369791
		 0.057418935 -0.45212916 0.042093404 -0.43693653 0.040208124 -0.42171565 0.034052186
		 -0.38198617 0.033773713 -0.40635392 0.063770853 -0.37576947 0.076156922 -0.43237951
		 0.061127089 -0.4198899 0.062600709 -0.40997496 0.059485786 -0.38595882 0.05901172
		 -0.40131947 -0.41130206 -0.35272196 -0.38812044 -0.34416762 -0.42114291 -0.40739486
		 -0.4029735 -0.42650023 -0.36363491 -0.49259588 -0.39739403 -0.44494477 -0.38106379
		 -0.36891147 -0.36105743 -0.35825631 -0.38756034 -0.4023613 -0.37202886 -0.42031386
		 -0.3442646 -0.46608421 -0.36468932 -0.43674222 -0.32774112 -0.37451687 -0.31304815
		 -0.36537406 -0.33448443 -0.39912495 -0.3239983 -0.41195187 -0.30383763 -0.4393976
		 -0.31934658 -0.42291918 -0.048898108 -0.19794235 -0.075700931 -0.19399613 -0.09506318
		 -0.13914758 -0.076899551 -0.11913651 -0.046685375 0.0073649902 -0.07939332 -0.0899432
		 -0.078012161 -0.0032123607 -0.097631067 -0.060644832 -0.030099256 -0.19769996 -0.034491584
		 -0.17743018 -0.051181443 -0.12763003 -0.060932077 -0.10815433 -0.035890624 -0.011566309
		 -0.059694029 -0.082753539 -0.055258997 -0.018183915 -0.070583694 -0.064596206 -0.006728543
		 -0.17843875 -0.015953435 -0.17324051 -0.032352731 -0.12081888 -0.028042657 -0.11127111
		 -0.00011121202 -0.031160934 -0.020051522 -0.091291994 -0.0024644639 -0.038671017
		 -0.01694457 -0.08395943 0.028053325 -0.15568694 0.023821127 -0.15051892 0.014769476
		 -0.11841238 0.015654076 -0.11137649 0.034008794 -0.052399691 0.018233705 -0.096317023
		 0.031294964 -0.057420935 0.019493122 -0.090223849 -0.27475134 -0.22089908 -0.17368798
		 -0.36279622 -0.22302777 -0.3438085 -0.24190338 -0.32546452 -0.27517429 -0.24860862
		 -0.26100454 -0.29986992 -0.2379754 -0.21623072 -0.15628354 -0.32199988 -0.20071137
		 -0.30319044 -0.21129131 -0.29531589 -0.23760705 -0.23286799 -0.22251868 -0.28369361
		 -0.025682552 -0.26950258 -0.008407129 -0.23728588 0.04907117 -0.23490009 -0.03291516
		 -0.37263003 -0.059735812 -0.34885362 -0.05485449 -0.29153308 0.09322501 -0.39326373
		 0.099894784 -0.41162577 0.094982892 -0.39877638 0.094324246 -0.41126993 0.088604629
		 -0.43254295 0.070500277 -0.45263806 0.049365439 -0.50656664 -0.19465393 -0.19360647
		 0.099894777 -0.22114381 -0.14995137 -0.080468461 -0.39697555 -0.51825845 -0.099109381
		 -0.35748556 -0.092201501 -0.27636769 -0.050586529 -0.24648961 -0.015743209 -0.2045193
		 -0.43171009 -0.46728042 -0.14995137 -0.080468461 -0.41095093 0.012570594 -0.15106681
		 -0.096595436 -0.46867737 -0.40238783 -0.14995137 -0.080468461 -0.45708916 -0.33915278
		 -0.27990314 -0.42055759 -0.28506544 -0.37800804 -0.27487424 -0.42419377 -0.28292724
		 -0.39039567 -0.29670313 -0.44747868 -0.33378634 -0.47732666 -0.34850237 -0.50217664
		 -0.37037417 -0.52581251 -0.2913653 0.049697846 -0.35819051 0.031895105 -0.23033759
		 0.037078653 -0.1777564 0.0038085598 -0.057374634 -0.41426453 -0.14995137 -0.080468461
		 -0.14995137 -0.080468461 -0.14995137 -0.080468461 -0.065731846 0.050416782 -0.14995137
		 -0.080468461 -0.036966935 0.018085871 -0.028735681 -0.001384763 0.0031164689 -0.020881621
		 0.037562482 -0.045851413 0.099894777 -0.10460329 0.084454909 -0.10461727 0.016977567
		 -0.1038745 -0.023954613 -0.10109448 -0.060309567 -0.095423669 -0.077959113 -0.10460734
		 -0.26011869 0.046531949 -0.12080303 -0.10804793 -0.24581175 -0.48646322 0.075268663
		 0.021382008 0.074268408 0.018322114 0.032699458 -0.16142663 0.09303157 -0.080621555
		 0.092009738 -0.12873346 0.0024398072 -0.18481562 -0.022346241 -0.20736483 -0.04039745
		 -0.20938572 -0.074330561 -0.2337037 0.091428712 -0.083294243 0.09977071 -0.098956496
		 0.099764183 -0.10785097 0.088901028 -0.12374693 -0.41036889 -0.13559483 -0.35470101
		 -0.19612047 -0.16629991 -0.50493932 -0.14995137 -0.080468461 -0.14995137 -0.080468461
		 -0.3243483 -0.25875485 -0.14191511 -0.2226986 -0.12429759 -0.25595731 -0.13762203
		 -0.22852299 -0.13004103 -0.25530696 -0.14387181 -0.32500002 -0.15097395 -0.3635653
		 -0.15042397 -0.40750501 -0.16292849 -0.15380612 -0.42715177 -0.096506894 -0.080008261
		 -0.52233601 -0.41707876 -0.0516099 -0.14995137 -0.080468461 -0.14366636 -0.3968676
		 0.066086836 -0.26644617 -0.077323131 -0.40760425 -0.27176449 -0.018590091 -0.29542431
		 -0.01608157;
	setAttr ".uvtk[250:280]" -0.28866729 -0.4503257 -0.28743103 -0.47019818 -0.27838257
		 -0.43319294 -0.25977144 -0.42589447 -0.24038072 -0.43040296 -0.22746632 -0.44567969
		 -0.22579747 -0.4657909 -0.25511685 -0.49038211 -0.27436098 -0.48536721 -0.2463284
		 -0.48523477 -0.23743306 -0.48148361 -0.28730854 -0.45065764 -0.28613201 -0.46966794
		 -0.2774764 -0.43426517 -0.2596691 -0.42728898 -0.24111588 -0.4315972 -0.228762 -0.4462128
		 -0.22716078 -0.46545747 -0.25521663 -0.48898235 -0.27361986 -0.48418084 -0.14995137
		 -0.084316283 0.064270712 0.021716658 -0.14995137 -0.084316283 0.095858082 -0.024497001
		 -0.14995137 -0.084316283 -0.14995137 -0.084316283 -0.14995137 -0.084316283 -0.14995137
		 -0.084316283 -0.14995137 -0.084316283 -0.14995137 -0.084316283 -0.14995137 -0.084316283;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
connectAttr "polyTweakUV8.out" "StumpShape.i";
connectAttr "polyTweakUV8.uvtk[0]" "StumpShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyExtrudeFace3.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace6.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace7.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace8.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace9.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace10.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace11.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace12.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace13.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace14.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace15.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace16.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace17.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace18.ip";
connectAttr "StumpShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyPlanarProj1.ip";
connectAttr "StumpShape.wm" "polyPlanarProj1.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak18.ip";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "StumpShape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyPlanarProj3.ip";
connectAttr "StumpShape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyPlanarProj4.ip";
connectAttr "StumpShape.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyLayoutUV2.ip";
connectAttr "polyLayoutUV2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyLayoutUV3.ip";
connectAttr "polyLayoutUV3.out" "polyTweakUV8.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "StumpShape.iog" ":initialShadingGroup.dsm" -na;
// End of TreeStump.ma
