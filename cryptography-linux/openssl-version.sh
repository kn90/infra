export OPENSSL_VERSION="openssl-3.1.7"
export OPENSSL_SHA256="053a31fa80cf4aebe1068c987d2ef1e44ce418881427c4464751ae800c31d06c"
# We need a base set of flags because on Windows using MSVC
# enable-ec_nistp_64_gcc_128 doesn't work since there's no 128-bit type
export OPENSSL_BUILD_FLAGS_WINDOWS="no-ssl3 no-ssl3-method no-zlib no-shared no-module no-comp no-dynamic-engine no-apps no-docs no-sm2-precomp no-atexit"
export OPENSSL_BUILD_FLAGS="${OPENSSL_BUILD_FLAGS_WINDOWS} enable-ec_nistp_64_gcc_128"
