TEMPLATE := featureGraphic_clean.png
LANG_FILES := $(wildcard translations/*.txt)
BASE_OUTPUT_DIR := ../fastlane/metadata/android
LANG_DIRS := $(patsubst translations/%.txt,$(BASE_OUTPUT_DIR)/%/images, $(LANG_FILES))
PNG_FILES := $(patsubst translations/%.txt, $(BASE_OUTPUT_DIR)/%/images/featureGraphic.png, $(LANG_FILES))

all: $(PNG_FILES)

$(BASE_OUTPUT_DIR)/%/images/featureGraphic.png: translations/%.txt $(TEMPLATE)
	@mkdir -p $(dir $@)
	@TRANSLATION_CONTENT=$$(cat $< ); \
	convert $(TEMPLATE) \
	    -gravity West -font 'Fira-Sans-Bold' -pointsize 75 -annotate +350-80 "Hypatia" \
		-gravity West -font 'Fira-Sans' -pointsize 45 -annotate +350+70 "$$TRANSLATION_CONTENT" $@
	@pngquant --force --ext .png --skip-if-larger --quality=65-80 $@

clean:
	@rm -f $(PNG_FILES)

.PHONY: all clean
