{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 237.0, 86.0, 961.0, 874.0 ],
		"bglocked" : 0,
		"defrect" : [ 237.0, 86.0, 961.0, 874.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 120.0, 135.0, 60.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Yes, that's the output GLSL file.  It's there so the file system doesn't get filled up with garbage!",
					"linecount" : 6,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 60.0, 315.0, 104.0, 89.0 ],
					"numinlets" : 1,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Warning: we create hidden temporary files for each tml.gl.expr in order to provide a conforming glsl and jxs file to jit.slab.",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 8.0,
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 90.0, 231.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher more_examples",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 375.0, 135.0, 139.0, 20.0 ],
					"numinlets" : 0,
					"id" : "obj-49",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 968.0, 97.0, 627.0, 845.0 ],
						"bglocked" : 0,
						"defrect" : [ 968.0, 97.0, 627.0, 845.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Need to define parameters that must be adjusted at run-time?  Go right ahead, put them in between < and >!  Create as many as you need!  Duplicate names will refer to the same parameter.  All parameters are float.  And parameter names can only include alphanumeric characters.\n\nFor example, the above expression fades between white and the input.  Play with the numbers to see!!!",
									"linecount" : 7,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 315.0, 482.0, 103.0 ],
									"numinlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 255.0, 270.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend param scale",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 315.0, 270.0, 123.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "expr \"in0*<scale> + 1*(1-<scale>)\"",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 45.0, 270.0, 194.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "These messages reset the components.  eg.  as though they were not specified.  Sometimes this is needed when trying out multiple exprs.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 210.0, 482.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "w www",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 225.0, 180.0, 48.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "z zzz",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 165.0, 180.0, 38.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "y yyy",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 105.0, 180.0, 38.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "x xxx",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 45.0, 180.0, 38.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If the video were a velocity field, then this expression evaluates the advection equation with a time-step of 20.  (eg - we offset the source pixels based on pixel color)\n\nThis demonstrates the ability to put expressions in offsets.  If a component is not specified, then it defaults to the current output component.",
									"linecount" : 5,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 60.0, 482.0, 75.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "expr \"in0[20*in0.x, 20*in0.y]\"",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 45.0, 30.0, 162.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 810.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 294.0, 9.5, 294.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 53.0, 9.5, 53.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 204.0, 9.5, 204.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 114.5, 203.0, 9.5, 203.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 174.5, 205.0, 9.5, 205.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 234.5, 205.0, 9.5, 205.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 264.5, 294.0, 309.0, 294.0, 309.0, 265.0, 324.5, 265.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 324.5, 299.0, 9.5, 299.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Messages beginning with 'x', 'y', 'z' or 'w' will only modify the expression for a given component.  These examples set the color components to either 0 or 1.  (depending upon the pressed button)",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 315.0, 660.0, 531.0, 34.0 ],
					"numinlets" : 1,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "w \"1.0\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 240.0, 705.0, 48.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "z \"1.0\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 705.0, 45.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "y \"1.0\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 120.0, 705.0, 45.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "x \"1.0\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 60.0, 705.0, 45.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "w \"0.0\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 240.0, 660.0, 48.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "z \"0.0\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 660.0, 45.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "y \"0.0\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 120.0, 660.0, 45.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "x \"0.0\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 60.0, 660.0, 45.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "expr \"(in0[-1,0] - in0[1,0].x)\" \"(in0[0,-1] - in0[0,1])\" \"0.0\" \"1.0\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 60.0, 615.0, 327.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "expr \"0.5*(in0[-1,0] - in0[1,0].x + in0[0,-1] - in0[0,1])\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 75.0, 570.0, 285.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "expr \"0.25*(in0[-1,0].x + in0[1,0].x + in0[0,1] + in0[0,-1])\"",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 75.0, 435.0, 307.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "expr in0.z in0.y in0.x",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 375.0, 120.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "expr 1-in0",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 330.0, 64.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "expr in0",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 285.0, 53.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Spatial Gradient (using quotes is always a good idea.  It lets you put in numerical constants to set values.)",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 390.0, 615.0, 531.0, 34.0 ],
					"numinlets" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Divergence...",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 375.0, 570.0, 520.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Brackets are supported.\n\nThe values in square brackets are offsets.  Since the expression is in quotes, it applies to all 4 components.  (four expressions in quotes would allow setting each component individually).\n\nOffsets and components are optional.  (one, the other, neither, or both can be specified).  Offsets can be expressions - evaluated by the index in a texture.",
					"linecount" : 8,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 390.0, 435.0, 454.0, 117.0 ],
					"numinlets" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Adding a \".\" allows you to specify which component to pull from.  (x, y, z, or w)\nSpaces mean different logic applies to different components.\nHere, we swap the z and x components.  (equivalent to swapping r and b)",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 315.0, 375.0, 624.0, 48.0 ],
					"numinlets" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "You can put in constants as well.  This shader inverts the colors by subtracting 1.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 315.0, 330.0, 624.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Simple shader - pass value through.  in0 = first texture, in1 = second texture, in2 = third texture, in3 = fourth texture.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 315.0, 285.0, 624.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.expr #1 outfile.glsl in0",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "jit_gl_texture" ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 285.0, 159.0, 20.0 ],
					"numinlets" : 4,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Expressions on matrices; but faster.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 75.0, 340.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tml.gl.expr",
					"numoutlets" : 0,
					"fontsize" : 36.0,
					"fontname" : "Times New Roman",
					"patching_rect" : [ 15.0, 15.0, 220.0, 48.0 ],
					"numinlets" : 1,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.float16 #1 n",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "jit_gl_texture" ],
					"fontname" : "Arial",
					"patching_rect" : [ 195.0, 240.0, 105.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "settings",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 270.0, 135.0, 52.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 225.0, 135.0, 37.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.videoplane #1",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 780.0, 110.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.grab 1280 720",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 195.0, 195.0, 113.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b erase",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "bang", "erase" ],
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 195.0, 57.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 45.0, 135.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 33",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 165.0, 65.0, 20.0 ],
					"numinlets" : 2,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.render #1 ",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 240.0, 90.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.window #1",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 30.0, 780.0, 79.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 760.0, 189.5, 760.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 129.5, 162.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 129.5, 161.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 187.0, 204.5, 187.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 317.0, 174.0, 317.0, 174.0, 277.0, 24.5, 277.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 355.0, 174.0, 355.0, 174.0, 279.0, 24.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 399.0, 173.0, 399.0, 173.0, 276.0, 24.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 462.0, 13.0, 462.0, 13.0, 274.0, 24.5, 274.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 594.0, 12.0, 594.0, 12.0, 271.0, 24.5, 271.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 640.0, 12.0, 640.0, 12.0, 270.0, 24.5, 270.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 684.0, 13.0, 684.0, 13.0, 272.0, 24.5, 272.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 686.0, 12.0, 686.0, 12.0, 272.0, 24.5, 272.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 687.0, 10.0, 687.0, 10.0, 273.0, 24.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 688.0, 11.0, 688.0, 11.0, 274.0, 24.5, 274.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 730.0, 13.0, 730.0, 13.0, 276.0, 24.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 733.0, 11.0, 733.0, 11.0, 273.0, 24.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 734.0, 12.0, 734.0, 12.0, 272.0, 24.5, 272.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 735.0, 13.0, 735.0, 13.0, 272.0, 24.5, 272.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 384.5, 158.0, 384.5, 279.0, 24.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
