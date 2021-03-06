#******************************************************************************
# Generated by VisualTeensy (https:\\github.com\luni64\VisualTeensy)
#
# Board              Teensy 4.1
# USB Type           Serial
# CPU Speed          600 MHz
# Optimize           Faster
# Keyboard Layout    US English
#
# 2\24\2021 19:58
#******************************************************************************
SHELL            := cmd.exe
export SHELL

SKETCH_NAME      := SDR1_RA8875-K7MDL.ino

BOARD_ID         := TEENSY41
MCU              := imxrt1062

BUILDER_BASE     := C:\Progra~2\Arduino
FLAGS            := -verbose=1 -warnings=all
FQBN             := teensy:avr:teensy41:usb=serial,speed=600,opt=o2std,keys=en-us
BUILD_PATH       := "D:\Documents\GitHub\SDRProjects\SDR1_RA8875-K7MDL\.vsteensy\build"
BUILD_CACHE      := "D:\Documents\GitHub\SDRProjects\SDR1_RA8875-K7MDL\.vsteensy\cache"
HARDWARE         := -hardware="C:\Progra~2\Arduino/hardware"
TOOLS            := -tools="C:\Progra~2\Arduino\tools-builder"

LIBRARIES        := -built-in-libraries="C:\Progra~2\Arduino/libraries"
LIBRARIES        := -libraries="D:\Documents\Arduino\libraries"
UPL_PJRC_B       := C:\Progra~2\Arduino\hardware\tools
UPL_TYCMD_B      := F:\OneDrive\Documents\Arduino\TyTools-0.9.3-win64
UPL_CLICMD_B     := 

TARGET_HEX       := $(BUILD_PATH)/$(SKETCH_NAME).hex

#******************************************************************************
# BINARIES
#******************************************************************************
BUILDER     := $(BUILDER_BASE)/arduino-builder
UPL_PJRC    := "$(UPL_PJRC_B)/teensy_post_compile" -test -file=$(SKETCH_NAME) -path=$(BUILD_PATH) -tools="$(UPL_PJRC_B)" -board=$(BOARD_ID) -reboot
UPL_TYCMD   := $(UPL_TYCMD_B)/tyCommanderC upload $(TARGET_HEX) --autostart --wait --multi
UPL_CLICMD  := $(UPL_CLICMD_B)/teensy_loader_cli -mmcu=$(MCU) -v $(TARGET_HEX) 

.PHONY:  all upload uploadTy uploadCLI clean 

all:  
	$(BUILDER) $(FLAGS) -build-path=$(BUILD_PATH) -build-cache=$(BUILD_CACHE) -fqbn=$(FQBN) $(HARDWARE) $(TOOLS) $(LIBRARIES) $(SKETCH_NAME)

upload: all
	$(UPL_PJRC)

uploadTy: all
	@$(UPL_TYCMD)

uploadCLI: all
	@$(UPL_CLICMD)

clean: 	
	@echo Cleaning user binaries...
	@if exist .vsteensy\build rd /s/q .vsteensy\build
	@md .vsteensy\build

	@if exist .vsteensy\cache rd /s/q .vsteensy\cache"
	@md .vsteensy\cache
	@echo done
