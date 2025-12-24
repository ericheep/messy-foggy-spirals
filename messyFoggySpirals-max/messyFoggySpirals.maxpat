{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 124.0, 115.0, 929.0, 573.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 14.0, 317.0, 58.0, 22.0 ],
                    "text": "mc.tanh~"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 447.0, 134.0, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 447.0, 201.0, 46.0, 76.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~[6]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "slicer",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~[6]"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 447.0, 163.0, 93.0, 22.0 ],
                    "text": "mfs.chaosSlicer"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 361.0, 201.0, 46.0, 76.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~[5]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "chaos",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~[5]"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 14.0, 134.0, 81.0, 22.0 ],
                    "text": "loadmess -18"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 361.0, 134.0, 74.0, 22.0 ],
                    "text": "loadmess -3"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 361.0, 163.0, 63.0, 22.0 ],
                    "text": "mfs.chaos"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 876.0, 82.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 102.0, 173.0, 1327.0, 681.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 1057.0, 299.0, 58.0, 22.0 ],
                                    "text": "change 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1057.0, 378.0, 79.0, 22.0 ],
                                    "text": "s mfs.oscOut"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1057.0, 337.0, 92.0, 22.0 ],
                                    "text": "prepend /ocean"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1057.0, 265.0, 143.0, 22.0 ],
                                    "text": "mfs.inRange 37:00 40:15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 445.9770040512085, 78.16091823577881, 72.0, 22.0 ],
                                    "text": "r mfs.noteIn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 174.0, 116.0, 107.0, 22.0 ],
                                    "text": "scale 0. 1. 20. 1.7."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 174.0, 78.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 40:00 41:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 587.0, 462.0, 97.0, 22.0 ],
                                    "text": "scale 0. 1. 90. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 823.0, 466.0, 111.0, 22.0 ],
                                    "text": "scale 0. 1. -0.15 -0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 613.0, 399.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 40:15 41:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1124.0, 113.0, 83.0, 22.0 ],
                                    "text": "scale 0. 1. 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 993.0, 113.0, 113.0, 22.0 ],
                                    "text": "scale 0. 1. 210. 300"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 993.0, 78.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 40:15 41:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 39.0, 316.0, 29.5, 22.0 ],
                                    "text": "t b i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 119.0, 1000.0, 755.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 504.25, 131.0, 73.0, 22.0 ],
                                                    "text": "loadmess 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 430.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 388.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 346.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 303.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 261.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 430.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-51",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 388.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 346.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 303.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-57",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 261.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-64",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 219.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-62",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 177.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 135.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-58",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 92.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-56",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 50.0, 172.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-78",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 219.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 177.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-77",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 135.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 92.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 218.0, 34.0, 22.0 ],
                                                    "text": "mfs.i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 11,
                                                    "numoutlets": 11,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 50.0, 131.0, 441.5, 22.0 ],
                                                    "text": "route 57 58 64 65 67 45 46 52 53 55"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 100.0, 72.0, 22.0 ],
                                                    "text": "r mfs.noteIn"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 271.0, 121.0, 22.0 ],
                                                    "text": "prepend /lightFootfall"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-7",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 353.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 1 ],
                                                    "order": 9,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 1 ],
                                                    "order": 2,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 1 ],
                                                    "order": 3,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 1 ],
                                                    "order": 4,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 1 ],
                                                    "order": 8,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 1 ],
                                                    "order": 6,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 1 ],
                                                    "order": 7,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 1 ],
                                                    "order": 5,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-41", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-41", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-41", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-41", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-41", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "source": [ "obj-41", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "source": [ "obj-41", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-41", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "source": [ "obj-41", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-58", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-78", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 337.0, 78.0, 86.0, 22.0 ],
                                    "text": "p lightFootfalls"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 700.0, 466.0, 118.0, 22.0 ],
                                    "text": "scale 0. 1. -0.1 -0.15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-94",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 446.0, 462.0, 103.0, 22.0 ],
                                    "text": "scale 0. 1. 50. 90."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-92",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 446.0, 399.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 37:00 40:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-90",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 446.0, 499.0, 79.0, 22.0 ],
                                    "text": "/thickness $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 700.0, 499.0, 115.0, 22.0 ],
                                    "text": "s mfs.rotationSpeed"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 748.0, 175.0, 52.0, 22.0 ],
                                    "text": "$1 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 879.0, 175.0, 52.0, 22.0 ],
                                    "text": "$1 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 879.0, 209.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 748.0, 209.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 879.0, 247.0, 93.0, 22.0 ],
                                    "text": "/innerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 748.0, 247.0, 93.0, 22.0 ],
                                    "text": "/outerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 879.0, 113.0, 83.0, 22.0 ],
                                    "text": "scale 0. 1. 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 748.0, 113.0, 113.0, 22.0 ],
                                    "text": "scale 0. 1. 210. 210"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 748.0, 78.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 37:00 40:15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 39.0, 478.0, 79.0, 22.0 ],
                                    "text": "/drawSpiral 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 446.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 446.0, 242.0, 95.0, 22.0 ],
                                    "text": "prepend /octave"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 446.0, 202.0, 117.0, 22.0 ],
                                    "text": "scale 0. 1000. 0.5 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 446.0, 163.0, 79.0, 22.0 ],
                                    "text": "random 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-125",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 596.0, 163.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-123",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 596.0, 202.0, 101.0, 22.0 ],
                                    "text": "prepend /shadow"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-20",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 13.0, 374.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 174.0, 478.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 13.0, 276.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 13.0, 243.0, 143.0, 22.0 ],
                                    "text": "mfs.inRange 37:00 41:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 13.0, 116.0, 103.0, 22.0 ],
                                    "text": "scale 0. 1. 10. 20."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 13.0, 78.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 37:00 40:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 174.0, 517.0, 79.0, 22.0 ],
                                    "text": "s mfs.oscOut"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 13.0, 155.0, 92.0, 22.0 ],
                                    "text": "/arcDistance $1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 0,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-123", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-123", 0 ],
                                    "source": [ "obj-125", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 0,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "order": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-125", 0 ],
                                    "order": 0,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "order": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "order": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "order": 0,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "order": 1,
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "order": 0,
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-94", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "source": [ "obj-95", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 876.0, 45.0, 30.0, 22.0 ],
                    "text": "p IV"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 14.0, 201.0, 46.0, 76.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~[4]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "save me",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~[4]"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 679.0, 420.0, 648.0, 454.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 78.0, 220.0, 29.5, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 78.0, 185.0, 34.0, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 293.0, 335.0, 84.0, 22.0 ],
                                    "text": "r mfs.preshow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 455.0, 220.0, 127.0, 22.0 ],
                                    "text": "s mfs.sweetnessVoice"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 401.0, 186.0, 45.0, 22.0 ],
                                    "text": "$1 200"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 401.0, 220.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 388.0, 335.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 401.0, 151.0, 41.0, 22.0 ],
                                    "text": "pow 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 401.0, 288.0, 64.0, 22.0 ],
                                    "text": "/octave $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 388.0, 376.0, 79.0, 22.0 ],
                                    "text": "s mfs.oscOut"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 401.0, 257.0, 90.0, 22.0 ],
                                    "text": "scale 0. 1. 1. 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 293.0, 220.0, 39.0, 22.0 ],
                                    "text": "dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 293.0, 186.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 293.0, 151.0, 89.0, 22.0 ],
                                    "text": "fluid.loudness~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 293.0, 122.0, 58.0, 22.0 ],
                                    "text": "mc.sum~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 22.0, 146.0, 84.0, 22.0 ],
                                    "text": "r mfs.preshow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 22.0, 185.0, 52.0, 22.0 ],
                                    "text": "$1 1500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 112.0, 255.0, 34.0, 22.0 ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 22.0, 220.0, 48.0, 22.0 ],
                                    "text": "line~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 127.0, 326.0, 87.5, 22.0 ],
                                    "text": "mc.pack~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 127.0, 220.0, 36.0, 22.0 ],
                                    "text": "+~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 192.0, 220.0, 47.0, 22.0 ],
                                    "text": "*~ 0.02"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 127.0, 185.0, 41.0, 22.0 ],
                                    "text": "sig~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 192.0, 185.0, 50.0, 22.0 ],
                                    "text": "rand~ 8"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 127.0, 368.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "signal" ],
                                    "patching_rect": [ 127.0, 291.0, 156.0, 22.0 ],
                                    "text": "groove~ saveMe 2 @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 127.0, 146.0, 91.0, 22.0 ],
                                    "text": "buffer~ saveMe"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 127.0, 112.0, 80.0, 22.0 ],
                                    "text": "prepend read"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 127.0, 80.0, 103.0, 22.0 ],
                                    "text": "relativetoabsolute"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 127.0, 46.0, 169.0, 22.0 ],
                                    "text": "loadmess audio/save-me.m4a"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 0,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 1 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "order": 0,
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "order": 1,
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 14.0, 163.0, 61.0, 22.0 ],
                    "text": "p saveMe"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Menlo",
                    "fontsize": 14.0,
                    "id": "obj-6",
                    "linecount": 20,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 219.0, 283.0, 332.0 ],
                    "text": "0:00 chloe (lamp off)\n0:30 organ bass\n1:30 organ playing (octave up)\n4:45 open stop 1\n8:00 open stop 2, 3\n11:15 open stop 4, 5\n14:30 chloe (cello)\n20:00 sine bass (fade out organ)\n20:30 synthesis playing\n23:45 repeat\n27:00 repeat\n30:15 repeat (fade in organ)\n33:30 cello\n36:00 chloe\n36:30 organ bass off\n36:57 lamp on\n37:00 chloe chaos (lamp off)\n38:30 cello chaos\n40:00 save me chaos\n42:00 preshow"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 821.0, 251.0, 558.0, 669.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 337.0, 592.0, 80.0, 22.0 ],
                                    "text": "loadmess 0.8"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-57",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 337.0, 624.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 337.0, 658.0, 84.0, 22.0 ],
                                    "text": "s mfs.brickSat"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 342.0, 491.0, 70.0, 22.0 ],
                                    "text": "loadmess 1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-51",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 342.0, 525.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 342.0, 557.0, 89.0, 22.0 ],
                                    "text": "s mfs.panRatio"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 219.64285737276077, 618.0, 79.0, 22.0 ],
                                    "text": "s mfs.oscOut"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 219.64285737276077, 580.0, 79.0, 22.0 ],
                                    "text": "/drawSpiral 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 219.64285737276077, 547.0, 84.0, 22.0 ],
                                    "text": "mfs.cue 36:57"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 219.64285737276077, 508.0, 61.0, 22.0 ],
                                    "text": "r mfs.time"
                                }
                            },
                            {
                                "box": {
                                    "args": [ 24 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-1",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 498.0, 355.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 493.0, 341.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 23 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-2",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 477.0, 311.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 523.0, 262.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 22 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-5",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 498.0, 244.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 502.0, 171.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 19 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-7",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 477.0, 94.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 382.0, 304.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 21 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-13",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 477.0, 201.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 382.0, 421.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 20 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-14",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 498.0, 136.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 354.0, 361.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 18 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-15",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 425.0, 355.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 406.0, 243.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 17 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-16",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 404.0, 311.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 378.0, 171.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 16 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-17",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 425.0, 244.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 406.0, 111.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 15 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-19",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 404.0, 201.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 378.0, 53.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 14 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-44",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 425.0, 136.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 354.0, 24.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 13 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-45",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 404.0, 94.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 329.0, 12.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 12 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-21",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 352.0, 355.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 222.0, 501.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 11 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-27",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 331.0, 311.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 480.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 10 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-22",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 352.0, 244.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 169.0, 445.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 9 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-29",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 331.0, 201.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 185.0, 202.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 8 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-23",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 352.0, 136.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 148.0, 395.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 7 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-25",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 331.0, 94.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 169.0, 335.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 6 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-38",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 279.0, 355.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 162.0, 136.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 5 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-40",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 258.0, 311.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 185.0, 88.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 4 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-41",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 279.0, 244.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 212.0, 61.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 3 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-42",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 258.0, 201.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 73.0, 351.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 2 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-43",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 279.0, 136.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 46.0, 283.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ 1 ],
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-9",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "mfs.brick.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 258.0, 94.0, 19.285714745521545, 105.35714536905289 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 73.0, 205.0, 19.285714745521545, 105.35714536905289 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 775.0, 599.0, 460.0, 275.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 160.0, 147.0, 111.0, 22.0 ],
                                                    "text": "s mfs.fallingControl"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-6",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 160.0, 109.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 160.0, 69.0, 152.0, 22.0 ],
                                                    "text": "mfs.scaleTime 23:45 30:15"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 160.0, 30.0, 61.0, 22.0 ],
                                                    "text": "r mfs.time"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-48",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 28.0, 69.0, 31.0, 22.0 ],
                                                    "text": "sig~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 28.0, 30.0, 79.0, 22.0 ],
                                                    "text": "r mfs.lastPan"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 28.0, 141.0, 85.0, 22.0 ],
                                                    "text": "s mfs.4panner"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 28.0, 109.0, 75.0, 22.0 ],
                                                    "text": "mfs.4panner"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 137.0, 100.0, 54.0, 22.0 ],
                                    "text": "p effects"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 53.5, 514.0, 61.0, 22.0 ],
                                    "text": "r mfs.time"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 53.5, 547.0, 84.0, 22.0 ],
                                    "text": "mfs.cue 35:57"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 679.0, 323.0, 799.0, 625.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 523.5, 63.0, 113.0, 22.0 ],
                                                    "text": "r mfs.rotationSpeed"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 299.5, 463.0, 79.0, 22.0 ],
                                                    "text": "15 10 0 1000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 299.5, 502.0, 41.0, 22.0 ],
                                                    "text": "line 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 299.5, 536.0, 93.0, 22.0 ],
                                                    "text": "/innerRadius $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 612.5, 414.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 612.5, 463.0, 99.0, 22.0 ],
                                                    "text": "5 10000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-25",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 663.0, 499.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 612.5, 499.0, 41.0, 22.0 ],
                                                    "text": "line 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 612.5, 536.0, 93.0, 22.0 ],
                                                    "text": "/innerRadius $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-23",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 534.0, 499.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 452.5, 414.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 452.5, 463.0, 99.0, 22.0 ],
                                                    "text": "25 10 50 120000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 452.5, 502.0, 41.0, 22.0 ],
                                                    "text": "line 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 452.5, 536.0, 93.0, 22.0 ],
                                                    "text": "/outerRadius $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 202.0, 414.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 203.0, 463.0, 79.0, 22.0 ],
                                                    "text": "25 10 0 1000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 203.0, 502.0, 41.0, 22.0 ],
                                                    "text": "line 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 203.0, 536.0, 93.0, 22.0 ],
                                                    "text": "/outerRadius $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 53.0, 494.0, 79.0, 22.0 ],
                                                    "text": "s mfs.oscOut"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 605.0, 171.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 605.0, 138.0, 75.0, 22.0 ],
                                                    "text": "r mfs.wavies"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 605.0, 206.0, 108.0, 22.0 ],
                                                    "text": "/numberWavies $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 156.0, 171.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 53.0, 170.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-11",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 467.0, 171.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-8",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 321.0, 171.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 156.0, 138.0, 93.0, 22.0 ],
                                                    "text": "r mfs.unfoldings"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 53.0, 138.0, 67.0, 22.0 ],
                                                    "text": "r mfs.spiral"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 53.0, 206.0, 83.0, 22.0 ],
                                                    "text": "/drawLines $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 156.0, 206.0, 126.0, 22.0 ],
                                                    "text": "/numberUnfoldings $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "float" ],
                                                    "patching_rect": [ 467.0, 99.0, 29.5, 22.0 ],
                                                    "text": "t b f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "float" ],
                                                    "patching_rect": [ 321.0, 99.0, 29.5, 22.0 ],
                                                    "text": "t b f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 321.0, 63.0, 39.0, 22.0 ],
                                                    "text": "f 0.01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 321.0, 138.0, 57.0, 22.0 ],
                                                    "text": "accum 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 321.0, 18.0, 119.0, 22.0 ],
                                                    "text": "metro 100 @active 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 467.0, 63.0, 39.0, 22.0 ],
                                                    "text": "f 0.03"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 467.0, 138.0, 57.0, 22.0 ],
                                                    "text": "accum 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 467.0, 18.0, 119.0, 22.0 ],
                                                    "text": "metro 100 @active 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 467.0, 206.0, 102.0, 22.0 ],
                                                    "text": "/spiralRotation $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 321.0, 206.0, 69.0, 22.0 ],
                                                    "text": "/rotation $1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 1 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 1 ],
                                                    "source": [ "obj-37", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 1 ],
                                                    "source": [ "obj-39", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 161.0, 86.0, 22.0 ],
                                    "text": "p spiralControl"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 52.5, 445.0, 76.0, 22.0 ],
                                    "text": "pack i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 109.5, 411.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 52.5, 411.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "int", "int" ],
                                    "patching_rect": [ 52.5, 374.0, 132.0, 22.0 ],
                                    "text": "notein"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 53.5, 477.0, 74.0, 22.0 ],
                                    "text": "s mfs.noteIn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 75.0, 236.0, 1403.0, 514.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 453.0, 79.0, 22.0 ],
                                                    "text": "s mfs.oscOut"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 17.0, 72.0, 22.0 ],
                                                    "text": "r mfs.noteIn"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 703.0, 261.0, 87.0, 22.0 ],
                                                    "text": "loadmess 0.25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 256.0, 261.0, 93.0, 22.0 ],
                                                    "text": "loadmess 0.125"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-126",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 855.0, 196.0, 34.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-125",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 855.0, 343.0, 29.5, 22.0 ],
                                                    "text": "1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-123",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 855.0, 377.0, 101.0, 22.0 ],
                                                    "text": "prepend /shadow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-120",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1155.0, 238.0, 29.5, 22.0 ],
                                                    "text": "0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-118",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1112.0, 377.0, 106.0, 22.0 ],
                                                    "text": "prepend /progress"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-117",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 1112.0, 342.0, 39.0, 22.0 ],
                                                    "text": "/ 200."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-116",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1112.0, 312.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-114",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "", "", "int" ],
                                                    "patching_rect": [ 1112.0, 274.0, 61.0, 22.0 ],
                                                    "text": "counter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-113",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 1112.0, 238.0, 34.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-112",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1112.0, 200.0, 45.0, 22.0 ],
                                                    "text": "r notes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-111",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 525.0, 192.0, 47.0, 22.0 ],
                                                    "text": "s notes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-110",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 77.0, 196.0, 47.0, 22.0 ],
                                                    "text": "s notes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-74",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 490.0, 261.0, 39.0, 22.0 ],
                                                    "text": "f 0.25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-106",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 490.0, 224.0, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-65",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 703.0, 308.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-68",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 583.0, 343.0, 138.5, 22.0 ],
                                                    "text": "pack i i f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-70",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 643.0, 308.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-72",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 583.0, 310.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-73",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 583.0, 261.0, 78.75, 22.0 ],
                                                    "text": "unpack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-64",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 256.0, 310.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-62",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 136.0, 343.0, 138.5, 22.0 ],
                                                    "text": "pack i i f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 440.0, 224.0, 34.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 387.0, 224.0, 34.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 1038.0, 261.0, 39.0, 22.0 ],
                                                    "text": "f 0.25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-49",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 1038.0, 224.0, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 990.0, 224.0, 34.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 948.0, 224.0, 34.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 990.0, 261.0, 39.0, 22.0 ],
                                                    "text": "f 0.66"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 948.0, 261.0, 39.0, 22.0 ],
                                                    "text": "f 0.33"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 440.0, 261.0, 32.0, 22.0 ],
                                                    "text": "f 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 387.0, 261.0, 39.0, 22.0 ],
                                                    "text": "f 0.25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 990.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 990.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 948.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 948.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 440.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 440.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 387.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 387.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 0,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 59.0, 119.0, 1000.0, 755.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 50.0, 138.0, 105.0, 22.0 ],
                                                                    "text": "1 0 0.5 250 1. 500"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-15",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "patching_rect": [ 50.0, 177.0, 41.0, 22.0 ],
                                                                    "text": "line 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 50.0, 100.0, 34.0, 22.0 ],
                                                                    "text": "sel 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 50.0, 215.0, 125.0, 22.0 ],
                                                                    "text": "prepend /footfallAlpha"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-7",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 1094.0, 84.0, 48.0, 22.0 ],
                                                    "text": "p alpha"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 387.0, 84.0, 125.0, 22.0 ],
                                                    "text": "route 50 53"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 948.0, 84.0, 103.0, 22.0 ],
                                                    "text": "route 38 41"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-57",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 1301.0, 284.0, 243.99999999999977, 22.0 ],
                                                    "text": "route 40 41 42"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-56",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1519.0, 324.0, 145.0, 22.0 ],
                                                    "text": "244 223 255 255 201 213"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1301.0, 324.0, 65.0, 22.0 ],
                                                    "text": "0 0 0 0 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1376.0, 324.0, 132.0, 22.0 ],
                                                    "text": "196 0 183 255 138 138"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-51",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 1258.0, 284.0, 29.5, 22.0 ],
                                                    "text": "t b l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 1231.0, 324.0, 56.0, 22.0 ],
                                                    "text": "zl join"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-48",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1436.0, 158.0, 91.0, 22.0 ],
                                                    "text": "vexpr $f1 / 255."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1250.0, 158.0, 91.0, 22.0 ],
                                                    "text": "vexpr $f1 / 255."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1250.0, 192.0, 109.0, 22.0 ],
                                                    "text": "bgfillcolor $1 $2 $3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "angle": 270.0,
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "id": "obj-46",
                                                    "maxclass": "panel",
                                                    "mode": 0,
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1250.0, 223.0, 84.0, 28.0 ],
                                                    "proportion": 0.39
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1436.0, 192.0, 109.0, 22.0 ],
                                                    "text": "bgfillcolor $1 $2 $3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "angle": 270.0,
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "id": "obj-38",
                                                    "maxclass": "panel",
                                                    "mode": 0,
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1436.0, 223.0, 84.0, 28.0 ],
                                                    "proportion": 0.39
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1316.0, 125.0, 91.0, 22.0 ],
                                                    "text": "255 255 255"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1501.0, 125.0, 84.0, 22.0 ],
                                                    "text": "255 255 255"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "compatibility": 1,
                                                    "id": "obj-34",
                                                    "maxclass": "swatch",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1414.0, 51.0, 75.0, 96.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "compatibility": 1,
                                                    "id": "obj-33",
                                                    "maxclass": "swatch",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1231.0, 51.0, 75.0, 96.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1231.0, 377.0, 129.0, 22.0 ],
                                                    "text": "prepend /footfallColors"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-90",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 793.0, 196.0, 32.0, 22.0 ],
                                                    "text": "3 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-91",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 752.0, 196.0, 32.0, 22.0 ],
                                                    "text": "2 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 752.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-93",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 752.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-94",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 710.0, 196.0, 32.0, 22.0 ],
                                                    "text": "5 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-95",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 710.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-96",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 710.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-97",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 668.0, 196.0, 32.0, 22.0 ],
                                                    "text": "4 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-98",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 668.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-99",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 668.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-100",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 625.0, 196.0, 32.0, 22.0 ],
                                                    "text": "1 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-101",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 625.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-102",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 625.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-103",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 583.0, 196.0, 32.0, 22.0 ],
                                                    "text": "0 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-104",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 583.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-105",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 583.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-89",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 346.0, 196.0, 32.0, 22.0 ],
                                                    "text": "3 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-88",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 305.0, 196.0, 32.0, 22.0 ],
                                                    "text": "2 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-87",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 305.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-86",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 305.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-80",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 263.0, 196.0, 32.0, 22.0 ],
                                                    "text": "5 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-81",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 263.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-82",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 263.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-83",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 221.0, 196.0, 32.0, 22.0 ],
                                                    "text": "4 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-84",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 221.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-85",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 221.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-79",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 178.0, 196.0, 32.0, 22.0 ],
                                                    "text": "1 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-77",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 178.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-78",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 178.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 136.0, 196.0, 32.0, 22.0 ],
                                                    "text": "0 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-75",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 136.0, 156.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-71",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 196.0, 310.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-69",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 136.0, 310.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-67",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 136.0, 261.0, 78.75, 22.0 ],
                                                    "text": "unpack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-66",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 6,
                                                    "outlettype": [ "", "", "", "", "", "" ],
                                                    "patching_rect": [ 583.0, 84.0, 230.25, 22.0 ],
                                                    "text": "route 45 46 52 53 55"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 583.0, 377.0, 121.0, 22.0 ],
                                                    "text": "prepend /lightFootfall"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 136.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 6,
                                                    "outlettype": [ "", "", "", "", "", "" ],
                                                    "patching_rect": [ 136.0, 84.0, 230.56249999999994, 22.0 ],
                                                    "text": "route 57 58 64 65 67"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 22.0, 122.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 22.0, 84.0, 53.0, 22.0 ],
                                                    "text": "route 29"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 22.0, 160.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 377.0, 92.0, 22.0 ],
                                                    "text": "prepend /ocean"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 136.0, 377.0, 127.0, 22.0 ],
                                                    "text": "prepend /crackFootfall"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "midpoints": [ 634.5, 246.0, 592.5, 246.0 ],
                                                    "source": [ "obj-100", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-100", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-101", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-111", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-101", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-126", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-101", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-102", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-103", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-103", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-111", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-126", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-105", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-74", 0 ],
                                                    "source": [ "obj-106", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-112", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 0 ],
                                                    "source": [ "obj-113", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-116", 0 ],
                                                    "source": [ "obj-114", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-117", 0 ],
                                                    "source": [ "obj-116", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-118", 0 ],
                                                    "source": [ "obj-117", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-118", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 3 ],
                                                    "source": [ "obj-120", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-123", 0 ],
                                                    "source": [ "obj-125", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-125", 0 ],
                                                    "source": [ "obj-126", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-106", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-106", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-3", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "midpoints": [ 1423.5, 261.9140625, 1267.5, 261.9140625 ],
                                                    "order": 2,
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-5", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 1 ],
                                                    "source": [ "obj-51", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 1385.5, 363.0, 1240.5, 363.0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 1310.5, 363.0, 1240.5, 363.0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 1528.5, 363.0, 1240.5, 363.0 ],
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "source": [ "obj-57", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "source": [ "obj-57", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 31.5, 42.0, 31.5, 42.0 ],
                                                    "order": 4,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "midpoints": [ 31.5, 69.0, 957.5, 69.0 ],
                                                    "order": 0,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "midpoints": [ 31.5, 69.0, 396.5, 69.0 ],
                                                    "order": 2,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 31.5, 69.0, 592.5, 69.0 ],
                                                    "order": 1,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "midpoints": [ 31.5, 69.0, 145.5, 69.0 ],
                                                    "order": 3,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 2 ],
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 2 ],
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-102", 0 ],
                                                    "source": [ "obj-66", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-105", 0 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-93", 0 ],
                                                    "source": [ "obj-66", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-96", 0 ],
                                                    "source": [ "obj-66", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-99", 0 ],
                                                    "source": [ "obj-66", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-69", 0 ],
                                                    "source": [ "obj-67", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-71", 0 ],
                                                    "source": [ "obj-67", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-68", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-69", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 1 ],
                                                    "source": [ "obj-70", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 1 ],
                                                    "source": [ "obj-71", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 0 ],
                                                    "source": [ "obj-72", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-70", 0 ],
                                                    "source": [ "obj-73", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "source": [ "obj-74", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-110", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-110", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-79", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "source": [ "obj-78", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "midpoints": [ 187.5, 246.0, 145.5, 246.0 ],
                                                    "source": [ "obj-79", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "source": [ "obj-8", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-8", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-85", 0 ],
                                                    "source": [ "obj-8", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-8", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "midpoints": [ 272.5, 246.0, 145.5, 246.0 ],
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-110", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-81", 0 ],
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "midpoints": [ 230.5, 246.0, 145.5, 246.0 ],
                                                    "source": [ "obj-83", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-110", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-84", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-83", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-84", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-84", 0 ],
                                                    "source": [ "obj-85", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-87", 0 ],
                                                    "source": [ "obj-86", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-110", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-87", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-88", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-87", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-89", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-87", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "midpoints": [ 314.5, 246.0, 145.5, 246.0 ],
                                                    "source": [ "obj-88", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "midpoints": [ 355.5, 246.0, 145.5, 246.0 ],
                                                    "source": [ "obj-89", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "midpoints": [ 802.5, 246.0, 592.5, 246.0 ],
                                                    "source": [ "obj-90", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "midpoints": [ 761.5, 246.0, 592.5, 246.0 ],
                                                    "source": [ "obj-91", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-111", 0 ],
                                                    "order": 3,
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-126", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-90", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-91", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 0 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "midpoints": [ 719.5, 246.0, 592.5, 246.0 ],
                                                    "source": [ "obj-94", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-111", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-95", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-126", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-95", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-94", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-95", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-95", 0 ],
                                                    "source": [ "obj-96", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "midpoints": [ 677.5, 246.0, 592.5, 246.0 ],
                                                    "source": [ "obj-97", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-111", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-126", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-97", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "source": [ "obj-99", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 193.0, 72.0, 22.0 ],
                                    "text": "p midiScore"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 52.5, 233.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 52.5, 265.0, 67.0, 22.0 ],
                                    "text": "s mfs.bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 71.0, 348.0, 1192.0, 450.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 241.0, 73.0, 100.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 839.0, 96.0, 87.0, 22.0 ],
                                                    "text": "loadmess 0.15"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 885.5, 28.0, 70.0, 22.0 ],
                                                    "text": "loadmess 6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 795.0, 95.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 0,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 293.0, 313.0, 561.0, 404.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 280.0, 334.0, 90.0, 22.0 ],
                                                                    "text": "scale 0. 1. 1. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-18",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 280.0, 367.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "float" ],
                                                                    "patching_rect": [ 280.0, 307.0, 61.0, 22.0 ],
                                                                    "text": "unpack f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-6",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 468.0, 207.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-2",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 201.0, 93.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-1",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 47.0, 93.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "format": 6,
                                                                    "id": "obj-8",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 201.0, 168.0, 50.0, 22.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-42",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 92.0, 133.0, 104.0, 22.0 ],
                                                                    "text": "loadmess target 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-41",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 47.0, 132.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-35",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 143.5, 265.0, 134.0, 22.0 ],
                                                                    "text": "poly~ polySegments 16"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-77",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 143.5, 367.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-41", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-77", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-41", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-42", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 2 ],
                                                                    "midpoints": [ 477.5, 252.0, 268.0, 252.0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 1 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 795.0, 133.0, 137.0, 22.0 ],
                                                    "text": "p segments"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 795.0, 61.0, 84.0, 22.0 ],
                                                    "text": "r mfs.preshow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 713.0, 38.0, 143.0, 22.0 ],
                                                    "text": "mfs.inRange 36:00 36:58"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 323.0, 20.0, 61.0, 22.0 ],
                                                    "text": "r mfs.time"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 323.0, 57.0, 143.0, 22.0 ],
                                                    "text": "mfs.inRange 14:00 20:00"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 476.0, 94.0, 103.0, 22.0 ],
                                                    "text": "scale 0. 1. 0.1 0.6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 476.0, 57.0, 152.0, 22.0 ],
                                                    "text": "mfs.scaleTime 14:30 20:00"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 169.0, 99.0, 113.0, 22.0 ],
                                                    "text": "metro 66 @active 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-98",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 713.0, 138.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-90",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 0,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 1035.0, 371.0, 366.0, 435.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 176.0, 300.0, 110.0, 22.0 ],
                                                                    "text": "scale 0. 1. 0.01 0.5"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-10",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 237.0, 201.0, 53.0, 22.0 ],
                                                                    "text": "clip 0. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "format": 6,
                                                                    "id": "obj-8",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 237.0, 236.0, 50.0, 22.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 237.0, 165.0, 103.0, 22.0 ],
                                                                    "text": "scale 0. 0.01 0. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "format": 6,
                                                                    "id": "obj-5",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 237.0, 133.0, 50.0, 22.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-3",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 237.0, 100.0, 125.0, 22.0 ],
                                                                    "text": "r mfs.sweetnessVoice"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-2",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 99.0, 23.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-1",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 30.0, 23.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-83",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 99.0, 100.0, 117.0, 22.0 ],
                                                                    "text": "scale 1. 10. 200. 10."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-27",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 30.0, 246.0, 47.0, 22.0 ],
                                                                    "text": "pack f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-26",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 58.0, 213.0, 42.0, 22.0 ],
                                                                    "text": "+ 0.01"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-24",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 30.0, 277.0, 65.0, 22.0 ],
                                                                    "text": "$1 0 $2 10"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-25",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "patching_rect": [ 30.0, 313.0, 93.0, 22.0 ],
                                                                    "text": "line 0. @grain 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-21",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 30.0, 63.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-16",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 30.0, 100.0, 56.0, 22.0 ],
                                                                    "text": "metro 50"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-12",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 30.0, 171.0, 103.0, 22.0 ],
                                                                    "text": "scale 0 1000 0. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-9",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 30.0, 136.0, 79.0, 22.0 ],
                                                                    "text": "random 1000"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-89",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 30.0, 349.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-26", 1 ],
                                                                    "source": [ "obj-11", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-26", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-27", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-9", 0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-83", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "source": [ "obj-21", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-25", 0 ],
                                                                    "source": [ "obj-24", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-89", 0 ],
                                                                    "source": [ "obj-25", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-27", 1 ],
                                                                    "source": [ "obj-26", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 0 ],
                                                                    "source": [ "obj-27", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-11", 0 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 1 ],
                                                                    "source": [ "obj-83", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 713.0, 172.0, 57.0, 22.0 ],
                                                    "text": "p sparkle"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1082.0, 127.0, 116.0, 22.0 ],
                                                    "text": "setPanAmplitude $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1082.0, 61.0, 112.0, 22.0 ],
                                                    "text": "r mfs.panAmplitude"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1082.0, 96.0, 29.0, 22.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 169.0, 67.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 0,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 0.0, 0.0, 1000.0, 755.2 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 50.0, 100.0, 58.0, 22.0 ],
                                                                    "text": "loadbang"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 161.0, 143.0, 106.0, 22.0 ],
                                                                    "text": "setBrickSubtract 4"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-3",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 50.0, 143.0, 106.0, 22.0 ],
                                                                    "text": "setBrickSubtract 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-8",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 50.0, 225.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-19",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 161.0, 225.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-3", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ -51.0, 217.0, 97.0, 22.0 ],
                                                    "text": "p specialParams"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 617.0, 94.0, 70.0, 22.0 ],
                                                    "text": "loadmess 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 386.0, 222.0, 63.0, 22.0 ],
                                                    "text": "setPan $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 277.0, 222.0, 63.0, 22.0 ],
                                                    "text": "setPan $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-51",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 169.0, 217.0, 63.0, 22.0 ],
                                                    "text": "setPan $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "float", "float", "float", "float" ],
                                                    "patching_rect": [ 60.0, 170.0, 345.0, 22.0 ],
                                                    "text": "unpack f f f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-49",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 60.0, 134.0, 83.0, 22.0 ],
                                                    "text": "r mfs.4panner"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-48",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 60.0, 217.0, 63.0, 22.0 ],
                                                    "text": "setPan $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-46",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 169.0, 134.0, 58.0, 22.0 ],
                                                    "text": "s mfs.tick"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1000.0, 230.0, 29.0, 22.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 386.0, 287.0, 109.0, 22.0 ],
                                                    "text": "mfs.brickLeds 6 18"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 277.0, 287.0, 109.0, 22.0 ],
                                                    "text": "mfs.brickLeds 6 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 169.0, 287.0, 103.0, 22.0 ],
                                                    "text": "mfs.brickLeds 5 6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 60.0, 287.0, 103.0, 22.0 ],
                                                    "text": "mfs.brickLeds 5 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 951.0, 57.0, 87.0, 22.0 ],
                                                    "text": "loadmess 0.07"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 586.0, 206.0, 45.0, 22.0 ],
                                                    "text": "trail $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 586.0, 133.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 468.0, 206.0, 45.0, 22.0 ],
                                                    "text": "trail $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-16",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 527.0, 133.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 468.0, 132.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-78",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 0,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 293.0, 313.0, 561.0, 404.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 280.0, 334.0, 90.0, 22.0 ],
                                                                    "text": "scale 0. 1. 1. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-20",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 379.0, 37.0, 49.0, 20.0 ],
                                                                    "text": "reverse"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-18",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 280.0, 367.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "float" ],
                                                                    "patching_rect": [ 280.0, 307.0, 61.0, 22.0 ],
                                                                    "text": "unpack f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-6",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 468.0, 207.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-15",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 420.0, 211.0, 29.5, 22.0 ],
                                                                    "text": "f -1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 201.0, 226.0, 29.5, 22.0 ],
                                                                    "text": "* 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-13",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "float" ],
                                                                    "patching_rect": [ 258.0, 204.0, 29.5, 22.0 ],
                                                                    "text": "t b f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-12",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 379.0, 211.0, 29.5, 22.0 ],
                                                                    "text": "f 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "bang", "bang", "" ],
                                                                    "patching_rect": [ 379.0, 168.0, 44.0, 22.0 ],
                                                                    "text": "sel 0 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-10",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 5,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "int", "", "", "int" ],
                                                                    "patching_rect": [ 379.0, 133.0, 61.0, 22.0 ],
                                                                    "text": "counter 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "button",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 379.0, 100.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 379.0, 64.0, 34.0, 22.0 ],
                                                                    "text": "sel 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-2",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 201.0, 93.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-1",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 47.0, 93.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "format": 6,
                                                                    "id": "obj-8",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 201.0, 168.0, 50.0, 22.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-42",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 92.0, 133.0, 104.0, 22.0 ],
                                                                    "text": "loadmess target 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-41",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 47.0, 132.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-35",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 143.5, 265.0, 134.0, 22.0 ],
                                                                    "text": "poly~ polySegments 16"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-77",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 143.5, 367.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-41", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-11", 0 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-11", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "source": [ "obj-11", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 1 ],
                                                                    "source": [ "obj-13", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-13", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 1 ],
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-77", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-41", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-42", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 2 ],
                                                                    "midpoints": [ 477.5, 252.0, 268.0, 252.0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 0 ],
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 468.0, 170.0, 137.0, 22.0 ],
                                                    "text": "p segments"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 951.0, 285.0, 45.0, 22.0 ],
                                                    "text": "trail $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 951.0, 118.0, 89.0, 22.0 ],
                                                    "text": "s mfs.fadeRate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-10",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 951.0, 88.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 927.0, 206.0, 49.0, 22.0 ],
                                                    "text": "r speed"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-96",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 895.0, 206.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 0,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 264.0, 236.0, 354.0, 496.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-6",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 154.0, 418.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 154.0, 367.0, 90.0, 22.0 ],
                                                                    "text": "scale 0. 1. 1. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-9",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 50.0, 288.0, 29.5, 22.0 ],
                                                                    "text": "f 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "format": 6,
                                                                    "id": "obj-5",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 194.0, 95.0, 50.0, 22.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-3",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 194.0, 44.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-1",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 50.0, 44.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 50.0, 100.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "button",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 50.0, 251.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-61",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 50.0, 137.0, 63.0, 22.0 ],
                                                                    "text": "metro 800"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-57",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 50.0, 327.0, 55.0, 22.0 ],
                                                                    "text": "0 0 1. $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-50",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "patching_rect": [ 50.0, 367.0, 93.0, 22.0 ],
                                                                    "text": "line 0. @grain 5"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-91",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 50.0, 418.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-9", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-61", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-9", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-50", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-91", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-50", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-50", 0 ],
                                                                    "source": [ "obj-57", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-61", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-61", 0 ],
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-57", 0 ],
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 895.0, 240.0, 51.0, 22.0 ],
                                                    "text": "p chase"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 895.0, 285.0, 45.0, 22.0 ],
                                                    "text": "trail $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 60.0, 366.0, 92.0, 22.0 ],
                                                    "text": "s mfs.brickLeds"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 2 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 1 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-21", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-27", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 2 ],
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 1 ],
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "order": 3,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-50", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-50", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "source": [ "obj-50", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-78", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-78", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 1 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-90", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-90", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-92", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 0 ],
                                                    "source": [ "obj-96", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-90", 0 ],
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 100.0, 50.0, 22.0 ],
                                    "text": "p bricks"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 995.0, 716.0, 322.0, 158.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 31.0, 77.0, 22.0 ],
                                                    "text": "r mfs.oscOut"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 66.0, 138.0, 22.0 ],
                                                    "text": "udpsend 127.0.0.1 5432"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 130.0, 56.0, 22.0 ],
                                    "text": "p ofxOsc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 52.5, 295.3571453690529, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 52.5, 332.3571453690529, 104.0, 22.0 ],
                                    "text": "mfs.haze 0.25 0.5"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-18", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 766.0, 117.0, 43.0, 22.0 ],
                    "text": "p misc"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-31",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 109.0, 170.0, 1000.0, 755.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 155.0, 45.0, 22.0 ],
                                    "text": "$1 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 62.0, 186.0, 93.0, 22.0 ],
                                    "text": "line 0. @grain 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 125.0, 90.0, 22.0 ],
                                    "text": "scale 0 15 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 60.0, 88.0, 36.0, 22.0 ],
                                    "text": "% 15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 44.0, 83.0, 22.0 ],
                                    "text": "r mfs.seconds"
                                }
                            },
                            {
                                "box": {
                                    "degrees": 360,
                                    "floatoutput": 1,
                                    "id": "obj-1",
                                    "maxclass": "dial",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 62.0, 230.0, 139.0, 139.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 13.0, 11.0, 139.0, 139.0 ],
                                    "size": 1.0,
                                    "thickness": 100.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 593.0, 45.0, 164.0, 166.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 180.0, 134.0, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 268.0, 134.0, 81.0, 22.0 ],
                    "text": "loadmess -18"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 268.0, 201.0, 46.0, 76.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~[3]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "sine",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~[3]"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 268.0, 163.0, 53.0, 22.0 ],
                    "text": "mfs.sine"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 14.0, 355.0, 47.0, 78.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~[2]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "main",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~[2]"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 180.0, 201.0, 47.0, 76.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "chloe",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 96.0, 201.0, 47.0, 76.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "notes",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 180.0, 163.0, 59.0, 22.0 ],
                    "text": "mfs.voice"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 834.0, 82.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 798.0, 82.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 766.0, 82.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-108",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 376.0, 157.0, 927.0, 791.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 63.0, 244.0, 29.5, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.0, 207.0, 65.0, 22.0 ],
                                    "text": "r mfs.reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 340.0, 86.0, 22.0 ],
                                    "text": "s mfs.preshow"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 92.0, 298.0, 66.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 42.0, 9.0, 66.0, 22.0 ],
                                    "text": "preshow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 63.0, 297.0, 24.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 11.0, 8.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 717.0, 526.0, 85.0, 22.0 ],
                                    "text": "s mfs.seconds"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 622.0, 236.0, 41.0, 22.0 ],
                                    "text": "sig~ 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 101.0, 6.0, 79.0, 22.0 ],
                                    "text": "r #0_total"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 622.0, 595.0, 68.0, 22.0 ],
                                    "text": "append -*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 694.0, 484.0, 81.0, 22.0 ],
                                    "text": "s #0_time"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 856.0, 207.0, 67.0, 22.0 ],
                                    "text": "s mfs.reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 622.0, 623.0, 91.0, 22.0 ],
                                    "text": "prepend set ~*-"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 717.0, 563.0, 63.0, 22.0 ],
                                    "text": "s mfs.time"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 672.0, 274.0, 41.0, 22.0 ],
                                    "text": "sig~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 19.0, 6.0, 79.0, 22.0 ],
                                    "text": "r #0_time"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 793.0, 14.0, 90.0, 22.0 ],
                                    "text": "loadmess 2400"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 793.0, 53.0, 81.0, 22.0 ],
                                    "text": "s #0_total"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 146.0, 129.0, 22.0 ],
                                    "text": "s #0_sliderPosition"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 16.0,
                                    "id": "obj-3",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 622.0, 663.0, 100.0, 42.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 177.0, 70.0, 100.0, 42.0 ],
                                    "text": "~*- 150:39 -*~",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 665.0, 162.0, 29.5, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 704.0, 162.0, 34.0, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 704.0, 121.0, 33.0, 22.0 ],
                                    "text": "== 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 704.0, 81.0, 89.0, 22.0 ],
                                    "text": "r #0_freeze"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-214",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 814.0, 126.0, 69.0, 22.0 ],
                                    "text": "r #0_go"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-201",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 814.0, 207.0, 29.5, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-199",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 622.0, 162.0, 29.5, 22.0 ],
                                    "text": "i 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-198",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 846.0, 166.0, 26.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 158.0, 8.0, 26.0, 22.0 ],
                                    "text": "go"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-197",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 814.0, 166.0, 24.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 127.0, 8.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-149",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 362.0, 274.0, 29.5, 22.0 ],
                                    "text": "t b i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 492.0, 199.0, 79.0, 22.0 ],
                                    "text": "r #0_total"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 362.0, 236.0, 182.0, 22.0 ],
                                    "text": "scale 0 60000. 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-93",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 362.0, 199.0, 127.0, 22.0 ],
                                    "text": "r #0_sliderPosition"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 622.0, 274.0, 30.0, 22.0 ],
                                    "text": "*~ 1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-63",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 622.0, 526.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "", "", "int" ],
                                    "patching_rect": [ 622.0, 484.0, 61.0, 22.0 ],
                                    "text": "counter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 622.0, 424.0, 42.0, 22.0 ],
                                    "text": "edge~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 622.0, 386.0, 33.0, 22.0 ],
                                    "text": ">~ 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 622.0, 312.0, 62.0, 22.0 ],
                                    "text": "phasor~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 622.0, 349.0, 42.0, 22.0 ],
                                    "text": "delta~"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 654.0, 200.0, 37.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 237.0, 9.0, 40.0, 22.0 ],
                                    "text": "play"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 622.0, 198.0, 24.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 204.0, 8.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 19.0, 43.0, 224.0, 22.0 ],
                                    "text": "scale 0 2400. 0. 60000."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 19.0, 80.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-146",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 202.0, 178.0, 1153.0, 602.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 23.0, 209.0, 61.5, 22.0 ],
                                                    "text": "pack i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 23.0, 295.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 23.0, 15.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-145",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 23.0, 81.0, 29.5, 22.0 ],
                                                    "text": "/ 60"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-126",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 23.0, 261.0, 109.0, 22.0 ],
                                                    "text": "sprintf %02d:%02d"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-125",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 65.5, 153.0, 29.5, 22.0 ],
                                                    "text": "i 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-120",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 65.5, 117.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-116",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 65.5, 82.0, 39.0, 22.0 ],
                                                    "text": "% 60."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-116", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-145", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-120", 0 ],
                                                    "source": [ "obj-116", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-125", 0 ],
                                                    "source": [ "obj-120", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "source": [ "obj-125", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-126", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-126", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-145", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 622.0, 563.0, 84.0, 22.0 ],
                                    "text": "p clockFormat"
                                }
                            },
                            {
                                "box": {
                                    "floatoutput": 1,
                                    "id": "obj-72",
                                    "knobshape": 5,
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 19.0, 115.0, 438.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 11.0, 46.0, 266.0, 13.0 ],
                                    "size": 60000.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-149", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-146", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "order": 1,
                                    "source": [ "obj-146", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 2 ],
                                    "midpoints": [ 382.0, 471.0, 652.5, 471.0 ],
                                    "source": [ "obj-149", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "midpoints": [ 371.5, 471.0, 631.5, 471.0 ],
                                    "source": [ "obj-149", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 0,
                                    "source": [ "obj-197", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-199", 0 ],
                                    "order": 2,
                                    "source": [ "obj-197", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-201", 0 ],
                                    "order": 1,
                                    "source": [ "obj-197", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-199", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 2 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 2 ],
                                    "midpoints": [ 823.5, 471.0, 652.5, 471.0 ],
                                    "source": [ "obj-201", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-197", 0 ],
                                    "source": [ "obj-214", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "order": 1,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-146", 0 ],
                                    "order": 1,
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "order": 0,
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 1 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-93", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-95", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 297.0, 10.0, 286.0, 105.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-107",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 749.0, 486.0, 436.0, 489.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 415.0, 301.986780166626, 94.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 135.41666343808174, 3.311258554458618, 76.54321599006653, 18.0 ],
                                    "text": "Memory Used"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 419.0, 131.0, 37.0, 22.0 ],
                                    "text": "float"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-104",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 273.0, 78.0, 54.0, 22.0 ],
                                    "text": "qlim 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-107",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "float" ],
                                    "patching_rect": [ 273.0, 51.0, 67.250061, 22.0 ],
                                    "text": "t b f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-108",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 273.0, 131.0, 67.250061, 22.0 ],
                                    "text": "float"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-99",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 419.0, 185.0, 48.0, 22.0 ],
                                    "text": "change"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-100",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 419.0, 161.0, 37.0, 21.0 ],
                                    "text": "round"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 273.0, 185.0, 61.0, 22.0 ],
                                    "text": "change 0."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-89",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 273.0, 161.0, 57.0, 21.0 ],
                                    "text": "round 0.1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 112.0, 131.0, 61.0, 22.0 ],
                                    "text": "change 0."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-95",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 111.9205391407013, 227.81458854675293, 49.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 82.91666468977928, 3.311258554458618, 47.08333221077919, 18.0 ],
                                    "text": "55.0 %",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-96",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 112.0, 187.0, 69.0, 21.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-98",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 112.0, 159.0, 123.0, 21.0 ],
                                    "text": "sprintf symout \"%.1f %\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 112.0, 103.0, 57.0, 21.0 ],
                                    "text": "round 0.1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-80",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 272.84770488739014, 277.4834668636322, 47.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 83.0, 23.0, 46.728127256035805, 18.0 ],
                                    "text": "48.7 %",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 273.0, 235.0, 67.0, 21.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-79",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 273.0, 211.0, 123.0, 21.0 ],
                                    "text": "sprintf symout \"%.1f %\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 419.0, 235.0, 67.0, 21.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 419.0, 211.0, 77.0, 21.0 ],
                                    "text": "sprintf %d MB"
                                }
                            },
                            {
                                "box": {
                                    "allowdrag": 0,
                                    "bgcolor": [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.29 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.29 ],
                                    "bgfillcolor_color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                                    "bgfillcolor_color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                    "bgfillcolor_proportion": 0.39,
                                    "bgfillcolor_type": "color",
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-77",
                                    "items": [ "None", ",", "System Device: MacBook Pro Speakers", ",", "Preference: Scarlett 2i2 USB, Current: MacBook Pro Speakers", ",", "BlackHole 2ch", ",", "MacBook Pro Speakers", ",", "NDI Audio", ",", "ZoomAudioDevice" ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 40.0, 266.0, 166.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 135.0, 22.0, 133.33334398269653, 20.0 ],
                                    "textcolor": [ 0.149, 0.149, 0.149, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.7, 0.7, 0.7, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 10.435669,
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 40.0, 287.0, 90.0, 20.0 ],
                                    "text": "adstatus option 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 419.20533299446106, 276.15896344184875, 76.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 218.74999478459358, 3.311258554458618, 49.38271999359131, 18.0 ],
                                    "text": "1525 MB",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 272.84770488739014, 301.986780166626, 95.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 4.0, 23.0, 76.23457399010658, 18.0 ],
                                    "text": "Max/MSP CPU"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 273.0, 21.0, 290.0, 21.0 ],
                                    "text": "spat5.cpu @initwith \"/rate 1500\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "float", "int", "int" ],
                                    "patching_rect": [ 112.0, 21.0, 59.5, 21.0 ],
                                    "text": "dspstate~"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 39.73510265350342, 227.81458854675293, 61.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 3.973510265350342, 3.311258554458618, 76.23457399010658, 18.0 ],
                                    "text": "Audio CPU"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 112.0, 48.0, 64.0, 21.0 ],
                                    "text": "qmetro 500"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 112.0, 76.0, 73.0, 21.0 ],
                                    "text": "adstatus cpu"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 0 ],
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-108", 0 ],
                                    "order": 1,
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "order": 0,
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "source": [ "obj-107", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-108", 1 ],
                                    "source": [ "obj-107", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-89", 0 ],
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-107", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 1 ],
                                    "source": [ "obj-13", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "midpoints": [ 49.5, 313.5, 34.5, 313.5, 34.5, 255.5, 49.5, 255.5 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "source": [ "obj-96", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-96", 0 ],
                                    "source": [ "obj-98", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-99", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 14.0, 48.0, 276.0, 46.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-71",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 10.0, 233.0, 24.0 ],
                    "text": "messy foggy spirals -~*~-~*~-",
                    "textcolor": [ 0.8509803921568627, 0.8509803921568627, 0.8509803921568627, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 203.0, 1444.0, 675.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 493.0, 339.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 568.0, 339.0, 143.0, 22.0 ],
                                    "text": "mfs.inRange 27:00 33:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 611.0, 527.0, 44.0, 22.0 ],
                                    "text": "pow 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 495.0, 538.0, 103.0, 22.0 ],
                                    "text": "scale 0. 1. 0.03 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-94",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 351.25, 534.0, 103.0, 22.0 ],
                                    "text": "scale 0. 1. 90. 30."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-92",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 351.25, 496.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 33:30 36:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-91",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 222.0, 534.0, 103.0, 22.0 ],
                                    "text": "scale 0. 1. 30. 90."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-90",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 222.0, 571.0, 79.0, 22.0 ],
                                    "text": "/thickness $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-89",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 222.0, 496.0, 44.0, 22.0 ],
                                    "text": "pow 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 611.0, 607.0, 115.0, 22.0 ],
                                    "text": "s mfs.rotationSpeed"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 611.0, 563.0, 110.0, 22.0 ],
                                    "text": "scale 0. 1. 0.03 0.1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 510.0, 496.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 20:00 33:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-82",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1331.75, 127.0, 90.0, 22.0 ],
                                    "text": "scale 0. 1. 5. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1222.75, 127.0, 93.0, 22.0 ],
                                    "text": "scale 0. 1. 35 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-84",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1222.75, 78.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 36:00 36:58"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 733.0, 514.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 733.0, 364.0, 136.0, 22.0 ],
                                    "text": "mfs.inRange 6:00 14:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 1079.0, 571.0, 29.5, 22.0 ],
                                    "text": "f 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1079.0, 527.0, 65.0, 22.0 ],
                                    "text": "r mfs.reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 746.0, 481.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 976.0, 330.0, 90.0, 22.0 ],
                                    "text": "scale 0. 1. 5 15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 957.0, 527.0, 38.0, 22.0 ],
                                    "text": "zl reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 976.0, 364.0, 47.0, 22.0 ],
                                    "text": "pack f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 859.0, 527.0, 38.0, 22.0 ],
                                    "text": "zl reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 878.0, 364.0, 47.0, 22.0 ],
                                    "text": "pack f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1079.0, 330.0, 130.0, 22.0 ],
                                    "text": "scale 0. 1. 3500. 6000."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 878.0, 330.0, 90.0, 22.0 ],
                                    "text": "scale 0. 1. 5 35"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 878.0, 294.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 20:00 35:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 746.0, 448.0, 78.0, 22.0 ],
                                    "text": "r mfs.noteOn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 957.0, 571.0, 65.0, 22.0 ],
                                    "text": "$1 10 0 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 957.0, 619.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 957.0, 653.0, 93.0, 22.0 ],
                                    "text": "/innerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 859.0, 571.0, 65.0, 22.0 ],
                                    "text": "$1 10 0 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 859.0, 619.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 859.0, 653.0, 93.0, 22.0 ],
                                    "text": "/outerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1126.75, 127.0, 83.0, 22.0 ],
                                    "text": "scale 0. 1. 1 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1017.75, 127.0, 103.0, 22.0 ],
                                    "text": "scale 0. 1. 150 35"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1017.75, 78.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 33:30 36:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 810.0, 176.0, 52.0, 22.0 ],
                                    "text": "$1 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 919.0, 171.0, 52.0, 22.0 ],
                                    "text": "$1 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 919.0, 200.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 810.0, 200.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 919.0, 232.0, 93.0, 22.0 ],
                                    "text": "/innerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 810.0, 232.0, 93.0, 22.0 ],
                                    "text": "/outerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 919.0, 127.0, 83.0, 22.0 ],
                                    "text": "scale 0. 1. 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 810.0, 127.0, 103.0, 22.0 ],
                                    "text": "scale 0. 1. 35 150"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 810.0, 78.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 20:00 33:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 41.0, 339.0, 79.0, 22.0 ],
                                    "text": "/drawSpiral 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 365.0, 298.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 365.0, 418.0, 95.0, 22.0 ],
                                    "text": "prepend /octave"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 365.0, 378.0, 117.0, 22.0 ],
                                    "text": "scale 0. 1000. 0.5 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 365.0, 339.0, 79.0, 22.0 ],
                                    "text": "random 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 365.0, 254.0, 78.0, 22.0 ],
                                    "text": "r mfs.noteOn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 634.0, 78.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 20:00 30:15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 559.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 517.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 475.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 432.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 390.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 559.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 517.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 475.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 432.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 390.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 348.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 306.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 264.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 221.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 179.75, 119.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 348.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 306.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 264.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 221.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 179.75, 165.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 179.75, 78.0, 441.5, 22.0 ],
                                    "text": "route 57 58 64 65 67 45 46 52 53 55"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 179.75, 47.0, 72.0, 22.0 ],
                                    "text": "r mfs.noteIn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 179.75, 218.0, 121.0, 22.0 ],
                                    "text": "prepend /lightFootfall"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-125",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 506.0, 254.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-123",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 506.0, 288.0, 101.0, 22.0 ],
                                    "text": "prepend /shadow"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-20",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 13.0, 374.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 124.0, 339.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 13.0, 276.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 13.0, 208.0, 61.0, 22.0 ],
                                    "text": "r mfs.time"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 13.0, 243.0, 143.0, 22.0 ],
                                    "text": "mfs.inRange 20:00 37:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 13.0, 116.0, 107.0, 22.0 ],
                                    "text": "scale 0. 1. 3.14 10"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 13.0, 78.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 20:00 35:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 378.0, 79.0, 22.0 ],
                                    "text": "s mfs.oscOut"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 13.0, 155.0, 92.0, 22.0 ],
                                    "text": "/arcDistance $1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "source": [ "obj-123", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-123", 0 ],
                                    "source": [ "obj-125", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "order": 0,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "order": 2,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "order": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "order": 9,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 1 ],
                                    "order": 0,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 1 ],
                                    "order": 1,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 1 ],
                                    "order": 2,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 1 ],
                                    "order": 3,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 1 ],
                                    "order": 4,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 1 ],
                                    "order": 8,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 1 ],
                                    "order": 6,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 1 ],
                                    "order": 7,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 1 ],
                                    "order": 5,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-125", 0 ],
                                    "order": 0,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "order": 1,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "order": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "order": 0,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-41", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-41", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-41", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-41", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-41", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-41", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-41", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-41", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-41", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 1 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 1 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 1 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 1 ],
                                    "order": 1,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 1 ],
                                    "order": 0,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "order": 1,
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "order": 0,
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "order": 2,
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "order": 0,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "order": 1,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "order": 0,
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "order": 1,
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-82", 0 ],
                                    "order": 0,
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "order": 1,
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-89", 0 ],
                                    "order": 1,
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "order": 0,
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 0 ],
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "order": 0,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "order": 1,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "order": 1,
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "order": 0,
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-94", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "source": [ "obj-95", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-98", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 834.0, 45.0, 29.0, 22.0 ],
                    "text": "p III"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 758.0, 515.0, 687.0, 344.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 93.0, 226.0, 38.0, 22.0 ],
                                    "text": "/clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 117.0, 128.0, 45.0, 22.0 ],
                                    "text": "/ocean"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 48.5, 180.0, 29.5, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 184.0, 124.0, 52.0, 22.0 ],
                                    "text": "$1 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 293.0, 119.0, 52.0, 22.0 ],
                                    "text": "$1 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 293.0, 148.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 184.0, 148.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 353.0, 60.0, 29.5, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 353.0, 16.0, 84.0, 22.0 ],
                                    "text": "mfs.cue 14:20"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 93.0, 180.0, 85.0, 22.0 ],
                                    "text": "/drawSpiral $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-20",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 28.0, 243.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 171.0, 226.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 28.0, 128.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 28.0, 95.0, 143.0, 22.0 ],
                                    "text": "mfs.inRange 14:30 20:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 419.0, 180.0, 92.0, 22.0 ],
                                    "text": "/arcDistance $1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-23",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 538.0, 189.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 538.0, 148.0, 117.0, 22.0 ],
                                    "text": "scale 0. 1. 0.03 0.07"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 538.0, 225.0, 115.0, 22.0 ],
                                    "text": "s mfs.rotationSpeed"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 419.0, 148.0, 103.0, 22.0 ],
                                    "text": "scale 0. 1. 3.14 5."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 419.0, 60.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 14:30 20:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 171.0, 261.0, 79.0, 22.0 ],
                                    "text": "s mfs.oscOut"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 293.0, 180.0, 93.0, 22.0 ],
                                    "text": "/innerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 184.0, 180.0, 93.0, 22.0 ],
                                    "text": "/outerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 293.0, 95.0, 90.0, 22.0 ],
                                    "text": "scale 0. 1. 10 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 184.0, 95.0, 97.0, 22.0 ],
                                    "text": "scale 0. 1. 15 35"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 184.0, 60.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 14:30 20:00"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "order": 0,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "order": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "order": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "order": 0,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "order": 1,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 0,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 1,
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "order": 0,
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "order": 1,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "order": 0,
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 798.0, 45.0, 25.0, 22.0 ],
                    "text": "p II"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 77.0, 291.0, 1401.0, 518.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 90.0, 87.0, 22.0 ],
                                    "text": "loadmess 0.25"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 574.0, 378.0, 79.0, 22.0 ],
                                    "text": "/thickness 30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 527.5, 378.0, 34.0, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 13.5, 63.0, 29.5, 22.0 ],
                                    "text": "> 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-82",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 13.5, 27.0, 59.0, 22.0 ],
                                    "text": "unpack i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 13.5, 146.0, 80.0, 22.0 ],
                                    "text": "s mfs.noteOn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 13.5, 112.0, 34.0, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 924.0, 247.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 924.0, 97.0, 136.0, 22.0 ],
                                    "text": "mfs.inRange 4:45 14:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 328.0, 385.0, 136.0, 22.0 ],
                                    "text": "mfs.inRange 6:00 14:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 328.0, 416.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 328.0, 451.0, 85.0, 22.0 ],
                                    "text": "/drawSpiral $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 581.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 539.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 497.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 454.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 412.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 581.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 539.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 497.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 454.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 412.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-20",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 23.0, 392.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 188.0, 319.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 23.0, 352.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 23.0, 319.0, 136.0, 22.0 ],
                                    "text": "mfs.inRange 0:00 14:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 527.5, 443.0, 115.0, 22.0 ],
                                    "text": "s mfs.rotationSpeed"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 527.5, 413.0, 39.0, 22.0 ],
                                    "text": "f 0.03"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 1270.0, 304.0, 29.5, 22.0 ],
                                    "text": "f 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1270.0, 260.0, 65.0, 22.0 ],
                                    "text": "r mfs.reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 783.0, 204.0, 29.5, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 783.0, 168.0, 65.0, 22.0 ],
                                    "text": "r mfs.reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 370.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 328.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 286.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 243.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 201.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 946.0, 156.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1167.0, 63.0, 90.0, 22.0 ],
                                    "text": "scale 0. 1. 5 15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1148.0, 260.0, 38.0, 22.0 ],
                                    "text": "zl reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1167.0, 97.0, 47.0, 22.0 ],
                                    "text": "pack f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1050.0, 260.0, 38.0, 22.0 ],
                                    "text": "zl reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1069.0, 97.0, 47.0, 22.0 ],
                                    "text": "pack f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1270.0, 63.0, 130.0, 22.0 ],
                                    "text": "scale 0. 1. 3500. 6000."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1069.0, 63.0, 90.0, 22.0 ],
                                    "text": "scale 0. 1. 5 35"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1069.0, 8.0, 145.0, 22.0 ],
                                    "text": "mfs.scaleTime 4:45 14:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 946.0, 123.0, 78.0, 22.0 ],
                                    "text": "r mfs.noteOn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 698.0, 267.0, 53.0, 22.0 ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-118",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 698.0, 300.0, 106.0, 22.0 ],
                                    "text": "prepend /progress"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 698.0, 236.0, 39.0, 22.0 ],
                                    "text": "/ 200."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 698.0, 206.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-114",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "", "", "int" ],
                                    "patching_rect": [ 698.0, 168.0, 61.0, 22.0 ],
                                    "text": "counter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-112",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 698.0, 123.0, 78.0, 22.0 ],
                                    "text": "r mfs.noteOn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 267.0, 79.0, 22.0 ],
                                    "text": "s mfs.oscOut"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 370.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 328.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 286.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 243.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 201.0, 177.0, 34.0, 22.0 ],
                                    "text": "mfs.i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 201.0, 90.0, 441.5, 22.0 ],
                                    "text": "route 57 58 64 65 67 45 46 52 53 55"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 27.0, 72.0, 22.0 ],
                                    "text": "r mfs.noteIn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 100.0, 132.0, 29.5, 22.0 ],
                                    "text": "> 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 100.0, 94.0, 53.0, 22.0 ],
                                    "text": "route 29"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 100.0, 170.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 230.0, 92.0, 22.0 ],
                                    "text": "prepend /ocean"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 201.0, 230.0, 121.0, 22.0 ],
                                    "text": "prepend /lightFootfall"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1148.0, 304.0, 65.0, 22.0 ],
                                    "text": "$1 10 0 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 1148.0, 352.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1148.0, 386.0, 93.0, 22.0 ],
                                    "text": "/innerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1050.0, 304.0, 65.0, 22.0 ],
                                    "text": "$1 10 0 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 1050.0, 352.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1050.0, 386.0, 93.0, 22.0 ],
                                    "text": "/outerRadius $1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-114", 0 ],
                                    "source": [ "obj-112", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-116", 0 ],
                                    "source": [ "obj-114", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-117", 0 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-118", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "order": 0,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "order": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-118", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "order": 2,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "order": 0,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "order": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-41", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-41", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-41", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-41", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-41", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-41", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-41", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-41", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-41", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 1 ],
                                    "order": 1,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 1 ],
                                    "order": 0,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 1 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 1 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 1 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 109.5, 52.0, 109.5, 52.0 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "midpoints": [ 109.5, 81.0, 210.5, 81.0 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-82", 0 ],
                                    "order": 2,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-114", 3 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "order": 2,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "order": 1,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "order": 0,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "order": 0,
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 1,
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 1 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 1 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 1 ],
                                    "order": 2,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 1 ],
                                    "order": 3,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 1 ],
                                    "order": 4,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 1 ],
                                    "order": 9,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 1 ],
                                    "order": 8,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 1 ],
                                    "order": 6,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 1 ],
                                    "order": 7,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 1 ],
                                    "order": 5,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "source": [ "obj-82", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 766.0, 45.0, 22.0, 22.0 ],
                    "text": "p I"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 450.0, 54.0, 22.0 ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 96.0, 134.0, 74.0, 22.0 ],
                    "text": "loadmess -5"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 96.0, 163.0, 63.0, 22.0 ],
                    "text": "mfs.notes"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-49",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 212.0, 1310.0, 595.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 1203.0, 93.0, 34.0, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1203.0, 58.0, 86.0, 22.0 ],
                                    "text": "r mfs.preShow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1117.0, 102.0, 45.0, 22.0 ],
                                    "text": "0. 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1035.0, 102.0, 45.0, 22.0 ],
                                    "text": "1. 1. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 869.0, 102.0, 72.0, 22.0 ],
                                    "text": "1. 0.21 0.21"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 952.0, 102.0, 72.0, 22.0 ],
                                    "text": "0.33 0.44 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1035.0, 58.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 39:00 41:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 869.0, 58.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 38:00 39:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 599.0, 102.0, 72.0, 22.0 ],
                                    "text": "1. 0.62 0.44"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 525.0, 102.0, 72.0, 22.0 ],
                                    "text": "1. 0.47 0.47"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 688.0, 102.0, 85.0, 22.0 ],
                                    "text": "0.99 0.14 0.14"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 787.0, 102.0, 72.0, 22.0 ],
                                    "text": "0.99 0.4 0.8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 688.0, 58.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 37:00 38:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 525.0, 58.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 33:30 37:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 191.0, 403.0, 50.0, 35.0 ],
                                    "text": "1. 1. 1. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 111.0, 210.0, 60.0, 22.0 ],
                                    "text": "zl.change"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 29.0, 210.0, 60.0, 22.0 ],
                                    "text": "zl.change"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 111.0, 170.0, 29.0, 22.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.0, 170.0, 29.0, 22.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 355.0, 58.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 20:00 33:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 191.0, 58.0, 152.0, 22.0 ],
                                    "text": "mfs.scaleTime 14:30 20:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.0, 58.0, 145.0, 22.0 ],
                                    "text": "mfs.scaleTime 0:00 14:30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 429.0, 102.0, 82.0, 22.0 ],
                                    "text": "0.349 0.55. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 355.0, 102.0, 72.0, 22.0 ],
                                    "text": "0.95 0.33 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 191.0, 102.0, 72.0, 22.0 ],
                                    "text": "1. 0.21 0.21"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 274.0, 102.0, 72.0, 22.0 ],
                                    "text": "0.33 0.44 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 428.0, 398.0, 197.0, 22.0 ],
                                    "text": "0. 0. 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 111.0, 102.0, 72.0, 22.0 ],
                                    "text": "1. 0.62 0.44"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.0, 102.0, 72.0, 22.0 ],
                                    "text": "1. 0.47 0.47"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 453.5, 245.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 453.5, 210.0, 72.0, 22.0 ],
                                    "text": "r mfs.noteIn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 29.0, 534.0, 79.0, 22.0 ],
                                    "text": "s mfs.oscOut"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 420.0, 349.0, 91.0, 22.0 ],
                                    "text": "s mfs.coolColor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 156.0, 349.0, 86.0, 22.0 ],
                                    "text": "s mfs.hotColor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 277.0, 442.0, 197.0, 22.0 ],
                                    "text": "vexpr int($f1 * 255) @scalarmode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.0, 442.0, 197.0, 22.0 ],
                                    "text": "vexpr int($f1 * 255) @scalarmode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-100",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 277.0, 246.0, 127.0, 22.0 ],
                                    "text": "loadmess 1. 0.62 0.44"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-99",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.0, 246.0, 127.0, 22.0 ],
                                    "text": "loadmess 1. 0.21 0.21"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "border": 1,
                                    "id": "obj-84",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 317.0, 407.0, 93.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 127.0, 10.0, 117.0, 22.0 ],
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 301.0, 377.0, 109.0, 22.0 ],
                                    "text": "bgfillcolor $1 $2 $3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "swatch",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 277.0, 289.0, 133.0, 86.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 127.0, 47.0, 117.0, 86.0 ],
                                    "saturation": 0.0
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "border": 1,
                                    "id": "obj-81",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 53.0, 407.0, 93.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 6.0, 10.0, 117.0, 22.0 ],
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 37.0, 377.0, 109.0, 22.0 ],
                                    "text": "bgfillcolor $1 $2 $3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-77",
                                    "maxclass": "swatch",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 29.0, 285.0, 117.0, 86.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 6.0, 47.0, 117.0, 86.0 ],
                                    "saturation": 0.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 277.0, 482.0, 113.0, 22.0 ],
                                    "text": "/coolColor $1 $2 $3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.0, 482.0, 107.0, 22.0 ],
                                    "text": "/hotColor $1 $2 $3"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "order": 1,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 0,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 0,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "order": 1,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "order": 0,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "order": 1,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "order": 0,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "order": 0,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "order": 1,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "order": 1,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "order": 0,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 3,
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "order": 1,
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "order": 0,
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "order": 2,
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "order": 3,
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "order": 1,
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "order": 0,
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-85", 0 ],
                                    "order": 2,
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "order": 1,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-99", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 593.0, 2.5, 250.0, 39.0 ],
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 370.5, 307.0, 23.5, 307.0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 456.5, 306.0, 23.5, 306.0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 23.5, 306.0, 23.5, 306.0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 277.5, 306.0, 23.5, 306.0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 105.5, 306.0, 23.5, 306.0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 189.5, 306.0, 23.5, 306.0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-11": [ "mc.live.gain~[5]", "chaos", 0 ],
            "obj-12::obj-69::obj-23": [ "mc.live.gain~[7]", "mc.live.gain~[7]", 0 ],
            "obj-12::obj-70::obj-23": [ "mc.live.gain~[8]", "mc.live.gain~[7]", 0 ],
            "obj-12::obj-77::obj-23": [ "mc.live.gain~[9]", "mc.live.gain~[7]", 0 ],
            "obj-12::obj-79": [ "mc.live.gain~[10]", "cello", 0 ],
            "obj-12::obj-80": [ "mc.live.gain~[11]", "saveMe", 0 ],
            "obj-12::obj-81": [ "mc.live.gain~[12]", "goodJob", 0 ],
            "obj-13": [ "mc.live.gain~[6]", "slicer", 0 ],
            "obj-2": [ "mc.live.gain~[4]", "save me", 0 ],
            "obj-3::obj-13::obj-1": [ "live.toggle[901]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-10": [ "live.toggle[898]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-12": [ "live.toggle[455]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-13": [ "live.toggle[902]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-14": [ "live.toggle[454]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-15": [ "live.toggle[900]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-16": [ "live.toggle[449]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-20": [ "live.toggle[891]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-21": [ "live.toggle[451]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-24": [ "live.toggle[893]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-28": [ "live.toggle[899]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-29": [ "live.toggle[897]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-4": [ "live.toggle[896]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-45": [ "live.toggle[452]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-46": [ "live.toggle[895]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-47": [ "live.toggle[894]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-48": [ "live.toggle[450]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-49": [ "live.toggle[890]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-5": [ "live.toggle[453]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-50": [ "live.toggle[447]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-53": [ "live.toggle[889]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-55": [ "live.toggle[888]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-56": [ "live.toggle[886]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-57": [ "live.toggle[892]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-6": [ "live.toggle[448]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-7": [ "live.toggle[887]", "live.toggle", 0 ],
            "obj-3::obj-13::obj-8": [ "live.toggle[903]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-1": [ "live.toggle[869]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-10": [ "live.toggle[868]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-12": [ "live.toggle[441]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-13": [ "live.toggle[440]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-14": [ "live.toggle[881]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-15": [ "live.toggle[879]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-16": [ "live.toggle[445]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-20": [ "live.toggle[438]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-21": [ "live.toggle[871]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-24": [ "live.toggle[870]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-28": [ "live.toggle[878]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-29": [ "live.toggle[875]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-4": [ "live.toggle[873]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-45": [ "live.toggle[885]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-46": [ "live.toggle[446]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-47": [ "live.toggle[884]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-48": [ "live.toggle[883]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-49": [ "live.toggle[882]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-5": [ "live.toggle[877]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-50": [ "live.toggle[880]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-53": [ "live.toggle[876]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-55": [ "live.toggle[874]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-56": [ "live.toggle[872]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-57": [ "live.toggle[439]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-6": [ "live.toggle[444]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-7": [ "live.toggle[443]", "live.toggle", 0 ],
            "obj-3::obj-14::obj-8": [ "live.toggle[442]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-1": [ "live.toggle[858]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-10": [ "live.toggle[432]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-12": [ "live.toggle[861]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-13": [ "live.toggle[434]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-14": [ "live.toggle[860]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-15": [ "live.toggle[859]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-16": [ "live.toggle[851]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-20": [ "live.toggle[436]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-21": [ "live.toggle[852]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-24": [ "live.toggle[867]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-28": [ "live.toggle[857]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-29": [ "live.toggle[856]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-4": [ "live.toggle[854]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-45": [ "live.toggle[855]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-46": [ "live.toggle[853]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-47": [ "live.toggle[429]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-48": [ "live.toggle[866]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-49": [ "live.toggle[863]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-5": [ "live.toggle[433]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-50": [ "live.toggle[862]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-53": [ "live.toggle[431]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-55": [ "live.toggle[430]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-56": [ "live.toggle[850]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-57": [ "live.toggle[865]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-6": [ "live.toggle[437]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-7": [ "live.toggle[864]", "live.toggle", 0 ],
            "obj-3::obj-15::obj-8": [ "live.toggle[435]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-1": [ "live.toggle[426]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-10": [ "live.toggle[843]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-12": [ "live.toggle[849]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-13": [ "live.toggle[848]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-14": [ "live.toggle[427]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-15": [ "live.toggle[845]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-16": [ "live.toggle[837]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-20": [ "live.toggle[834]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-21": [ "live.toggle[838]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-24": [ "live.toggle[836]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-28": [ "live.toggle[842]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-29": [ "live.toggle[424]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-4": [ "live.toggle[839]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-45": [ "live.toggle[425]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-46": [ "live.toggle[841]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-47": [ "live.toggle[840]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-48": [ "live.toggle[423]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-49": [ "live.toggle[422]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-5": [ "live.toggle[844]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-50": [ "live.toggle[421]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-53": [ "live.toggle[832]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-55": [ "live.toggle[428]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-56": [ "live.toggle[847]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-57": [ "live.toggle[846]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-6": [ "live.toggle[835]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-7": [ "live.toggle[833]", "live.toggle", 0 ],
            "obj-3::obj-16::obj-8": [ "live.toggle[420]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-1": [ "live.toggle[814]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-10": [ "live.toggle[419]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-12": [ "live.toggle[413]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-13": [ "live.toggle[817]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-14": [ "live.toggle[816]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-15": [ "live.toggle[411]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-16": [ "live.toggle[416]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-20": [ "live.toggle[821]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-21": [ "live.toggle[825]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-24": [ "live.toggle[823]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-28": [ "live.toggle[829]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-29": [ "live.toggle[828]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-4": [ "live.toggle[417]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-45": [ "live.toggle[830]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-46": [ "live.toggle[418]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-47": [ "live.toggle[827]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-48": [ "live.toggle[826]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-49": [ "live.toggle[824]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-5": [ "live.toggle[831]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-50": [ "live.toggle[822]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-53": [ "live.toggle[819]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-55": [ "live.toggle[818]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-56": [ "live.toggle[412]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-57": [ "live.toggle[815]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-6": [ "live.toggle[415]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-7": [ "live.toggle[414]", "live.toggle", 0 ],
            "obj-3::obj-17::obj-8": [ "live.toggle[820]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-1": [ "live.toggle[799]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-10": [ "live.toggle[798]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-12": [ "live.toggle[804]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-13": [ "live.toggle[405]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-14": [ "live.toggle[801]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-15": [ "live.toggle[800]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-16": [ "live.toggle[810]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-20": [ "live.toggle[407]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-21": [ "live.toggle[409]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-24": [ "live.toggle[408]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-28": [ "live.toggle[402]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-29": [ "live.toggle[813]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-4": [ "live.toggle[812]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-45": [ "live.toggle[797]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-46": [ "live.toggle[796]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-47": [ "live.toggle[410]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-48": [ "live.toggle[811]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-49": [ "live.toggle[809]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-5": [ "live.toggle[403]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-50": [ "live.toggle[807]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-53": [ "live.toggle[406]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-55": [ "live.toggle[803]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-56": [ "live.toggle[802]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-57": [ "live.toggle[404]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-6": [ "live.toggle[808]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-7": [ "live.toggle[806]", "live.toggle", 0 ],
            "obj-3::obj-19::obj-8": [ "live.toggle[805]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-1": [ "live.toggle[487]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-10": [ "live.toggle[965]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-12": [ "live.toggle[970]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-13": [ "live.toggle[486]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-14": [ "live.toggle[959]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-15": [ "live.toggle[483]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-16": [ "live.toggle[975]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-20": [ "live.toggle[484]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-21": [ "live.toggle[485]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-24": [ "live.toggle[963]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-28": [ "live.toggle[491]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-29": [ "live.toggle[962]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-4": [ "live.toggle[960]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-45": [ "live.toggle[961]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-46": [ "live.toggle[967]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-47": [ "live.toggle[966]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-48": [ "live.toggle[964]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-49": [ "live.toggle[958]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-5": [ "live.toggle[972]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-50": [ "live.toggle[973]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-53": [ "live.toggle[968]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-55": [ "live.toggle[490]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-56": [ "live.toggle[488]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-57": [ "live.toggle[969]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-6": [ "live.toggle[974]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-7": [ "live.toggle[971]", "live.toggle", 0 ],
            "obj-3::obj-1::obj-8": [ "live.toggle[489]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-1": [ "live.toggle[379]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-10": [ "live.toggle[749]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-12": [ "live.toggle[380]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-13": [ "live.toggle[569]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-14": [ "live.toggle[568]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-15": [ "live.toggle[750]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-16": [ "live.toggle[382]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-20": [ "live.toggle[572]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-21": [ "live.toggle[758]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-24": [ "live.toggle[573]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-28": [ "live.toggle[567]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-29": [ "live.toggle[566]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-4": [ "live.toggle[759]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-45": [ "live.toggle[748]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-46": [ "live.toggle[747]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-47": [ "live.toggle[383]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-48": [ "live.toggle[757]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-49": [ "live.toggle[756]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-5": [ "live.toggle[378]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-50": [ "live.toggle[571]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-53": [ "live.toggle[754]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-55": [ "live.toggle[570]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-56": [ "live.toggle[752]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-57": [ "live.toggle[751]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-6": [ "live.toggle[755]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-7": [ "live.toggle[381]", "live.toggle", 0 ],
            "obj-3::obj-21::obj-8": [ "live.toggle[753]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-1": [ "live.toggle[550]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-10": [ "live.toggle[726]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-12": [ "live.toggle[549]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-13": [ "live.toggle[552]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-14": [ "live.toggle[554]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-15": [ "live.toggle[548]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-16": [ "live.toggle[555]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-20": [ "live.toggle[734]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-21": [ "live.toggle[724]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-24": [ "live.toggle[728]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-28": [ "live.toggle[551]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-29": [ "live.toggle[729]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-4": [ "live.toggle[732]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-45": [ "live.toggle[725]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-46": [ "live.toggle[366]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-47": [ "live.toggle[723]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-48": [ "live.toggle[556]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-49": [ "live.toggle[371]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-5": [ "live.toggle[727]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-50": [ "live.toggle[370]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-53": [ "live.toggle[731]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-55": [ "live.toggle[553]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-56": [ "live.toggle[730]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-57": [ "live.toggle[368]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-6": [ "live.toggle[367]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-7": [ "live.toggle[369]", "live.toggle", 0 ],
            "obj-3::obj-22::obj-8": [ "live.toggle[733]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-1": [ "live.toggle[707]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-10": [ "live.toggle[703]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-12": [ "live.toggle[356]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-13": [ "live.toggle[706]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-14": [ "live.toggle[534]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-15": [ "live.toggle[533]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-16": [ "live.toggle[538]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-20": [ "live.toggle[704]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-21": [ "live.toggle[358]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-24": [ "live.toggle[355]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-28": [ "live.toggle[709]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-29": [ "live.toggle[357]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-4": [ "live.toggle[537]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-45": [ "live.toggle[702]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-46": [ "live.toggle[354]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-47": [ "live.toggle[530]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-48": [ "live.toggle[699]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-49": [ "live.toggle[359]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-5": [ "live.toggle[708]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-50": [ "live.toggle[710]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-53": [ "live.toggle[535]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-55": [ "live.toggle[532]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-56": [ "live.toggle[701]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-57": [ "live.toggle[700]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-6": [ "live.toggle[531]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-7": [ "live.toggle[536]", "live.toggle", 0 ],
            "obj-3::obj-23::obj-8": [ "live.toggle[705]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-1": [ "live.toggle[524]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-10": [ "live.toggle[527]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-12": [ "live.toggle[353]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-13": [ "live.toggle[613]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-14": [ "live.toggle[692]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-15": [ "live.toggle[610]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-16": [ "live.toggle[690]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-20": [ "live.toggle[691]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-21": [ "live.toggle[694]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-24": [ "live.toggle[350]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-28": [ "live.toggle[528]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-29": [ "live.toggle[696]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-4": [ "live.toggle[614]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-45": [ "live.toggle[611]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-46": [ "live.toggle[698]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-47": [ "live.toggle[526]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-48": [ "live.toggle[523]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-49": [ "live.toggle[689]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-5": [ "live.toggle[352]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-50": [ "live.toggle[612]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-53": [ "live.toggle[697]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-55": [ "live.toggle[695]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-56": [ "live.toggle[351]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-57": [ "live.toggle[525]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-6": [ "live.toggle[529]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-7": [ "live.toggle[693]", "live.toggle", 0 ],
            "obj-3::obj-25::obj-8": [ "live.toggle[349]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-1": [ "live.toggle[563]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-10": [ "live.toggle[562]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-12": [ "live.toggle[736]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-13": [ "live.toggle[375]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-14": [ "live.toggle[374]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-15": [ "live.toggle[560]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-16": [ "live.toggle[739]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-20": [ "live.toggle[743]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-21": [ "live.toggle[564]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-24": [ "live.toggle[744]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-28": [ "live.toggle[372]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-29": [ "live.toggle[565]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-4": [ "live.toggle[746]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-45": [ "live.toggle[742]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-46": [ "live.toggle[741]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-47": [ "live.toggle[561]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-48": [ "live.toggle[740]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-49": [ "live.toggle[559]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-5": [ "live.toggle[373]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-50": [ "live.toggle[737]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-53": [ "live.toggle[735]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-55": [ "live.toggle[377]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-56": [ "live.toggle[745]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-57": [ "live.toggle[376]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-6": [ "live.toggle[738]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-7": [ "live.toggle[558]", "live.toggle", 0 ],
            "obj-3::obj-27::obj-8": [ "live.toggle[557]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-1": [ "live.toggle[546]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-10": [ "live.toggle[719]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-12": [ "live.toggle[360]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-13": [ "live.toggle[539]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-14": [ "live.toggle[365]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-15": [ "live.toggle[363]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-16": [ "live.toggle[718]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-20": [ "live.toggle[547]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-21": [ "live.toggle[713]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-24": [ "live.toggle[712]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-28": [ "live.toggle[715]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-29": [ "live.toggle[541]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-4": [ "live.toggle[540]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-45": [ "live.toggle[543]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-46": [ "live.toggle[722]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-47": [ "live.toggle[721]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-48": [ "live.toggle[545]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-49": [ "live.toggle[717]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-5": [ "live.toggle[361]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-50": [ "live.toggle[542]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-53": [ "live.toggle[544]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-55": [ "live.toggle[362]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-56": [ "live.toggle[364]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-57": [ "live.toggle[711]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-6": [ "live.toggle[716]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-7": [ "live.toggle[720]", "live.toggle", 0 ],
            "obj-3::obj-29::obj-8": [ "live.toggle[714]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-1": [ "live.toggle[480]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-10": [ "live.toggle[479]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-12": [ "live.toggle[956]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-13": [ "live.toggle[954]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-14": [ "live.toggle[952]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-15": [ "live.toggle[474]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-16": [ "live.toggle[951]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-20": [ "live.toggle[476]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-21": [ "live.toggle[477]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-24": [ "live.toggle[947]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-28": [ "live.toggle[946]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-29": [ "live.toggle[482]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-4": [ "live.toggle[950]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-45": [ "live.toggle[478]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-46": [ "live.toggle[948]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-47": [ "live.toggle[953]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-48": [ "live.toggle[945]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-49": [ "live.toggle[944]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-5": [ "live.toggle[481]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-50": [ "live.toggle[475]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-53": [ "live.toggle[941]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-55": [ "live.toggle[940]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-56": [ "live.toggle[957]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-57": [ "live.toggle[955]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-6": [ "live.toggle[949]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-7": [ "live.toggle[943]", "live.toggle", 0 ],
            "obj-3::obj-2::obj-8": [ "live.toggle[942]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-1": [ "live.toggle[346]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-10": [ "live.toggle[645]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-12": [ "live.toggle[520]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-13": [ "live.toggle[604]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-14": [ "live.toggle[646]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-15": [ "live.toggle[345]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-16": [ "live.toggle[517]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-20": [ "live.toggle[686]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-21": [ "live.toggle[647]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-24": [ "live.toggle[687]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-28": [ "live.toggle[606]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-29": [ "live.toggle[605]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-4": [ "live.toggle[648]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-45": [ "live.toggle[347]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-46": [ "live.toggle[522]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-47": [ "live.toggle[519]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-48": [ "live.toggle[685]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-49": [ "live.toggle[518]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-5": [ "live.toggle[607]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-50": [ "live.toggle[348]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-53": [ "live.toggle[608]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-55": [ "live.toggle[602]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-56": [ "live.toggle[688]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-57": [ "live.toggle[521]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-6": [ "live.toggle[516]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-7": [ "live.toggle[609]", "live.toggle", 0 ],
            "obj-3::obj-38::obj-8": [ "live.toggle[603]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-1": [ "live.toggle[641]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-10": [ "live.toggle[598]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-12": [ "live.toggle[601]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-13": [ "live.toggle[640]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-14": [ "live.toggle[638]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-15": [ "live.toggle[510]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-16": [ "live.toggle[514]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-20": [ "live.toggle[515]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-21": [ "live.toggle[596]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-24": [ "live.toggle[341]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-28": [ "live.toggle[595]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-29": [ "live.toggle[342]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-4": [ "live.toggle[512]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-45": [ "live.toggle[597]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-46": [ "live.toggle[639]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-47": [ "live.toggle[511]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-48": [ "live.toggle[637]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-49": [ "live.toggle[636]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-5": [ "live.toggle[344]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-50": [ "live.toggle[644]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-53": [ "live.toggle[600]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-55": [ "live.toggle[513]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-56": [ "live.toggle[643]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-57": [ "live.toggle[642]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-6": [ "live.toggle[343]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-7": [ "live.toggle[599]", "live.toggle", 0 ],
            "obj-3::obj-40::obj-8": [ "live.toggle[340]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-1": [ "live.toggle[678]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-10": [ "live.toggle[506]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-12": [ "live.toggle[679]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-13": [ "live.toggle[504]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-14": [ "live.toggle[336]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-15": [ "live.toggle[677]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-16": [ "live.toggle[683]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-20": [ "live.toggle[593]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-21": [ "live.toggle[594]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-24": [ "live.toggle[684]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-28": [ "live.toggle[338]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-29": [ "live.toggle[680]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-4": [ "live.toggle[587]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-45": [ "live.toggle[337]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-46": [ "live.toggle[508]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-47": [ "live.toggle[592]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-48": [ "live.toggle[591]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-49": [ "live.toggle[590]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-5": [ "live.toggle[339]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-50": [ "live.toggle[505]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-53": [ "live.toggle[507]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-55": [ "live.toggle[588]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-56": [ "live.toggle[503]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-57": [ "live.toggle[509]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-6": [ "live.toggle[682]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-7": [ "live.toggle[681]", "live.toggle", 0 ],
            "obj-3::obj-41::obj-8": [ "live.toggle[589]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-1": [ "live.toggle[633]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-10": [ "live.toggle[632]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-12": [ "live.toggle[500]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-13": [ "live.toggle[582]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-14": [ "live.toggle[333]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-15": [ "live.toggle[631]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-16": [ "live.toggle[628]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-20": [ "live.toggle[676]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-21": [ "live.toggle[498]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-24": [ "live.toggle[497]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-28": [ "live.toggle[581]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-29": [ "live.toggle[630]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-4": [ "live.toggle[332]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-45": [ "live.toggle[499]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-46": [ "live.toggle[502]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-47": [ "live.toggle[634]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-48": [ "live.toggle[629]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-49": [ "live.toggle[585]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-5": [ "live.toggle[583]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-50": [ "live.toggle[334]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-53": [ "live.toggle[580]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-55": [ "live.toggle[579]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-56": [ "live.toggle[335]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-57": [ "live.toggle[584]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-6": [ "live.toggle[586]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-7": [ "live.toggle[635]", "live.toggle", 0 ],
            "obj-3::obj-42::obj-8": [ "live.toggle[501]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-1": [ "live.toggle[575]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-10": [ "live.toggle[623]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-12": [ "live.toggle[330]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-13": [ "live.toggle[616]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-14": [ "live.toggle[329]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-15": [ "live.toggle[493]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-16": [ "live.toggle[496]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-20": [ "live.toggle[624]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-21": [ "live.toggle[619]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-24": [ "live.toggle[495]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-28": [ "live.toggle[328]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-29": [ "live.toggle[622]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-4": [ "live.toggle[574]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-45": [ "live.toggle[620]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-46": [ "live.toggle[615]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-47": [ "live.toggle[618]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-48": [ "live.toggle[617]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-49": [ "live.toggle[625]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-5": [ "live.toggle[621]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-50": [ "live.toggle[626]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-53": [ "live.toggle[494]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-55": [ "live.toggle[627]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-56": [ "live.toggle[577]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-57": [ "live.toggle[576]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-6": [ "live.toggle[331]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-7": [ "live.toggle[492]", "live.toggle", 0 ],
            "obj-3::obj-43::obj-8": [ "live.toggle[578]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-1": [ "live.toggle[795]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-10": [ "live.toggle[793]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-12": [ "live.toggle[395]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-13": [ "live.toggle[781]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-14": [ "live.toggle[780]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-15": [ "live.toggle[393]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-16": [ "live.toggle[397]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-20": [ "live.toggle[396]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-21": [ "live.toggle[787]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-24": [ "live.toggle[786]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-28": [ "live.toggle[400]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-29": [ "live.toggle[789]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-4": [ "live.toggle[788]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-45": [ "live.toggle[790]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-46": [ "live.toggle[398]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-47": [ "live.toggle[794]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-48": [ "live.toggle[399]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-49": [ "live.toggle[401]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-5": [ "live.toggle[792]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-50": [ "live.toggle[791]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-53": [ "live.toggle[782]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-55": [ "live.toggle[394]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-56": [ "live.toggle[779]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-57": [ "live.toggle[778]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-6": [ "live.toggle[785]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-7": [ "live.toggle[784]", "live.toggle", 0 ],
            "obj-3::obj-44::obj-8": [ "live.toggle[783]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-1": [ "live.toggle[384]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-10": [ "live.toggle[775]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-12": [ "live.toggle[762]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-13": [ "live.toggle[760]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-14": [ "live.toggle[777]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-15": [ "live.toggle[392]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-16": [ "live.toggle[774]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-20": [ "live.toggle[764]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-21": [ "live.toggle[768]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-24": [ "live.toggle[766]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-28": [ "live.toggle[391]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-29": [ "live.toggle[390]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-4": [ "live.toggle[770]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-45": [ "live.toggle[773]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-46": [ "live.toggle[389]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-47": [ "live.toggle[388]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-48": [ "live.toggle[767]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-49": [ "live.toggle[765]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-5": [ "live.toggle[776]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-50": [ "live.toggle[771]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-53": [ "live.toggle[387]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-55": [ "live.toggle[386]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-56": [ "live.toggle[763]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-57": [ "live.toggle[385]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-6": [ "live.toggle[772]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-7": [ "live.toggle[769]", "live.toggle", 0 ],
            "obj-3::obj-45::obj-8": [ "live.toggle[761]", "live.toggle", 0 ],
            "obj-3::obj-4::obj-18::obj-56": [ "tab", "tab", 0 ],
            "obj-3::obj-5::obj-1": [ "live.toggle[473]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-10": [ "live.toggle[469]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-12": [ "live.toggle[937]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-13": [ "live.toggle[931]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-14": [ "live.toggle[926]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-15": [ "live.toggle[924]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-16": [ "live.toggle[468]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-20": [ "live.toggle[938]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-21": [ "live.toggle[467]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-24": [ "live.toggle[939]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-28": [ "live.toggle[932]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-29": [ "live.toggle[930]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-4": [ "live.toggle[472]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-45": [ "live.toggle[929]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-46": [ "live.toggle[927]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-47": [ "live.toggle[466]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-48": [ "live.toggle[928]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-49": [ "live.toggle[925]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-5": [ "live.toggle[470]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-50": [ "live.toggle[923]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-53": [ "live.toggle[935]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-55": [ "live.toggle[934]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-56": [ "live.toggle[933]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-57": [ "live.toggle[922]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-6": [ "live.toggle[465]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-7": [ "live.toggle[936]", "live.toggle", 0 ],
            "obj-3::obj-5::obj-8": [ "live.toggle[471]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-1": [ "live.toggle[457]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-10": [ "live.toggle[904]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-12": [ "live.toggle[917]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-13": [ "live.toggle[916]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-14": [ "live.toggle[461]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-15": [ "live.toggle[456]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-16": [ "live.toggle[907]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-20": [ "live.toggle[906]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-21": [ "live.toggle[909]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-24": [ "live.toggle[908]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-28": [ "live.toggle[905]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-29": [ "live.toggle[921]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-4": [ "live.toggle[920]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-45": [ "live.toggle[462]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-46": [ "live.toggle[915]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-47": [ "live.toggle[914]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-48": [ "live.toggle[913]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-49": [ "live.toggle[912]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-5": [ "live.toggle[464]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-50": [ "live.toggle[459]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-53": [ "live.toggle[460]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-55": [ "live.toggle[911]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-56": [ "live.toggle[910]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-57": [ "live.toggle[458]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-6": [ "live.toggle[919]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-7": [ "live.toggle[463]", "live.toggle", 0 ],
            "obj-3::obj-7::obj-8": [ "live.toggle[918]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-1": [ "live.toggle[666]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-10": [ "live.toggle[668]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-12": [ "live.toggle[667]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-13": [ "live.toggle[669]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-14": [ "live.toggle[671]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-15": [ "live.toggle[674]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-16": [ "live.toggle[658]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-20": [ "live.toggle[655]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-21": [ "live.toggle[651]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-24": [ "live.toggle[653]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-28": [ "live.toggle[665]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-29": [ "live.toggle[672]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-4": [ "live.toggle[675]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-45": [ "live.toggle[670]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-46": [ "live.toggle[673]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-47": [ "live.toggle[649]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-48": [ "live.toggle[652]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-49": [ "live.toggle[654]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-5": [ "live.toggle[650]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-50": [ "live.toggle[657]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-53": [ "live.toggle[656]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-55": [ "live.toggle[659]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-56": [ "live.toggle[661]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-57": [ "live.toggle[663]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-6": [ "live.toggle[660]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-7": [ "live.toggle[662]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-8": [ "live.toggle[664]", "live.toggle", 0 ],
            "obj-65": [ "mc.live.gain~[3]", "sine", 0 ],
            "obj-73": [ "mc.live.gain~", "notes", 0 ],
            "obj-74": [ "mc.live.gain~[1]", "chloe", 0 ],
            "obj-75": [ "mc.live.gain~[2]", "main", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-12::obj-69::obj-23": {
                    "parameter_longname": "mc.live.gain~[7]"
                },
                "obj-12::obj-70::obj-23": {
                    "parameter_longname": "mc.live.gain~[8]"
                },
                "obj-12::obj-77::obj-23": {
                    "parameter_longname": "mc.live.gain~[9]"
                },
                "obj-12::obj-79": {
                    "parameter_longname": "mc.live.gain~[10]",
                    "parameter_shortname": "cello"
                },
                "obj-12::obj-80": {
                    "parameter_longname": "mc.live.gain~[11]",
                    "parameter_shortname": "saveMe"
                },
                "obj-12::obj-81": {
                    "parameter_longname": "mc.live.gain~[12]",
                    "parameter_shortname": "goodJob"
                },
                "obj-3::obj-13::obj-1": {
                    "parameter_longname": "live.toggle[901]"
                },
                "obj-3::obj-13::obj-10": {
                    "parameter_longname": "live.toggle[898]"
                },
                "obj-3::obj-13::obj-12": {
                    "parameter_longname": "live.toggle[455]"
                },
                "obj-3::obj-13::obj-13": {
                    "parameter_longname": "live.toggle[902]"
                },
                "obj-3::obj-13::obj-14": {
                    "parameter_longname": "live.toggle[454]"
                },
                "obj-3::obj-13::obj-15": {
                    "parameter_longname": "live.toggle[900]"
                },
                "obj-3::obj-13::obj-16": {
                    "parameter_longname": "live.toggle[449]"
                },
                "obj-3::obj-13::obj-20": {
                    "parameter_longname": "live.toggle[891]"
                },
                "obj-3::obj-13::obj-21": {
                    "parameter_longname": "live.toggle[451]"
                },
                "obj-3::obj-13::obj-24": {
                    "parameter_longname": "live.toggle[893]"
                },
                "obj-3::obj-13::obj-28": {
                    "parameter_longname": "live.toggle[899]"
                },
                "obj-3::obj-13::obj-29": {
                    "parameter_longname": "live.toggle[897]"
                },
                "obj-3::obj-13::obj-4": {
                    "parameter_longname": "live.toggle[896]"
                },
                "obj-3::obj-13::obj-45": {
                    "parameter_longname": "live.toggle[452]"
                },
                "obj-3::obj-13::obj-46": {
                    "parameter_longname": "live.toggle[895]"
                },
                "obj-3::obj-13::obj-47": {
                    "parameter_longname": "live.toggle[894]"
                },
                "obj-3::obj-13::obj-48": {
                    "parameter_longname": "live.toggle[450]"
                },
                "obj-3::obj-13::obj-49": {
                    "parameter_longname": "live.toggle[890]"
                },
                "obj-3::obj-13::obj-5": {
                    "parameter_longname": "live.toggle[453]"
                },
                "obj-3::obj-13::obj-50": {
                    "parameter_longname": "live.toggle[447]"
                },
                "obj-3::obj-13::obj-53": {
                    "parameter_longname": "live.toggle[889]"
                },
                "obj-3::obj-13::obj-55": {
                    "parameter_longname": "live.toggle[888]"
                },
                "obj-3::obj-13::obj-56": {
                    "parameter_longname": "live.toggle[886]"
                },
                "obj-3::obj-13::obj-57": {
                    "parameter_longname": "live.toggle[892]"
                },
                "obj-3::obj-13::obj-6": {
                    "parameter_longname": "live.toggle[448]"
                },
                "obj-3::obj-13::obj-7": {
                    "parameter_longname": "live.toggle[887]"
                },
                "obj-3::obj-13::obj-8": {
                    "parameter_longname": "live.toggle[903]"
                },
                "obj-3::obj-14::obj-1": {
                    "parameter_longname": "live.toggle[869]"
                },
                "obj-3::obj-14::obj-10": {
                    "parameter_longname": "live.toggle[868]"
                },
                "obj-3::obj-14::obj-12": {
                    "parameter_longname": "live.toggle[441]"
                },
                "obj-3::obj-14::obj-13": {
                    "parameter_longname": "live.toggle[440]"
                },
                "obj-3::obj-14::obj-14": {
                    "parameter_longname": "live.toggle[881]"
                },
                "obj-3::obj-14::obj-15": {
                    "parameter_longname": "live.toggle[879]"
                },
                "obj-3::obj-14::obj-16": {
                    "parameter_longname": "live.toggle[445]"
                },
                "obj-3::obj-14::obj-20": {
                    "parameter_longname": "live.toggle[438]"
                },
                "obj-3::obj-14::obj-21": {
                    "parameter_longname": "live.toggle[871]"
                },
                "obj-3::obj-14::obj-24": {
                    "parameter_longname": "live.toggle[870]"
                },
                "obj-3::obj-14::obj-28": {
                    "parameter_longname": "live.toggle[878]"
                },
                "obj-3::obj-14::obj-29": {
                    "parameter_longname": "live.toggle[875]"
                },
                "obj-3::obj-14::obj-4": {
                    "parameter_longname": "live.toggle[873]"
                },
                "obj-3::obj-14::obj-45": {
                    "parameter_longname": "live.toggle[885]"
                },
                "obj-3::obj-14::obj-46": {
                    "parameter_longname": "live.toggle[446]"
                },
                "obj-3::obj-14::obj-47": {
                    "parameter_longname": "live.toggle[884]"
                },
                "obj-3::obj-14::obj-48": {
                    "parameter_longname": "live.toggle[883]"
                },
                "obj-3::obj-14::obj-49": {
                    "parameter_longname": "live.toggle[882]"
                },
                "obj-3::obj-14::obj-5": {
                    "parameter_longname": "live.toggle[877]"
                },
                "obj-3::obj-14::obj-50": {
                    "parameter_longname": "live.toggle[880]"
                },
                "obj-3::obj-14::obj-53": {
                    "parameter_longname": "live.toggle[876]"
                },
                "obj-3::obj-14::obj-55": {
                    "parameter_longname": "live.toggle[874]"
                },
                "obj-3::obj-14::obj-56": {
                    "parameter_longname": "live.toggle[872]"
                },
                "obj-3::obj-14::obj-57": {
                    "parameter_longname": "live.toggle[439]"
                },
                "obj-3::obj-14::obj-6": {
                    "parameter_longname": "live.toggle[444]"
                },
                "obj-3::obj-14::obj-7": {
                    "parameter_longname": "live.toggle[443]"
                },
                "obj-3::obj-14::obj-8": {
                    "parameter_longname": "live.toggle[442]"
                },
                "obj-3::obj-15::obj-1": {
                    "parameter_longname": "live.toggle[858]"
                },
                "obj-3::obj-15::obj-10": {
                    "parameter_longname": "live.toggle[432]"
                },
                "obj-3::obj-15::obj-12": {
                    "parameter_longname": "live.toggle[861]"
                },
                "obj-3::obj-15::obj-13": {
                    "parameter_longname": "live.toggle[434]"
                },
                "obj-3::obj-15::obj-14": {
                    "parameter_longname": "live.toggle[860]"
                },
                "obj-3::obj-15::obj-15": {
                    "parameter_longname": "live.toggle[859]"
                },
                "obj-3::obj-15::obj-16": {
                    "parameter_longname": "live.toggle[851]"
                },
                "obj-3::obj-15::obj-20": {
                    "parameter_longname": "live.toggle[436]"
                },
                "obj-3::obj-15::obj-21": {
                    "parameter_longname": "live.toggle[852]"
                },
                "obj-3::obj-15::obj-24": {
                    "parameter_longname": "live.toggle[867]"
                },
                "obj-3::obj-15::obj-28": {
                    "parameter_longname": "live.toggle[857]"
                },
                "obj-3::obj-15::obj-29": {
                    "parameter_longname": "live.toggle[856]"
                },
                "obj-3::obj-15::obj-4": {
                    "parameter_longname": "live.toggle[854]"
                },
                "obj-3::obj-15::obj-45": {
                    "parameter_longname": "live.toggle[855]"
                },
                "obj-3::obj-15::obj-46": {
                    "parameter_longname": "live.toggle[853]"
                },
                "obj-3::obj-15::obj-47": {
                    "parameter_longname": "live.toggle[429]"
                },
                "obj-3::obj-15::obj-48": {
                    "parameter_longname": "live.toggle[866]"
                },
                "obj-3::obj-15::obj-49": {
                    "parameter_longname": "live.toggle[863]"
                },
                "obj-3::obj-15::obj-5": {
                    "parameter_longname": "live.toggle[433]"
                },
                "obj-3::obj-15::obj-50": {
                    "parameter_longname": "live.toggle[862]"
                },
                "obj-3::obj-15::obj-53": {
                    "parameter_longname": "live.toggle[431]"
                },
                "obj-3::obj-15::obj-55": {
                    "parameter_longname": "live.toggle[430]"
                },
                "obj-3::obj-15::obj-56": {
                    "parameter_longname": "live.toggle[850]"
                },
                "obj-3::obj-15::obj-57": {
                    "parameter_longname": "live.toggle[865]"
                },
                "obj-3::obj-15::obj-6": {
                    "parameter_longname": "live.toggle[437]"
                },
                "obj-3::obj-15::obj-7": {
                    "parameter_longname": "live.toggle[864]"
                },
                "obj-3::obj-15::obj-8": {
                    "parameter_longname": "live.toggle[435]"
                },
                "obj-3::obj-16::obj-1": {
                    "parameter_longname": "live.toggle[426]"
                },
                "obj-3::obj-16::obj-10": {
                    "parameter_longname": "live.toggle[843]"
                },
                "obj-3::obj-16::obj-12": {
                    "parameter_longname": "live.toggle[849]"
                },
                "obj-3::obj-16::obj-13": {
                    "parameter_longname": "live.toggle[848]"
                },
                "obj-3::obj-16::obj-14": {
                    "parameter_longname": "live.toggle[427]"
                },
                "obj-3::obj-16::obj-15": {
                    "parameter_longname": "live.toggle[845]"
                },
                "obj-3::obj-16::obj-16": {
                    "parameter_longname": "live.toggle[837]"
                },
                "obj-3::obj-16::obj-20": {
                    "parameter_longname": "live.toggle[834]"
                },
                "obj-3::obj-16::obj-21": {
                    "parameter_longname": "live.toggle[838]"
                },
                "obj-3::obj-16::obj-24": {
                    "parameter_longname": "live.toggle[836]"
                },
                "obj-3::obj-16::obj-28": {
                    "parameter_longname": "live.toggle[842]"
                },
                "obj-3::obj-16::obj-29": {
                    "parameter_longname": "live.toggle[424]"
                },
                "obj-3::obj-16::obj-4": {
                    "parameter_longname": "live.toggle[839]"
                },
                "obj-3::obj-16::obj-45": {
                    "parameter_longname": "live.toggle[425]"
                },
                "obj-3::obj-16::obj-46": {
                    "parameter_longname": "live.toggle[841]"
                },
                "obj-3::obj-16::obj-47": {
                    "parameter_longname": "live.toggle[840]"
                },
                "obj-3::obj-16::obj-48": {
                    "parameter_longname": "live.toggle[423]"
                },
                "obj-3::obj-16::obj-49": {
                    "parameter_longname": "live.toggle[422]"
                },
                "obj-3::obj-16::obj-5": {
                    "parameter_longname": "live.toggle[844]"
                },
                "obj-3::obj-16::obj-50": {
                    "parameter_longname": "live.toggle[421]"
                },
                "obj-3::obj-16::obj-53": {
                    "parameter_longname": "live.toggle[832]"
                },
                "obj-3::obj-16::obj-55": {
                    "parameter_longname": "live.toggle[428]"
                },
                "obj-3::obj-16::obj-56": {
                    "parameter_longname": "live.toggle[847]"
                },
                "obj-3::obj-16::obj-57": {
                    "parameter_longname": "live.toggle[846]"
                },
                "obj-3::obj-16::obj-6": {
                    "parameter_longname": "live.toggle[835]"
                },
                "obj-3::obj-16::obj-7": {
                    "parameter_longname": "live.toggle[833]"
                },
                "obj-3::obj-16::obj-8": {
                    "parameter_longname": "live.toggle[420]"
                },
                "obj-3::obj-17::obj-1": {
                    "parameter_longname": "live.toggle[814]"
                },
                "obj-3::obj-17::obj-10": {
                    "parameter_longname": "live.toggle[419]"
                },
                "obj-3::obj-17::obj-12": {
                    "parameter_longname": "live.toggle[413]"
                },
                "obj-3::obj-17::obj-13": {
                    "parameter_longname": "live.toggle[817]"
                },
                "obj-3::obj-17::obj-14": {
                    "parameter_longname": "live.toggle[816]"
                },
                "obj-3::obj-17::obj-15": {
                    "parameter_longname": "live.toggle[411]"
                },
                "obj-3::obj-17::obj-16": {
                    "parameter_longname": "live.toggle[416]"
                },
                "obj-3::obj-17::obj-20": {
                    "parameter_longname": "live.toggle[821]"
                },
                "obj-3::obj-17::obj-21": {
                    "parameter_longname": "live.toggle[825]"
                },
                "obj-3::obj-17::obj-24": {
                    "parameter_longname": "live.toggle[823]"
                },
                "obj-3::obj-17::obj-28": {
                    "parameter_longname": "live.toggle[829]"
                },
                "obj-3::obj-17::obj-29": {
                    "parameter_longname": "live.toggle[828]"
                },
                "obj-3::obj-17::obj-4": {
                    "parameter_longname": "live.toggle[417]"
                },
                "obj-3::obj-17::obj-45": {
                    "parameter_longname": "live.toggle[830]"
                },
                "obj-3::obj-17::obj-46": {
                    "parameter_longname": "live.toggle[418]"
                },
                "obj-3::obj-17::obj-47": {
                    "parameter_longname": "live.toggle[827]"
                },
                "obj-3::obj-17::obj-48": {
                    "parameter_longname": "live.toggle[826]"
                },
                "obj-3::obj-17::obj-49": {
                    "parameter_longname": "live.toggle[824]"
                },
                "obj-3::obj-17::obj-5": {
                    "parameter_longname": "live.toggle[831]"
                },
                "obj-3::obj-17::obj-50": {
                    "parameter_longname": "live.toggle[822]"
                },
                "obj-3::obj-17::obj-53": {
                    "parameter_longname": "live.toggle[819]"
                },
                "obj-3::obj-17::obj-55": {
                    "parameter_longname": "live.toggle[818]"
                },
                "obj-3::obj-17::obj-56": {
                    "parameter_longname": "live.toggle[412]"
                },
                "obj-3::obj-17::obj-57": {
                    "parameter_longname": "live.toggle[815]"
                },
                "obj-3::obj-17::obj-6": {
                    "parameter_longname": "live.toggle[415]"
                },
                "obj-3::obj-17::obj-7": {
                    "parameter_longname": "live.toggle[414]"
                },
                "obj-3::obj-17::obj-8": {
                    "parameter_longname": "live.toggle[820]"
                },
                "obj-3::obj-19::obj-1": {
                    "parameter_longname": "live.toggle[799]"
                },
                "obj-3::obj-19::obj-10": {
                    "parameter_longname": "live.toggle[798]"
                },
                "obj-3::obj-19::obj-12": {
                    "parameter_longname": "live.toggle[804]"
                },
                "obj-3::obj-19::obj-13": {
                    "parameter_longname": "live.toggle[405]"
                },
                "obj-3::obj-19::obj-14": {
                    "parameter_longname": "live.toggle[801]"
                },
                "obj-3::obj-19::obj-15": {
                    "parameter_longname": "live.toggle[800]"
                },
                "obj-3::obj-19::obj-16": {
                    "parameter_longname": "live.toggle[810]"
                },
                "obj-3::obj-19::obj-20": {
                    "parameter_longname": "live.toggle[407]"
                },
                "obj-3::obj-19::obj-21": {
                    "parameter_longname": "live.toggle[409]"
                },
                "obj-3::obj-19::obj-24": {
                    "parameter_longname": "live.toggle[408]"
                },
                "obj-3::obj-19::obj-28": {
                    "parameter_longname": "live.toggle[402]"
                },
                "obj-3::obj-19::obj-29": {
                    "parameter_longname": "live.toggle[813]"
                },
                "obj-3::obj-19::obj-4": {
                    "parameter_longname": "live.toggle[812]"
                },
                "obj-3::obj-19::obj-45": {
                    "parameter_longname": "live.toggle[797]"
                },
                "obj-3::obj-19::obj-46": {
                    "parameter_longname": "live.toggle[796]"
                },
                "obj-3::obj-19::obj-47": {
                    "parameter_longname": "live.toggle[410]"
                },
                "obj-3::obj-19::obj-48": {
                    "parameter_longname": "live.toggle[811]"
                },
                "obj-3::obj-19::obj-49": {
                    "parameter_longname": "live.toggle[809]"
                },
                "obj-3::obj-19::obj-5": {
                    "parameter_longname": "live.toggle[403]"
                },
                "obj-3::obj-19::obj-50": {
                    "parameter_longname": "live.toggle[807]"
                },
                "obj-3::obj-19::obj-53": {
                    "parameter_longname": "live.toggle[406]"
                },
                "obj-3::obj-19::obj-55": {
                    "parameter_longname": "live.toggle[803]"
                },
                "obj-3::obj-19::obj-56": {
                    "parameter_longname": "live.toggle[802]"
                },
                "obj-3::obj-19::obj-57": {
                    "parameter_longname": "live.toggle[404]"
                },
                "obj-3::obj-19::obj-6": {
                    "parameter_longname": "live.toggle[808]"
                },
                "obj-3::obj-19::obj-7": {
                    "parameter_longname": "live.toggle[806]"
                },
                "obj-3::obj-19::obj-8": {
                    "parameter_longname": "live.toggle[805]"
                },
                "obj-3::obj-1::obj-1": {
                    "parameter_longname": "live.toggle[487]"
                },
                "obj-3::obj-1::obj-10": {
                    "parameter_longname": "live.toggle[965]"
                },
                "obj-3::obj-1::obj-12": {
                    "parameter_longname": "live.toggle[970]"
                },
                "obj-3::obj-1::obj-13": {
                    "parameter_longname": "live.toggle[486]"
                },
                "obj-3::obj-1::obj-14": {
                    "parameter_longname": "live.toggle[959]"
                },
                "obj-3::obj-1::obj-15": {
                    "parameter_longname": "live.toggle[483]"
                },
                "obj-3::obj-1::obj-16": {
                    "parameter_longname": "live.toggle[975]"
                },
                "obj-3::obj-1::obj-20": {
                    "parameter_longname": "live.toggle[484]"
                },
                "obj-3::obj-1::obj-21": {
                    "parameter_longname": "live.toggle[485]"
                },
                "obj-3::obj-1::obj-24": {
                    "parameter_longname": "live.toggle[963]"
                },
                "obj-3::obj-1::obj-28": {
                    "parameter_longname": "live.toggle[491]"
                },
                "obj-3::obj-1::obj-29": {
                    "parameter_longname": "live.toggle[962]"
                },
                "obj-3::obj-1::obj-4": {
                    "parameter_longname": "live.toggle[960]"
                },
                "obj-3::obj-1::obj-45": {
                    "parameter_longname": "live.toggle[961]"
                },
                "obj-3::obj-1::obj-46": {
                    "parameter_longname": "live.toggle[967]"
                },
                "obj-3::obj-1::obj-47": {
                    "parameter_longname": "live.toggle[966]"
                },
                "obj-3::obj-1::obj-48": {
                    "parameter_longname": "live.toggle[964]"
                },
                "obj-3::obj-1::obj-49": {
                    "parameter_longname": "live.toggle[958]"
                },
                "obj-3::obj-1::obj-5": {
                    "parameter_longname": "live.toggle[972]"
                },
                "obj-3::obj-1::obj-50": {
                    "parameter_longname": "live.toggle[973]"
                },
                "obj-3::obj-1::obj-53": {
                    "parameter_longname": "live.toggle[968]"
                },
                "obj-3::obj-1::obj-55": {
                    "parameter_longname": "live.toggle[490]"
                },
                "obj-3::obj-1::obj-56": {
                    "parameter_longname": "live.toggle[488]"
                },
                "obj-3::obj-1::obj-57": {
                    "parameter_longname": "live.toggle[969]"
                },
                "obj-3::obj-1::obj-6": {
                    "parameter_longname": "live.toggle[974]"
                },
                "obj-3::obj-1::obj-7": {
                    "parameter_longname": "live.toggle[971]"
                },
                "obj-3::obj-1::obj-8": {
                    "parameter_longname": "live.toggle[489]"
                },
                "obj-3::obj-21::obj-1": {
                    "parameter_longname": "live.toggle[379]"
                },
                "obj-3::obj-21::obj-10": {
                    "parameter_longname": "live.toggle[749]"
                },
                "obj-3::obj-21::obj-12": {
                    "parameter_longname": "live.toggle[380]"
                },
                "obj-3::obj-21::obj-13": {
                    "parameter_longname": "live.toggle[569]"
                },
                "obj-3::obj-21::obj-14": {
                    "parameter_longname": "live.toggle[568]"
                },
                "obj-3::obj-21::obj-15": {
                    "parameter_longname": "live.toggle[750]"
                },
                "obj-3::obj-21::obj-16": {
                    "parameter_longname": "live.toggle[382]"
                },
                "obj-3::obj-21::obj-20": {
                    "parameter_longname": "live.toggle[572]"
                },
                "obj-3::obj-21::obj-21": {
                    "parameter_longname": "live.toggle[758]"
                },
                "obj-3::obj-21::obj-24": {
                    "parameter_longname": "live.toggle[573]"
                },
                "obj-3::obj-21::obj-28": {
                    "parameter_longname": "live.toggle[567]"
                },
                "obj-3::obj-21::obj-29": {
                    "parameter_longname": "live.toggle[566]"
                },
                "obj-3::obj-21::obj-4": {
                    "parameter_longname": "live.toggle[759]"
                },
                "obj-3::obj-21::obj-45": {
                    "parameter_longname": "live.toggle[748]"
                },
                "obj-3::obj-21::obj-46": {
                    "parameter_longname": "live.toggle[747]"
                },
                "obj-3::obj-21::obj-47": {
                    "parameter_longname": "live.toggle[383]"
                },
                "obj-3::obj-21::obj-48": {
                    "parameter_longname": "live.toggle[757]"
                },
                "obj-3::obj-21::obj-49": {
                    "parameter_longname": "live.toggle[756]"
                },
                "obj-3::obj-21::obj-5": {
                    "parameter_longname": "live.toggle[378]"
                },
                "obj-3::obj-21::obj-50": {
                    "parameter_longname": "live.toggle[571]"
                },
                "obj-3::obj-21::obj-53": {
                    "parameter_longname": "live.toggle[754]"
                },
                "obj-3::obj-21::obj-55": {
                    "parameter_longname": "live.toggle[570]"
                },
                "obj-3::obj-21::obj-56": {
                    "parameter_longname": "live.toggle[752]"
                },
                "obj-3::obj-21::obj-57": {
                    "parameter_longname": "live.toggle[751]"
                },
                "obj-3::obj-21::obj-6": {
                    "parameter_longname": "live.toggle[755]"
                },
                "obj-3::obj-21::obj-7": {
                    "parameter_longname": "live.toggle[381]"
                },
                "obj-3::obj-21::obj-8": {
                    "parameter_longname": "live.toggle[753]"
                },
                "obj-3::obj-22::obj-1": {
                    "parameter_longname": "live.toggle[550]"
                },
                "obj-3::obj-22::obj-10": {
                    "parameter_longname": "live.toggle[726]"
                },
                "obj-3::obj-22::obj-12": {
                    "parameter_longname": "live.toggle[549]"
                },
                "obj-3::obj-22::obj-13": {
                    "parameter_longname": "live.toggle[552]"
                },
                "obj-3::obj-22::obj-14": {
                    "parameter_longname": "live.toggle[554]"
                },
                "obj-3::obj-22::obj-15": {
                    "parameter_longname": "live.toggle[548]"
                },
                "obj-3::obj-22::obj-16": {
                    "parameter_longname": "live.toggle[555]"
                },
                "obj-3::obj-22::obj-20": {
                    "parameter_longname": "live.toggle[734]"
                },
                "obj-3::obj-22::obj-21": {
                    "parameter_longname": "live.toggle[724]"
                },
                "obj-3::obj-22::obj-24": {
                    "parameter_longname": "live.toggle[728]"
                },
                "obj-3::obj-22::obj-28": {
                    "parameter_longname": "live.toggle[551]"
                },
                "obj-3::obj-22::obj-29": {
                    "parameter_longname": "live.toggle[729]"
                },
                "obj-3::obj-22::obj-4": {
                    "parameter_longname": "live.toggle[732]"
                },
                "obj-3::obj-22::obj-45": {
                    "parameter_longname": "live.toggle[725]"
                },
                "obj-3::obj-22::obj-46": {
                    "parameter_longname": "live.toggle[366]"
                },
                "obj-3::obj-22::obj-47": {
                    "parameter_longname": "live.toggle[723]"
                },
                "obj-3::obj-22::obj-48": {
                    "parameter_longname": "live.toggle[556]"
                },
                "obj-3::obj-22::obj-49": {
                    "parameter_longname": "live.toggle[371]"
                },
                "obj-3::obj-22::obj-5": {
                    "parameter_longname": "live.toggle[727]"
                },
                "obj-3::obj-22::obj-50": {
                    "parameter_longname": "live.toggle[370]"
                },
                "obj-3::obj-22::obj-53": {
                    "parameter_longname": "live.toggle[731]"
                },
                "obj-3::obj-22::obj-55": {
                    "parameter_longname": "live.toggle[553]"
                },
                "obj-3::obj-22::obj-56": {
                    "parameter_longname": "live.toggle[730]"
                },
                "obj-3::obj-22::obj-57": {
                    "parameter_longname": "live.toggle[368]"
                },
                "obj-3::obj-22::obj-6": {
                    "parameter_longname": "live.toggle[367]"
                },
                "obj-3::obj-22::obj-7": {
                    "parameter_longname": "live.toggle[369]"
                },
                "obj-3::obj-22::obj-8": {
                    "parameter_longname": "live.toggle[733]"
                },
                "obj-3::obj-23::obj-1": {
                    "parameter_longname": "live.toggle[707]"
                },
                "obj-3::obj-23::obj-10": {
                    "parameter_longname": "live.toggle[703]"
                },
                "obj-3::obj-23::obj-12": {
                    "parameter_longname": "live.toggle[356]"
                },
                "obj-3::obj-23::obj-13": {
                    "parameter_longname": "live.toggle[706]"
                },
                "obj-3::obj-23::obj-14": {
                    "parameter_longname": "live.toggle[534]"
                },
                "obj-3::obj-23::obj-15": {
                    "parameter_longname": "live.toggle[533]"
                },
                "obj-3::obj-23::obj-16": {
                    "parameter_longname": "live.toggle[538]"
                },
                "obj-3::obj-23::obj-20": {
                    "parameter_longname": "live.toggle[704]"
                },
                "obj-3::obj-23::obj-21": {
                    "parameter_longname": "live.toggle[358]"
                },
                "obj-3::obj-23::obj-24": {
                    "parameter_longname": "live.toggle[355]"
                },
                "obj-3::obj-23::obj-28": {
                    "parameter_longname": "live.toggle[709]"
                },
                "obj-3::obj-23::obj-29": {
                    "parameter_longname": "live.toggle[357]"
                },
                "obj-3::obj-23::obj-4": {
                    "parameter_longname": "live.toggle[537]"
                },
                "obj-3::obj-23::obj-45": {
                    "parameter_longname": "live.toggle[702]"
                },
                "obj-3::obj-23::obj-46": {
                    "parameter_longname": "live.toggle[354]"
                },
                "obj-3::obj-23::obj-47": {
                    "parameter_longname": "live.toggle[530]"
                },
                "obj-3::obj-23::obj-48": {
                    "parameter_longname": "live.toggle[699]"
                },
                "obj-3::obj-23::obj-49": {
                    "parameter_longname": "live.toggle[359]"
                },
                "obj-3::obj-23::obj-5": {
                    "parameter_longname": "live.toggle[708]"
                },
                "obj-3::obj-23::obj-50": {
                    "parameter_longname": "live.toggle[710]"
                },
                "obj-3::obj-23::obj-53": {
                    "parameter_longname": "live.toggle[535]"
                },
                "obj-3::obj-23::obj-55": {
                    "parameter_longname": "live.toggle[532]"
                },
                "obj-3::obj-23::obj-56": {
                    "parameter_longname": "live.toggle[701]"
                },
                "obj-3::obj-23::obj-57": {
                    "parameter_longname": "live.toggle[700]"
                },
                "obj-3::obj-23::obj-6": {
                    "parameter_longname": "live.toggle[531]"
                },
                "obj-3::obj-23::obj-7": {
                    "parameter_longname": "live.toggle[536]"
                },
                "obj-3::obj-23::obj-8": {
                    "parameter_longname": "live.toggle[705]"
                },
                "obj-3::obj-25::obj-1": {
                    "parameter_longname": "live.toggle[524]"
                },
                "obj-3::obj-25::obj-10": {
                    "parameter_longname": "live.toggle[527]"
                },
                "obj-3::obj-25::obj-12": {
                    "parameter_longname": "live.toggle[353]"
                },
                "obj-3::obj-25::obj-13": {
                    "parameter_longname": "live.toggle[613]"
                },
                "obj-3::obj-25::obj-14": {
                    "parameter_longname": "live.toggle[692]"
                },
                "obj-3::obj-25::obj-15": {
                    "parameter_longname": "live.toggle[610]"
                },
                "obj-3::obj-25::obj-16": {
                    "parameter_longname": "live.toggle[690]"
                },
                "obj-3::obj-25::obj-20": {
                    "parameter_longname": "live.toggle[691]"
                },
                "obj-3::obj-25::obj-21": {
                    "parameter_longname": "live.toggle[694]"
                },
                "obj-3::obj-25::obj-24": {
                    "parameter_longname": "live.toggle[350]"
                },
                "obj-3::obj-25::obj-28": {
                    "parameter_longname": "live.toggle[528]"
                },
                "obj-3::obj-25::obj-29": {
                    "parameter_longname": "live.toggle[696]"
                },
                "obj-3::obj-25::obj-4": {
                    "parameter_longname": "live.toggle[614]"
                },
                "obj-3::obj-25::obj-45": {
                    "parameter_longname": "live.toggle[611]"
                },
                "obj-3::obj-25::obj-46": {
                    "parameter_longname": "live.toggle[698]"
                },
                "obj-3::obj-25::obj-47": {
                    "parameter_longname": "live.toggle[526]"
                },
                "obj-3::obj-25::obj-48": {
                    "parameter_longname": "live.toggle[523]"
                },
                "obj-3::obj-25::obj-49": {
                    "parameter_longname": "live.toggle[689]"
                },
                "obj-3::obj-25::obj-5": {
                    "parameter_longname": "live.toggle[352]"
                },
                "obj-3::obj-25::obj-50": {
                    "parameter_longname": "live.toggle[612]"
                },
                "obj-3::obj-25::obj-53": {
                    "parameter_longname": "live.toggle[697]"
                },
                "obj-3::obj-25::obj-55": {
                    "parameter_longname": "live.toggle[695]"
                },
                "obj-3::obj-25::obj-56": {
                    "parameter_longname": "live.toggle[351]"
                },
                "obj-3::obj-25::obj-57": {
                    "parameter_longname": "live.toggle[525]"
                },
                "obj-3::obj-25::obj-6": {
                    "parameter_longname": "live.toggle[529]"
                },
                "obj-3::obj-25::obj-7": {
                    "parameter_longname": "live.toggle[693]"
                },
                "obj-3::obj-25::obj-8": {
                    "parameter_longname": "live.toggle[349]"
                },
                "obj-3::obj-27::obj-1": {
                    "parameter_longname": "live.toggle[563]"
                },
                "obj-3::obj-27::obj-10": {
                    "parameter_longname": "live.toggle[562]"
                },
                "obj-3::obj-27::obj-12": {
                    "parameter_longname": "live.toggle[736]"
                },
                "obj-3::obj-27::obj-13": {
                    "parameter_longname": "live.toggle[375]"
                },
                "obj-3::obj-27::obj-14": {
                    "parameter_longname": "live.toggle[374]"
                },
                "obj-3::obj-27::obj-15": {
                    "parameter_longname": "live.toggle[560]"
                },
                "obj-3::obj-27::obj-16": {
                    "parameter_longname": "live.toggle[739]"
                },
                "obj-3::obj-27::obj-20": {
                    "parameter_longname": "live.toggle[743]"
                },
                "obj-3::obj-27::obj-21": {
                    "parameter_longname": "live.toggle[564]"
                },
                "obj-3::obj-27::obj-24": {
                    "parameter_longname": "live.toggle[744]"
                },
                "obj-3::obj-27::obj-28": {
                    "parameter_longname": "live.toggle[372]"
                },
                "obj-3::obj-27::obj-29": {
                    "parameter_longname": "live.toggle[565]"
                },
                "obj-3::obj-27::obj-4": {
                    "parameter_longname": "live.toggle[746]"
                },
                "obj-3::obj-27::obj-45": {
                    "parameter_longname": "live.toggle[742]"
                },
                "obj-3::obj-27::obj-46": {
                    "parameter_longname": "live.toggle[741]"
                },
                "obj-3::obj-27::obj-47": {
                    "parameter_longname": "live.toggle[561]"
                },
                "obj-3::obj-27::obj-48": {
                    "parameter_longname": "live.toggle[740]"
                },
                "obj-3::obj-27::obj-49": {
                    "parameter_longname": "live.toggle[559]"
                },
                "obj-3::obj-27::obj-5": {
                    "parameter_longname": "live.toggle[373]"
                },
                "obj-3::obj-27::obj-50": {
                    "parameter_longname": "live.toggle[737]"
                },
                "obj-3::obj-27::obj-53": {
                    "parameter_longname": "live.toggle[735]"
                },
                "obj-3::obj-27::obj-55": {
                    "parameter_longname": "live.toggle[377]"
                },
                "obj-3::obj-27::obj-56": {
                    "parameter_longname": "live.toggle[745]"
                },
                "obj-3::obj-27::obj-57": {
                    "parameter_longname": "live.toggle[376]"
                },
                "obj-3::obj-27::obj-6": {
                    "parameter_longname": "live.toggle[738]"
                },
                "obj-3::obj-27::obj-7": {
                    "parameter_longname": "live.toggle[558]"
                },
                "obj-3::obj-27::obj-8": {
                    "parameter_longname": "live.toggle[557]"
                },
                "obj-3::obj-29::obj-1": {
                    "parameter_longname": "live.toggle[546]"
                },
                "obj-3::obj-29::obj-10": {
                    "parameter_longname": "live.toggle[719]"
                },
                "obj-3::obj-29::obj-12": {
                    "parameter_longname": "live.toggle[360]"
                },
                "obj-3::obj-29::obj-13": {
                    "parameter_longname": "live.toggle[539]"
                },
                "obj-3::obj-29::obj-14": {
                    "parameter_longname": "live.toggle[365]"
                },
                "obj-3::obj-29::obj-15": {
                    "parameter_longname": "live.toggle[363]"
                },
                "obj-3::obj-29::obj-16": {
                    "parameter_longname": "live.toggle[718]"
                },
                "obj-3::obj-29::obj-20": {
                    "parameter_longname": "live.toggle[547]"
                },
                "obj-3::obj-29::obj-21": {
                    "parameter_longname": "live.toggle[713]"
                },
                "obj-3::obj-29::obj-24": {
                    "parameter_longname": "live.toggle[712]"
                },
                "obj-3::obj-29::obj-28": {
                    "parameter_longname": "live.toggle[715]"
                },
                "obj-3::obj-29::obj-29": {
                    "parameter_longname": "live.toggle[541]"
                },
                "obj-3::obj-29::obj-4": {
                    "parameter_longname": "live.toggle[540]"
                },
                "obj-3::obj-29::obj-45": {
                    "parameter_longname": "live.toggle[543]"
                },
                "obj-3::obj-29::obj-46": {
                    "parameter_longname": "live.toggle[722]"
                },
                "obj-3::obj-29::obj-47": {
                    "parameter_longname": "live.toggle[721]"
                },
                "obj-3::obj-29::obj-48": {
                    "parameter_longname": "live.toggle[545]"
                },
                "obj-3::obj-29::obj-49": {
                    "parameter_longname": "live.toggle[717]"
                },
                "obj-3::obj-29::obj-5": {
                    "parameter_longname": "live.toggle[361]"
                },
                "obj-3::obj-29::obj-50": {
                    "parameter_longname": "live.toggle[542]"
                },
                "obj-3::obj-29::obj-53": {
                    "parameter_longname": "live.toggle[544]"
                },
                "obj-3::obj-29::obj-55": {
                    "parameter_longname": "live.toggle[362]"
                },
                "obj-3::obj-29::obj-56": {
                    "parameter_longname": "live.toggle[364]"
                },
                "obj-3::obj-29::obj-57": {
                    "parameter_longname": "live.toggle[711]"
                },
                "obj-3::obj-29::obj-6": {
                    "parameter_longname": "live.toggle[716]"
                },
                "obj-3::obj-29::obj-7": {
                    "parameter_longname": "live.toggle[720]"
                },
                "obj-3::obj-29::obj-8": {
                    "parameter_longname": "live.toggle[714]"
                },
                "obj-3::obj-2::obj-1": {
                    "parameter_longname": "live.toggle[480]"
                },
                "obj-3::obj-2::obj-10": {
                    "parameter_longname": "live.toggle[479]"
                },
                "obj-3::obj-2::obj-12": {
                    "parameter_longname": "live.toggle[956]"
                },
                "obj-3::obj-2::obj-13": {
                    "parameter_longname": "live.toggle[954]"
                },
                "obj-3::obj-2::obj-14": {
                    "parameter_longname": "live.toggle[952]"
                },
                "obj-3::obj-2::obj-15": {
                    "parameter_longname": "live.toggle[474]"
                },
                "obj-3::obj-2::obj-16": {
                    "parameter_longname": "live.toggle[951]"
                },
                "obj-3::obj-2::obj-20": {
                    "parameter_longname": "live.toggle[476]"
                },
                "obj-3::obj-2::obj-21": {
                    "parameter_longname": "live.toggle[477]"
                },
                "obj-3::obj-2::obj-24": {
                    "parameter_longname": "live.toggle[947]"
                },
                "obj-3::obj-2::obj-28": {
                    "parameter_longname": "live.toggle[946]"
                },
                "obj-3::obj-2::obj-29": {
                    "parameter_longname": "live.toggle[482]"
                },
                "obj-3::obj-2::obj-4": {
                    "parameter_longname": "live.toggle[950]"
                },
                "obj-3::obj-2::obj-45": {
                    "parameter_longname": "live.toggle[478]"
                },
                "obj-3::obj-2::obj-46": {
                    "parameter_longname": "live.toggle[948]"
                },
                "obj-3::obj-2::obj-47": {
                    "parameter_longname": "live.toggle[953]"
                },
                "obj-3::obj-2::obj-48": {
                    "parameter_longname": "live.toggle[945]"
                },
                "obj-3::obj-2::obj-49": {
                    "parameter_longname": "live.toggle[944]"
                },
                "obj-3::obj-2::obj-5": {
                    "parameter_longname": "live.toggle[481]"
                },
                "obj-3::obj-2::obj-50": {
                    "parameter_longname": "live.toggle[475]"
                },
                "obj-3::obj-2::obj-53": {
                    "parameter_longname": "live.toggle[941]"
                },
                "obj-3::obj-2::obj-55": {
                    "parameter_longname": "live.toggle[940]"
                },
                "obj-3::obj-2::obj-56": {
                    "parameter_longname": "live.toggle[957]"
                },
                "obj-3::obj-2::obj-57": {
                    "parameter_longname": "live.toggle[955]"
                },
                "obj-3::obj-2::obj-6": {
                    "parameter_longname": "live.toggle[949]"
                },
                "obj-3::obj-2::obj-7": {
                    "parameter_longname": "live.toggle[943]"
                },
                "obj-3::obj-2::obj-8": {
                    "parameter_longname": "live.toggle[942]"
                },
                "obj-3::obj-38::obj-1": {
                    "parameter_longname": "live.toggle[346]"
                },
                "obj-3::obj-38::obj-10": {
                    "parameter_longname": "live.toggle[645]"
                },
                "obj-3::obj-38::obj-12": {
                    "parameter_longname": "live.toggle[520]"
                },
                "obj-3::obj-38::obj-13": {
                    "parameter_longname": "live.toggle[604]"
                },
                "obj-3::obj-38::obj-14": {
                    "parameter_longname": "live.toggle[646]"
                },
                "obj-3::obj-38::obj-15": {
                    "parameter_longname": "live.toggle[345]"
                },
                "obj-3::obj-38::obj-16": {
                    "parameter_longname": "live.toggle[517]"
                },
                "obj-3::obj-38::obj-20": {
                    "parameter_longname": "live.toggle[686]"
                },
                "obj-3::obj-38::obj-21": {
                    "parameter_longname": "live.toggle[647]"
                },
                "obj-3::obj-38::obj-24": {
                    "parameter_longname": "live.toggle[687]"
                },
                "obj-3::obj-38::obj-28": {
                    "parameter_longname": "live.toggle[606]"
                },
                "obj-3::obj-38::obj-29": {
                    "parameter_longname": "live.toggle[605]"
                },
                "obj-3::obj-38::obj-4": {
                    "parameter_longname": "live.toggle[648]"
                },
                "obj-3::obj-38::obj-45": {
                    "parameter_longname": "live.toggle[347]"
                },
                "obj-3::obj-38::obj-46": {
                    "parameter_longname": "live.toggle[522]"
                },
                "obj-3::obj-38::obj-47": {
                    "parameter_longname": "live.toggle[519]"
                },
                "obj-3::obj-38::obj-48": {
                    "parameter_longname": "live.toggle[685]"
                },
                "obj-3::obj-38::obj-49": {
                    "parameter_longname": "live.toggle[518]"
                },
                "obj-3::obj-38::obj-5": {
                    "parameter_longname": "live.toggle[607]"
                },
                "obj-3::obj-38::obj-50": {
                    "parameter_longname": "live.toggle[348]"
                },
                "obj-3::obj-38::obj-53": {
                    "parameter_longname": "live.toggle[608]"
                },
                "obj-3::obj-38::obj-55": {
                    "parameter_longname": "live.toggle[602]"
                },
                "obj-3::obj-38::obj-56": {
                    "parameter_longname": "live.toggle[688]"
                },
                "obj-3::obj-38::obj-57": {
                    "parameter_longname": "live.toggle[521]"
                },
                "obj-3::obj-38::obj-6": {
                    "parameter_longname": "live.toggle[516]"
                },
                "obj-3::obj-38::obj-7": {
                    "parameter_longname": "live.toggle[609]"
                },
                "obj-3::obj-38::obj-8": {
                    "parameter_longname": "live.toggle[603]"
                },
                "obj-3::obj-40::obj-1": {
                    "parameter_longname": "live.toggle[641]"
                },
                "obj-3::obj-40::obj-10": {
                    "parameter_longname": "live.toggle[598]"
                },
                "obj-3::obj-40::obj-12": {
                    "parameter_longname": "live.toggle[601]"
                },
                "obj-3::obj-40::obj-13": {
                    "parameter_longname": "live.toggle[640]"
                },
                "obj-3::obj-40::obj-14": {
                    "parameter_longname": "live.toggle[638]"
                },
                "obj-3::obj-40::obj-15": {
                    "parameter_longname": "live.toggle[510]"
                },
                "obj-3::obj-40::obj-16": {
                    "parameter_longname": "live.toggle[514]"
                },
                "obj-3::obj-40::obj-20": {
                    "parameter_longname": "live.toggle[515]"
                },
                "obj-3::obj-40::obj-21": {
                    "parameter_longname": "live.toggle[596]"
                },
                "obj-3::obj-40::obj-24": {
                    "parameter_longname": "live.toggle[341]"
                },
                "obj-3::obj-40::obj-28": {
                    "parameter_longname": "live.toggle[595]"
                },
                "obj-3::obj-40::obj-29": {
                    "parameter_longname": "live.toggle[342]"
                },
                "obj-3::obj-40::obj-4": {
                    "parameter_longname": "live.toggle[512]"
                },
                "obj-3::obj-40::obj-45": {
                    "parameter_longname": "live.toggle[597]"
                },
                "obj-3::obj-40::obj-46": {
                    "parameter_longname": "live.toggle[639]"
                },
                "obj-3::obj-40::obj-47": {
                    "parameter_longname": "live.toggle[511]"
                },
                "obj-3::obj-40::obj-48": {
                    "parameter_longname": "live.toggle[637]"
                },
                "obj-3::obj-40::obj-49": {
                    "parameter_longname": "live.toggle[636]"
                },
                "obj-3::obj-40::obj-5": {
                    "parameter_longname": "live.toggle[344]"
                },
                "obj-3::obj-40::obj-50": {
                    "parameter_longname": "live.toggle[644]"
                },
                "obj-3::obj-40::obj-53": {
                    "parameter_longname": "live.toggle[600]"
                },
                "obj-3::obj-40::obj-55": {
                    "parameter_longname": "live.toggle[513]"
                },
                "obj-3::obj-40::obj-56": {
                    "parameter_longname": "live.toggle[643]"
                },
                "obj-3::obj-40::obj-57": {
                    "parameter_longname": "live.toggle[642]"
                },
                "obj-3::obj-40::obj-6": {
                    "parameter_longname": "live.toggle[343]"
                },
                "obj-3::obj-40::obj-7": {
                    "parameter_longname": "live.toggle[599]"
                },
                "obj-3::obj-40::obj-8": {
                    "parameter_longname": "live.toggle[340]"
                },
                "obj-3::obj-41::obj-1": {
                    "parameter_longname": "live.toggle[678]"
                },
                "obj-3::obj-41::obj-10": {
                    "parameter_longname": "live.toggle[506]"
                },
                "obj-3::obj-41::obj-12": {
                    "parameter_longname": "live.toggle[679]"
                },
                "obj-3::obj-41::obj-13": {
                    "parameter_longname": "live.toggle[504]"
                },
                "obj-3::obj-41::obj-14": {
                    "parameter_longname": "live.toggle[336]"
                },
                "obj-3::obj-41::obj-15": {
                    "parameter_longname": "live.toggle[677]"
                },
                "obj-3::obj-41::obj-16": {
                    "parameter_longname": "live.toggle[683]"
                },
                "obj-3::obj-41::obj-20": {
                    "parameter_longname": "live.toggle[593]"
                },
                "obj-3::obj-41::obj-21": {
                    "parameter_longname": "live.toggle[594]"
                },
                "obj-3::obj-41::obj-24": {
                    "parameter_longname": "live.toggle[684]"
                },
                "obj-3::obj-41::obj-28": {
                    "parameter_longname": "live.toggle[338]"
                },
                "obj-3::obj-41::obj-29": {
                    "parameter_longname": "live.toggle[680]"
                },
                "obj-3::obj-41::obj-4": {
                    "parameter_longname": "live.toggle[587]"
                },
                "obj-3::obj-41::obj-45": {
                    "parameter_longname": "live.toggle[337]"
                },
                "obj-3::obj-41::obj-46": {
                    "parameter_longname": "live.toggle[508]"
                },
                "obj-3::obj-41::obj-47": {
                    "parameter_longname": "live.toggle[592]"
                },
                "obj-3::obj-41::obj-48": {
                    "parameter_longname": "live.toggle[591]"
                },
                "obj-3::obj-41::obj-49": {
                    "parameter_longname": "live.toggle[590]"
                },
                "obj-3::obj-41::obj-5": {
                    "parameter_longname": "live.toggle[339]"
                },
                "obj-3::obj-41::obj-50": {
                    "parameter_longname": "live.toggle[505]"
                },
                "obj-3::obj-41::obj-53": {
                    "parameter_longname": "live.toggle[507]"
                },
                "obj-3::obj-41::obj-55": {
                    "parameter_longname": "live.toggle[588]"
                },
                "obj-3::obj-41::obj-56": {
                    "parameter_longname": "live.toggle[503]"
                },
                "obj-3::obj-41::obj-57": {
                    "parameter_longname": "live.toggle[509]"
                },
                "obj-3::obj-41::obj-6": {
                    "parameter_longname": "live.toggle[682]"
                },
                "obj-3::obj-41::obj-7": {
                    "parameter_longname": "live.toggle[681]"
                },
                "obj-3::obj-41::obj-8": {
                    "parameter_longname": "live.toggle[589]"
                },
                "obj-3::obj-42::obj-1": {
                    "parameter_longname": "live.toggle[633]"
                },
                "obj-3::obj-42::obj-10": {
                    "parameter_longname": "live.toggle[632]"
                },
                "obj-3::obj-42::obj-12": {
                    "parameter_longname": "live.toggle[500]"
                },
                "obj-3::obj-42::obj-13": {
                    "parameter_longname": "live.toggle[582]"
                },
                "obj-3::obj-42::obj-14": {
                    "parameter_longname": "live.toggle[333]"
                },
                "obj-3::obj-42::obj-15": {
                    "parameter_longname": "live.toggle[631]"
                },
                "obj-3::obj-42::obj-16": {
                    "parameter_longname": "live.toggle[628]"
                },
                "obj-3::obj-42::obj-20": {
                    "parameter_longname": "live.toggle[676]"
                },
                "obj-3::obj-42::obj-21": {
                    "parameter_longname": "live.toggle[498]"
                },
                "obj-3::obj-42::obj-24": {
                    "parameter_longname": "live.toggle[497]"
                },
                "obj-3::obj-42::obj-28": {
                    "parameter_longname": "live.toggle[581]"
                },
                "obj-3::obj-42::obj-29": {
                    "parameter_longname": "live.toggle[630]"
                },
                "obj-3::obj-42::obj-4": {
                    "parameter_longname": "live.toggle[332]"
                },
                "obj-3::obj-42::obj-45": {
                    "parameter_longname": "live.toggle[499]"
                },
                "obj-3::obj-42::obj-46": {
                    "parameter_longname": "live.toggle[502]"
                },
                "obj-3::obj-42::obj-47": {
                    "parameter_longname": "live.toggle[634]"
                },
                "obj-3::obj-42::obj-48": {
                    "parameter_longname": "live.toggle[629]"
                },
                "obj-3::obj-42::obj-49": {
                    "parameter_longname": "live.toggle[585]"
                },
                "obj-3::obj-42::obj-5": {
                    "parameter_longname": "live.toggle[583]"
                },
                "obj-3::obj-42::obj-50": {
                    "parameter_longname": "live.toggle[334]"
                },
                "obj-3::obj-42::obj-53": {
                    "parameter_longname": "live.toggle[580]"
                },
                "obj-3::obj-42::obj-55": {
                    "parameter_longname": "live.toggle[579]"
                },
                "obj-3::obj-42::obj-56": {
                    "parameter_longname": "live.toggle[335]"
                },
                "obj-3::obj-42::obj-57": {
                    "parameter_longname": "live.toggle[584]"
                },
                "obj-3::obj-42::obj-6": {
                    "parameter_longname": "live.toggle[586]"
                },
                "obj-3::obj-42::obj-7": {
                    "parameter_longname": "live.toggle[635]"
                },
                "obj-3::obj-42::obj-8": {
                    "parameter_longname": "live.toggle[501]"
                },
                "obj-3::obj-43::obj-1": {
                    "parameter_longname": "live.toggle[575]"
                },
                "obj-3::obj-43::obj-10": {
                    "parameter_longname": "live.toggle[623]"
                },
                "obj-3::obj-43::obj-12": {
                    "parameter_longname": "live.toggle[330]"
                },
                "obj-3::obj-43::obj-13": {
                    "parameter_longname": "live.toggle[616]"
                },
                "obj-3::obj-43::obj-14": {
                    "parameter_longname": "live.toggle[329]"
                },
                "obj-3::obj-43::obj-15": {
                    "parameter_longname": "live.toggle[493]"
                },
                "obj-3::obj-43::obj-16": {
                    "parameter_longname": "live.toggle[496]"
                },
                "obj-3::obj-43::obj-20": {
                    "parameter_longname": "live.toggle[624]"
                },
                "obj-3::obj-43::obj-21": {
                    "parameter_longname": "live.toggle[619]"
                },
                "obj-3::obj-43::obj-24": {
                    "parameter_longname": "live.toggle[495]"
                },
                "obj-3::obj-43::obj-28": {
                    "parameter_longname": "live.toggle[328]"
                },
                "obj-3::obj-43::obj-29": {
                    "parameter_longname": "live.toggle[622]"
                },
                "obj-3::obj-43::obj-4": {
                    "parameter_longname": "live.toggle[574]"
                },
                "obj-3::obj-43::obj-45": {
                    "parameter_longname": "live.toggle[620]"
                },
                "obj-3::obj-43::obj-46": {
                    "parameter_longname": "live.toggle[615]"
                },
                "obj-3::obj-43::obj-47": {
                    "parameter_longname": "live.toggle[618]"
                },
                "obj-3::obj-43::obj-48": {
                    "parameter_longname": "live.toggle[617]"
                },
                "obj-3::obj-43::obj-49": {
                    "parameter_longname": "live.toggle[625]"
                },
                "obj-3::obj-43::obj-5": {
                    "parameter_longname": "live.toggle[621]"
                },
                "obj-3::obj-43::obj-50": {
                    "parameter_longname": "live.toggle[626]"
                },
                "obj-3::obj-43::obj-53": {
                    "parameter_longname": "live.toggle[494]"
                },
                "obj-3::obj-43::obj-55": {
                    "parameter_longname": "live.toggle[627]"
                },
                "obj-3::obj-43::obj-56": {
                    "parameter_longname": "live.toggle[577]"
                },
                "obj-3::obj-43::obj-57": {
                    "parameter_longname": "live.toggle[576]"
                },
                "obj-3::obj-43::obj-6": {
                    "parameter_longname": "live.toggle[331]"
                },
                "obj-3::obj-43::obj-7": {
                    "parameter_longname": "live.toggle[492]"
                },
                "obj-3::obj-43::obj-8": {
                    "parameter_longname": "live.toggle[578]"
                },
                "obj-3::obj-44::obj-1": {
                    "parameter_longname": "live.toggle[795]"
                },
                "obj-3::obj-44::obj-10": {
                    "parameter_longname": "live.toggle[793]"
                },
                "obj-3::obj-44::obj-12": {
                    "parameter_longname": "live.toggle[395]"
                },
                "obj-3::obj-44::obj-13": {
                    "parameter_longname": "live.toggle[781]"
                },
                "obj-3::obj-44::obj-14": {
                    "parameter_longname": "live.toggle[780]"
                },
                "obj-3::obj-44::obj-15": {
                    "parameter_longname": "live.toggle[393]"
                },
                "obj-3::obj-44::obj-16": {
                    "parameter_longname": "live.toggle[397]"
                },
                "obj-3::obj-44::obj-20": {
                    "parameter_longname": "live.toggle[396]"
                },
                "obj-3::obj-44::obj-21": {
                    "parameter_longname": "live.toggle[787]"
                },
                "obj-3::obj-44::obj-24": {
                    "parameter_longname": "live.toggle[786]"
                },
                "obj-3::obj-44::obj-28": {
                    "parameter_longname": "live.toggle[400]"
                },
                "obj-3::obj-44::obj-29": {
                    "parameter_longname": "live.toggle[789]"
                },
                "obj-3::obj-44::obj-4": {
                    "parameter_longname": "live.toggle[788]"
                },
                "obj-3::obj-44::obj-45": {
                    "parameter_longname": "live.toggle[790]"
                },
                "obj-3::obj-44::obj-46": {
                    "parameter_longname": "live.toggle[398]"
                },
                "obj-3::obj-44::obj-47": {
                    "parameter_longname": "live.toggle[794]"
                },
                "obj-3::obj-44::obj-48": {
                    "parameter_longname": "live.toggle[399]"
                },
                "obj-3::obj-44::obj-49": {
                    "parameter_longname": "live.toggle[401]"
                },
                "obj-3::obj-44::obj-5": {
                    "parameter_longname": "live.toggle[792]"
                },
                "obj-3::obj-44::obj-50": {
                    "parameter_longname": "live.toggle[791]"
                },
                "obj-3::obj-44::obj-53": {
                    "parameter_longname": "live.toggle[782]"
                },
                "obj-3::obj-44::obj-55": {
                    "parameter_longname": "live.toggle[394]"
                },
                "obj-3::obj-44::obj-56": {
                    "parameter_longname": "live.toggle[779]"
                },
                "obj-3::obj-44::obj-57": {
                    "parameter_longname": "live.toggle[778]"
                },
                "obj-3::obj-44::obj-6": {
                    "parameter_longname": "live.toggle[785]"
                },
                "obj-3::obj-44::obj-7": {
                    "parameter_longname": "live.toggle[784]"
                },
                "obj-3::obj-44::obj-8": {
                    "parameter_longname": "live.toggle[783]"
                },
                "obj-3::obj-45::obj-1": {
                    "parameter_longname": "live.toggle[384]"
                },
                "obj-3::obj-45::obj-10": {
                    "parameter_longname": "live.toggle[775]"
                },
                "obj-3::obj-45::obj-12": {
                    "parameter_longname": "live.toggle[762]"
                },
                "obj-3::obj-45::obj-13": {
                    "parameter_longname": "live.toggle[760]"
                },
                "obj-3::obj-45::obj-14": {
                    "parameter_longname": "live.toggle[777]"
                },
                "obj-3::obj-45::obj-15": {
                    "parameter_longname": "live.toggle[392]"
                },
                "obj-3::obj-45::obj-16": {
                    "parameter_longname": "live.toggle[774]"
                },
                "obj-3::obj-45::obj-20": {
                    "parameter_longname": "live.toggle[764]"
                },
                "obj-3::obj-45::obj-21": {
                    "parameter_longname": "live.toggle[768]"
                },
                "obj-3::obj-45::obj-24": {
                    "parameter_longname": "live.toggle[766]"
                },
                "obj-3::obj-45::obj-28": {
                    "parameter_longname": "live.toggle[391]"
                },
                "obj-3::obj-45::obj-29": {
                    "parameter_longname": "live.toggle[390]"
                },
                "obj-3::obj-45::obj-4": {
                    "parameter_longname": "live.toggle[770]"
                },
                "obj-3::obj-45::obj-45": {
                    "parameter_longname": "live.toggle[773]"
                },
                "obj-3::obj-45::obj-46": {
                    "parameter_longname": "live.toggle[389]"
                },
                "obj-3::obj-45::obj-47": {
                    "parameter_longname": "live.toggle[388]"
                },
                "obj-3::obj-45::obj-48": {
                    "parameter_longname": "live.toggle[767]"
                },
                "obj-3::obj-45::obj-49": {
                    "parameter_longname": "live.toggle[765]"
                },
                "obj-3::obj-45::obj-5": {
                    "parameter_longname": "live.toggle[776]"
                },
                "obj-3::obj-45::obj-50": {
                    "parameter_longname": "live.toggle[771]"
                },
                "obj-3::obj-45::obj-53": {
                    "parameter_longname": "live.toggle[387]"
                },
                "obj-3::obj-45::obj-55": {
                    "parameter_longname": "live.toggle[386]"
                },
                "obj-3::obj-45::obj-56": {
                    "parameter_longname": "live.toggle[763]"
                },
                "obj-3::obj-45::obj-57": {
                    "parameter_longname": "live.toggle[385]"
                },
                "obj-3::obj-45::obj-6": {
                    "parameter_longname": "live.toggle[772]"
                },
                "obj-3::obj-45::obj-7": {
                    "parameter_longname": "live.toggle[769]"
                },
                "obj-3::obj-45::obj-8": {
                    "parameter_longname": "live.toggle[761]"
                },
                "obj-3::obj-5::obj-1": {
                    "parameter_longname": "live.toggle[473]"
                },
                "obj-3::obj-5::obj-10": {
                    "parameter_longname": "live.toggle[469]"
                },
                "obj-3::obj-5::obj-12": {
                    "parameter_longname": "live.toggle[937]"
                },
                "obj-3::obj-5::obj-13": {
                    "parameter_longname": "live.toggle[931]"
                },
                "obj-3::obj-5::obj-14": {
                    "parameter_longname": "live.toggle[926]"
                },
                "obj-3::obj-5::obj-15": {
                    "parameter_longname": "live.toggle[924]"
                },
                "obj-3::obj-5::obj-16": {
                    "parameter_longname": "live.toggle[468]"
                },
                "obj-3::obj-5::obj-20": {
                    "parameter_longname": "live.toggle[938]"
                },
                "obj-3::obj-5::obj-21": {
                    "parameter_longname": "live.toggle[467]"
                },
                "obj-3::obj-5::obj-24": {
                    "parameter_longname": "live.toggle[939]"
                },
                "obj-3::obj-5::obj-28": {
                    "parameter_longname": "live.toggle[932]"
                },
                "obj-3::obj-5::obj-29": {
                    "parameter_longname": "live.toggle[930]"
                },
                "obj-3::obj-5::obj-4": {
                    "parameter_longname": "live.toggle[472]"
                },
                "obj-3::obj-5::obj-45": {
                    "parameter_longname": "live.toggle[929]"
                },
                "obj-3::obj-5::obj-46": {
                    "parameter_longname": "live.toggle[927]"
                },
                "obj-3::obj-5::obj-47": {
                    "parameter_longname": "live.toggle[466]"
                },
                "obj-3::obj-5::obj-48": {
                    "parameter_longname": "live.toggle[928]"
                },
                "obj-3::obj-5::obj-49": {
                    "parameter_longname": "live.toggle[925]"
                },
                "obj-3::obj-5::obj-5": {
                    "parameter_longname": "live.toggle[470]"
                },
                "obj-3::obj-5::obj-50": {
                    "parameter_longname": "live.toggle[923]"
                },
                "obj-3::obj-5::obj-53": {
                    "parameter_longname": "live.toggle[935]"
                },
                "obj-3::obj-5::obj-55": {
                    "parameter_longname": "live.toggle[934]"
                },
                "obj-3::obj-5::obj-56": {
                    "parameter_longname": "live.toggle[933]"
                },
                "obj-3::obj-5::obj-57": {
                    "parameter_longname": "live.toggle[922]"
                },
                "obj-3::obj-5::obj-6": {
                    "parameter_longname": "live.toggle[465]"
                },
                "obj-3::obj-5::obj-7": {
                    "parameter_longname": "live.toggle[936]"
                },
                "obj-3::obj-5::obj-8": {
                    "parameter_longname": "live.toggle[471]"
                },
                "obj-3::obj-7::obj-1": {
                    "parameter_longname": "live.toggle[457]"
                },
                "obj-3::obj-7::obj-10": {
                    "parameter_longname": "live.toggle[904]"
                },
                "obj-3::obj-7::obj-12": {
                    "parameter_longname": "live.toggle[917]"
                },
                "obj-3::obj-7::obj-13": {
                    "parameter_longname": "live.toggle[916]"
                },
                "obj-3::obj-7::obj-14": {
                    "parameter_longname": "live.toggle[461]"
                },
                "obj-3::obj-7::obj-15": {
                    "parameter_longname": "live.toggle[456]"
                },
                "obj-3::obj-7::obj-16": {
                    "parameter_longname": "live.toggle[907]"
                },
                "obj-3::obj-7::obj-20": {
                    "parameter_longname": "live.toggle[906]"
                },
                "obj-3::obj-7::obj-21": {
                    "parameter_longname": "live.toggle[909]"
                },
                "obj-3::obj-7::obj-24": {
                    "parameter_longname": "live.toggle[908]"
                },
                "obj-3::obj-7::obj-28": {
                    "parameter_longname": "live.toggle[905]"
                },
                "obj-3::obj-7::obj-29": {
                    "parameter_longname": "live.toggle[921]"
                },
                "obj-3::obj-7::obj-4": {
                    "parameter_longname": "live.toggle[920]"
                },
                "obj-3::obj-7::obj-45": {
                    "parameter_longname": "live.toggle[462]"
                },
                "obj-3::obj-7::obj-46": {
                    "parameter_longname": "live.toggle[915]"
                },
                "obj-3::obj-7::obj-47": {
                    "parameter_longname": "live.toggle[914]"
                },
                "obj-3::obj-7::obj-48": {
                    "parameter_longname": "live.toggle[913]"
                },
                "obj-3::obj-7::obj-49": {
                    "parameter_longname": "live.toggle[912]"
                },
                "obj-3::obj-7::obj-5": {
                    "parameter_longname": "live.toggle[464]"
                },
                "obj-3::obj-7::obj-50": {
                    "parameter_longname": "live.toggle[459]"
                },
                "obj-3::obj-7::obj-53": {
                    "parameter_longname": "live.toggle[460]"
                },
                "obj-3::obj-7::obj-55": {
                    "parameter_longname": "live.toggle[911]"
                },
                "obj-3::obj-7::obj-56": {
                    "parameter_longname": "live.toggle[910]"
                },
                "obj-3::obj-7::obj-57": {
                    "parameter_longname": "live.toggle[458]"
                },
                "obj-3::obj-7::obj-6": {
                    "parameter_longname": "live.toggle[919]"
                },
                "obj-3::obj-7::obj-7": {
                    "parameter_longname": "live.toggle[463]"
                },
                "obj-3::obj-7::obj-8": {
                    "parameter_longname": "live.toggle[918]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}