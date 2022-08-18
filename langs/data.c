#include <stdlib.h>
#include <stdio.h>

#define LINE_LTSV "time:2022-08-07 07:38:31,842	module:main.py	level:DEBUG	message:No kernel command line url found.\n"

void main()
{
    for (;;) {
        printf(LINE_LTSV);
    }
}
