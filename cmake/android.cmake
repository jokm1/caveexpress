set(ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(ANDROID_ROOT ${ROOT_DIR}/android-project/)
set(MIN_ANDROID_SDK 10)
set(TARGET_ANDROID_SDK 13)

set(ANDROID 1)
set(HD_VERSION 1)

set(PERMISSIONS)
set(META_DATA)
set(ANDROID_REFERENCED_LIBS android.library.reference.1=google-play-services_lib)
set(ANDROID_NDK_ROOT $ENV{ANDROID_NDK})
set(ANDROID_SDK_ROOT $ENV{ANDROID_SDK})
set(ANDROID_NDK_STL "gnu-libstdc++")
set(ANDROID_NDK_NAME "android-ndk-r9d")
set(ANDROID_NDK_GCC_VERSION "4.8")

if (NOT ANDROID_NDK_ROOT)
message(FATAL_ERROR "ANDROID_NDK environment variable is not set")
endif()
if (NOT ANDROID_SDK_ROOT)
message(FATAL_ERROR "ANDROID_SDK environment variable is not set")
endif()
message("Android CPU arch: ${ANDROID_CPU}")
message("Android platform: ${ANDROID_API}")
message("Android NDK root: ${ANDROID_NDK_ROOT}")
message("Android SDK root: ${ANDROID_SDK_ROOT}")

list(APPEND PERMISSIONS "<uses-permission android:name=\"com.android.vending.BILLING\" />")

if (NOT HD_VERSION)
list(APPEND META_DATA "<meta-data android:value=\"true\" android:name=\"ADMOB_ALLOW_LOCATION_FOR_ADS\" />")
endif()
list(APPEND META_DATA "<meta-data android:name=\"com.google.android.gms.games.APP_ID\" android:value=\"@string/app_id\" />")
list(APPEND META_DATA "<meta-data android:name=\"com.google.android.gms.appstate.APP_ID\" android:value=\"@string/app_id\" />")
list(APPEND META_DATA "<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />")

if (DEBUG)
set(ANT_TARGET debug)
set(ANT_INSTALL_TARGET installd)
set(MANIFEST_DEBUGGABLE true)
else()
set(ANT_TARGET release)
set(ANT_INSTALL_TARGET installr)
set(MANIFEST_DEBUGGABLE false)
endif()

set(ANDROID_CPU "arm" CACHE STRING "Android NDK CPU architecture")
set_property(CACHE ANDROID_CPU PROPERTY STRINGS arm x86)
set(ANDROID_API "android-13" CACHE STRING "Android platform version")

if (${ANDROID_CPU} STREQUAL "arm")
set(ANDROID_NDK_ABI "armeabi-v7a-hard")
set(ANDROID_NDK_ABI_EXT "arm-linux-androideabi")
set(ANDROID_NDK_ARCH_CFLAGS "-march=armv7-a -mfpu=vfpv3-d16 -mfloat-abi=hard -mthumb -mhard-float -D_NDK_MATH_NO_SOFTFP=1")
set(ANDROID_NDK_ARCH_LDFLAGS "-Wl,--fix-cortex-a8")
set(ANDROID_NDK_CMATHLIB "m_hard")
set(ANDROID_NDK_GCC_PREFIX "arm-linux-androideabi")
set(ANDROID_NDK_SYSROOT_DIR "arch-arm")
else()
set(ANDROID_NDK_ABI "x86")
set(ANDROID_NDK_ABI_EXT "x86")
set(ANDROID_NDK_ARCH_CFLAGS "")
set(ANDROID_NDK_ARCH_LDFLAGS "")
set(ANDROID_NDK_CMATHLIB "m")
set(ANDROID_NDK_GCC_PREFIX "i686-linux-android")
set(ANDROID_NDK_SYSROOT_DIR "arch-x86")
endif()

set(ANDROID_NDK_EXE_EXT "")
set(ANDROID_SDK_TOOL_EXT "")

if (${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Darwin")
set(ANDROID_NDK_HOST "darwin-x86_64")
elseif (${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Linux")
set(ANDROID_NDK_HOST "linux-x86_64")
elseif (${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Windows")
set(ANDROID_NDK_HOST "windows")
set(ANDROID_NDK_EXE_EXT ".exe")
set(ANDROID_SDK_TOOL_EXT ".bat")
endif()

set(ANDROID_SDK_TOOL "${ANDROID_SDK_ROOT}/tools/android${ANDROID_SDK_TOOL_EXT}")
set(ANDROID_NDK_SYSROOT "${ANDROID_NDK_ROOT}/platforms/${ANDROID_API}/${ANDROID_NDK_SYSROOT_DIR}")
set(ANDROID_NDK_TOOLCHAIN_BIN "${ANDROID_NDK_ROOT}/toolchains/${ANDROID_NDK_ABI_EXT}-${ANDROID_NDK_GCC_VERSION}/prebuilt/${ANDROID_NDK_HOST}/bin")
set(ANDROID_NDK_STL_ROOT "${ANDROID_NDK_ROOT}/sources/cxx-stl/${ANDROID_NDK_STL}/${ANDROID_NDK_GCC_VERSION}")
set(ANDROID_NDK_STL_CXXFLAGS "-I${ANDROID_NDK_STL_ROOT}/include -I${ANDROID_NDK_STL_ROOT}/libs/${ANDROID_NDK_ABI}/include")
set(ANDROID_NDK_STL_LIBRARYPATH "${ANDROID_NDK_STL_ROOT}/libs/${ANDROID_NDK_ABI}")
set(ANDROID_NDK_STL_LDFLAGS "-lgnustl_static")
set(ANDROID_NDK_INCLUDES "-I${ANDROID_NDK_ROOT}/${ANDROID_API}/${ANDROID_NDK_SYSROOT_DIR}/usr/include")

set(ANDROID_NDK_GLOBAL_CFLAGS "-fPIC -fno-strict-aliasing -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes")
set(ANDROID_NDK_CXX_WARN_FLAGS "-Wall -Wno-multichar -Wextra -Wno-unused-parameter -Wno-unknown-pragmas -Wno-ignored-qualifiers -Wno-long-long -Wno-overloaded-virtual")
set(ANDROID_NDK_C_WARN_FLAGS "-Wall -Wno-multichar -Wextra -Wno-unused-parameter -Wno-unknown-pragmas -Wno-ignored-qualifiers -Wno-long-long")

if(CMAKE_VERSION VERSION_GREATER "3.0.99")
set(CMAKE_SYSTEM_NAME Android)
else()
set(CMAKE_SYSTEM_NAME Linux)
endif()
set(CMAKE_SYSTEM_VERSION 1)
set(COMPILING ON)
set(CMAKE_SKIP_RPATH ON)
set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)
set(CMAKE_SKIP_COMPATIBILITY_TESTS 1)

# find the ant tool
find_program(ANDROID_ANT "ant")
if (ANDROID_ANT)
message("ant tool found")
else()
message(FATAL_ERROR "ant tool NOT FOUND (must be in path)!")
endif()

# disable compiler detection
include(CMakeForceCompiler)
CMAKE_FORCE_C_COMPILER("${CMAKE_C_COMPILER}" GNU)
CMAKE_FORCE_CXX_COMPILER("${CMAKE_CXX_COMPILER}" GNU)

# define configurations
set(CMAKE_CONFIGURATION_TYPES Debug Release)

# standard libraries
set(CMAKE_C_STANDARD_LIBRARIES "-ldl -lGLESv1_CM -lGLESv2 -landroid -llog -lm -lz -lc -l${ANDROID_NDK_CMATHLIB} -lgcc")
set(CMAKE_CXX_STANDARD_LIBRARIES "${CMAKE_C_STANDARD_LIBRARIES} ${ANDROID_NDK_STL_LDFLAGS}")

# specify cross-compilers
set(CMAKE_C_COMPILER "${ANDROID_NDK_TOOLCHAIN_BIN}/${ANDROID_NDK_GCC_PREFIX}-gcc${ANDROID_NDK_EXE_EXT}" CACHE PATH "gcc" FORCE)
set(CMAKE_CXX_COMPILER "${ANDROID_NDK_TOOLCHAIN_BIN}/${ANDROID_NDK_GCC_PREFIX}-g++${ANDROID_NDK_EXE_EXT}" CACHE PATH "g++" FORCE)
set(CMAKE_AR "${ANDROID_NDK_TOOLCHAIN_BIN}/${ANDROID_NDK_GCC_PREFIX}-ar${ANDROID_NDK_EXE_EXT}" CACHE PATH "archive" FORCE)
set(CMAKE_LINKER "${ANDROID_NDK_TOOLCHAIN_BIN}/${ANDROID_NDK_GCC_PREFIX}-g++${ANDROID_NDK_EXE_EXT}" CACHE PATH "linker" FORCE)
set(CMAKE_RANLIB "${ANDROID_NDK_TOOLCHAIN_BIN}/${ANDROID_NDK_GCC_PREFIX}-ranlib${ANDROID_NDK_EXE_EXT}" CACHE PATH "ranlib" FORCE)

# only search for libraries and includes in the toolchain
set(CMAKE_FIND_ROOT_PATH ${ANDROID_NDK_SYSROOT})
set(CMAKE_SYSTEM_PROGRAM_PATH ${ANDROID_NDK_TOOLCHAIN_BIN})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(ANDROID_C_FLAGS "${ANDROID_NDK_ARCH_CFLAGS} --sysroot=${ANDROID_NDK_SYSROOT} ${ANDROID_NDK_GLOBAL_CFLAGS} -DANDROID -Wa,--noexecstack -Wformat -Werror=format-security -DGL_GLEXT_PROTOTYPES -DLUA_USE_LONGJMP")
set(ANDROID_LD_FLAGS "-shared --sysroot=${ANDROID_NDK_SYSROOT} -L${ANDROID_NDK_STL_LIBRARYPATH} -no-canonical-prefixes ${ANDROID_NDK_ARCH_LDFLAGS} -Wl,--no-warn-mismatch -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now")

set(CMAKE_CXX_FLAGS "${ANDROID_C_FLAGS} -std=c++11 ${ANDROID_NDK_STL_CXXFLAGS} ${ANDROID_NDK_INCLUDES} -fno-rtti -fno-exceptions ${ANDROID_NDK_CXX_WARN_FLAGS}")
set(CMAKE_CXX_FLAGS_RELEASE "-Os -fomit-frame-pointer -funswitch-loops -finline-limit=300 -DNDEBUG")
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -fno-omit-frame-pointer -g -DDEBUG")
set(CMAKE_C_FLAGS "${ANDROID_C_FLAGS} ${ANDROID_NDK_C_WARN_FLAGS} ${ANDROID_NDK_INCLUDES}")
set(CMAKE_C_FLAGS_RELEASE "-Os -fomit-frame-pointer -funswitch-loops -finline-limit=64 -DNDEBUG")
set(CMAKE_C_FLAGS_DEBUG "-O0 -fno-omit-frame-pointer -g -DDEBUG")

# shared linker flags (native code on Android always lives in DLLs)
set(CMAKE_SHARED_LINKER_FLAGS "${ANDROID_LD_FLAGS} -pthread -dead_strip")
set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "")
set(CMAKE_SHARED_LINKER_FLAGS_DEBUG "")

