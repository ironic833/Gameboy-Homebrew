//AUTOGENERATED FILE FROM png2asset
#ifndef METASPRITE_Numbers_H
#define METASPRITE_Numbers_H

#include <stdint.h>
#include <gbdk/platform.h>
#include <gbdk/metasprites.h>

#define Numbers_TILE_ORIGIN 0
#define Numbers_TILE_W 8
#define Numbers_TILE_H 8
#define Numbers_WIDTH 80
#define Numbers_HEIGHT 8
#define Numbers_TILE_COUNT 10
#define Numbers_PALETTE_COUNT 3
#define Numbers_COLORS_PER_PALETTE 4
#define Numbers_TOTAL_COLORS 12
#define Numbers_MAP_ATTRIBUTES Numbers_map_attributes
#define Numbers_MAP_ATTRIBUTES_WIDTH 10
#define Numbers_MAP_ATTRIBUTES_HEIGHT 1
#define Numbers_MAP_ATTRIBUTES_PACKED_WIDTH 10
#define Numbers_MAP_ATTRIBUTES_PACKED_HEIGHT 1

BANKREF_EXTERN(Numbers)

extern const palette_color_t Numbers_palettes[12];
extern const uint8_t Numbers_tiles[160];

extern const unsigned char Numbers_map[10];
extern const unsigned char Numbers_map_attributes[10];

#endif
