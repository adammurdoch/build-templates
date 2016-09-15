ext.message = "configuring"

subprojects {
    model {
        buildTypes {
            create("debug")
            create("release")
            create("profile")
        }
        components {
            withType(NativeComponentSpec) { c ->
                println "$message $c"
                targetBuildTypes 'debug', 'release', 'profile'
            }
        }
        binaries {
            withType(NativeBinarySpec) { b ->
                println "$message $b"
                cCompiler.define('BIN_NAME', '"' + b.displayName + '"')
            }
        }
    }
}
