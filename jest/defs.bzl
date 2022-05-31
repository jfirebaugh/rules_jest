"Public API re-exports"

load("//jest/private:jest_test.bzl", "lib")
load("@aspect_rules_js//js:defs.bzl", "js_binary_lib")

# buildifier: disable=bzl-visibility
load("@aspect_rules_js//js/private:pnpm_utils.bzl", "pnpm_utils")

_jest_test = rule(
    doc = """FIXME: add documentation""",
    attrs = lib.attrs,
    implementation = lib.implementation,
    test = True,
    toolchains = js_binary_lib.toolchains,
)

def jest_test(jest_repository = "jest", **kwargs):
    jest_js_package = "@{}//:{}{}".format(
        jest_repository,
        pnpm_utils.direct_link_target_namespace,
        pnpm_utils.bazel_name("jest-cli"),
    )
    jest_entry_point = "@{}//:jest_entrypoint".format(jest_repository)
    _jest_test(
        enable_runfiles = select({
            "@aspect_rules_js//js/private:enable_runfiles": True,
            "//conditions:default": False,
        }),
        entry_point = jest_entry_point,
        data = kwargs.pop("data", []) + [jest_js_package],
        **kwargs
    )
