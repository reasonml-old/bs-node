'use strict';

var Fs    = require("fs");
var Jest  = require("bs-jest/lib/js/src/jest.js");
var Curry = require("bs-platform/lib/js/curry.js");

describe("content", function () {
      return Jest.test("non-zero length", function () {
                  var match = typeof (__filename) === "undefined" ? undefined : (__filename);
                  return Curry._1(Jest.ExpectJs[/* toBeTruthy */27], Curry._1(Jest.ExpectJs[/* expect */0], match !== undefined ? Fs.readFileSync(match, "utf8").length : 0));
                });
    });

/*  Not a pure module */
