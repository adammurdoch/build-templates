subprojects {
    apply plugin: 'java'
    repositories {
        jcenter()
        maven { url '../mavenRepo' }
    }
}
