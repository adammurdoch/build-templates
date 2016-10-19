/* ${project.name} */

repositories {
    jcenter()
}

<#if project.library>
apply plugin: 'com.android.library'
<#else>
apply plugin: 'com.android.application'
</#if>

android {
    compileSdkVersion 24
    buildToolsVersion "24.0.0"
    defaultConfig {
        versionCode 1
        versionName "1.0"
    }
}
