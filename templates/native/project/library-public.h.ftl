#ifndef __${name}__
#define __${name}__

<#list project.dependencies as dep>
#include "${dep.publicHeaderName}"
</#list>
<#list project.implHeaderNames as header>
#include "${header}"
</#list>

#endif
