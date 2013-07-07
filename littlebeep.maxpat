{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 702.0, 811.0, 485.0, 371.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 702.0, 811.0, 485.0, 371.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 1,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 2",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 219.0, 76.0, 27.0, 18.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation" : 0,
					"id" : "obj-27",
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• when the line~ ends, mute the patch and free it.",
					"hidden" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"ignoreclick" : 1,
					"patching_rect" : [ 203.0, 203.0, 263.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mute 1, 0",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"gradient" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 180.0, 173.0, 59.0, 18.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-2",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mute 0, 1",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"gradient" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 269.0, 177.0, 59.0, 18.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-3",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 137.0, 203.0, 57.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-4",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0, 1 20 1 $1 0 20",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"gradient" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 153.0, 123.0, 98.0, 18.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-5",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 153.0, 145.0, 35.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-6",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mtof",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 89.0, 116.0, 33.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-7",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t i b b",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "bang" ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 89.0, 91.0, 46.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-8",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 89.0, 175.0, 32.5, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-9",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 89.0, 140.0, 44.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-10",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out~ 1",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 89.0, 203.0, 43.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-11",
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 1",
					"hidden" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"patching_rect" : [ 89.0, 68.0, 29.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-12",
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• when a note is received, unmute the subpatch and set it to busy.",
					"linecount" : 2,
					"hidden" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"ignoreclick" : 1,
					"patching_rect" : [ 277.0, 124.0, 207.0, 33.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• MIDI note in.",
					"hidden" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"ignoreclick" : 1,
					"patching_rect" : [ 117.0, 69.0, 84.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"presentation" : 0,
					"id" : "obj-14",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 125.5, 110.0, 278.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 112.0, 113.0, 162.5, 113.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 189.5, 191.0, 146.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 278.5, 197.0, 146.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 162.5, 168.0, 112.0, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
