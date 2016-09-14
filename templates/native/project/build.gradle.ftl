plugins {
    id 'native-component'
    id 'c-lang'
}

model {
    components {
<#if project.library>
        main(NativeLibrarySpec) {
        }
<#else>
        main(NativeExecutableSpec) {
        }
</#if>
    }
}
