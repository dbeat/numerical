# "intricacies" Target
# Copyright 2020, Francois Roy
#=============================================================================


# include_directories(${PETSC_INCLUDES})

ADD_EXECUTABLE(intricacies ex1.c)
TARGET_LINK_LIBRARIES(intricacies ${PETSC_LIBRARIES})


