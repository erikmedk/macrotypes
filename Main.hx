package;

// The HelloGen module invokes the HelloGen.makeHello that defines the Hello 
// module.
import HelloGen;

class Main {
    static public function main() {
        // Referring to the generated type within methods is fine.
        var hello : Hello.Hello = { 
            message: "hello world"
        };
        trace(hello.message);

        traceHello(hello);
    }

    // Referring to generated types in method signatures is *not* fine.
    static public function traceHello(hello : Hello.Hello) : Void {
        trace(hello.message);
    }
}

// Referring to the generated type in a type declaration is *not* fine.
typedef Test = {
    world : Hello.Hello
}
