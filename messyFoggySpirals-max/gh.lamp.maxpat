{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 84.0, 144.0, 1000.0, 755.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-6",
					"index" : 3,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 244.0, 71.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-5",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 153.0, 75.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 56.0, 75.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 46.0, 233.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 114.0, 233.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 181.0, 233.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 268.0, 154.0, 22.0 ],
					"text" : "pak i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 6,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 319.0, 732.0, 89.0 ],
					"text" : "/led $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3 $1 $2 $3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 419.0, 158.0, 22.0 ],
					"text" : "udpsend 10.52.120.10 8888"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 2 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
 ]
	}

}
