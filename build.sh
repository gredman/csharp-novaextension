#!/bin/zsh
set -e

APPBUNDLE=/Applications/Nova.app

MAKEFILE="$( pwd )/Makefile"
BASEDIR="$( pwd )/tree-sitter-c-sharp"
EXTENSIONDIR="$( pwd )/csharp.novaextension"

FRAMEWORKS_PATH="$APPBUNDLE/Contents/Frameworks/"

# - Build both arm64 (Apple Silicon) and x86_64 (Intel)
# - Require a minimum of macOS 11.0
# - Include the /src/ directory for headers (for `tree_sitter/parser.h`)
BUILD_FLAGS="-arch arm64 -arch x86_64 -mmacosx-version-min=11.0 -I${BASEDIR}/src/"

TMP_BUILD_DIR=`mktemp -d`

pushd "$BASEDIR"

CFLAGS="${BUILD_FLAGS} -O3" \
    CXXFLAGS="${BUILD_FLAGS} -O3" \
    LDFLAGS="${BUILD_FLAGS} -F${FRAMEWORKS_PATH} -framework SyntaxKit -rpath @loader_path/../Frameworks" \
    PREFIX="$TMP_BUILD_DIR" make all -f "$MAKEFILE"

cp -f "$BASEDIR/libtree-sitter-c.dylib" "$EXTENSIONDIR/Syntaxes/libtree-sitter-c_sharp.dylib"
echo copied library to $EXTENSIONDIR/Syntaxes

popd
