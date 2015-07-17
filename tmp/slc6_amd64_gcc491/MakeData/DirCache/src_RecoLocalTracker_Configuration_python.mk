ifeq ($(strip $(PyRecoLocalTrackerConfiguration)),)
PyRecoLocalTrackerConfiguration := self/src/RecoLocalTracker/Configuration/python
src_RecoLocalTracker_Configuration_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoLocalTracker/Configuration/python)
PyRecoLocalTrackerConfiguration_files := $(patsubst src/RecoLocalTracker/Configuration/python/%,%,$(wildcard $(foreach dir,src/RecoLocalTracker/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoLocalTrackerConfiguration_LOC_USE := self  
PyRecoLocalTrackerConfiguration_PACKAGE := self/src/RecoLocalTracker/Configuration/python
ALL_PRODS += PyRecoLocalTrackerConfiguration
PyRecoLocalTrackerConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoLocalTrackerConfiguration,src/RecoLocalTracker/Configuration/python,src_RecoLocalTracker_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoLocalTrackerConfiguration,src/RecoLocalTracker/Configuration/python))
endif
ALL_COMMONRULES += src_RecoLocalTracker_Configuration_python
src_RecoLocalTracker_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoLocalTracker_Configuration_python,src/RecoLocalTracker/Configuration/python,PYTHON))
