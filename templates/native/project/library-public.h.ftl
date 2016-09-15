#ifndef __${name}__
#define __${name}__

<#list project.dependencies as dep>
#include "${dep.publicHeaderName}"
</#list>
#include "${project.implHeaderName}"

#endif
