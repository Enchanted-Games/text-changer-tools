// bool: inGUI, bool: isShadow(), vec3: col must be defined before this file is included

if ( inGUI && !isShadow() ) {
    // colours in gui and are not shadows
    switch ( toint(col) ) {
        case 0xff5555: col = tovec( colours[ 0] ); break;
        case 0xaa0000: col = tovec( colours[ 2] ); break;
        case 0xffaa00: col = tovec( colours[ 4] ); break;
        case 0xffff55: col = tovec( colours[ 6] ); break;
        case 0x00aa00: col = tovec( colours[ 8] ); break;
        case 0x55ff55: col = tovec( colours[10] ); break;
        case 0x55ffff: col = tovec( colours[12] ); break;
        case 0x00aaaa: col = tovec( colours[14] ); break;
        case 0x0000aa: col = tovec( colours[16] ); break;
        case 0x5555ff: col = tovec( colours[18] ); break;
        case 0xff55ff: col = tovec( colours[20] ); break;
        case 0xaa00aa: col = tovec( colours[22] ); break;
        case 0xffffff: col = tovec( colours[24] ); break;
        case 0xaaaaaa: col = tovec( colours[26] ); break;
        case 0x555555: col = tovec( colours[28] ); break;
        case 0x000000: col = tovec( colours[30] ); break;
        case 0xe0e0e0: col = tovec( misc_colours[0] ); break;
        case 0xffff00: col = tovec( misc_colours[2] ); break;
        case 0x808080: col = tovec( misc_colours[4] ); break;
        case 0xa0a0a0: col = tovec( misc_colours[6] ); break;
        case 0xffcccc: col = tovec( misc_colours[8] ); break;
        case 0x80ff20: col = tovec( enchanting_colours[0] ); break;
        case 0x407f10: col = tovec( enchanting_colours[2] ); break;
        case 0xff6060: col = tovec( enchanting_colours[4] ); break;
    }
}
else if ( inGUI && isShadow() ) {
    // colours in gui and are shadows
    switch ( toint(col) ) {
        case 0xffffff: col = tovec( colours[24] ); break;
        case 0x3f1515: col = tovec( colours[ 1] ); break;
        case 0x2a0000: col = tovec( colours[ 3] ); break;
        case 0x3f2a01: col = tovec( colours[ 5] ); break;
        case 0x3f3f15: col = tovec( colours[ 7] ); break;
        case 0x002a00: col = tovec( colours[ 9] ); break;
        case 0x153f15: col = tovec( colours[11] ); break;
        case 0x153f3f: col = tovec( colours[13] ); break;
        case 0x002a2a: col = tovec( colours[15] ); break;
        case 0x00002a: col = tovec( colours[17] ); break;
        case 0x15153f: col = tovec( colours[19] ); break;
        case 0x3f153f: col = tovec( colours[21] ); break;
        case 0x2a002a: col = tovec( colours[23] ); break;
        case 0x3f3f3f: col = tovec( colours[25] ); break;
        case 0x2a2a2a: col = tovec( colours[27] ); break;
        case 0x151515: col = tovec( colours[29] ); break;
        case 0x000000: col = tovec( colours[31] ); break;
        case 0x383838: col = tovec( misc_colours[ 1] ); break;
        case 0x3f3f00: col = tovec( misc_colours[ 3] ); break;
        case 0x202020: col = tovec( misc_colours[ 5] ); break;
        case 0x282828: col = tovec( misc_colours[ 7] ); break;
        case 0x3f3333: col = tovec( misc_colours[ 9] ); break;
        case 0x404040: col = tovec( misc_colours[10] ); break;
        case 0xe0e0e0: col = tovec( misc_colours[11] ); break;
        case 0x203f08: col = tovec( enchanting_colours[1] ); break;
        case 0x101f04: col = tovec( enchanting_colours[3] ); break;
        case 0x3f1818: col = tovec( enchanting_colours[5] ); break;
        case 0x685e4a: col = tovec( enchanting_colours[6] ); break;
        case 0x342f25: col = tovec( enchanting_colours[7] ); break;
        case 0xffff80: col = tovec( enchanting_colours[8] ); break;
        case 0x80ff20: col = tovec( enchanting_colours[9] ); break;
    }
}
else if ( !inGUI ) {
    // colours in the world
    switch ( toint(col) ) {
        case 0xff5555: col = tovec( world_colours[ 0] ); break;
        case 0xaa0000: col = tovec( world_colours[ 1] ); break;
        case 0xffaa00: col = tovec( world_colours[ 2] ); break;
        case 0xffff55: col = tovec( world_colours[ 3] ); break;
        case 0x00aa00: col = tovec( world_colours[ 4] ); break;
        case 0x55ff55: col = tovec( world_colours[ 5] ); break;
        case 0x55ffff: col = tovec( world_colours[ 6] ); break;
        case 0x00aaaa: col = tovec( world_colours[ 7] ); break;
        case 0x0000aa: col = tovec( world_colours[ 8] ); break;
        case 0x5555ff: col = tovec( world_colours[ 9] ); break;
        case 0xff55ff: col = tovec( world_colours[10] ); break;
        case 0xaa00aa: col = tovec( world_colours[11] ); break;
        case 0xffffff: col = tovec( world_colours[12] ); break;
        case 0xaaaaaa: col = tovec( world_colours[13] ); break;
        case 0x555555: col = tovec( world_colours[14] ); break;
        case 0x000000: col = tovec( world_colours[15] );
    }
}