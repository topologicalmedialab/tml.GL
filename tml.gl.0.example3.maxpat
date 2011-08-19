{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 498.0, 111.0, 961.0, 874.0 ],
		"bglocked" : 0,
		"defrect" : [ 498.0, 111.0, 961.0, 874.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 15.0, 210.0, 80.0, 36.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend diffusion",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 810.0, 435.0, 102.0, 20.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend dt",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 690.0, 435.0, 68.0, 20.0 ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 816.0, 405.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 810.0, 405.0, 50.0, 20.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "write",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 180.0, 300.0, 36.0, 18.0 ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 240.0, 300.0, 33.0, 18.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.record 1280 720",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 135.0, 360.0, 123.0, 20.0 ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.asyncread #1 @automatic 1 @layer 1000",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 135.0, 210.0, 256.0, 20.0 ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrix 4 char 1280 720",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 135.0, 255.0, 145.0, 20.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.*n #1 0.1 0.1 0.1 1.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 525.0, 315.0, 144.0, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"outlettype" : [ "jit_gl_texture" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.shader",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 315.0, 495.0, 72.0, 20.0 ],
					"id" : "obj-41",
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Implementation of the wave equation through finite differencing.  A few issues remain though...",
					"linecount" : 4,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 358.0, 403.0, 257.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 405.0, 150.0, 62.0 ],
					"id" : "obj-37",
					"fontname" : "Arial",
					"presentation" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Subtract previous frame from current frame.  temporal+ and temporal* also exist for sum previous frame and multiply previous frame respectively.",
					"linecount" : 7,
					"presentation_linecount" : 4,
					"presentation_rect" : [ 675.0, 285.0, 257.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 690.0, 255.0, 150.0, 103.0 ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"presentation" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Absolute value of each component.",
					"linecount" : 2,
					"presentation_rect" : [ 404.0, 619.0, 257.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 405.0, 615.0, 150.0, 34.0 ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"presentation" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.abs #1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 525.0, 345.0, 79.0, 20.0 ],
					"id" : "obj-34",
					"fontname" : "Arial",
					"outlettype" : [ "jit_gl_texture" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.abs #1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 585.0, 615.0, 79.0, 20.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"outlettype" : [ "jit_gl_texture" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.- #1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 570.0, 63.0, 20.0 ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"outlettype" : [ "jit_gl_texture" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.*n #1 1. 1. 1. 1.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 585.0, 510.0, 124.0, 20.0 ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"outlettype" : [ "jit_gl_texture" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.temporal- #1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 525.0, 270.0, 110.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"outlettype" : [ "jit_gl_texture" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 720.0, 405.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 720.0, 405.0, 50.0, 20.0 ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 660.0, 375.0, 35.0, 18.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reset",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 600.0, 375.0, 37.0, 18.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.wave #1 0.5 0.2",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 585.0, 465.0, 127.0, 20.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Change this value to increase or decrease the amount of color in the monochrome image.",
					"linecount" : 4,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 294.0, 107.0, 257.0, 34.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.0, 111.0, 150.0, 62.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"presentation" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Make this image monochrome!",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 619.0, 237.0, 229.0, 20.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click the BIG button to start!",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 93.0, 2.0, 72.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 93.0, 2.0, 72.0, 48.0 ],
					"id" : "obj-50",
					"fontname" : "Arial",
					"presentation" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 168.0, 2.0, 55.0, 55.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 168.0, 2.0, 55.0, 55.0 ],
					"id" : "obj-53",
					"presentation" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Another example.  We like the wave equations; properly integrated, served with coffee in the morning.",
					"linecount" : 3,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 555.0, 7.0, 245.0, 48.0 ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OpenGL Example #3",
					"presentation_linecount" : 2,
					"presentation_rect" : [ 227.0, 5.0, 274.0, 75.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 227.0, 5.0, 320.0, 41.0 ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"presentation" : 1,
					"fontface" : 1,
					"fontsize" : 30.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.dotn #1 0.5 0.5 0.75",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 462.0, 238.0, 149.0, 20.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"outlettype" : [ "jit_gl_texture" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tml.gl.float16 #1 n",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 495.0, 180.0, 105.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"outlettype" : [ "jit_gl_texture" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "settings",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 453.0, 50.0, 52.0, 18.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 397.0, 48.0, 37.0, 18.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.videoplane #1",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 585.0, 660.0, 110.0, 20.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.grab 1280 720",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 480.0, 131.0, 113.0, 20.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b erase",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 24.0, 100.0, 57.0, 20.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"outlettype" : [ "bang", "erase" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 46.0, 22.0, 20.0, 20.0 ],
					"id" : "obj-6",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 33",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 23.0, 71.0, 65.0, 20.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.render #1 ",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 60.0, 135.0, 90.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.window #1",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 45.0, 495.0, 79.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 12.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-9", 0 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 215.0, 126.0, 489.5, 83.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-19", 0 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
