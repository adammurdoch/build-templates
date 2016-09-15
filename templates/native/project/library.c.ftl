#include <stdio.h>
#include "${name}.h"
<#list project.dependencies as dep>
#include "${dep.publicHeaderName}"
</#list>

void ${name}() {
    printf("hello from ${name} in %s\n", BIN_NAME);
<#list project.dependencies as dep>
    ${dep.publicFunctionName}();
</#list>
}
