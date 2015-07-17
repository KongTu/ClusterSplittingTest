ALL_SUBSYSTEMS+=Appeltel
subdirs_src_Appeltel = src_Appeltel_HIRun2015Ana
ALL_PACKAGES += RECO_v3_06192015/crab_RECO_HiTracking_splitting_jet100trk10_mixtriplet_v6
subdirs_src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet100trk10_mixtriplet_v6 := src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet100trk10_mixtriplet_v6_results src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet100trk10_mixtriplet_v6_inputs
ALL_PACKAGES += RECO_v3_06192015/crab_RECO_HiTracking_splitting_jet100trk10_mixtriplet_v5
subdirs_src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet100trk10_mixtriplet_v5 := src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet100trk10_mixtriplet_v5_inputs
ALL_PACKAGES += RECO_splitting_v2_06142015/job
subdirs_src_RECO_splitting_v2_06142015_job := 
ALL_SUBSYSTEMS+=Validation
subdirs_src_Validation = src_Validation_RecoTrack
ALL_SUBSYSTEMS+=RecoHI
subdirs_src_RecoHI = src_RecoHI_HiTracking
ALL_PACKAGES += RECO_splitting_v2_06142015/share
subdirs_src_RECO_splitting_v2_06142015_share := 
ALL_PACKAGES += FWCore/Version
subdirs_src_FWCore_Version := src_FWCore_Version_src src_FWCore_Version_interface
ALL_PACKAGES += RECO_v3_06142015/crab_RECO_HiTracking
subdirs_src_RECO_v3_06142015_crab_RECO_HiTracking := src_RECO_v3_06142015_crab_RECO_HiTracking_results src_RECO_v3_06142015_crab_RECO_HiTracking_inputs
ALL_SUBSYSTEMS+=RECO_v3_06192015
subdirs_src_RECO_v3_06192015 = src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet100trk10_mixtriplet_v6 src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet100trk10_mixtriplet_v5 src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet50trk10_mixtriplet_v5
ALL_PACKAGES += RECO_v3_06142015/crab_RECO_HiTracking_splitting_jet50trk10_triplet
subdirs_src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet50trk10_triplet := src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet50trk10_triplet_results
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
ALL_SUBSYSTEMS+=RECO_splitting_v2_06142015
subdirs_src_RECO_splitting_v2_06142015 = src_RECO_splitting_v2_06142015_log src_RECO_splitting_v2_06142015_job src_RECO_splitting_v2_06142015_res src_RECO_splitting_v2_06142015_share
ALL_PACKAGES += RECO_v2_06142015/res
subdirs_src_RECO_v2_06142015_res := 
ALL_PACKAGES += RecoLocalTracker/Configuration
subdirs_src_RecoLocalTracker_Configuration := src_RecoLocalTracker_Configuration_python
ALL_PACKAGES += Configuration/StandardSequences
subdirs_src_Configuration_StandardSequences := src_Configuration_StandardSequences_python
ALL_PACKAGES += RiceHIG/Skim2013
subdirs_src_RiceHIG_Skim2013 := src_RiceHIG_Skim2013_src src_RiceHIG_Skim2013_out src_RiceHIG_Skim2013_macros src_RiceHIG_Skim2013_scripts src_RiceHIG_Skim2013_test src_RiceHIG_Skim2013_python src_RiceHIG_Skim2013_pars src_RiceHIG_Skim2013_data
ALL_PACKAGES += RECO_v3_06142015/crab_RECO_HiTracking_splitting_jet70trk15
subdirs_src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet70trk15 := src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet70trk15_results src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet70trk15_inputs
ALL_PACKAGES += RECO_splitting_v2_06142015/log
subdirs_src_RECO_splitting_v2_06142015_log := 
ALL_SUBSYSTEMS+=Configuration
subdirs_src_Configuration = src_Configuration_StandardSequences
ALL_COMMONRULES += src_Appeltel_HIRun2015Ana_test
src_Appeltel_HIRun2015Ana_test_parent := Appeltel/HIRun2015Ana
src_Appeltel_HIRun2015Ana_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Appeltel_HIRun2015Ana_test,src/Appeltel/HIRun2015Ana/test,TEST))
ALL_SUBSYSTEMS+=RECO_v3_06142015
subdirs_src_RECO_v3_06142015 = src_RECO_v3_06142015_crab_RECO_HiTracking src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet50trk10_triplet src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet70trk15 src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet50trk10_mixtriplet src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet40trk10_mixtriplet
ALL_PACKAGES += Appeltel/HIRun2015Ana
subdirs_src_Appeltel_HIRun2015Ana := src_Appeltel_HIRun2015Ana_src src_Appeltel_HIRun2015Ana_macros src_Appeltel_HIRun2015Ana_test src_Appeltel_HIRun2015Ana_python
ALL_PACKAGES += RECO_v3_06142015/crab_RECO_HiTracking_splitting_jet40trk10_mixtriplet
subdirs_src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet40trk10_mixtriplet := 
ALL_PACKAGES += Validation/RecoTrack
subdirs_src_Validation_RecoTrack := src_Validation_RecoTrack_src src_Validation_RecoTrack_plugins src_Validation_RecoTrack_test src_Validation_RecoTrack_python src_Validation_RecoTrack_doc
ALL_SUBSYSTEMS+=FWCore
subdirs_src_FWCore = src_FWCore_Version
ALL_PACKAGES += RECO_v3_06192015/crab_RECO_HiTracking_splitting_jet50trk10_mixtriplet_v5
subdirs_src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet50trk10_mixtriplet_v5 := src_RECO_v3_06192015_crab_RECO_HiTracking_splitting_jet50trk10_mixtriplet_v5_results
ALL_PACKAGES += RECO_splitting_v2_06142015/res
subdirs_src_RECO_splitting_v2_06142015_res := 
ALL_PACKAGES += RECO_v2_06142015/share
subdirs_src_RECO_v2_06142015_share := 
src_RiceHIG_Skim2013_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/RiceHIG/Skim2013/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_RiceHIG_Skim2013_scripts,src/RiceHIG/Skim2013/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_PACKAGES += RECO_v2_06142015/log
subdirs_src_RECO_v2_06142015_log := 
ifeq ($(strip $(PyRecoHIHiTracking)),)
PyRecoHIHiTracking := self/src/RecoHI/HiTracking/python
src_RecoHI_HiTracking_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoHI/HiTracking/python)
PyRecoHIHiTracking_files := $(patsubst src/RecoHI/HiTracking/python/%,%,$(wildcard $(foreach dir,src/RecoHI/HiTracking/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoHIHiTracking_LOC_USE := self  
PyRecoHIHiTracking_PACKAGE := self/src/RecoHI/HiTracking/python
ALL_PRODS += PyRecoHIHiTracking
PyRecoHIHiTracking_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoHIHiTracking,src/RecoHI/HiTracking/python,src_RecoHI_HiTracking_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoHIHiTracking,src/RecoHI/HiTracking/python))
endif
ALL_COMMONRULES += src_RecoHI_HiTracking_python
src_RecoHI_HiTracking_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoHI_HiTracking_python,src/RecoHI/HiTracking/python,PYTHON))
ALL_PACKAGES += RECO_v3_06142015/crab_RECO_HiTracking_splitting_jet50trk10_mixtriplet
subdirs_src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet50trk10_mixtriplet := src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet50trk10_mixtriplet_results src_RECO_v3_06142015_crab_RECO_HiTracking_splitting_jet50trk10_mixtriplet_inputs
ALL_SUBSYSTEMS+=RiceHIG
subdirs_src_RiceHIG = src_RiceHIG_ppRecoOnHiPeripheral src_RiceHIG_Skim2013 src_RiceHIG_FlowCorrAna
ALL_PACKAGES += RiceHIG/FlowCorrAna
subdirs_src_RiceHIG_FlowCorrAna := src_RiceHIG_FlowCorrAna_DiHadronCorrelationAnalyzer
ifeq ($(strip $(PyValidationRecoTrack)),)
PyValidationRecoTrack := self/src/Validation/RecoTrack/python
src_Validation_RecoTrack_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Validation/RecoTrack/python)
PyValidationRecoTrack_files := $(patsubst src/Validation/RecoTrack/python/%,%,$(wildcard $(foreach dir,src/Validation/RecoTrack/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyValidationRecoTrack_LOC_USE := self  
PyValidationRecoTrack_PACKAGE := self/src/Validation/RecoTrack/python
ALL_PRODS += PyValidationRecoTrack
PyValidationRecoTrack_INIT_FUNC        += $$(eval $$(call PythonProduct,PyValidationRecoTrack,src/Validation/RecoTrack/python,src_Validation_RecoTrack_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyValidationRecoTrack,src/Validation/RecoTrack/python))
endif
ALL_COMMONRULES += src_Validation_RecoTrack_python
src_Validation_RecoTrack_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_RecoTrack_python,src/Validation/RecoTrack/python,PYTHON))
ALL_SUBSYSTEMS+=RecoLocalTracker
subdirs_src_RecoLocalTracker = src_RecoLocalTracker_Configuration
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
ifeq ($(strip $(RecoHIHiTrackingTest)),)
RecoHIHiTrackingTest := self/src/RecoHI/HiTracking/test
RecoHIHiTrackingTest_files := $(patsubst src/RecoHI/HiTracking/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoHI/HiTracking/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoHI/HiTracking/test/$(file). Please fix src/RecoHI/HiTracking/test/BuildFile.))))
RecoHIHiTrackingTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoHI/HiTracking/test/BuildFile
RecoHIHiTrackingTest_LOC_USE := self  root RecoHI/HiTracking RecoPixelVertexing/PixelLowPtUtilities CommonTools/UtilAlgos
RecoHIHiTrackingTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoHIHiTrackingTest,RecoHIHiTrackingTest,$(SCRAMSTORENAME_LIB),src/RecoHI/HiTracking/test))
RecoHIHiTrackingTest_PACKAGE := self/src/RecoHI/HiTracking/test
ALL_PRODS += RecoHIHiTrackingTest
RecoHIHiTrackingTest_INIT_FUNC        += $$(eval $$(call Library,RecoHIHiTrackingTest,src/RecoHI/HiTracking/test,src_RecoHI_HiTracking_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
RecoHIHiTrackingTest_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoHIHiTrackingTest,src/RecoHI/HiTracking/test))
endif
ALL_COMMONRULES += src_RecoHI_HiTracking_test
src_RecoHI_HiTracking_test_parent := RecoHI/HiTracking
src_RecoHI_HiTracking_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoHI_HiTracking_test,src/RecoHI/HiTracking/test,TEST))
ALL_PACKAGES += RECO_v2_06142015/job
subdirs_src_RECO_v2_06142015_job := 
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
ALL_PACKAGES += RiceHIG/ppRecoOnHiPeripheral
subdirs_src_RiceHIG_ppRecoOnHiPeripheral := 
ALL_COMMONRULES += src_Validation_RecoTrack_test
src_Validation_RecoTrack_test_parent := Validation/RecoTrack
src_Validation_RecoTrack_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_RecoTrack_test,src/Validation/RecoTrack/test,TEST))
ALL_SUBSYSTEMS+=RECO_v2_06142015
subdirs_src_RECO_v2_06142015 = src_RECO_v2_06142015_log src_RECO_v2_06142015_job src_RECO_v2_06142015_res src_RECO_v2_06142015_share
ALL_COMMONRULES += src_RiceHIG_Skim2013_test
src_RiceHIG_Skim2013_test_parent := RiceHIG/Skim2013
src_RiceHIG_Skim2013_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RiceHIG_Skim2013_test,src/RiceHIG/Skim2013/test,TEST))
ALL_PACKAGES += RecoHI/HiTracking
subdirs_src_RecoHI_HiTracking := src_RecoHI_HiTracking_src src_RecoHI_HiTracking_plugins src_RecoHI_HiTracking_interface src_RecoHI_HiTracking_test src_RecoHI_HiTracking_python
ifeq ($(strip $(PyConfigurationStandardSequences)),)
PyConfigurationStandardSequences := self/src/Configuration/StandardSequences/python
src_Configuration_StandardSequences_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/StandardSequences/python)
PyConfigurationStandardSequences_files := $(patsubst src/Configuration/StandardSequences/python/%,%,$(wildcard $(foreach dir,src/Configuration/StandardSequences/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationStandardSequences_LOC_USE := self  
PyConfigurationStandardSequences_PACKAGE := self/src/Configuration/StandardSequences/python
ALL_PRODS += PyConfigurationStandardSequences
PyConfigurationStandardSequences_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationStandardSequences,src/Configuration/StandardSequences/python,src_Configuration_StandardSequences_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationStandardSequences,src/Configuration/StandardSequences/python))
endif
ALL_COMMONRULES += src_Configuration_StandardSequences_python
src_Configuration_StandardSequences_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_StandardSequences_python,src/Configuration/StandardSequences/python,PYTHON))
