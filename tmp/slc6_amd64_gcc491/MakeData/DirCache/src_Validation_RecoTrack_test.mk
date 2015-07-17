ALL_COMMONRULES += src_Validation_RecoTrack_test
src_Validation_RecoTrack_test_parent := Validation/RecoTrack
src_Validation_RecoTrack_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_RecoTrack_test,src/Validation/RecoTrack/test,TEST))
