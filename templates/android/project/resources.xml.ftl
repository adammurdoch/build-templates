<resources>
    <string name="hello_world">Hello from ${project.name}</string>
<#if project.app>
    <string name="app_name">${project.name}</string>
    <style name="app_theme" parent="android:Theme.Material.Light.DarkActionBar">
    </style>
</#if>
</resources>
