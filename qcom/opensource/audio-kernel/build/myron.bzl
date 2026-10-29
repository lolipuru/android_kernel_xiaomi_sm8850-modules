load(":audio_modules.bzl", "audio_modules")
load(":module_mgr.bzl", "define_target_modules")
load(":build/canoe.bzl", "arch_config_options", "arch_modules")

device_modules = [
    "tfa98xx_dlkm",
]

device_config_options = [
    "CONFIG_TARGET_PRODUCT_MYRON",
]

def define_myron():
    define_target_modules(
        target = "myron",
        arch = "canoe",
        variants = ["consolidate", "perf"],
        registry = audio_modules,
        modules = arch_modules + device_modules,
        config_options = arch_config_options + device_config_options,
    )
