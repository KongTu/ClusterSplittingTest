ALL_COMMONRULES += src_RiceHIG_Skim2013_test
src_RiceHIG_Skim2013_test_parent := RiceHIG/Skim2013
src_RiceHIG_Skim2013_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RiceHIG_Skim2013_test,src/RiceHIG/Skim2013/test,TEST))
