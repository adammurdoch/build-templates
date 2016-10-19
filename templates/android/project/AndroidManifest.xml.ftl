<manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="${project.basePackage}">
    <application
<#if !project.library>
            android:label="@string/app_name"
            android:icon="@mipmap/ic_launcher"
            android:theme="@style/AppTheme"
</#if>
    >
        <activity
                android:name="${project.activity}"
        >
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
    </application>
</manifest>
