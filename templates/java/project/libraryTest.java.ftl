package ${class.package};

import org.junit.Test;

public class ${class.name} {
    @Test
    public void verify() {
        new ${class.referencedClass.qualifiedName}();
    }
}
