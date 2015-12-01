//Maya ASCII 2016 scene
//Name: BreakingCup.ma
//Last modified: Tue, Dec 01, 2015 11:43:40 AM
//Codeset: UTF-8
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "EC10737B-8A45-6E15-A024-08823455391D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.6980509535897357 5.7517690564225923 0.24776412705292827 ;
	setAttr ".r" -type "double3" -70.53835274388787 2444.5999999976516 -2.5235551866613419e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5D633704-B740-D8E1-3436-758D15E8A653";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 4.4184840688197822;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FE8F2992-EA49-F00F-4513-ADBE40B4581F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7A7188E7-9D4B-BA69-8A6D-74A441DD3F43";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.2174312125325599;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "5E50BC4D-404D-BC7F-8E43-51ABBFDB92C3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7CAE67D3-DA4A-7936-91C5-2893C6F59D7A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.4598065548621757;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "EB3F586D-154B-1C08-C093-F3AF8B8A4F9B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "15CFB750-E848-EB64-95E1-DA9C13C64187";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "7BE81C64-3A42-6E64-C4D3-E7805393C53D";
	setAttr ".t" -type "double3" -0.67647745821438399 0.062219050478886019 -0.4039152402977475 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "30A35684-E544-6F4D-34C5-3C9F27714EBC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube1";
	rename -uid "0DC423E0-1E4E-9143-D957-98A4F3FB77FB";
	setAttr ".t" -type "double3" -0.67462267359553674 1.0046920977368727 0.6735478854441026 ;
	setAttr ".s" -type "double3" 1 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "484A9716-A443-5628-07B9-43856153F47E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37330231070518494 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0.0045065256 -0.42044333 ;
	setAttr ".pt[9]" -type "float3" 0 0.12409895 -0.42044333 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.42044333 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.42044333 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.42044333 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.42044333 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.42044333 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.42044333 ;
	setAttr ".pt[17]" -type "float3" 0 -0.083415188 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.0045065256 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.12409895 0 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.42044333 ;
	setAttr ".pt[29]" -type "float3" 0 -0.083415188 -0.42044333 ;
	setAttr ".pt[30]" -type "float3" 0 0 -0.42044333 ;
	setAttr ".pt[31]" -type "float3" 0 0 -0.42044333 ;
createNode transform -n "pCube2";
	rename -uid "1E2FAFCB-B046-B6FF-8B76-4DAE8504A37D";
	setAttr ".t" -type "double3" -0.68428750274426775 1.0046920977368727 -1.4734736741881604 ;
	setAttr ".s" -type "double3" 1 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "92803C67-F340-80BF-89EC-2DA9E7ED3B56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.3537448 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.3537448 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.3537448 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.3537448 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.3537448 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.3537448 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.3537448 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.3537448 ;
	setAttr ".pt[12]" -type "float3" 0.092110984 0 0.3537448 ;
	setAttr ".pt[13]" -type "float3" 0.24502456 0 0.3537448 ;
	setAttr ".pt[15]" -type "float3" 0.092110984 0 0 ;
	setAttr ".pt[16]" -type "float3" 0.24502456 0 0 ;
createNode mesh -n "polySurfaceShape5" -p "pCube2";
	rename -uid "847A4D17-3A44-50B1-0475-20A43660C79E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.38549867 -0.77867562 0.074134357 0.38549867 -0.77867562 0.074134357
		 -0.38549867 0.77867562 0.074134357 0.38549867 0.77867562 0.074134357 -0.38549867 0.77867562 -0.074134357
		 0.38549867 0.77867562 -0.074134357 -0.38549867 -0.77867562 -0.074134357 0.38549867 -0.77867562 -0.074134357;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "27E95E6A-ED40-3F1A-0996-1E9457694E30";
	setAttr ".t" -type "double3" -0.034131107163913911 1.0046920977368727 0.46282903338235065 ;
	setAttr ".r" -type "double3" 0 36.131691940591168 0 ;
	setAttr ".s" -type "double3" 0.97288502050968406 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "89F8F299-2F4F-B754-CE9B-40A3EB4EBB03";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-17 0 -0.57722563 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-17 0 -0.57722563 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-17 0 -0.57722563 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-17 0 -0.57722563 ;
	setAttr ".pt[8]" -type "float3" 5.5511151e-17 0 -0.57722563 ;
	setAttr ".pt[9]" -type "float3" 5.5511151e-17 0 -0.57722563 ;
	setAttr ".pt[10]" -type "float3" 5.5511151e-17 0 -0.57722563 ;
	setAttr ".pt[11]" -type "float3" 5.5511151e-17 0 -0.57722563 ;
createNode mesh -n "polySurfaceShape6" -p "pCube4";
	rename -uid "7D5EC045-5341-6A05-1E4B-DEBEAA8D0A17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.38549867 -0.77867562 0.074134357 0.38549867 -0.77867562 0.074134357
		 -0.38549867 0.77867562 0.074134357 0.38549867 0.77867562 0.074134357 -0.38549867 0.77867562 -0.074134357
		 0.38549867 0.77867562 -0.074134357 -0.38549867 -0.77867562 -0.074134357 0.38549867 -0.77867562 -0.074134357;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	rename -uid "40DACFEA-5845-33AF-453A-A290A9BA30FC";
	setAttr ".t" -type "double3" -1.3214604026167556 1.0046920977368727 -1.2706979061422525 ;
	setAttr ".r" -type "double3" 0 36.131691940591168 0 ;
	setAttr ".s" -type "double3" 0.94100791109559601 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "A60BB67E-CF4C-02EF-A268-98B691FE1051";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[1]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[6]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[7]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[12]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[13]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[14]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[15]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[16]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[17]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[18]" -type "float3" -2.220446e-16 0 0.35596013 ;
	setAttr ".pt[19]" -type "float3" -2.220446e-16 0 0.35596013 ;
createNode mesh -n "polySurfaceShape4" -p "pCube5";
	rename -uid "052D400C-C64B-356D-B685-67B3C79B0695";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -1.1920929e-07 0 0 -1.1920929e-07 
		0 0 -1.1920929e-07 0 0 -1.1920929e-07;
	setAttr -s 8 ".vt[0:7]"  -0.38549867 -0.77867562 0.074134357 0.38549867 -0.77867562 0.074134357
		 -0.38549867 0.77867562 0.074134357 0.38549867 0.77867562 0.074134357 -0.38549867 0.77867562 -0.074134357
		 0.38549867 0.77867562 -0.074134357 -0.38549867 -0.77867562 -0.074134357 0.38549867 -0.77867562 -0.074134357;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "B11844FF-1042-7FFA-265C-81909ED0E6C4";
	setAttr ".t" -type "double3" -1.7040861025673899 1.0046920977368725 -0.7311866325958073 ;
	setAttr ".r" -type "double3" 0 72.124683558357376 0 ;
	setAttr ".s" -type "double3" 1 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "5B98204C-7647-C99D-4569-EC8421B8EEA0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37343123368918896 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".pt";
	setAttr ".pt[9]" -type "float3" 0 -0.14526737 0 ;
	setAttr ".pt[10]" -type "float3" 0 -0.14526737 0 ;
	setAttr ".pt[13]" -type "float3" 0 -0.14526737 0 ;
	setAttr ".pt[14]" -type "float3" 0 -0.14526737 0 ;
	setAttr ".pt[17]" -type "float3" 0 -0.048331089 0 ;
	setAttr ".pt[18]" -type "float3" 0 -0.048331089 0 ;
	setAttr ".pt[20]" -type "float3" 0 -0.048331089 0 ;
	setAttr ".pt[21]" -type "float3" 1.110223e-16 -0.048331089 0.77451706 ;
	setAttr ".pt[22]" -type "float3" 1.110223e-16 -0.048331089 0.77451706 ;
	setAttr ".pt[23]" -type "float3" 1.110223e-16 -0.048331089 0.77451706 ;
	setAttr ".pt[24]" -type "float3" 1.110223e-16 -0.14526737 0.77451706 ;
	setAttr ".pt[25]" -type "float3" 1.110223e-16 -0.14526737 0.77451706 ;
	setAttr ".pt[26]" -type "float3" 1.110223e-16 -0.14526737 0.77451706 ;
	setAttr ".pt[27]" -type "float3" 1.110223e-16 -0.14526737 0.77451706 ;
	setAttr ".pt[28]" -type "float3" 1.110223e-16 0 0.77451706 ;
	setAttr ".pt[29]" -type "float3" 1.110223e-16 0 0.77451706 ;
	setAttr ".pt[30]" -type "float3" 1.110223e-16 0 0.77451706 ;
	setAttr ".pt[31]" -type "float3" 1.110223e-16 0 0.77451706 ;
	setAttr ".pt[32]" -type "float3" 1.110223e-16 0 0.77451706 ;
	setAttr ".pt[33]" -type "float3" 1.110223e-16 0 0.77451706 ;
	setAttr ".pt[34]" -type "float3" 1.110223e-16 0 0.77451706 ;
createNode mesh -n "polySurfaceShape3" -p "pCube6";
	rename -uid "1D793078-E14B-CCA6-8026-6B93536D988F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.38549867 -0.77867562 0.074134357 0.38549867 -0.77867562 0.074134357
		 -0.38549867 0.77867562 0.074134357 0.38549867 0.77867562 0.074134357 -0.38549867 0.77867562 -0.074134357
		 0.38549867 0.77867562 -0.074134357 -0.38549867 -0.77867562 -0.074134357 0.38549867 -0.77867562 -0.074134357;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "82EE2214-F14D-1E75-5BB1-AC89B8F6A251";
	setAttr ".t" -type "double3" 0.3358520810235141 1.0046920977368723 -0.066430931677568847 ;
	setAttr ".r" -type "double3" 0 72.124683558357376 0 ;
	setAttr ".s" -type "double3" 0.96455902178148611 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "079D8BFA-8845-A5CD-3C99-1D8E33840A88";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" -2.220446e-16 0 -0.40515199 ;
	setAttr ".pt[1]" -type "float3" -2.220446e-16 0 -0.40515199 ;
	setAttr ".pt[6]" -type "float3" -2.220446e-16 0 -0.40515199 ;
	setAttr ".pt[7]" -type "float3" -2.220446e-16 0 -0.40515199 ;
	setAttr ".pt[12]" -type "float3" -2.220446e-16 0 -0.40515199 ;
	setAttr ".pt[13]" -type "float3" -1.110223e-16 0 -0.40515199 ;
	setAttr ".pt[14]" -type "float3" -2.220446e-16 0 -0.40515199 ;
	setAttr ".pt[15]" -type "float3" -2.220446e-16 0 -0.40515199 ;
	setAttr ".pt[16]" -type "float3" -2.220446e-16 0 -0.40515199 ;
	setAttr ".pt[17]" -type "float3" -1.110223e-16 0 -0.40515199 ;
createNode mesh -n "polySurfaceShape7" -p "pCube7";
	rename -uid "C3514C38-9D40-F169-603E-AFAEA71CC26E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.38549867 -0.77867562 0.074134357 0.38549867 -0.77867562 0.074134357
		 -0.38549867 0.77867562 0.074134357 0.38549867 0.77867562 0.074134357 -0.38549867 0.77867562 -0.074134357
		 0.38549867 0.77867562 -0.074134357 -0.38549867 -0.77867562 -0.074134357 0.38549867 -0.77867562 -0.074134357;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	rename -uid "F3C28E6C-6546-C200-02F9-D7BB9B82C0FF";
	setAttr ".t" -type "double3" -1.707933604256139 1.0046920977368725 -0.066255545139002794 ;
	setAttr ".r" -type "double3" 0 108.00780664416716 0 ;
	setAttr ".s" -type "double3" 0.96339313850482289 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "E70AE690-A549-20D4-98BC-42A00743E167";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37314699217677116 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt[8:20]" -type "float3"  -3.3306691e-16 -0.16056527 
		0.95364529 -2.220446e-16 0 0.95364529 -2.220446e-16 0 0.95364529 -2.220446e-16 0 
		0.95364529 -3.3306691e-16 0.021429112 0.95364529 -2.220446e-16 0 0.95364529 -2.220446e-16 
		0 0.95364529 -2.220446e-16 0 0.95364529 0 0 0 0 0 0 0 0 0 -1.110223e-16 0.021429127 
		0 -1.110223e-16 -0.16056524 0;
createNode mesh -n "polySurfaceShape2" -p "pCube8";
	rename -uid "18449B67-6F4C-8EF6-F36D-8387DEEC5239";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.38549867 -0.77867562 0.074134357 0.38549867 -0.77867562 0.074134357
		 -0.38549867 0.77867562 0.074134357 0.38549867 0.77867562 0.074134357 -0.38549867 0.77867562 -0.074134357
		 0.38549867 0.77867562 -0.074134357 -0.38549867 -0.77867562 -0.074134357 0.38549867 -0.77867562 -0.074134357;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	rename -uid "E543E5E0-F642-B1D7-74D8-6CA2DFE9A71C";
	setAttr ".t" -type "double3" 0.33223562217721203 1.0046920977368725 -0.72051067130030733 ;
	setAttr ".r" -type "double3" 0 108.00780664416716 0 ;
	setAttr ".s" -type "double3" 0.96339313850482289 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "7FD2ECCA-434D-A28B-1CC2-F48637F2F6E0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37500002235174179 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[8]" -type "float3" -2.220446e-16 -0.06426727 -0.47482324 ;
	setAttr ".pt[9]" -type "float3" -2.220446e-16 0.019274559 -0.47482324 ;
	setAttr ".pt[10]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[11]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[12]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[13]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[14]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[15]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[16]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[17]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[18]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[19]" -type "float3" -2.220446e-16 0 -0.47482324 ;
	setAttr ".pt[27]" -type "float3" 0 0.019274559 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.06426727 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube9";
	rename -uid "20A930CE-9042-E863-3324-57A926808AE5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.38549867 -0.77867562 0.074134357 0.38549867 -0.77867562 0.074134357
		 -0.38549867 0.77867562 0.074134357 0.38549867 0.77867562 0.074134357 -0.38549867 0.77867562 -0.074134357
		 0.38549867 0.77867562 -0.074134357 -0.38549867 -0.77867562 -0.074134357 0.38549867 -0.77867562 -0.074134357;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	rename -uid "16DCD4EE-2F44-DD82-5B04-CFA7163AF3C0";
	setAttr ".t" -type "double3" -0.044019041384379926 1.0046920977368725 -1.2665078082074241 ;
	setAttr ".r" -type "double3" 0 142.75670653141367 0 ;
	setAttr ".s" -type "double3" 0.96339313850482289 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "17C9F9ED-B841-5E00-4964-0EBF74BC0184";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.37460137903690338 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[2]" -type "float3" 1.110223e-16 0 -0.47706726 ;
	setAttr ".pt[3]" -type "float3" 1.110223e-16 0 -0.47706726 ;
	setAttr ".pt[4]" -type "float3" 1.110223e-16 0 -0.47706726 ;
	setAttr ".pt[5]" -type "float3" 1.110223e-16 0 -0.47706726 ;
	setAttr ".pt[8]" -type "float3" -1.110223e-16 -0.051357262 -0.47706726 ;
	setAttr ".pt[9]" -type "float3" 1.110223e-16 0 -0.47706726 ;
	setAttr ".pt[10]" -type "float3" 1.110223e-16 0 -0.47706726 ;
	setAttr ".pt[11]" -type "float3" 1.110223e-16 0.028335225 -0.47706726 ;
	setAttr ".pt[12]" -type "float3" 1.110223e-16 0 -0.47706726 ;
	setAttr ".pt[13]" -type "float3" 1.110223e-16 0 -0.47706726 ;
	setAttr ".pt[18]" -type "float3" -2.220446e-16 -0.051357262 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.028335225 0 ;
createNode mesh -n "polySurfaceShape9" -p "pCube10";
	rename -uid "74C97CD1-1048-F61D-E688-74A0AA345A55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.38549867 -0.77867562 0.074134357 0.38549867 -0.77867562 0.074134357
		 -0.38549867 0.77867562 0.074134357 0.38549867 0.77867562 0.074134357 -0.38549867 0.77867562 -0.074134357
		 0.38549867 0.77867562 -0.074134357 -0.38549867 -0.77867562 -0.074134357 0.38549867 -0.77867562 -0.074134357;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	rename -uid "24AEA0BD-7F47-E4D5-4975-2B95632FC38F";
	setAttr ".t" -type "double3" -1.3102348811771898 1.004692097736873 0.46571229645011913 ;
	setAttr ".r" -type "double3" 0 143.84989335429901 0 ;
	setAttr ".s" -type "double3" 0.96339313850482289 1.1993731992894987 1 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "F47586BA-8D47-779F-D714-558048FAC174";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[2]" -type "float3" -0.49561095 -0.00088388706 -2.220446e-16 ;
	setAttr ".pt[3]" -type "float3" -0.49561095 -0.00088388706 -2.220446e-16 ;
	setAttr ".pt[4]" -type "float3" -0.49561095 -0.00088388706 -2.220446e-16 ;
	setAttr ".pt[5]" -type "float3" -0.49561095 -0.00088388706 -2.220446e-16 ;
	setAttr ".pt[8]" -type "float3" -0.49561095 -0.00088388706 -2.220446e-16 ;
	setAttr ".pt[9]" -type "float3" -0.49561095 -0.00088388706 -2.220446e-16 ;
	setAttr ".pt[10]" -type "float3" -0.49561095 -0.00088388706 -2.220446e-16 ;
	setAttr ".pt[11]" -type "float3" -0.49561095 -0.00088388706 -2.220446e-16 ;
createNode mesh -n "polySurfaceShape1" -p "pCube11";
	rename -uid "F3EC5CDF-B743-084B-971C-81906B3C8831";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.38549867 -0.77867562 0.074134357 0.38549867 -0.77867562 0.074134357
		 -0.38549867 0.77867562 0.074134357 0.38549867 0.77867562 0.074134357 -0.38549867 0.77867562 -0.074134357
		 0.38549867 0.77867562 -0.074134357 -0.38549867 -0.77867562 -0.074134357 0.38549867 -0.77867562 -0.074134357;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3C57117F-5D4A-E7BE-C80B-96BB5578C668";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "CE54BC10-E14D-06BA-53B8-71B54C4C9AE5";
createNode displayLayer -n "defaultLayer";
	rename -uid "6472B153-7843-00A6-3D33-23B6019321FF";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9BA63950-664C-DA0A-B793-BD8F94A1E28E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B8B02C4B-3045-47A4-BA28-75814BBE0D33";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "B310DAC1-8D4A-1F30-8291-4397019C379F";
	setAttr ".r" 1.2213618172998373;
	setAttr ".h" 0.12443810095777204;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube1";
	rename -uid "A5F834C8-7C4F-1A58-CCAB-75A459C3030B";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-16 ;
	setAttr ".w" 0.77099734125204189;
	setAttr ".h" 1.5573512324912155;
	setAttr ".d" 0.14826871947154666;
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8DDA2D80-734C-FF17-FB21-7AB2E588FD1B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 217\n                -height 220\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 217\n            -height 220\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 217\n                -height 219\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 217\n            -height 219\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 217\n                -height 219\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 217\n            -height 219\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 440\n                -height 484\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 440\n            -height 484\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 440\\n    -height 484\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 440\\n    -height 484\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0A971BE7-E347-231F-D76C-18966A5DAE52";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplit -n "polySplit1";
	rename -uid "89B8D685-8A4F-5427-557C-14A315CE571C";
	setAttr -s 5 ".e[0:4]"  0.303211 0.470274 0.558236 0.744564 0.303211;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483643 -2147483644 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "8F21F3FC-E645-D4C7-7B04-44AF777BFDF9";
	setAttr -s 5 ".e[0:4]"  0.096337996 0.295329 0.760943 0.86115801
		 0.096337996;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483643 -2147483644 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "C47FE13F-8A40-67BC-19E9-75BF0974EB69";
	setAttr -s 5 ".e[0:4]"  0.52519101 0.29619601 0.60722297 0.48102999
		 0.52519101;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483635 -2147483643 -2147483644 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "4D9FD3B3-F54B-E7E6-1CA7-16A8ED55B6C3";
	setAttr -s 4 ".v[0:3]" -type "float3"  -0.14786801 0.47645101 -0.074134 
		0.070067003 0.59689301 -0.074134 0.050462998 0.60578698 0.074134 -0.17967901 0.48946199 
		0.074134;
	setAttr -s 9 ".e[0:8]"  0 2 2 0.376656 0.67309803 0 0 0.970303 1;
	setAttr -s 9 ".d[0:8]"  -2147483640 0 1 -2147483639 -2147483643 2 
		3 -2147483644 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "17E3F261-7643-4E47-C8C1-AC80A42B93B6";
	setAttr -s 2 ".v[0:1]" -type "float3"  -0.14194 -0.492652 -0.074134 
		-0.15529799 -0.51219702 0.074134;
	setAttr -s 7 ".e[0:6]"  0.35844299 2 0.722386 0.260557 0 0.589894
		 0.35844299;
	setAttr -s 7 ".d[0:6]"  -2147483636 0 -2147483640 -2147483644 1 -2147483643 
		-2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "CD897784-894F-FEC6-F6C9-79A04982EBE4";
	setAttr -s 5 ".e[0:4]"  0.74764198 0.67235398 0.43558499 0.460381
		 0.74764198;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483643 -2147483644 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "2FCC2EBB-9743-1661-AC02-90B3223E41D2";
	setAttr -s 4 ".v[0:3]" -type "float3"  0.113017 -0.44336 -0.074134 
		-0.105256 0.030448999 -0.074134 -0.196484 -0.036997002 0.074134 -0.19298699 -0.39535701 
		0.074134;
	setAttr -s 9 ".e[0:8]"  1 2 2 0.56050998 0.43349299 0 0 0 1;
	setAttr -s 9 ".d[0:8]"  -2147483645 0 1 -2147483640 -2147483644 2 
		3 -2147483643 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitEdge -n "polySplitEdge1";
	rename -uid "7489F0F3-4F4D-3BD1-A29B-93B33596C2E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "FD7713DB-9740-CE95-BCA9-F0B3D825E7C6";
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
createNode polyTweak -n "polyTweak1";
	rename -uid "65C08100-064D-E6D7-EF0A-53AFA46665A2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0.49657255 -2.220446e-16 -2.220446e-16 ;
	setAttr ".tk[3]" -type "float3" 0.49657255 -2.220446e-16 -2.220446e-16 ;
	setAttr ".tk[4]" -type "float3" 0.49657255 -2.220446e-16 -2.220446e-16 ;
	setAttr ".tk[5]" -type "float3" 0.49657255 -2.220446e-16 -2.220446e-16 ;
	setAttr ".tk[8]" -type "float3" 0.49657255 -2.220446e-16 -2.220446e-16 ;
	setAttr ".tk[9]" -type "float3" 0.49657255 -2.289835e-16 -2.220446e-16 ;
	setAttr ".tk[10]" -type "float3" 0.49657255 -2.3592239e-16 -2.220446e-16 ;
	setAttr ".tk[11]" -type "float3" 0.49657255 -2.220446e-16 -2.220446e-16 ;
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "97B0B5DD-734A-A486-5987-0C997E1FD890";
	setAttr ".ics" -type "componentList" 1 "e[20:23]";
createNode polySplit -n "polySplit8";
	rename -uid "1C7894E7-E042-6DF3-DE0B-D7BEA817A3C5";
	setAttr -s 4 ".v[0:3]" -type "float3"  -0.094020002 0.14260601 0.074134 
		0.116652 0.32045701 0.074134 0.118121 0.22205199 -0.074134 -0.086572997 0.048526 
		-0.074134;
	setAttr -s 9 ".e[0:8]"  0.78074199 0 0 0.69098198 0.29141301 2 2 0.26991799
		 0.78074199;
	setAttr -s 9 ".d[0:8]"  -2147483644 0 1 -2147483643 -2147483639 2 
		3 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "39FBA389-C445-F165-6199-7FAB82B45E71";
	setAttr -s 5 ".e[0:4]"  0.32085899 0.41753 0.62730098 0.61542302
		 0.32085899;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483634 -2147483633 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "27D649BE-DF44-8D94-4CDF-E5939C748A79";
	setAttr -s 5 ".e[0:4]"  0.70831001 0.34339401 0.65403098 0.31798699
		 0.70831001;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "64A5BAF3-E349-43D0-F6F3-0F8D1BAFC01C";
	setAttr -s 2 ".v[0:1]" -type "float3"  0.121612 0.053582001 0.074134 
		0.059310999 0.021841001 -0.074134;
	setAttr -s 7 ".e[0:6]"  1 0 0.66694802 0.351917 2 0 1;
	setAttr -s 7 ".d[0:6]"  -2147483647 0 -2147483644 -2147483640 1 -2147483639 
		-2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "74CD61A4-FE4F-4C13-2952-D1A008752308";
	setAttr -s 2 ".v[0:1]" -type "float3"  0.184066 0.124827 0.074134 
		0.176457 0.14485499 -0.074134;
	setAttr -s 7 ".e[0:6]"  0.33734199 0 0.517627 0.458507 2 0.68632299
		 0.33734199;
	setAttr -s 7 ".d[0:6]"  -2147483644 0 -2147483643 -2147483639 1 -2147483640 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "F7B9A251-5540-1D9F-DD58-E087E21773FB";
	setAttr -s 2 ".v[0:1]" -type "float3"  0.25416899 0.28583601 0.074134 
		0.215499 0.301608 -0.074134;
	setAttr -s 7 ".e[0:6]"  0.64668101 0 0.39734501 0.61410803 2 0.31252101
		 0.64668101;
	setAttr -s 7 ".d[0:6]"  -2147483636 0 -2147483635 -2147483639 1 -2147483640 
		-2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "368D38E6-1F4D-BED8-7C45-0794739FE8CD";
	setAttr -s 4 ".v[0:3]" -type "float3"  -0.110813 0.23659299 -0.074134 
		0.13056 0.44551 -0.074134 0.22369599 0.524508 0.074134 -0.10451 0.231627 0.074134;
	setAttr -s 9 ".e[0:8]"  0 2 2 0.321751 0.738298 0 0 1 1;
	setAttr -s 9 ".d[0:8]"  -2147483640 0 1 -2147483639 -2147483643 2 
		3 -2147483644 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitEdge -n "polySplitEdge2";
	rename -uid "795EFB67-644B-8335-CE39-23BBB4915B43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[16:19]" "e[24:27]";
createNode polySplitEdge -n "polySplitEdge3";
	rename -uid "BE6F3758-7D40-9076-AB60-95B7D17D6D4A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[15:22]" "e[27:32]";
createNode polySplitEdge -n "polySplitEdge4";
	rename -uid "8D7E117D-C044-D914-EA4D-B38C7E0341D3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0]" "e[3]" "e[10:11]" "e[16:19]";
createNode polySplitEdge -n "polySplitEdge5";
	rename -uid "0FDEEB5E-224F-6402-E8CB-B78D1FC11AFD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[11]" "e[14:20]";
createNode polySplitEdge -n "polySplitEdge6";
	rename -uid "0F2750BC-8D48-908A-7D3D-DD8468438B21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6]" "e[14:20]";
createNode polySplitEdge -n "polySplitEdge7";
	rename -uid "FD132FA7-224C-D84C-0052-488336BC013F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[16:21]" "e[26:31]";
createNode polySplitEdge -n "polySplitEdge8";
	rename -uid "3AFEF3A4-954A-F312-1F25-029F8AEB7B04";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[7]" "e[14:18]";
createNode polySplitEdge -n "polySplitEdge9";
	rename -uid "0790C8B4-A14B-9707-477D-C6AC8DE47108";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
createNode polySplitEdge -n "polySplitEdge10";
	rename -uid "00440D28-0F4F-831E-6A6F-EB9A491332CE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[16:23]" "e[28:31]";
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "37E58D55-6D4B-2171-56DE-72AFFC7B1F91";
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
createNode polyTweak -n "polyTweak2";
	rename -uid "6128889F-9C40-4ED5-B03D-BDA70E55D46C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  5.5511151e-16 0 -0.95354682
		 5.5511151e-16 0 -0.95354682 5.5511151e-16 0 -0.95354682 5.5511151e-16 0 -0.95354682
		 5.5511151e-16 0 -0.95354682 5.5511151e-16 0 -0.95354682 5.5511151e-16 0 -0.95354682
		 5.5511151e-16 0 -0.95354682;
createNode polyCloseBorder -n "polyCloseBorder4";
	rename -uid "2A260FB5-074C-9803-679D-789A63E856D7";
	setAttr ".ics" -type "componentList" 1 "e[24:27]";
createNode polyCloseBorder -n "polyCloseBorder5";
	rename -uid "EE085FB4-B94F-91F4-A2C5-61A38C32EB8D";
	setAttr ".ics" -type "componentList" 1 "e[32:35]";
createNode polyCloseBorder -n "polyCloseBorder6";
	rename -uid "1FBCDD34-5746-DA91-9C14-70AA2E82CE5D";
	setAttr ".ics" -type "componentList" 1 "e[28:31]";
createNode polyCloseBorder -n "polyCloseBorder7";
	rename -uid "8A682699-9149-1CE2-55EA-B09AB48B62F8";
	setAttr ".ics" -type "componentList" 1 "e[15:22]";
createNode polyTweak -n "polyTweak3";
	rename -uid "8C6A52FD-A14B-BA1F-DB6E-5E930A16ABF3";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[21]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[22]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[23]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[24]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[25]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[26]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[27]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[28]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[29]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[30]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[31]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[32]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[33]" -type "float3" 1.110223e-16 0 -0.77564472 ;
	setAttr ".tk[34]" -type "float3" 1.110223e-16 0 -0.77564472 ;
createNode polyCloseBorder -n "polyCloseBorder8";
	rename -uid "B86CF2B1-224C-F7E2-48E3-A7A7DBD8188C";
	setAttr ".ics" -type "componentList" 3 "e[35:37]" "e[39:42]" "e[46]";
createNode polyCloseBorder -n "polyCloseBorder9";
	rename -uid "3DF5F1AD-F245-5B5F-D6F1-65A4A89FAA0C";
	setAttr ".ics" -type "componentList" 3 "e[33:34]" "e[38]" "e[43:45]";
createNode polyCloseBorder -n "polyCloseBorder10";
	rename -uid "333193B4-814E-54ED-29C7-B6A4853CC1CD";
	setAttr ".ics" -type "componentList" 1 "e[27:32]";
createNode polyCloseBorder -n "polyCloseBorder11";
	rename -uid "A2C38A22-0C40-44CB-BDB2-5A839FCA47CE";
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
createNode polyTweak -n "polyTweak4";
	rename -uid "101A7498-FB4C-8719-1AB3-FA9C06BA69A7";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[0]" -type "float3" 2.220446e-16 0 -0.35509127 ;
	setAttr ".tk[1]" -type "float3" 2.220446e-16 0 -0.35509127 ;
	setAttr ".tk[6]" -type "float3" 2.220446e-16 0 -0.35509127 ;
	setAttr ".tk[7]" -type "float3" 2.220446e-16 0 -0.35509127 ;
	setAttr ".tk[12]" -type "float3" 2.220446e-16 0 -0.35509133 ;
	setAttr ".tk[13]" -type "float3" 2.220446e-16 0 -0.35509133 ;
	setAttr ".tk[14]" -type "float3" 2.220446e-16 0 -0.35509133 ;
	setAttr ".tk[15]" -type "float3" 2.220446e-16 0 -0.35509133 ;
	setAttr ".tk[16]" -type "float3" 2.220446e-16 0 -0.35509133 ;
	setAttr ".tk[17]" -type "float3" 2.220446e-16 0 -0.35509133 ;
	setAttr ".tk[18]" -type "float3" 2.220446e-16 0 -0.35509133 ;
	setAttr ".tk[19]" -type "float3" 2.220446e-16 0 -0.35509133 ;
createNode polyCloseBorder -n "polyCloseBorder12";
	rename -uid "1A52A040-1548-FC56-C70D-74B90BF7104D";
	setAttr ".ics" -type "componentList" 3 "e[21]" "e[23:24]" "e[27]";
createNode polyCloseBorder -n "polyCloseBorder13";
	rename -uid "38578F83-7F46-CC87-974C-52B8E51D6785";
	setAttr ".ics" -type "componentList" 1 "e[21:28]";
createNode polyTweak -n "polyTweak5";
	rename -uid "942DB61C-9F4B-E26E-A9F1-F7830FD0A075";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.35491246 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.35491246 ;
	setAttr ".tk[2]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[3]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.35491252 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.35491252 ;
	setAttr ".tk[8]" -type "float3" 0 0 -0.35491252 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.35491246 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.35491252 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.35491252 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.35491246 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.35491246 ;
	setAttr ".tk[14]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[15]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[16]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[17]" -type "float3" 0 0 -5.9604645e-08 ;
createNode polyCloseBorder -n "polyCloseBorder14";
	rename -uid "E6239C21-7F46-25D8-796A-ABBDF1D2A73C";
	setAttr ".ics" -type "componentList" 2 "e[11]" "e[14:20]";
createNode polySplit -n "polySplit15";
	rename -uid "737A29B4-0140-0DDF-B6B1-2BAB4E0E1133";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483622 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "52D3B9F8-964B-DFCC-7BAE-E5B2BA376362";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483626 -2147483623;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "C48004C0-7047-788B-BE41-A9BDDE58274F";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483630 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "91E01BCD-844A-2ED7-A294-0880B0991F55";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483634 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "43B306D0-C941-F9AF-9A8C-BA944FE39946";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483633 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "46736E09-9A42-A974-8D34-AEB86861EADF";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483629 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "452EFAC7-4B44-D683-E312-689B2684A83E";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483605 -2147483615;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "2C9FC20A-234C-7AB6-16B7-468CF26E9568";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483607 -2147483613;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "BA3F8A00-664E-69E0-3B9A-398B87F9D006";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483612 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "7EF82502-FF4B-4029-C717-2A863F316231";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483621 -2147483618;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder15";
	rename -uid "0F3DA4CC-E944-2CB7-0EF2-9089F51EEE14";
	setAttr ".ics" -type "componentList" 2 "e[6]" "e[14:20]";
createNode polyTweak -n "polyTweak6";
	rename -uid "4138662C-5C47-BDFA-FD02-42B30C014831";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[2]" -type "float3" 1.110223e-16 0 0.47691438 ;
	setAttr ".tk[3]" -type "float3" 1.110223e-16 0 0.47691438 ;
	setAttr ".tk[4]" -type "float3" 1.110223e-16 0 0.47691438 ;
	setAttr ".tk[5]" -type "float3" 1.110223e-16 0 0.47691438 ;
	setAttr ".tk[8]" -type "float3" 1.110223e-16 0 0.47691438 ;
	setAttr ".tk[9]" -type "float3" 1.110223e-16 0 0.47691438 ;
	setAttr ".tk[10]" -type "float3" 1.110223e-16 0 0.47691438 ;
	setAttr ".tk[11]" -type "float3" 1.110223e-16 0 0.47691438 ;
	setAttr ".tk[12]" -type "float3" 1.110223e-16 0 0.47691438 ;
	setAttr ".tk[13]" -type "float3" 1.110223e-16 0 0.47691438 ;
createNode polySplit -n "polySplit25";
	rename -uid "9D6272AD-654A-6596-EA48-028B59801445";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483630 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "37F5AE2E-0941-D8EC-AAEE-69A3DF3E6039";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483629 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder16";
	rename -uid "8C3314A4-E247-6872-FE44-6AAB52AA8C02";
	setAttr ".ics" -type "componentList" 1 "e[21:28]";
createNode polySplit -n "polySplit27";
	rename -uid "04160531-5345-BC4E-4D1F-12818AFF5312";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483627 -2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit28";
	rename -uid "D0692AF9-4548-DC83-03DC-A399B50C6E1D";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483626 -2147483623;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder17";
	rename -uid "805A3DEF-2440-5784-3FE5-70B7B4C8C1AB";
	setAttr ".ics" -type "componentList" 1 "e[32:37]";
createNode polyTweak -n "polyTweak7";
	rename -uid "26E301B1-FD48-3BFF-C1DC-408564736D29";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[8]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[9]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[10]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[11]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[12]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[13]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[14]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[15]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[16]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[17]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[18]" -type "float3" 0 2.220446e-16 0.4734095 ;
	setAttr ".tk[19]" -type "float3" 0 2.220446e-16 0.4734095 ;
createNode polySplit -n "polySplit29";
	rename -uid "25F941A3-6D45-25CC-132E-E5B4559926C5";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483616 -2147483613;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder18";
	rename -uid "86E88FAB-834E-7B7D-8E8A-65B41388BB48";
	setAttr ".ics" -type "componentList" 1 "e[38:43]";
createNode polySplit -n "polySplit30";
	rename -uid "D3163D7C-6B44-A895-D553-359445341B87";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483607 -2147483610;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder19";
	rename -uid "474BCAA8-504C-9527-5E7A-FFA5011A60DD";
	setAttr ".ics" -type "componentList" 1 "e[26:31]";
createNode polyTweak -n "polyTweak8";
	rename -uid "D3A62DEA-1C45-4EEF-F988-ACAAED840F65";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0.016329026 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.016329026 0 ;
createNode polySplit -n "polySplit31";
	rename -uid "E42C9F9A-0345-F661-333D-A08A1C327B19";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483619 -2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder20";
	rename -uid "8B66CD06-8C49-FAFE-58D6-E78135AC1294";
	setAttr ".ics" -type "componentList" 1 "e[16:21]";
createNode polyTweak -n "polyTweak9";
	rename -uid "05F10681-884C-6D11-7D4B-F385E3C9881B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[14]" -type "float3" 0 0.022141648 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.022141648 0 ;
createNode polySplit -n "polySplit32";
	rename -uid "490F2650-3743-A079-49E7-10BD6A966543";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483632 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder21";
	rename -uid "4E356832-CB4F-60E3-40C6-C0AB33E44DC9";
	setAttr ".ics" -type "componentList" 2 "e[7]" "e[14:18]";
createNode polyTweak -n "polyTweak10";
	rename -uid "9C3B6131-1C4D-CC6B-B66D-7EBC7A6531EF";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[0]" -type "float3" -1.110223e-16 0 0.40475202 ;
	setAttr ".tk[1]" -type "float3" -1.110223e-16 0 0.40475202 ;
	setAttr ".tk[6]" -type "float3" -1.110223e-16 0 0.40475202 ;
	setAttr ".tk[7]" -type "float3" -1.110223e-16 0 0.40475202 ;
	setAttr ".tk[12]" -type "float3" -1.110223e-16 0 0.40475202 ;
	setAttr ".tk[13]" -type "float3" -1.3877788e-16 0 0.40475202 ;
	setAttr ".tk[14]" -type "float3" -1.110223e-16 0 0.40475202 ;
	setAttr ".tk[15]" -type "float3" -1.110223e-16 0 0.40475202 ;
	setAttr ".tk[16]" -type "float3" -1.110223e-16 0 0.40475202 ;
	setAttr ".tk[17]" -type "float3" -1.3877788e-16 0 0.40475202 ;
createNode polySplit -n "polySplit33";
	rename -uid "5C7CE822-714B-9951-68DC-F7BC2313EBB1";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483634 -2147483631;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder22";
	rename -uid "9096E541-8B4D-2E2D-236F-42BAB99EF99E";
	setAttr ".ics" -type "componentList" 1 "e[19:24]";
createNode polyTweak -n "polyTweak11";
	rename -uid "01326184-F74D-98B5-83E2-90B1A73F03F5";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[11]" -type "float3" 0.049727596 0 2.7755576e-17 ;
	setAttr ".tk[17]" -type "float3" 0.049727596 0 0 ;
createNode polySplit -n "polySplit34";
	rename -uid "1D66C1E9-3E41-7CAF-2539-82B0B99E6997";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483626 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder23";
	rename -uid "2AC1B102-2D4B-97B1-12D1-90B5DB05B06C";
	setAttr ".ics" -type "componentList" 1 "e[20:23]";
createNode polyTweak -n "polyTweak12";
	rename -uid "C2095730-144B-98FC-23A1-E58DB3DCFD1B";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.57821697 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.57821697 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.57821697 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.57821697 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.57821697 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.57821697 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.57821697 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.57821697 ;
createNode polyCloseBorder -n "polyCloseBorder24";
	rename -uid "AB70597B-5641-246A-C4F6-ABB916076756";
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
createNode polyCloseBorder -n "polyCloseBorder25";
	rename -uid "B2521978-084C-4841-A467-34985FE4A4DE";
	setAttr ".ics" -type "componentList" 1 "e[32:39]";
createNode polyTweak -n "polyTweak13";
	rename -uid "CB6DAE49-DD42-6B69-0651-118D398DE14D";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.41894782 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.41894782 ;
createNode polySplit -n "polySplit35";
	rename -uid "D867CC4F-A349-1A2A-DBE1-E29F0C9D858F";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483615 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit36";
	rename -uid "F9A12E6F-124A-651C-59F9-F8A2533215C8";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483611 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder26";
	rename -uid "D13403A1-1F4E-26BD-DC11-1FB67DD95037";
	setAttr ".ics" -type "componentList" 1 "e[28:31]";
createNode polyCloseBorder -n "polyCloseBorder27";
	rename -uid "47C374FA-554A-F2C1-8583-E5AC7C8E6217";
	setAttr ".ics" -type "componentList" 1 "e[40:43]";
createNode polyCloseBorder -n "polyCloseBorder28";
	rename -uid "D6A3C3CC-284E-0CB5-F20A-7CAB70A1FB3F";
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
createNode polySplit -n "polySplit37";
	rename -uid "0886751F-7044-33DC-0D13-6BAAE8231834";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483628 -2147483631;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit38";
	rename -uid "767914E6-5F4B-876D-8697-B8B651A0B5CC";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483627 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode brush -n "art3dPaintLastPaintBrush";
	rename -uid "D68B2238-6540-B46D-8236-1A8C0C329078";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode tripleShadingSwitch -n "tripleShadingSwitch1";
	rename -uid "EC303C7F-4548-F303-84CC-2281B8A8DC97";
	setAttr -s 11 ".i";
	setAttr ".def" -type "float3" 0.5 0.5 0.5 ;
createNode file -n "file1";
	rename -uid "978E9D49-044D-8015-3C19-63B429EE6BAE";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCylinderShape1_color.tga";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "58F5167F-FF49-130D-850A-5D9A69FB0269";
createNode file -n "file2";
	rename -uid "A8C6EFB9-734A-27F9-E1E9-CCBC975282AF";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape1_color.tga";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "29024513-2443-CA00-3504-00B3076F4741";
createNode file -n "file3";
	rename -uid "E54825FC-CF43-D40D-E64F-3BAE0042DECD";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape2_color.tga";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "8AC7AB1D-B44D-DD12-6049-079E58343279";
createNode file -n "file4";
	rename -uid "911D9640-C845-B73C-0F50-F58DBAD3EF89";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape4_color.tga";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "D45D018D-1E4E-189C-3D98-85A30567A8F2";
createNode file -n "file5";
	rename -uid "F21A2647-4145-1EB3-092A-5BB78E03D098";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape5_color.tga";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "BA5E22BF-1144-019C-B92F-DCB30450AF62";
createNode file -n "file6";
	rename -uid "BD4F70CE-A648-2BA1-EC0C-139CFFC81ED0";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape6_color.tga";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "36C28371-844C-CCF0-8AFC-B19724FDAEFA";
createNode file -n "file7";
	rename -uid "740E4E8A-CE42-79C7-F627-1790F31E50EA";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape7_color.tga";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "D571B9BB-134C-B007-21FD-62A00502D6B8";
createNode file -n "file8";
	rename -uid "16C68C92-4B49-CE2B-D7D0-E08048259479";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape8_color.tga";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "A3C7A0AE-B64C-E206-73C7-AD951EC4701A";
createNode file -n "file9";
	rename -uid "DF1F604C-3646-4761-4F16-DBB3B17DB1ED";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape9_color.tga";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "4DE6FE80-934F-F247-136B-F292FAF141F0";
createNode file -n "file10";
	rename -uid "C4F01BD5-C441-9791-F7A1-97A65546EC37";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape10_color.tga";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "5D879847-5C4F-5AAC-22DC-979A889782DA";
createNode file -n "file11";
	rename -uid "07B3669F-F544-3BDC-6AFA-73BAD72F7F2C";
	setAttr ".ftn" -type "string" "/Users/leatalbot/Documents/maya/projects/default//sourceimages/3dPaintTextures/BreakingCup/pCubeShape11_color.tga";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "55A7A216-554B-6C68-10A4-48862006ACCA";
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
select -ne :defaultRenderUtilityList1;
	setAttr -s 12 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 11 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
	setAttr -s 12 ".t";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "polySplit38.out" "pCubeShape1.i";
connectAttr "polySplit18.out" "pCubeShape2.i";
connectAttr "polyCloseBorder24.out" "pCubeShape4.i";
connectAttr "polyCloseBorder12.out" "pCubeShape5.i";
connectAttr "polySplit24.out" "pCubeShape6.i";
connectAttr "polySplit34.out" "pCubeShape7.i";
connectAttr "polyCloseBorder6.out" "pCubeShape8.i";
connectAttr "polySplit32.out" "pCubeShape9.i";
connectAttr "polySplit28.out" "pCubeShape10.i";
connectAttr "polyCloseBorder2.out" "pCubeShape11.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polySplit1.ip";
connectAttr "polySurfaceShape2.o" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySurfaceShape3.o" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySurfaceShape4.o" "polySplit6.ip";
connectAttr "polySurfaceShape5.o" "polySplit7.ip";
connectAttr "polySplit1.out" "polySplitEdge1.ip";
connectAttr "polyTweak1.out" "polyCloseBorder1.ip";
connectAttr "polySplitEdge1.out" "polyTweak1.ip";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polyCube1.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySurfaceShape6.o" "polySplit10.ip";
connectAttr "polySurfaceShape7.o" "polySplit11.ip";
connectAttr "polySurfaceShape8.o" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySurfaceShape9.o" "polySplit14.ip";
connectAttr "polySplit3.out" "polySplitEdge2.ip";
connectAttr "polySplit5.out" "polySplitEdge3.ip";
connectAttr "polySplit6.out" "polySplitEdge4.ip";
connectAttr "polySplit7.out" "polySplitEdge5.ip";
connectAttr "polySplit14.out" "polySplitEdge6.ip";
connectAttr "polySplit13.out" "polySplitEdge7.ip";
connectAttr "polySplit11.out" "polySplitEdge8.ip";
connectAttr "polySplit10.out" "polySplitEdge9.ip";
connectAttr "polySplit9.out" "polySplitEdge10.ip";
connectAttr "polyTweak2.out" "polyCloseBorder3.ip";
connectAttr "polySplitEdge2.out" "polyTweak2.ip";
connectAttr "polyCloseBorder3.out" "polyCloseBorder4.ip";
connectAttr "polyCloseBorder4.out" "polyCloseBorder5.ip";
connectAttr "polyCloseBorder5.out" "polyCloseBorder6.ip";
connectAttr "polyTweak3.out" "polyCloseBorder7.ip";
connectAttr "polySplitEdge3.out" "polyTweak3.ip";
connectAttr "polyCloseBorder7.out" "polyCloseBorder8.ip";
connectAttr "polyCloseBorder8.out" "polyCloseBorder9.ip";
connectAttr "polyCloseBorder9.out" "polyCloseBorder10.ip";
connectAttr "polyTweak4.out" "polyCloseBorder11.ip";
connectAttr "polySplitEdge4.out" "polyTweak4.ip";
connectAttr "polyCloseBorder11.out" "polyCloseBorder12.ip";
connectAttr "polyTweak5.out" "polyCloseBorder13.ip";
connectAttr "polySplitEdge5.out" "polyTweak5.ip";
connectAttr "polyCloseBorder13.out" "polyCloseBorder14.ip";
connectAttr "polyCloseBorder14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polyCloseBorder10.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polySplit24.ip";
connectAttr "polyTweak6.out" "polyCloseBorder15.ip";
connectAttr "polySplitEdge6.out" "polyTweak6.ip";
connectAttr "polyCloseBorder15.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polyCloseBorder16.ip";
connectAttr "polyCloseBorder16.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "polyTweak7.out" "polyCloseBorder17.ip";
connectAttr "polySplitEdge7.out" "polyTweak7.ip";
connectAttr "polyCloseBorder17.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polyCloseBorder18.ip";
connectAttr "polyCloseBorder18.out" "polySplit30.ip";
connectAttr "polyTweak8.out" "polyCloseBorder19.ip";
connectAttr "polySplit30.out" "polyTweak8.ip";
connectAttr "polyCloseBorder19.out" "polySplit31.ip";
connectAttr "polyTweak9.out" "polyCloseBorder20.ip";
connectAttr "polySplit31.out" "polyTweak9.ip";
connectAttr "polyCloseBorder20.out" "polySplit32.ip";
connectAttr "polyTweak10.out" "polyCloseBorder21.ip";
connectAttr "polySplitEdge8.out" "polyTweak10.ip";
connectAttr "polyCloseBorder21.out" "polySplit33.ip";
connectAttr "polyTweak11.out" "polyCloseBorder22.ip";
connectAttr "polySplit33.out" "polyTweak11.ip";
connectAttr "polyCloseBorder22.out" "polySplit34.ip";
connectAttr "polyTweak12.out" "polyCloseBorder23.ip";
connectAttr "polySplitEdge9.out" "polyTweak12.ip";
connectAttr "polyCloseBorder23.out" "polyCloseBorder24.ip";
connectAttr "polyTweak13.out" "polyCloseBorder25.ip";
connectAttr "polySplitEdge10.out" "polyTweak13.ip";
connectAttr "polyCloseBorder25.out" "polySplit35.ip";
connectAttr "polySplit35.out" "polySplit36.ip";
connectAttr "polySplit36.out" "polyCloseBorder26.ip";
connectAttr "polyCloseBorder26.out" "polyCloseBorder27.ip";
connectAttr "polyCloseBorder27.out" "polyCloseBorder28.ip";
connectAttr "polyCloseBorder28.out" "polySplit37.ip";
connectAttr "polySplit37.out" "polySplit38.ip";
connectAttr "pCylinderShape1.iog" "tripleShadingSwitch1.i[0].is";
connectAttr "file1.oc" "tripleShadingSwitch1.i[0].it";
connectAttr "pCubeShape1.iog" "tripleShadingSwitch1.i[1].is";
connectAttr "file2.oc" "tripleShadingSwitch1.i[1].it";
connectAttr "pCubeShape2.iog" "tripleShadingSwitch1.i[2].is";
connectAttr "file3.oc" "tripleShadingSwitch1.i[2].it";
connectAttr "pCubeShape4.iog" "tripleShadingSwitch1.i[3].is";
connectAttr "file4.oc" "tripleShadingSwitch1.i[3].it";
connectAttr "pCubeShape5.iog" "tripleShadingSwitch1.i[4].is";
connectAttr "file5.oc" "tripleShadingSwitch1.i[4].it";
connectAttr "pCubeShape6.iog" "tripleShadingSwitch1.i[5].is";
connectAttr "file6.oc" "tripleShadingSwitch1.i[5].it";
connectAttr "pCubeShape7.iog" "tripleShadingSwitch1.i[6].is";
connectAttr "file7.oc" "tripleShadingSwitch1.i[6].it";
connectAttr "pCubeShape8.iog" "tripleShadingSwitch1.i[7].is";
connectAttr "file8.oc" "tripleShadingSwitch1.i[7].it";
connectAttr "pCubeShape9.iog" "tripleShadingSwitch1.i[8].is";
connectAttr "file9.oc" "tripleShadingSwitch1.i[8].it";
connectAttr "pCubeShape10.iog" "tripleShadingSwitch1.i[9].is";
connectAttr "file10.oc" "tripleShadingSwitch1.i[9].it";
connectAttr "pCubeShape11.iog" "tripleShadingSwitch1.i[10].is";
connectAttr "file11.oc" "tripleShadingSwitch1.i[10].it";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr "place2dTexture8.c" "file8.c";
connectAttr "place2dTexture8.tf" "file8.tf";
connectAttr "place2dTexture8.rf" "file8.rf";
connectAttr "place2dTexture8.mu" "file8.mu";
connectAttr "place2dTexture8.mv" "file8.mv";
connectAttr "place2dTexture8.s" "file8.s";
connectAttr "place2dTexture8.wu" "file8.wu";
connectAttr "place2dTexture8.wv" "file8.wv";
connectAttr "place2dTexture8.re" "file8.re";
connectAttr "place2dTexture8.of" "file8.of";
connectAttr "place2dTexture8.r" "file8.ro";
connectAttr "place2dTexture8.n" "file8.n";
connectAttr "place2dTexture8.vt1" "file8.vt1";
connectAttr "place2dTexture8.vt2" "file8.vt2";
connectAttr "place2dTexture8.vt3" "file8.vt3";
connectAttr "place2dTexture8.vc1" "file8.vc1";
connectAttr "place2dTexture8.o" "file8.uv";
connectAttr "place2dTexture8.ofs" "file8.fs";
connectAttr "place2dTexture9.c" "file9.c";
connectAttr "place2dTexture9.tf" "file9.tf";
connectAttr "place2dTexture9.rf" "file9.rf";
connectAttr "place2dTexture9.mu" "file9.mu";
connectAttr "place2dTexture9.mv" "file9.mv";
connectAttr "place2dTexture9.s" "file9.s";
connectAttr "place2dTexture9.wu" "file9.wu";
connectAttr "place2dTexture9.wv" "file9.wv";
connectAttr "place2dTexture9.re" "file9.re";
connectAttr "place2dTexture9.of" "file9.of";
connectAttr "place2dTexture9.r" "file9.ro";
connectAttr "place2dTexture9.n" "file9.n";
connectAttr "place2dTexture9.vt1" "file9.vt1";
connectAttr "place2dTexture9.vt2" "file9.vt2";
connectAttr "place2dTexture9.vt3" "file9.vt3";
connectAttr "place2dTexture9.vc1" "file9.vc1";
connectAttr "place2dTexture9.o" "file9.uv";
connectAttr "place2dTexture9.ofs" "file9.fs";
connectAttr "place2dTexture10.c" "file10.c";
connectAttr "place2dTexture10.tf" "file10.tf";
connectAttr "place2dTexture10.rf" "file10.rf";
connectAttr "place2dTexture10.mu" "file10.mu";
connectAttr "place2dTexture10.mv" "file10.mv";
connectAttr "place2dTexture10.s" "file10.s";
connectAttr "place2dTexture10.wu" "file10.wu";
connectAttr "place2dTexture10.wv" "file10.wv";
connectAttr "place2dTexture10.re" "file10.re";
connectAttr "place2dTexture10.of" "file10.of";
connectAttr "place2dTexture10.r" "file10.ro";
connectAttr "place2dTexture10.n" "file10.n";
connectAttr "place2dTexture10.vt1" "file10.vt1";
connectAttr "place2dTexture10.vt2" "file10.vt2";
connectAttr "place2dTexture10.vt3" "file10.vt3";
connectAttr "place2dTexture10.vc1" "file10.vc1";
connectAttr "place2dTexture10.o" "file10.uv";
connectAttr "place2dTexture10.ofs" "file10.fs";
connectAttr "place2dTexture11.c" "file11.c";
connectAttr "place2dTexture11.tf" "file11.tf";
connectAttr "place2dTexture11.rf" "file11.rf";
connectAttr "place2dTexture11.mu" "file11.mu";
connectAttr "place2dTexture11.mv" "file11.mv";
connectAttr "place2dTexture11.s" "file11.s";
connectAttr "place2dTexture11.wu" "file11.wu";
connectAttr "place2dTexture11.wv" "file11.wv";
connectAttr "place2dTexture11.re" "file11.re";
connectAttr "place2dTexture11.of" "file11.of";
connectAttr "place2dTexture11.r" "file11.ro";
connectAttr "place2dTexture11.n" "file11.n";
connectAttr "place2dTexture11.vt1" "file11.vt1";
connectAttr "place2dTexture11.vt2" "file11.vt2";
connectAttr "place2dTexture11.vt3" "file11.vt3";
connectAttr "place2dTexture11.vc1" "file11.vc1";
connectAttr "place2dTexture11.o" "file11.uv";
connectAttr "place2dTexture11.ofs" "file11.fs";
connectAttr "tripleShadingSwitch1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "tripleShadingSwitch1.out" ":lambert1.c";
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tripleShadingSwitch1.msg" ":initialMaterialInfo.t" -na;
// End of BreakingCup.ma
