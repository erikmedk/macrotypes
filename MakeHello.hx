package;

import haxe.macro.Context;
import haxe.macro.Expr;

class MakeHello {
    // A macro that defines the module:
    //   package Hello;
    //   typedef Hello = {message : String}
    macro static public function makeHello() : Array<Field> {
        Context.defineModule("Hello", [
            {
                pack: [],
                name: "Hello",
                kind: TDStructure,
                fields: [
                    {
                        access: [APublic],
                        name: "message",
                        kind: FVar(macro : String, null),
                        pos: Context.currentPos()
                    }
                ],
                pos: Context.currentPos()
            }
        ], [], []);

        return null;
    }
}