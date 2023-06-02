load("@aspect_rules_js//npm:defs.bzl", "npm_package")

npm_package(
    name = "test_external_pkg",
    package = "sass-external",
    srcs = ["_index.scss", "_other_file.scss", "css_plain.css", "sass_syntax.sass"],
    visibility = ["//sass/test/npm_sass_library:__pkg__"],
)

