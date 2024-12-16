#!/bin/env python3
# -*- coding: utf-8 -*-

import sys
from pathlib import Path
from ore import Ore

# default filename for the one in Narbacular Drop
orefilename = "File.ore"
if len(sys.argv) > 1:
	orefilename = sys.argv[1]

# parse ore file
ore = Ore.from_file(orefilename)

# create output dir
orepath = Path(orefilename + ".d")
orepath.mkdir(exist_ok=True)

# grab directories
for directory in ore.directories:
	p = orepath / directory.name
	p.mkdir(exist_ok=True)

	for fil in directory.file_list.files:
		p = orepath / directory.name / fil.name
		print(f"writing \"{p}\"")
		fd = open(p, "wb")
		fd.write(fil.data)
		fd.close()

# grab loose files
for fil in ore.loose_files:
	p = orepath / fil.name
	print(f"writing \"{p}\"")
	fd = open(p, "wb")
	fd.write(fil.data)
	fd.close()
