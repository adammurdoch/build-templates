subprojects {
    model {
        buildTypes {
            create("debug")
            create("release")
            create("profile")
        }
        components {
            withType(NativeComponentSpec) { c ->
                println "configuring $c"
                targetBuildTypes 'debug', 'release', 'profile'
            }
        }
        binaries {
            withType(NativeBinarySpec) { b ->
                println "configuring $b"
                cCompiler.define('BIN_NAME', '"' + b.displayName + '"')
            }
        }
    }
}
