#include <stdio.h>
#include <stdint.h>

#include <gbdk/platform.h>

#include "sram_data.h"

void main() {
    ENABLE_RAM;
    // check if save data exist, if not - initialize
    if (save_blob.magic != SAVE_MAGIC_VALUE) {
        save_blob.magic = SAVE_MAGIC_VALUE;
        save_blob.value = 0;
    }
    // do something with data
    save_blob.value++;
    // print data
    printf("each reboot will\nincrement value\nby 1\n\nsaved value %hu", save_blob.value);
}