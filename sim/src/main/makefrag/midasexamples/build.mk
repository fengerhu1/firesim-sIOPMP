# See LICENSE for license details.

$(FIRRTL_FILE) $(ANNO_FILE): $(TARGET_CP)
	@mkdir -p $(@D)
	java -cp $$(cat $(TARGET_CP)) freechips.rocketchip.system.Generator \
		--target-dir $(GENERATED_DIR) \
		--name $(long_name) \
		--top-module $(DESIGN_PACKAGE).$(DESIGN) \
		--configs $(TARGET_CONFIG_QUALIFIED)
