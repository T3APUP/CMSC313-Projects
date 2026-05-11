#include <stdlib.h>

int
main ()
{
    system ("hd -v binary.out"); // Call linux command for hexdump of specified file (binary.out)
    return 0;
}

// system() call will invoke linux command line directly, so no need to print results or anything in here
// File path is specified using static string here for simplicity (it's literally one line and never referred to anywhere else)