#!/bin/env python3
# -*- coding: utf-8 -*-

import sys
# from PIL import Image
from cmf import Cmf

if len(sys.argv) < 2:
	print("usage:\n\tpython3 extract_cmf_preview.py filename.cmf")
	sys.exit(0)

cmf = Cmf.from_file(sys.argv[1])

previewfile = open(sys.argv[1] + "_preview.data", "wb")
previewfile.write(cmf.preview_data)
previewfile.close()

# img = Image.frombuffer("RGBA", (cmf.preview_width, cmf.preview_height), cmf.preview_data)
# img.save(sys.argv[1] + ".png")
