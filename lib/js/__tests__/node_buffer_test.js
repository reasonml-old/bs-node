'use strict';

var Jest = require("@glennsl/bs-jest/lib/js/src/jest.js");

describe("readDoubleBigEndianNoAssert", (function () {
        Jest.test("valid offset", (function () {
                return Jest.Expect[/* toBeCloseTo */3](8.207e-304, Jest.Expect[/* expect */0](Buffer.from(/* array */[
                                      1,
                                      2,
                                      3,
                                      4,
                                      5,
                                      6,
                                      7,
                                      8
                                    ]).readDoubleBE(0, true)));
              }));
        it.skip("offset out of bounds", (function () {
                return Jest.Expect[/* toThrow */18](Jest.Expect[/* expect */0]((function () {
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
                                })));
              }));
        return /* () */0;
      }));

/*  Not a pure module */
