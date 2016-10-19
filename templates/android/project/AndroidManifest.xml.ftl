<manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="${project.basePackage}">
    <application
<#if project.app>
            android:label="@string/app_name"
            android:icon="@mipmap/ic_launcher"
            android:theme="@style/AppTheme"
</#if>
    >
<#if project.app>
        <activity
                android:name="${project.activity}"
        >
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
</#if>
<#if project.library>
    <activity
            android:name="${project.activity}"
    >
    </activity>
</#if>
    </application>
</manifest>
