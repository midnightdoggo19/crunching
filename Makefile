# Default values
VERSION ?= 0.1.6
OUTPUT_ZIP = crunching$(VERSION).zip

# Default target
all: $(OUTPUT_ZIP)

$(OUTPUT_ZIP):
	@echo "Zipping resource pack (version $(VERSION))..."
	zip -r $(OUTPUT_ZIP) * -x "*/.*" -x "__MACOSX/*"
	@echo "Done: $(OUTPUT_ZIP)"

clean:
	@echo "Cleaning up..."
	rm -f $(RESOURCE_PACK_NAME)_v*.zip
	@echo "Done."

# Phony targets
.PHONY: all clean
