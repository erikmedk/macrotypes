package;

import MakeHello;

#if !macro
// The Hello module is created here.
@:build(MakeHello.makeHello())
class HelloGen{}
#end
