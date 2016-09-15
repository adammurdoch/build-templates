#include <stdio.h>
<#list project.dependencies as dep>
#include "${dep.entryHeaderName}"
</#list>

int main() {
    printf("hello from %s\n", BIN_NAME);
<#list project.dependencies as dep>
    ${dep.entryFunctionName}();
</#list>
    return 0;
}
