ifeq ($(strip $(PyRiceHIGSkim2013)),)
PyRiceHIGSkim2013 := self/src/RiceHIG/Skim2013/python
src_RiceHIG_Skim2013_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RiceHIG/Skim2013/python)
PyRiceHIGSkim2013_files := $(patsubst src/RiceHIG/Skim2013/python/%,%,$(wildcard $(foreach dir,src/RiceHIG/Skim2013/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRiceHIGSkim2013_LOC_USE := self  
PyRiceHIGSkim2013_PACKAGE := self/src/RiceHIG/Skim2013/python
ALL_PRODS += PyRiceHIGSkim2013
PyRiceHIGSkim2013_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRiceHIGSkim2013,src/RiceHIG/Skim2013/python,src_RiceHIG_Skim2013_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRiceHIGSkim2013,src/RiceHIG/Skim2013/python))
endif
ALL_COMMONRULES += src_RiceHIG_Skim2013_python
src_RiceHIG_Skim2013_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RiceHIG_Skim2013_python,src/RiceHIG/Skim2013/python,PYTHON))
