'use strict';

var Fs = require("fs");
var Jest = require("@glennsl/bs-jest/lib/js/src/jest.js");

describe("content", (function () {
        return Jest.test("non-zero length", (function () {
                      var match = typeof (__filename) === "undefined" ? undefined : (__filename);
                      return Jest.ExpectJs[/* toBeTruthy */28](Jest.ExpectJs[/* expect */0](match !== undefined ? Fs.readFileSync(match, "utf8").length : 0));
                    }));
      }));

/*  Not a pure module */
