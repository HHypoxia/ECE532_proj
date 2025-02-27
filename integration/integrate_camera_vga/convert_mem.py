#!/usr/bin/env python3

def generate_russian_flag_mem(filename="frame1.mem"):
    width = 640
    height = 480
    
    # Define the stripe colors (16-bit, 4-4-4 format, upper nibble = 0)
    WHITE = 0x0FFF  # R=15, G=15, B=15
    BLUE  = 0x000F  # R=0 , G=0 , B=15
    RED   = 0x0F00  # R=15, G=0 , B=0
    
    # Open the output file
    with open(filename, "w") as f:
        for row in range(height):
            # Decide color based on stripe
            if row < 160:
                color = WHITE
            elif row < 320:
                color = BLUE
            else:
                color = RED
            
            # Construct this row of 640 pixels
            # We'll group 4 pixels per line in the .mem file
            # Each pixel is 16 bits -> 4 hex digits
            # 4 pixels -> 16 hex digits in one line
            row_pixels = [color] * width
            
            # Write them out 4 pixels per line
            for x in range(0, width, 4):
                # Take 4 pixels
                p0 = row_pixels[x+0]
                p1 = row_pixels[x+1]
                p2 = row_pixels[x+2]
                p3 = row_pixels[x+3]
                
                # Convert each to 4-hex-digit string, then concatenate
                line_data = f"{p0:04X}{p1:04X}{p2:04X}{p3:04X}"
                
                # Write the line to the file
                f.write(line_data + "\n")

if __name__ == "__main__":
    generate_russian_flag_mem("frame1.mem")
