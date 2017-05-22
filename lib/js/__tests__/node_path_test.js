'use strict';

var Jest  = require("bs-jest/lib/js/src/jest.js");
var Path  = require("path");
var Curry = require("bs-platform/lib/js/curry.js");

describe("join", function () {
      return Jest.test("concat paths with sep", function () {
                  return Curry._2(Jest.Expect[/* toEqual */12], "a/b", Curry._1(Jest.Expect[/* expect */0], Path.join("a", "b")));
                });
    });

/*  Not a pure module */
