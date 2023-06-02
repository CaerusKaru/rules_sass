workspace(name = "io_bazel_rules_sass")

load(":internal_deps.bzl", "rules_sass_internal_deps")

# Fetch deps needed only locally for development
rules_sass_internal_deps()

load("//sass:dependencies.bzl", "rules_sass_dependencies")

# Fetch dependencies which users need as well
rules_sass_dependencies()

load("@aspect_rules_js//js:repositories.bzl", "rules_js_dependencies")

rules_js_dependencies()

load("@rules_nodejs//nodejs:repositories.bzl", "nodejs_register_toolchains")

nodejs_register_toolchains(
    name = "nodejs",
    node_version = "16.13.2",
)

load("@aspect_rules_js//npm:repositories.bzl", "npm_translate_lock")

npm_translate_lock(
    name = "build_bazel_rules_sass_deps",
    npmrc = "//:.npmrc",
    pnpm_lock = "@io_bazel_rules_sass//:pnpm-lock.yaml",
    verify_node_modules_ignored = "//:.bazelignore",
)

load("@build_bazel_rules_sass_deps//:repositories.bzl", "npm_repositories")

npm_repositories()

#############################################
# Required dependencies for docs generation
#############################################


load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.19.1")

#load("@io_bazel_skydoc//skylark:skylark.bzl", "skydoc_repositories")

#skydoc_repositories()
