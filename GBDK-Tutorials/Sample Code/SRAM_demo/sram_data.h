#ifndef __SRAM_DATA_INCLUDE__
#define __SRAM_DATA_INCLUDE__

#include <stdint.h>

#define SAVE_MAGIC_VALUE 0x45564153u

typedef struct save_data_t {
    uint32_t magic;
    uint8_t value;
} save_data_t;

extern save_data_t save_blob;

#endif