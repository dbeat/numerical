# "intricacies" Target
# Copyright 2020, Francois Roy
#=============================================================================


# https://calcul.math.cnrs.fr/attachments/spip/IMG/pdf/introduction.pdf

ADD_EXECUTABLE(intricacies ex1.c)
TARGET_LINK_LIBRARIES(intricacies ${PETSC_LIBRARIES})


