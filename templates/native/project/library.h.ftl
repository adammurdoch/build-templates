#ifndef __${name}__
#define __${name}__

<#list project.dependencies as dep>
#include "${dep.publicHeaderName}"
</#list>

void ${name}();

#endif
