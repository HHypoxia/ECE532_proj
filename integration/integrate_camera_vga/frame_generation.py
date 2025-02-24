# Configuration
WIDTH = 640
HEIGHT = 480
FILENAME = "frame.mem"

# Russia flag colors (4-bit RGB444 + 4-bit zero pad)
WHITE = 0x0FFF  # 0b0000_1111_1111_1111
BLUE = 0x003A    # 0b0000_0000_0011_1010 (R=0, G=3, B=10)
RED = 0x0D21     # 0b0000_1101_0010_0001 (R=13, G=2, B=1)

def generate_russia_flag():
    """Generate Russian flag pattern"""
    with open(FILENAME, "w") as f:
        for y in range(HEIGHT):
            # Determine stripe color
            if y < 160:
                color = WHITE
            elif y < 320:
                color = BLUE
            else:
                color = RED
            
            # Generate 32-bit words (2 pixels per word)
            for x in range(0, WIDTH, 2):
                # Two identical pixels per word
                word = (color << 16) | color
                f.write(f"{word:08x}\n")

if __name__ == "__main__":
    print(f"Generating Russian flag: {WIDTH}x{HEIGHT} -> {FILENAME}")
    generate_russia_flag()
    print(f"Done! File contains:")
    print(f"- {WIDTH//2} words per row (2 pixels per word)")
    print(f"- White: Rows 0-159 ({160*WIDTH//2} words)")
    print(f"- Blue: Rows 160-319 ({160*WIDTH//2} words)")
    print(f"- Red: Rows 320-479 ({160*WIDTH//2} words)")