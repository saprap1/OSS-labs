add_library(MathFunctions mysqrt.cxx)

 target_include_directories(MathFunctions
            INTERFACE $../source
            PRIVATE $../bin
            )
install(TARGETS MathFunctions DESTINATION lib)

#install (TARGETS MathFunctions DESTINATION bin)
install (FILES MathFunctions.h DESTINATION include)