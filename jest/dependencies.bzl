"Runtime starlark dependencies"

load("//jest/private:maybe.bzl", http_archive = "maybe_http_archive")

# buildifier: disable=function-docstring
def rules_jest_dependencies():
    http_archive(
        name = "bazel_skylib",
        sha256 = "b8a1527901774180afc798aeb28c4634bdccf19c4d98e7bdd1ce79d1fe9aaad7",
        urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.4.1/bazel-skylib-1.4.1.tar.gz"],
    )

    http_archive(
        name = "aspect_bazel_lib",
        sha256 = "d488d8ecca98a4042442a4ae5f1ab0b614f896c0ebf6e3eafff363bcc51c6e62",
        strip_prefix = "bazel-lib-1.33.0",
        url = "https://github.com/aspect-build/bazel-lib/releases/download/v1.33.0/bazel-lib-v1.33.0.tar.gz",
    )

    http_archive(
        name = "aspect_rules_js",
        sha256 = "7b2a4d1d264e105eae49a27e2e78065b23e2e45724df2251eacdd317e95bfdfd",
        strip_prefix = "rules_js-1.31.0",
        url = "https://github.com/aspect-build/rules_js/releases/download/v1.31.0/rules_js-v1.31.0.tar.gz",
    )

    http_archive(
        name = "rules_nodejs",
        sha256 = "764a3b3757bb8c3c6a02ba3344731a3d71e558220adcb0cf7e43c9bba2c37ba8",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.8.2/rules_nodejs-core-5.8.2.tar.gz"],
    )

    http_archive(
        name = "bazel_features",
        sha256 = "f3082bfcdca73dc77dcd68faace806135a2e08c230b02b1d9fbdbd7db9d9c450",
        strip_prefix = "bazel_features-0.1.0",
        url = "https://github.com/bazel-contrib/bazel_features/releases/download/v0.1.0/bazel_features-v0.1.0.tar.gz",
    )
