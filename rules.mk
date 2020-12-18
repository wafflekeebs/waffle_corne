EXTRAKEY_ENABLE = yes
MCU = atmega32u4
BOOTLOADER = qmk-dfu
RGBLIGHT_ENABLE = no
AUDIO_ENABLE = no
OLED_DRIVER_ENABLE = no
GRAVE_ESC_ENABLE = no
LTO_ENABLE = yes
WPM_ENABLE = yes
COMMAND_ENABLE = no
MOUSEKEY_ENABLE = yes
SPACE_CADET_ENABLE = no
UNICODE_ENABLE = no
UNICODEMAP_ENABLE = yes
AUTO_SHIFT_ENABLE = yes
SWAP_HANDS_ENABLE = no
CONSOLE_ENABLE = no
COMBO_ENABLE = yes
BOOTMAGIC_ENABLE = lite
TAP_DANCE_ENABLE = yes
POINTING_DEVICE_ENABLE = no
ifdef POINTING_DEVICE_ENABLE
	SRC += i2c_master.c
endif

ifeq ($strip $(WAFFLE)), yes)
    OPT_DEFS += -DWAFFLE
endif
