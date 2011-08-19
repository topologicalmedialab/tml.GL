{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 531.0, 196.0, 951.0, 462.0 ],
		"bglocked" : 0,
		"defrect" : [ 531.0, 196.0, 951.0, 462.0 ],
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
					"maxclass" : "comment",
					"text" : "The \"gl8\" work with 8-bit floats.  They're innacurate for most things, but faster.",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 615.0, 360.0, 309.0, 34.0 ],
					"numinlets" : 1,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Normalized presents normalized coordinates.  The second parameter must be one of the normalized types!!!!",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 615.0, 300.0, 310.0, 48.0 ],
					"numinlets" : 1,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For RGBA - use 4 char.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 660.0, 255.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Play with these to make camera output visible!",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 465.0, 45.0, 468.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl8.normalized #1",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "jit_gl_texture" ],
					"fontname" : "Arial",
					"patching_rect" : [ 465.0, 300.0, 125.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.fill mymatrix 0",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 780.0, 210.0, 96.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.fill mymatrix 1",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 615.0, 210.0, 96.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setstyle" : 1,
					"numoutlets" : 2,
					"setminmax" : [ 0.0, 255.0 ],
					"slidercolor" : [ 0.196078, 0.196078, 0.588235, 1.0 ],
					"outlettype" : [ "", "" ],
					"bgcolor" : [ 0.588235, 0.588235, 0.980392, 1.0 ],
					"contdata" : 1,
					"settype" : 0,
					"size" : 256,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"patching_rect" : [ 779.0, 75.0, 154.0, 103.0 ],
					"numinlets" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setstyle" : 1,
					"numoutlets" : 2,
					"setminmax" : [ 0.0, 255.0 ],
					"slidercolor" : [ 0.196078, 0.588235, 0.196078, 1.0 ],
					"outlettype" : [ "", "" ],
					"bgcolor" : [ 0.588235, 0.980392, 0.588235, 1.0 ],
					"contdata" : 1,
					"settype" : 0,
					"size" : 256,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"patching_rect" : [ 622.0, 75.0, 154.0, 103.0 ],
					"numinlets" : 1,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setstyle" : 1,
					"numoutlets" : 2,
					"setminmax" : [ 0.0, 255.0 ],
					"slidercolor" : [ 0.588235, 0.196078, 0.196078, 1.0 ],
					"outlettype" : [ "", "" ],
					"bgcolor" : [ 0.980392, 0.588235, 0.588235, 1.0 ],
					"contdata" : 1,
					"settype" : 0,
					"size" : 256,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"patching_rect" : [ 465.0, 75.0, 154.0, 103.0 ],
					"numinlets" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 240.0, 285.0, 35.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.remap #1",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "jit_gl_texture" ],
					"fontname" : "Arial",
					"patching_rect" : [ 195.0, 345.0, 93.0, 20.0 ],
					"numinlets" : 2,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrix mymatrix 3 char 256 1",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 465.0, 255.0, 177.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.fill mymatrix 2",
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 465.0, 210.0, 96.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 120.0, 90.0, 60.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mapping colors to generate psychadellic effects; made easy!",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 60.0, 340.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tml.gl.remap",
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
					"patching_rect" : [ 195.0, 210.0, 105.0, 20.0 ],
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
					"patching_rect" : [ 270.0, 105.0, 52.0, 18.0 ],
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
					"patching_rect" : [ 225.0, 105.0, 37.0, 18.0 ],
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
					"patching_rect" : [ 195.0, 405.0, 110.0, 20.0 ],
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
					"patching_rect" : [ 195.0, 165.0, 113.0, 20.0 ],
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
					"patching_rect" : [ 45.0, 165.0, 57.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 45.0, 105.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 45.0, 135.0, 65.0, 20.0 ],
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
					"patching_rect" : [ 45.0, 210.0, 90.0, 20.0 ],
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
					"patching_rect" : [ 45.0, 405.0, 79.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [ 474.5, 332.0, 278.5, 332.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 157.0, 204.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 129.5, 131.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 129.5, 132.0 ]
				}

			}
 ]
	}

}
