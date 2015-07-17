src_RiceHIG_Skim2013_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/RiceHIG/Skim2013/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_RiceHIG_Skim2013_scripts,src/RiceHIG/Skim2013/scripts,$(SCRAMSTORENAME_BIN),*))
