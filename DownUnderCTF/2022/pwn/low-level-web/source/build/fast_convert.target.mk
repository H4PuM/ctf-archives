# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := fast_convert
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=fast_convert' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-fPIC \
	-fno-exceptions \
	-U_FORTIFY_SOURCE \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Debug := \
	-I/usr/include/nodejs/include/node \
	-I/usr/include/nodejs/src \
	-I/usr/include/nodejs/deps/openssl/config \
	-I/usr/include/nodejs/deps/openssl/openssl/include \
	-I/usr/include/nodejs/deps/uv/include \
	-I/usr/include/nodejs/deps/zlib \
	-I/usr/include/nodejs/deps/v8/include \
	-I/app/node_modules/node-addon-api

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=fast_convert' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-fPIC \
	-fno-exceptions \
	-U_FORTIFY_SOURCE \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Release := \
	-I/usr/include/nodejs/include/node \
	-I/usr/include/nodejs/src \
	-I/usr/include/nodejs/deps/openssl/config \
	-I/usr/include/nodejs/deps/openssl/openssl/include \
	-I/usr/include/nodejs/deps/uv/include \
	-I/usr/include/nodejs/deps/zlib \
	-I/usr/include/nodejs/deps/v8/include \
	-I/app/node_modules/node-addon-api

OBJS := \
	$(obj).target/$(TARGET)/src/encoder.o \
	$(obj).target/$(TARGET)/src/index.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	-lnode

$(obj).target/fast_convert.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/fast_convert.node: LIBS := $(LIBS)
$(obj).target/fast_convert.node: TOOLSET := $(TOOLSET)
$(obj).target/fast_convert.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/fast_convert.node
# Add target alias
.PHONY: fast_convert
fast_convert: $(builddir)/fast_convert.node

# Copy this to the executable output path.
$(builddir)/fast_convert.node: TOOLSET := $(TOOLSET)
$(builddir)/fast_convert.node: $(obj).target/fast_convert.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/fast_convert.node
# Short alias for building this executable.
.PHONY: fast_convert.node
fast_convert.node: $(obj).target/fast_convert.node $(builddir)/fast_convert.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/fast_convert.node

