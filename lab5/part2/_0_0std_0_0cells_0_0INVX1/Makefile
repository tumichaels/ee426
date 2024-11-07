# Variables for inputs and outputs
INPUTS := in[0]
OUTPUTS := out
CELL_PROC := cell::ginvx0

NUM_TESTS := 1000
MAG_FILES := mag/_0_0std_0_0cells_0_0INVX1.rect mag/welltap_svt.rect

# List of all pairs of inputs and outputs (for the default target)
PAIRS := $(foreach input,$(INPUTS),$(foreach output,$(OUTPUTS),$(input)_$(output)))

# Default target to run command on all pairs
all: $(MAG_FILES) $(PAIRS)

mag/%.rect : ../../part1/mag/%.rect
	cp $< $@

# Rule to process each pair
$(PAIRS):
	$(eval in :=$(shell echo $@ | cut -d '_' -f1))
	$(eval out :=$(shell echo $@ | cut -d '_' -f2))
	echo Processing input='$(in)' and output='$(out)'; 

    # Custom command to run on the pair $(input) and $(output)
    # Filling in Top act template, remove brackets from proccess name
	@sed -e "s/{{TEST_NAME}}/$(shell echo $@ | tr -d '[]')/g" \
	-e "s/{{NUM_TESTS}}/${NUM_TESTS}/g" \
	-e "s/{{CELL_PROC}}/${CELL_PROC}/g" \
	-e "s/{{IN}}/$(in)/g" \
	-e "s/{{OUT}}/$(out)/g" \
	top-template.act > top.act

    # Filling in interact_script
	sed -e "s/{{TOP_PROC}}/$(shell echo $@ | tr -d '[]')/g" interact_script_template > interact_script
	
    # Run Interact Script
	interact -Tsky130l < interact_script

	-mkdir final_layouts/$(shell echo $@ | tr -d '[]')
	cp output.def final_layouts/$(shell echo $@ | tr -d '[]')/output.def
	cp output.lef final_layouts/$(shell echo $@ | tr -d '[]')/output.lef
	cp output.guide final_layouts/$(shell echo $@ | tr -d '[]')/output.guide


# Phony target to clean up generated files
.PHONY: clean
clean:
	rm -f dali*
	(cd final_rect && rm -f *)