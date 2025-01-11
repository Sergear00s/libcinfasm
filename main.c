

int my_write(int fd, char *buf, int len);
int my_strlen(char *p);

#include <stdio.h>
int main(int argc, char const *argv[])
{
    int res =  my_strlen("hello wrold");
    printf("%i\n", res);
    return 0;
}
