include(GoogleTest)
add_executable(LRATest)
target_sources(LRATest 
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Rationals.cpp"
#    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Delta.cpp"
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Matrix.cpp"
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Polynomial.cpp"
    )

target_link_libraries(LRATest OpenSMT gtest gtest_main)

gtest_add_tests(TARGET LRATest)

add_executable(RewritingTest)
target_sources(RewritingTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_simplifyAssignment.cpp"
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Dominators.cpp"
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Rewriting.cpp"
    )

target_link_libraries(RewritingTest OpenSMT gtest gtest_main)

gtest_add_tests(TARGET RewritingTest)

add_executable(ExpressionsTest)
target_sources(ExpressionsTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_ArithmeticExpressions.cpp"
    )

target_link_libraries(ExpressionsTest OpenSMT gtest gtest_main)

gtest_add_tests(TARGET ExpressionsTest)

add_executable(TheorySimplificationsTest)
target_sources(TheorySimplificationsTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_TheorySimplifications.cc"
    )

target_link_libraries(TheorySimplificationsTest OpenSMT gtest gtest_main)

gtest_add_tests(TARGET TheorySimplificationsTest)

add_executable(EGraphTest)
target_sources(EGraphTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Egraph.cpp"
    )

target_link_libraries(EGraphTest OpenSMT gtest gtest_main)

gtest_add_tests(TARGET EGraphTest)

add_executable(LATest)
target_sources(LATest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Lookahead.cpp"
    )

target_link_libraries(LATest OpenSMT gtest gtest_main)


gtest_add_tests(TARGET LATest)

add_executable(SimplexTest)
target_sources(SimplexTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Simplex.cc"
    )

target_link_libraries(SimplexTest OpenSMT gtest gtest_main)

gtest_add_tests(TARGET SimplexTest)

add_executable(HermiteTest)
target_sources(HermiteTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_HNF.cpp"
    )

target_link_libraries(HermiteTest OpenSMT gtest gtest_main)

gtest_add_tests(TARGET HermiteTest)

add_executable(LIACutTest)
target_sources(LIACutTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_LIACutSolver.cpp"
    )

target_link_libraries(LIACutTest OpenSMT gtest gtest_main)

gtest_add_tests(TARGET LIACutTest)

add_executable(SubstitutionsTest)
target_sources(SubstitutionsTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_SubstitutionBreaker.cpp"
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_LIASubstitutionsRegression.cc"
    )

target_link_libraries(SubstitutionsTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET SubstitutionsTest)

add_executable(LogicMkTermsTest)
target_sources(LogicMkTermsTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_LogicMkTerms.cc"
    )

target_link_libraries(LogicMkTermsTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET LogicMkTermsTest)

add_executable(LIALogicMkTermsTest)
target_sources(LIALogicMkTermsTest
        PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_LIALogicMkTerms.cc"
        )

target_link_libraries(LIALogicMkTermsTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET LIALogicMkTermsTest)


add_executable(BoundTest)
target_sources(BoundTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Bounds.cc"
    )

target_link_libraries(BoundTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET BoundTest)

add_executable(ModelTest)
target_sources(ModelTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Model.cc"
    )

target_link_libraries(ModelTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET ModelTest)

add_executable(IteTest)
target_sources(IteTest
        PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Ites.cc"
        )


target_link_libraries(IteTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET IteTest)

add_executable(LIAStrengtheningTest)
target_sources(LIAStrengtheningTest
        PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_LIAStrengthening.cc"
        )


target_link_libraries(LIAStrengtheningTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET LIAStrengtheningTest)

add_executable(InterpolationTest)
target_sources(InterpolationTest
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_UFInterpolation.cc"
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_LRAInterpolation.cc"
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_LIAInterpolation.cc"
    )

target_link_libraries(InterpolationTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET InterpolationTest)

add_executable(ExplainTest)
target_sources(ExplainTest
        PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_Explain.cc"
        )

target_link_libraries(ExplainTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET ExplainTest)

add_executable(EnodeStoreTest)
target_sources(EnodeStoreTest
        PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/test_EnodeStore.cc"
        )

target_link_libraries(EnodeStoreTest OpenSMT gtest gtest_main)
gtest_add_tests(TARGET EnodeStoreTest)

