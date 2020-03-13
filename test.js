


/**
 * 이건 테스트요
 */
function ABC(abc) {

}



ABC()



var a;


a = "ABCDEDF";

a = a.substr(1,3);

console.log(WebAssembly.Module.name);
// var Color;
// (function (Color) {
//     Color[Color["Red"] = 0] = "Red";
//     Color[Color["Green"] = 1] = "Green";
//     Color[Color["Blue"] = 2] = "Blue";
// })(Color || (Color = {}));
// var c = Color.Green;

var Color;
(function (Color) {
    Color[0] = "Red";
    Color[1] = "Green";
    Color[2] = "Blue";
})(Color || (Color = {}));
var c = Color.Green;

console.log("------------------------");
console.log(a);
