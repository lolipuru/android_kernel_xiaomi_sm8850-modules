load(":audio_modules.bzl", "audio_modules")
load(":module_mgr.bzl", "define_target_modules")
load(":build/canoe.bzl", "arch_config_options", "arch_modules")

device_modules = [
]

device_config_options = [
    "CONFIG_TARGET_PRODUCT_PANDORA",
]

def define_pandora():
    define_target_modules(
        target = "pandora",
        arch = "canoe",
        variants = ["consolidate", "perf"],
        registry = audio_modules,
        modules = arch_modules + device_modules,
        config_options = arch_config_options + device_config_options,
    )

