#include <stdlib.h>
#include <stdio.h>

#define LINE "127.0.0.1 - - [29/Aug/2022:17:46:45 +0900] \"GET / HTTP/1.1\" 200 2477 \"-\" \"Mozilla/5.0 (X11; Linux x86_64; rv:104.0) Gecko/20100101 Firefox/104.0\"\n"

void main()
{
    for (;;) {
        printf(LINE);
    }
}
