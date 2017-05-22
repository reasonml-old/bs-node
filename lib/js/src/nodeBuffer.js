'use strict';


function setPoolSize(n) {
  return Buffer.poolSize = n;
}

exports.setPoolSize = setPoolSize;
/* No side effect */
