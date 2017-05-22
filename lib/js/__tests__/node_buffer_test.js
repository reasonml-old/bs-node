'use strict';

var Jest  = require("bs-jest/lib/js/src/jest.js");
var Curry = require("bs-platform/lib/js/curry.js");

describe("readDoubleBigEndianNoAssert", function () {
      Jest.test("valid offset", function () {
            return Curry._2(Jest.Expect[/* toBeCloseTo */3], 8.207e-304, Curry._1(Jest.Expect[/* expect */0], Buffer.from(/* array */[
                                  1,
                                  2,
                                  3,
                                  4,
                                  5,
                                  6,
                                  7,
                                  8
                                ]).readDoubleBE(0, true)));
          });
      test.skip("offset out of bounds", function () {
            return Curry._1(Jest.Expect[/* toThrow */18], Curry._1(Jest.Expect[/* expect */0], function () {
                            return Buffer.from(/* array */[
                                          1,
                                          2,
                                          3,
                                          4,
                                          5,
                                          6,
                                          7,
                                          8
                                        ]).readDoubleBE(1, true);
                          }));
          });
      return /* () */0;
    });

/*  Not a pure module */
