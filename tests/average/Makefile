# Name of component under test
COMPONENT_NAME = average

# Dynamically generate absolute paths
# From https://matheusmbar.com/bugfree-robot/2019/04/05/makefile-first-test.html
# Can use echo to print each of instruction to test path output
MAKEFILE_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
# From current path, go up two parent directories
PROJECT_DIR = $(realpath $(MAKEFILE_DIR)../../)
SRC_DIR = $(PROJECT_DIR)/src
TEST_DIR = $(PROJECT_DIR)/tests

# Location of CppUTest
CPPUTEST_HOME ?= $(PROJECT_DIR)/tools/cpputest

# Include and source files for component under test
INCLUDE_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)
SRC_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)

# Include CppUTest header files
INCLUDE_DIRS += $(CPPUTEST_HOME)/include

# Directories containing the unit tests
TEST_SRC_DIRS = $(TEST_DIR)/$(COMPONENT_NAME)

# Run MakefileWorker.mk with the variables set in this Makefile
include $(CPPUTEST_HOME)/build/MakefileWorker.mk

log:
	@echo "$(CPPUTEST_HOME)"
