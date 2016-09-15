plugins {
    id 'native-component'
    id 'c-lang'
    id 'google-test'
}

model {
    components {
        <#if project.library>
        ${project.name}(NativeLibrarySpec) {
        <#else>
        ${project.name}(NativeExecutableSpec) {
        </#if>
            sources.c {
                source.srcDirs = ['src/main/c']
                exportedHeaders.srcDirs = ['src/main/headers']
                <#list project.dependencies as dep>
                lib project: ':${dep.name}', library: '${dep.name}'
                </#list>
            }
        }
    }
    testSuites {
        ${project.name}Test {
            sources.c {
                source.srcDirs = ['src/test/c']
                <#list project.dependencies as dep>
                lib project: ':${dep.name}', library: '${dep.name}'
                </#list>
            }
        }
    }
}
