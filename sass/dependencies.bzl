"""Declare runtime dependencies

These are needed for local dev, and users must install them as well.
See https://docs.bazel.build/versions/main/skylark/deploying.html#dependencies
"""

load("//sass/private:maybe.bzl", http_archive = "maybe_http_archive")

def rules_sass_dependencies():
    http_archive(
        name = "aspect_rules_js",
        sha256 = "d8827db3c34fe47607a0668e86524fd85d5bd74f2bfca93046d07f890b5ad4df",
        strip_prefix = "rules_js-1.27.0",
        url = "https://github.com/aspect-build/rules_js/releases/download/v1.27.0/rules_js-v1.27.0.tar.gz",
    )
