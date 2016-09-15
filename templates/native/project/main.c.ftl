#include <stdio.h>
#include "${project.implHeaderName}"

int main() {
    printf("hello from %s\n", BIN_NAME);
    ${project.implFunctionName}();
    return 0;
}
