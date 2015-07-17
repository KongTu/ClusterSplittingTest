ifeq ($(strip $(PyAppeltelHIRun2015Ana)),)
PyAppeltelHIRun2015Ana := self/src/Appeltel/HIRun2015Ana/python
src_Appeltel_HIRun2015Ana_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Appeltel/HIRun2015Ana/python)
PyAppeltelHIRun2015Ana_files := $(patsubst src/Appeltel/HIRun2015Ana/python/%,%,$(wildcard $(foreach dir,src/Appeltel/HIRun2015Ana/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyAppeltelHIRun2015Ana_LOC_USE := self  
PyAppeltelHIRun2015Ana_PACKAGE := self/src/Appeltel/HIRun2015Ana/python
ALL_PRODS += PyAppeltelHIRun2015Ana
PyAppeltelHIRun2015Ana_INIT_FUNC        += $$(eval $$(call PythonProduct,PyAppeltelHIRun2015Ana,src/Appeltel/HIRun2015Ana/python,src_Appeltel_HIRun2015Ana_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyAppeltelHIRun2015Ana,src/Appeltel/HIRun2015Ana/python))
endif
ALL_COMMONRULES += src_Appeltel_HIRun2015Ana_python
src_Appeltel_HIRun2015Ana_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Appeltel_HIRun2015Ana_python,src/Appeltel/HIRun2015Ana/python,PYTHON))
