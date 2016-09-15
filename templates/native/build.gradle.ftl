subprojects {
    model {
        binaries {
            withType(NativeBinarySpec) { b ->
                println "configuring $b"
                cCompiler.define('BIN_NAME', '"' + b.displayName + '"')
            }
        }
    }
}
