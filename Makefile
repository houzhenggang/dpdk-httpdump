ifeq ($(RTE_SDK),)
$(error "Please define RTE_SDK environment variable")
endif

# Default target, can be overridden by command line or environment
RTE_TARGET ?= x86_64-native-linuxapp-gcc

include $(RTE_SDK)/mk/rte.vars.mk

APP = dpdk-httpdump

# all source are stored in SRCS-y
SRCS-y := httpdump.c core_write.c core_capture.c

# SRCS-y += statistics_ncurses.c utils.c

CFLAGS += -O3 -DHASH_FUNCTION=HASH_SFH
LDLIBS += -lpcap

CFLAGS += -g
# CFLAGS += -DDEBUG
# CFLAGS += $(WERROR_FLAGS)

# LDLIBS += -lncurses

include $(RTE_SDK)/mk/rte.app.mk
# include $(RTE_SDK)/mk/rte.extapp.mk