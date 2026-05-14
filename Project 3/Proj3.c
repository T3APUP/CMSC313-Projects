#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int
main ()
{
    char fpath[45];
    FILE *fptr = NULL;
    do {
        printf("Enter file name or path from current directory: ");
        scanf("%s", fpath);                 // Get file name/path from command line
        fptr = fopen(fpath, "r");     // Open file in read mode
        if (strncmp(fpath, "exit", 4) == 0) return 0; // backup exit case check (so user doesn't have to force end if they don't actually want to dump anything)
        else if (fptr == NULL) printf("Error - file not found. Please re-enter. If you wish to end the program instead, please enter \"exit\".\n"); // error message
    } while (fptr == NULL); // Keep running input loop until valid file is opened (or program ended early)

    char ascii[17]; // To hold cleaned up ASCII string
    char temp[17]; // To hold bytes read from file
    ascii[16] = '\0';
    int addr = 0, i = 0; // Initialize starting address, byte index counter
    while (fgets(temp, 17, fptr)) { // Run loop as long as there's data to be read
        printf("%08X  ", addr);     // Print address (and then increase by offset of 16 bytes)
        addr = (addr + 16);
        for (i = 0; i < 16; ++i) { // Check each byte placed in temp (and keep track of position in array with i)
            printf("%02hhX ", ((unsigned)temp[i])); // Prints the hex code for the character at current position i
            if ((((unsigned)temp[i]) >= ' ') && (((unsigned)temp[i]) <= '~')) {
                ascii[i] = ((unsigned)temp[i]); // If character is in valid ASCII range, save in final string as is
            }
            else {
                ascii[i] = '.'; // Otherwise, write . to current index i in final string (to represent non-ASCII character)
            }
        }
        printf(" |%s|\n", ascii);   // Print the cleaned up string of (validated) ASCII characters
        memset(temp, 0, 17);        // Reset holding string in case next fgets is less than 16 bits (would repeat latter characters because it doesn't overwrite the array elements)
    }
    if (strlen(temp) != 0) { // If last fgets was less than 16 bytes but more than 0, this makes sure they get printed and pads the rest of the line with 0 bytes
        printf("%08X ", addr);
        for (i = 0; i <= strlen(temp); ++i) {
            printf("%02hhX ", ((unsigned)temp[i]));
            if ((((unsigned)temp[i]) >= ' ') && (((unsigned)temp[i]) <= '~')) {
                ascii[i] = ((unsigned)temp[i]);
            }
            else {
                ascii[i] = '.';
            }
        }
        if (strlen(temp) != 16) {
            for (i = strlen(temp); i < 16; ++i) {
                printf("%02X ", 0);
                ascii[i] = '.';
            }
        }
        printf(" |%s|\n", ascii);
    }
    fclose(fptr); // Close opened file
    return 0;
}

// system ("hd -v binary.out"); // Call linux command for hexdump of specified file (binary.out)
//      THIS WAS NOT THE INTENDED SOLUTION. OOPS.