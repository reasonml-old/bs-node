'use strict';

var Jest = require("@glennsl/bs-jest/lib/js/src/jest.js");
var Path = require("path");

describe("join", (function () {
        return Jest.test("concat paths with sep", (function () {
                      return Jest.Expect[/* toEqual */12]("a/b", Jest.Expect[/* expect */0](Path.join("a", "b")));
                    }));
      }));

/*  Not a pure module */
