SHELL		:= /bin/sh

INP		+= examples
INP		+= README.md
INP		+= tietreport.cls
INP		+= LICENSE

VER		:= $(shell cat VERSION)

TMP		:= tmp-$(shell echo $$RANDOM)
TMP_DECMP	:= $(TMP)/tietreport

OUT_BASE	:= tietreport-$(VER)

ARC_GZ		:= release/$(OUT_BASE).tar.gz
TMP_GZ		:= $(TMP)/$(OUT_BASE).tar.gz
ARC_ZIP		:= release/$(OUT_BASE).zip
TMP_ZIP		:= $(TMP)/$(OUT_BASE).zip

OUT		:= $(ARC_GZ) $(ARC_ZIP)

all : $(OUT)
	rm -rf $(TMP)

release :
	mkdir -p release

$(TMP_DECMP) : 
	mkdir -p $(@)
	cp -r -t $(@) $(INP)

$(TMP_GZ) : $(TMP_DECMP)
	tar -czf $(@) -C $(TMP)	\
	  $(shell basename $(<))

$(ARC_GZ) : release $(TMP_GZ)
	cp $(TMP_GZ) $(@)

$(TMP_ZIP) : $(TMP_DECMP)
	cd $(shell dirname $(<))	\
	; zip -r $(shell basename $(@)) \
	      $(shell basename $(<))

$(ARC_ZIP) : release $(TMP_ZIP)
	cp $(TMP_ZIP) $(@)

clean :
	rm -rf release
