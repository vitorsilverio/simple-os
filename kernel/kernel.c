#include "../drivers/screen.h"

void main() {
    clear_screen();
    kprint_at("SIMPLE OS", 0, 0);
    kprint_at("This is an experimental operational system", 0, 1);
}

