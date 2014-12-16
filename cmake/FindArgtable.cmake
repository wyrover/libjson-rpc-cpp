# Find argtable
#
# Find the argtable includes and library
# 
# if you nee to add a custom library search path, do it via via CMAKE_PREFIX_PATH 
# 
# This module defines
#  ARGTABLE_INCLUDE_DIRS, where to find header, etc.
#  ARGTABLE_LIBRARIES, the libraries needed to use gmp.
#  ARGTABLE_FOUND, If false, do not try to use gmp.

# only look in default directories
find_path(
	ARGTABLE_INCLUDE_DIR 
	NAMES argtable2.h
	DOC "argtable include dir"
	)

find_library(
	ARGTABLE_LIBRARY
	NAMES argtable2
	DOC "argtable library"
	)

set(ARGTABLE_INCLUDE_DIRS ${ARGTABLE_INCLUDE_DIR})
set(ARGTABLE_LIBRARIES ${ARGTABLE_LIBRARY})

# handle the QUIETLY and REQUIRED arguments and set ARGTABLE_FOUND to TRUE
# if all listed variables are TRUE, hide their existence from configuration view
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(argtable DEFAULT_MSG
	ARGTABLE_INCLUDE_DIR ARGTABLE_LIBRARY)
mark_as_advanced (ARGTABLE_INCLUDE_DIR ARGTABLE_LIBRARY)

