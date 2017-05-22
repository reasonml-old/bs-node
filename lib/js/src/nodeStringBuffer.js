'use strict';


function test(x) {
  if (typeof x === "string") {
    return /* tuple */[
            /* String */0,
            x
          ];
  } else {
    return /* tuple */[
            /* Buffer */1,
            x
          ];
  }
}

exports.test = test;
/* No side effect */
