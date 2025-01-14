function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 10; // obj_FXslideP1
	global.__objectDepths[1] = 0; // sb_p1
	global.__objectDepths[2] = 5; // sb
	global.__objectDepths[3] = 0; // obj_treesolid
	global.__objectDepths[4] = -1; // obj_tree
	global.__objectDepths[5] = 0; // obj_snowdust
	global.__objectDepths[6] = 0; // obj_LvlControl
	global.__objectDepths[7] = -10000; // obj_bird
	global.__objectDepths[8] = 0; // obj_FenceBorder
	global.__objectDepths[9] = 1; // obj_ramp
	global.__objectDepths[10] = -10000; // obj_cloud
	global.__objectDepths[11] = 0; // obj_snowball
	global.__objectDepths[12] = 100; // obj_avalanche
	global.__objectDepths[13] = 0; // objMtnMenu


	global.__objectNames[0] = "obj_FXslideP1";
	global.__objectNames[1] = "sb_p1";
	global.__objectNames[2] = "sb";
	global.__objectNames[3] = "obj_treesolid";
	global.__objectNames[4] = "obj_tree";
	global.__objectNames[5] = "obj_snowdust";
	global.__objectNames[6] = "obj_LvlControl";
	global.__objectNames[7] = "obj_bird";
	global.__objectNames[8] = "obj_FenceBorder";
	global.__objectNames[9] = "obj_ramp";
	global.__objectNames[10] = "obj_cloud";
	global.__objectNames[11] = "obj_snowball";
	global.__objectNames[12] = "obj_avalanche";
	global.__objectNames[13] = "objMtnMenu";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
