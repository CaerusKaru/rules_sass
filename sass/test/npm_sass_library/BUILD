load("//:defs.bzl", "sass_binary")
load(":test_assertions.bzl", "npm_sass_library_test")

sass_binary(
    name = "test_fixture",
    src = "test_fixture.scss",
    external_deps = [ "//sass/test/npm_sass_library/test_external_pkg"],
    node_modules = "//:node_modules",
)

npm_sass_library_test()
