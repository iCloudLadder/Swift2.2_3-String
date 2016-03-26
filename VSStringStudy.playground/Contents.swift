//: Playground - noun: a place where people can play

import UIKit

// >> 字符串
/*
    String 是例如"hello, world","albatross"这样的有序的 Character(字符)类型的值的集合。通过String类型来表示

    一个 String￼ 的内容可以用变量的方式读取,它包括一个 Character 值的集合

    能否更改字符串的值,取决于其被定义为常量还是变量

    String ￼ 类型是一种快速、现代化的字符串实现。 每一个字符串都是由编码无关的 Unicode 字 符组成,并支持访问字符的多种 Unicode 表示形式(representations)。


    Swift 的 String ￼ 类型与 Foundation ￼NSString 类进行了无缝桥接。
    可以将创建的任何字符串的值转换成 NSString ,并调用任意的 NSString API。
    也可以在任意要求传入 NSString 实例作为参数的 API 中用 String 类型的值代替
*/



// >> 字符串字面量
// 字符串字面量是由双引号 ( "" ) 包裹着的具 有固定顺序的文本字符集。
// 字符串字面量可以用于为常量和变量提供初始值:
let someString = "Some string literal value" // Swift 推断 someString 是 String 类型

// >> 初始化空字符串
// 要创建一个空字符串作为初始值,可以将空的字符串字面量赋值给变量,也可以初始化一个新的 String 实例:
var emptyStr1 = ""
var emptyStr2 = String()

// 可以通过检查其 Boolean 类型的 isEmpty 属性来判断该字符串是否为空:
if emptyStr1.isEmpty {
    print("emptyStr1 is an empty String")
}
if emptyStr2.isEmpty {
    print("emptyStr2 is an empty String")
}


// 字符串可变性
// 您可以通过将一个特定字符串分配给一个变量来对其进行修改,或者分配给一个常量来保证其不会被修改:
var varString = "Horse"
varString += " and carriage"

let constantString = "Const Sting"
// constantString += " and another string" // error


// >> 字符串是值类型

// Swift 的 String 类型是值类型。 
// 如果您创建了一个新的字符串,那么当其进行常量、变量赋值操作,或在函数/ 方法中传递时,会进行值拷贝。

// Swift 默认字符串拷贝的方式保证了在函数/方法中传递的是字符串的值。 
// 很明显无论该值来自于哪里,都是您 独自拥有的。
// 您可以确信传递的字符串不会被修改,除非你自己去修改它。

/*
在实际编译时,Swift 编译器会优化字符串的使用,使实际的复制只发生在绝对必要的情况下,这意味着您将字 符串作为值类型的同时可以获得极高的性能。

    也就是说，你在赋值过程中并没有修改Sting的值，此时可能并没有进行 copy 操作。 如下
*/
let str1 = "Const String"
let str2 = str1 // 这个赋值过程没有 copy 操作


// >> 使用字符
// 可通过 for-in 循环来遍历字符串中的 characters 属性来获取每一个字符的值:

for character in str1.characters {
    print(character)
}

// 通过标明一个 Character 类型并用字符字面量进行赋值,可以建立一个独立的字符常量或变量:
let aChar: Character = "*"

// 字符串可以通过传递一个值类型为 Character 的数组作为自变量来初始化
let catChars: [Character] = ["C","a","t","!"]
let catString = String(catChars)


// >> 连接字符串和字符
// 字符串可以通过加法运算符( + )相加在一起(或称“连接”)创建一个新的字符串:
let str3 = "Hello"
let str4 = " Swift"
var welcome = str3 + str4

// 也可以通过加法赋值运算符 ( += ) 将一个字符串添加到一个已经存在字符串变量上:
welcome += " ,I like U"

// 可以用 append() 方法将一个字符附加到一个字符串变量的尾部:
welcome.append(Character("!"))
// **不能将一个字符串或者字符添加到一个已经存在的字符变量上,因为字符变量只能包含一个字符。


// >> 字符串插值
// 字符串插值是一种构建新字符串的方式,可以在其中包含常量、变量、字面量和表达式。
// 插入的字符串字面量 的每一项都在以反斜线为前缀的圆括号中:
let four = 4
let message = "\(four) is equl \(4)"
// ** 插值字符串中写在括号中的表达式不能包含非转义反斜杠 ( \￼ ),并且不能包含回车或换行符。不过,插值字符 串可以包含其他字面量。



// >> Unicode
/*
Unicode 是一个国际标准,用于文本的编码和表示。 它使您可以用标准格式表示来自任意语言几乎所有的字 符,并能够对文本文件或网页这样的外部资源中的字符进行读写操作。 Swift 的 String 和 Character 类型是完 全兼容 Unicode 标准的。
*/

// >> Unicode 标量
/*
    Swift 的 String 类型是基于 Unicode 标量 建立的。
    Unicode 标量是对应字符或者修饰符的唯一的21位数 字,例如 U+0061 表示小写的拉丁字母( LATIN SMALL LETTER A )(" a "), U+1F425 表示小鸡表情(ABY CHICK ) (" 🐥 ")。


Unicode 码位(code poing) 的范围是 U+0000 到 U+D7FF 或者 U+E000 到 U+10FFFF 。Unicode 标量不包 括 Unicode 代理项(surrogate pair) 码位,其码位范围是 U+D800 到 U+DFFF 。

不是所有的21位 Unicode 标量都代表一个字符,因为有一些标量是留作未来分配的。已经代表一个典型字符 的标量都有自己的名字,例如上面例子中的 LATIN SMALL LETTER A 和 FRONT-FACING BABY CHICK
*/


// >> 字符串字面量的特殊字符
/*
字符串字面量可以包含以下特殊字符:
• 转义字符 \0 (空字符)、 \\ (反斜线)、 \t (水平制表符)、 \n (换行符)、 \r (回车符)、 \" (双引 号)、 \' (单引号)。
• Unicode 标量,写成 \u{n} (u为小写),其中 n 为任意一到八位十六进制数且可用的 Unicode 位码。

*/

// \ 转义字符
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"  // $, Unicode 标量 U+0024
let blackHeart = "\u{2665}" // ♥︎, Unicode 标量 U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode 标量 U+1F496

// >> 可扩展的字形群集
/*
每一个 Swift 的 Character 类型代表一个可扩展的字形群。 一个可扩展的字形群是一个或多个可生成人类可读 的字符 Unicode 标量的有序排列。 举个例子,字母 é￼ 可以用单一的 Unicode 标量 ￼é (LATIN SMALL LETTER E WITH ACUTE , 或者 U+00E9 )来表示。然而一个标准的字母 e ( LATIN SMALL LETTER E 或者 U+0065 ) 加上一个急促重 音( COMBINING ACTUE ACCENT )的标量( U+0301 ),这样一对标量就表示了同样的字母 é 。 这个急促重音的标量形 象的将e转换成了é。

    在这两种情况中,字母 é 代表了一个单一的 Swift 的 Character 值,同时代表了一个可扩展的字形群。 在第一 种情况,这个字形群包含一个单一标量;而在第二种情况,它是包含两个标量的字形群:

*/
let eAcute: Character = "\u{E9}" // é
let combinedEAcute: Character = "\u{65}\u{301}" // e 后面加上 ´


// 扩展的字符群集是一个灵活的方法,用许多复杂的脚本字符表示单一的 Character 值。 例如,来自朝鲜语字母 表的韩语音节能表示为组合或分解的有序排列。 在 Swift 都会表示为同一个单一的 Character 值:
let precomposed: Character = "\u{D55C}" // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}" // ᄒ, ᅡ, ᆫ

// 可拓展的字符群集可以使包围记号(例如 COMBINING ENCLOSING CIRCLE 或者 U+20DD )的标量包围其他 Unicode 标 量,作为一个单一的 Character 值

let enclosedEAcute: Character = "\u{E9}\u{20DD}"

// 局部的指示符号的 Unicode 标量可以组合成一个单一的 Character 值,例如 REGIONAL INDICATOR SYMBOL LETTER U ( U+1F1FA )和 REGIONAL INDICATOR SYMBOL LETTER S ( U+1F1F8 ):
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"









// >> 计算字符数量
// 如果想要获得一个字符串中 Character 值的数量,可以使用字符串的 characters 属性的 count 属性:

let str6 = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("str6 has \(str6.characters.count) characters")
// ** 在 Swift 中,使用可拓展的字符群集作为 Character 值来连接或改变字符串时,并不一定会更改字符串的字 符数量。
// 例如,如果你用四个字符的单词 cafe 初始化一个新的字符串,然后添加一个 COMBINING ACTUE ACCENT ( U+030 1 )作为字符串的结尾。最终这个字符串的字符数量仍然是 4 ,因为第四个字符是 é ,而不是 e :
 
var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")
word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
print("the number of characters in \(word) is \(word.characters.count)")
/*
**
可扩展的字符群集可以组成一个或者多个 Unicode 标量。这意味着不同的字符以及相同字符的不同表示 方式可能需要不同数量的内存空间来存储。所以 Swift 中的字符在一个字符串中并不一定占用相同的内存空间 数量。因此在没有获取字符串的可扩展的字符群的范围时候,就不能计算出字符串的字符数量。如果您正在处理 一个长字符串,需要注意 characters 属性必须遍历全部的 Unicode 标量,来确定字符串的字符数量。
另外需要注意的是通过 characters 属性返回的字符数量并不总是与包含相同字符的 NSString 的 length 属性相 同。 NSString 的 length 属性是利用 UTF-16 表示的十六位代码单元数字,而不是 Unicode 可扩展的字符群 集。作为佐证,当一个 NSString 的 length 属性被一个Swift的 String 值访问时,实际上是调用了 utf16Coun t。
*/




// >> 访问和修改字符串
// 可以通字符串的属性和方法来访问和读取它,当然也可以用下标语法完成。

//  >> 字符串索引
// 每一个 String 值都有一个关联的索引(index)类型, String.Index ,它对应着字符串中的每一个 Character 的位 置。

/*
    使用 startIndex 属性可以获取一个 String 的第一个 Character 的索引。
    使用 endIndex 属性可以获取最后一个 C haracter 的后一个位置的索引。
    因此, endIndex 属性不能作为一个字符串的有效下标。如果 String 是空串, artIndex 和 endIndex 是相等的。


    通过调用 String.Index 的 predecessor() 方法,可以立即得到前面一个索引,
    调用 successor() 方法可以立即得 到后面一个索引。
    任何一个 String 的索引都可以通过锁链作用的这些方法来获取另一个索引,也可以调用 cedBy(_:) 方法来获取。
    **但如果尝试获取出界的字符串索引,就会抛出一个运行时错误。
*/

var greeting = "Hello Swift!"
greeting[greeting.startIndex] // H
greeting[greeting.endIndex.predecessor()] // !
greeting[greeting.startIndex.successor()] // e

let idx = greeting.startIndex.advancedBy(6)
greeting[idx] // S

// 越界
// greeting[greeting.endIndex] // error
// greeting.endIndex.successor() // error
// greeting.startIndex.predecessor()

// 使用 characters 属性的 indices 属性会创建一个包含全部索引的范围( Range ),用来在一个字符串中访问单个字 符。
for index in greeting.characters.indices {
    print(greeting[index])
}

// >> 插入和删除
// 调用 insert(_:atIndex:) 方法可以在一个字符串的指定索引插入一个字符
greeting.insert("!", atIndex: greeting.endIndex)

// 调用 insertContentsOf(_:at:) 方法可以在一个字符串的指定索引插入一个字符串。
greeting.insertContentsOf(" I like U".characters, at: greeting.endIndex.predecessor())

// 调用 removeAtIndex(_:) 方法可以在一个字符串的指定索引删除一个字符。
greeting.removeAtIndex(greeting.endIndex.predecessor()) // 此方法返回 被删除的 字符
greeting

// 调用 removeRange(_:) 方法可以在一个字符串的指定索引删除一个子字符串。
let range = greeting.endIndex.advancedBy(-4)..<greeting.endIndex
greeting.removeRange(range)





// >> 比较字符串
// Swift 提供了三种方式来比较文本值:字符串字符相等、前缀相等和后缀相等。


// >> 字符串/字符相等
// 字符串/字符可以用等于操作符( == )和不等于操作符( != )
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}
/*
如果两个字符串(或者两个字符)的可扩展的字形群集是标准相等的,那就认为它们是相等的。在这个情况 下,即使可扩展的字形群集是有不同的 Unicode 标量构成的,只要它们有同样的语言意义和外观,就认为它们标 准相等。
*/




// >> 前缀/后缀相等
// 通过调用字符串的 ￼hasPrefix(_:) ￼ / hasSuffix(_:) 方法来检查字符串是否拥有特定前缀/后缀,两个方法均接收一 个 ￼ 类型的参数,并返回一个布尔值。
// **  hasPrefix(_:) 和 hasSuffix(_:) 方法都是在每个字符串中逐字符比较其可扩展的字符群集是否标准相 等

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

// 调用 hasPrefix(_:) 方法来计算话剧中第一幕的场景数:
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    } }
print("There are \(act1SceneCount) scenes in Act 1")


// 用 hasSuffix(_:) 方法来计算发生在不同地方的场景数:
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    } }
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")



// >> 字符串的 Unicode 表示形式 请参考 《The Swift Programming Language》
















