<project>
    <modelVersion>4.0.0</modelVersion>
    <groupId>${module.group}</groupId>
    <artifactId>${module.name}</artifactId>
    <version>${module.version}</version>
    <dependencies>
        <#list module.dependencies as dep>
            <dependency>
                <groupId>${dep.group}</groupId>
                <artifactId>${dep.name}</artifactId>
                <version>${dep.version}</version>
                <#if dep.scope??>
                    <scope>${dep.scope}</scope>
                </#if>
            </dependency>
        </#list>
    </dependencies>
    <repositories>
        <repository>
            <id>local-repo</id>
            <url>${repo.uri}</url>
        </repository>
    </repositories>
</project>
