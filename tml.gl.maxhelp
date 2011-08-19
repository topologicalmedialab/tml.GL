{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 88.0, 149.0, 1552.0, 659.0 ],
		"bglocked" : 0,
		"defrect" : [ 88.0, 149.0, 1552.0, 659.0 ],
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
					"maxclass" : "comment",
					"text" : "Blurs an image",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 1215.0, 525.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1213.0, 530.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.blur.maxhelp",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1050.0, 525.0, 111.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1048.0, 530.0, 154.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sharpens an image",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 1215.0, 555.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1219.0, 556.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.sharp.maxhelp",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1050.0, 555.0, 121.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1050.0, 555.0, 154.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append #1",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 135.0, 660.0, 67.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Changes a single color (and shades of) into another.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 1215.0, 585.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1215.0, 585.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.colorcorrect.maxhelp",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1050.0, 585.0, 154.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1050.0, 585.0, 154.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compute temporal sum",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 1215.0, 240.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1215.0, 240.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-78"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.temporal+.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1050.0, 240.0, 150.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1050.0, 240.0, 139.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-79"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compute temporal product",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 1215.0, 210.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1215.0, 210.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-76"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.temporal*.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1050.0, 210.0, 147.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1050.0, 210.0, 137.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-77"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compute temporal difference",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 1214.0, 177.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1215.0, 180.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-74"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.temporal-.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1049.0, 177.0, 137.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1050.0, 180.0, 136.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compute four dot products, output in R, G, B, and A.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 1215.0, 405.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1215.0, 405.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-72"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.swizzle.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1050.0, 405.0, 124.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1050.0, 405.0, 124.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-73"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Replacement slab that understands GLSL shaders",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 330.0, 310.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 330.0, 310.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-70"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.slab",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 330.0, 65.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 330.0, 65.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-71"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compute optical flow, HSFLow style",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 225.0, 310.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 225.0, 310.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-69"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.opticalFlow.model",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 225.0, 138.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 225.0, 138.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Subtract a texture from a constant",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 585.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 585.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.n-.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 585.0, 96.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 585.0, 96.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-67"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compute the mean and standard deviation over time",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 1215.0, 150.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1215.0, 150.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-64"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.stddev.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1050.0, 150.0, 120.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1050.0, 150.0, 120.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-65"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compute the mean of a texture over time.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 1215.0, 120.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1215.0, 120.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.mean.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1050.0, 120.0, 115.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 1050.0, 120.0, 115.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Diffusion equation.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 195.0, 310.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 195.0, 310.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.heat.maxhelp",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 195.0, 115.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 195.0, 115.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compute a single dot product, monochrome output",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 555.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 555.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.dotn.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 555.0, 109.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 555.0, 109.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Basic semi-lagrangian advection operation.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 120.0, 310.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 120.0, 310.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.advection.model",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 120.0, 130.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 120.0, 130.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Absolute value of texture",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 525.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 525.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.abs.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 525.0, 105.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 525.0, 105.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example 4 - showing 2D wave equation with advection",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 495.0, 310.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 495.0, 310.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.0.example4.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 495.0, 147.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 495.0, 147.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example 3 - showing 2D wave equation",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 465.0, 310.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 465.0, 310.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.0.example3.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 465.0, 147.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 465.0, 147.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example 2 - showing optical flow.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 435.0, 310.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 435.0, 310.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.0.example2.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 435.0, 147.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 435.0, 147.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example 1 - showing optical flow and kernel.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 405.0, 310.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 405.0, 310.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.0.example1.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 405.0, 147.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 405.0, 147.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compare for texture greater than scalar",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 495.0, 325.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 495.0, 325.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.>n.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 495.0, 99.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 495.0, 99.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compare for texture less than scalar",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 465.0, 321.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 465.0, 321.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.<n.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 465.0, 99.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 465.0, 99.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See if two textures are greater than each other",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 300.0, 291.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 300.0, 291.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.>.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 300.0, 92.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 300.0, 92.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See if two textures are less than each other",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 270.0, 291.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 270.0, 291.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.<.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 270.0, 92.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 270.0, 92.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sum of two scaled textures",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 240.0, 291.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 240.0, 291.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.+.scaled.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 240.0, 130.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 240.0, 130.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sum of two textures",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 210.0, 291.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 210.0, 291.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.+.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 210.0, 92.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 210.0, 92.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Add scalar to texture",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 435.0, 291.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 435.0, 291.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.+n.maxhelp",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 435.0, 105.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 435.0, 105.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Multiply texture by scalar",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 405.0, 291.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 405.0, 291.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.*n.maxhelp",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 405.0, 103.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 405.0, 103.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Product of two textures",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 180.0, 291.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 180.0, 291.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.*.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 180.0, 90.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 180.0, 90.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Many of these objects come in equivalent tml.gl8 forms.  These use 8-bit accuracy rather than 32-bit accuracy.  Please use the one that makes the most sense for whatever you're doing.",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 135.0, 630.0, 900.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 135.0, 630.0, 900.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inverts two textures.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 150.0, 291.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 150.0, 291.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.!.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 150.0, 89.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 150.0, 89.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Subtract two textures",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 705.0, 120.0, 291.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 705.0, 120.0, 291.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.-.maxpat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 540.0, 120.0, 89.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 540.0, 120.0, 89.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2D wave equation.",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 300.0, 310.0, 20.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 300.0, 310.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.wave.maxhelp",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 300.0, 119.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 300.0, 119.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Execute inline expressions on the GPU.  Optionally generate re-usable GLSL file for other projects.",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 150.0, 310.0, 34.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 150.0, 310.0, 34.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.expr.maxhelp",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 150.0, 114.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 150.0, 114.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 0.0, 660.0, 53.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend loadunique",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 0.0, 630.0, 117.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Change colors of a source image by indexing into another texture.",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 180.0, 255.0, 310.0, 34.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 255.0, 310.0, 34.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tml.gl.remap.maxhelp",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 255.0, 125.0, 18.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 255.0, 125.0, 18.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "GPGPU Computing.  Made Simple.",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 15.0, 60.0, 111.0, 29.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 60.0, 111.0, 29.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tml.gl",
					"numoutlets" : 0,
					"fontsize" : 36.0,
					"presentation_rect" : [ 15.0, 15.0, 200.0, 48.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 15.0, 200.0, 48.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1059.5, 573.0, 1047.0, 573.0, 1047.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1059.5, 390.0, 501.0, 390.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1059.5, 228.0, 1008.0, 228.0, 1008.0, 390.0, 501.0, 390.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1059.5, 198.0, 1008.0, 198.0, 1008.0, 390.0, 501.0, 390.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1059.5, 423.0, 1008.0, 423.0, 1008.0, 390.0, 501.0, 390.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1059.5, 168.0, 1008.0, 168.0, 1008.0, 390.0, 501.0, 390.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1059.5, 138.0, 1008.0, 138.0, 1008.0, 390.0, 501.0, 390.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 390.0, 0.0, 390.0, 0.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 243.0, 0.0, 243.0, 0.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 573.0, 9.5, 573.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 138.0, 0.0, 138.0, 0.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 543.0, 9.5, 543.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 513.0, 501.0, 513.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 483.0, 501.0, 483.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 423.0, 0.0, 423.0, 0.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 453.0, 0.0, 453.0, 0.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 483.0, 0.0, 483.0, 0.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 390.0, 501.0, 390.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 288.0, 501.0, 288.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 453.0, 501.0, 453.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 423.0, 501.0, 423.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 258.0, 501.0, 258.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 228.0, 501.0, 228.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 198.0, 501.0, 198.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 168.0, 501.0, 168.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 138.0, 501.0, 138.0, 501.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 318.0, 0.0, 318.0, 0.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 180.0, 0.0, 180.0, 0.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 285.0, 0.0, 285.0, 0.0, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1059.5, 615.0, 9.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1057.5, 549.0, 1047.0, 549.0, 1047.0, 615.0, 9.5, 615.0 ]
				}

			}
 ]
	}

}
