# Variables to specify directories
MAG_DIR := mag
MAG_FILES := $(wildcard $(MAG_DIR)/*.mag)
MAG_RECT_FILES := $(MAG_FILES:.mag=.rect)

FINAL_RECT_DIR := final_rect
FINAL_LAYOUT_DIR := final_layout
FINAL_RECT_FILES := $(wildcard $(FINAL_RECT_DIR)/*.rect)
FINAL_TCL_FILES := $(patsubst $(FINAL_RECT_DIR)/%.rect, $(FINAL_LAYOUT_DIR)/%.tcl, $(FINAL_RECT_FILES))
FINAL_MAG_FILES := $(FINAL_TCL_FILES:.tcl=.mag)


# Default target
all: final_layout

# Rule to convert .mag to .rect
$(MAG_DIR)/%.rect: $(MAG_DIR)/%.mag
	mag2rect_sky130.py $< > $@

# Rule to convert .mag to .rect
$(FINAL_LAYOUT_DIR)/%.tcl: $(FINAL_RECT_DIR)/%.rect
	mag.pl -prboundary $< > $@

# New target that depends on the .rect files
$(FINAL_RECT_FILES): $(MAG_RECT_FILES)
	interact -Tsky130l < interact_script


# Rule to convert .mag to .rect
$(FINAL_LAYOUT_DIR)/%.mag: $(FINAL_LAYOUT_DIR)/%.tcl
	magic -Tsky130l @ $< -noconsole < magic_script
	mv *.mag $(FINAL_LAYOUT_DIR)/

final_layout : $(FINAL_MAG_FILES) output.def output.lef
	cp output.def final_layout/output.def
	cp output.lef final_layout/output.lef


# Phony target to clean up generated files
.PHONY: clean
clean:
	rm -f *.log