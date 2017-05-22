'use strict';


function setPoolSize(n) {
  return Buffer.poolSize = n;
}

function readDoubleBigEndianNoAssert(buffer, offset) {
  return buffer.readDoubleBE(offset, true);
}

function readDoubleLittleEndianNoAssert(buffer, offset) {
  return buffer.readDoubleLE(offset, true);
}

function readFloatBigEndianNoAssert(buffer, offset) {
  return buffer.readFloatBE(offset, true);
}

function readFloatLittleEndianNoAssert(buffer, offset) {
  return buffer.readFloatLE(offset, true);
}

function readInt8NoAssert(buffer, offset) {
  return buffer.readInt8(offset, true);
}

function readInt16BigEndianNoAssert(buffer, offset) {
  return buffer.readInt16BE(offset, true);
}

function readInt16LittleEndianNoAssert(buffer, offset) {
  return buffer.readInt16LE(offset, true);
}

function readInt32BigEndianNoAssert(buffer, offset) {
  return buffer.readInt32BE(offset, true);
}

function readInt32LittleEndianNoAssert(buffer, offset) {
  return buffer.readInt32LE(offset, true);
}

function readIntBigEndianNoAssert(buffer, offset, length) {
  return buffer.readIntBE(offset, length, true);
}

function readIntLittleEndianNoAssert(buffer, offset, length) {
  return buffer.readIntLE(offset, length, true);
}

function readUint8NoAssert(buffer, offset) {
  return buffer.readUint8(offset, true);
}

function readUint16BigEndianNoAssert(buffer, offset) {
  return buffer.readUint16BE(offset, true);
}

function readUint16LittleEndianNoAssert(buffer, offset) {
  return buffer.readUint16LE(offset, true);
}

function readUint32BigEndianNoAssert(buffer, offset) {
  return buffer.readUint32BE(offset, true);
}

function readUint32LittleEndianNoAssert(buffer, offset) {
  return buffer.readUint32LE(offset, true);
}

function readUintBigEndianNoAssert(buffer, offset, length) {
  return buffer.readUintBE(offset, length, true);
}

function readUintLittleEndianNoAssert(buffer, offset, length) {
  return buffer.readUintLE(offset, length, true);
}

function writeDoubleBigEndianNoAssert(buffer, value, offset) {
  return buffer.writeDoubleBE(value, offset, true);
}

function writeDoubleLittleEndianNoAssert(buffer, value, offset) {
  return buffer.writeDoubleLE(value, offset, true);
}

function writeFloatBigEndianNoAssert(buffer, value, offset) {
  return buffer.writeFloatBE(value, offset, true);
}

function writeFloatLittleEndianNoAssert(buffer, value, offset) {
  return buffer.writeFloatLE(value, offset, true);
}

function writeInt8NoAssert(buffer, value, offset) {
  return buffer.writeInt8(value, offset, true);
}

function writeInt16BigEndianNoAssert(buffer, value, offset) {
  return buffer.writeInt16BE(value, offset, true);
}

function writeInt16LittleEndianNoAssert(buffer, value, offset) {
  return buffer.writeInt16LE(value, offset, true);
}

function writeInt32BigEndianNoAssert(buffer, value, offset) {
  return buffer.writeInt32BE(value, offset, true);
}

function writeInt32LittleEndianNoAssert(buffer, value, offset) {
  return buffer.writeInt32LE(value, offset, true);
}

function writeIntBigEndianNoAssert(buffer, value, offset, length) {
  return buffer.writeIntBE(value, offset, length, true);
}

function writeIntLittleEndianNoAssert(buffer, value, offset, length) {
  return buffer.writeIntLE(value, offset, length, true);
}

function writeUint8NoAssert(buffer, value, offset) {
  return buffer.writeUint8(value, offset, true);
}

function writeUint16BigEndianNoAssert(buffer, value, offset) {
  return buffer.writeUint16BE(value, offset, true);
}

function writeUint16LittleEndianNoAssert(buffer, value, offset) {
  return buffer.writeUint16LE(value, offset, true);
}

function writeUint32BigEndianNoAssert(buffer, value, offset) {
  return buffer.writeUint32BE(value, offset, true);
}

function writeUint32LittleEndianNoAssert(buffer, value, offset) {
  return buffer.writeUint32LE(value, offset, true);
}

function writeUintBigEndianNoAssert(buffer, value, offset, length) {
  return buffer.writeUintBE(value, offset, length, true);
}

function writeUintLittleEndianNoAssert(buffer, value, offset, length) {
  return buffer.writeUintLE(value, offset, length, true);
}

exports.setPoolSize                     = setPoolSize;
exports.readDoubleBigEndianNoAssert     = readDoubleBigEndianNoAssert;
exports.readDoubleLittleEndianNoAssert  = readDoubleLittleEndianNoAssert;
exports.readFloatBigEndianNoAssert      = readFloatBigEndianNoAssert;
exports.readFloatLittleEndianNoAssert   = readFloatLittleEndianNoAssert;
exports.readInt8NoAssert                = readInt8NoAssert;
exports.readInt16BigEndianNoAssert      = readInt16BigEndianNoAssert;
exports.readInt16LittleEndianNoAssert   = readInt16LittleEndianNoAssert;
exports.readInt32BigEndianNoAssert      = readInt32BigEndianNoAssert;
exports.readInt32LittleEndianNoAssert   = readInt32LittleEndianNoAssert;
exports.readIntBigEndianNoAssert        = readIntBigEndianNoAssert;
exports.readIntLittleEndianNoAssert     = readIntLittleEndianNoAssert;
exports.readUint8NoAssert               = readUint8NoAssert;
exports.readUint16BigEndianNoAssert     = readUint16BigEndianNoAssert;
exports.readUint16LittleEndianNoAssert  = readUint16LittleEndianNoAssert;
exports.readUint32BigEndianNoAssert     = readUint32BigEndianNoAssert;
exports.readUint32LittleEndianNoAssert  = readUint32LittleEndianNoAssert;
exports.readUintBigEndianNoAssert       = readUintBigEndianNoAssert;
exports.readUintLittleEndianNoAssert    = readUintLittleEndianNoAssert;
exports.writeDoubleBigEndianNoAssert    = writeDoubleBigEndianNoAssert;
exports.writeDoubleLittleEndianNoAssert = writeDoubleLittleEndianNoAssert;
exports.writeFloatBigEndianNoAssert     = writeFloatBigEndianNoAssert;
exports.writeFloatLittleEndianNoAssert  = writeFloatLittleEndianNoAssert;
exports.writeInt8NoAssert               = writeInt8NoAssert;
exports.writeInt16BigEndianNoAssert     = writeInt16BigEndianNoAssert;
exports.writeInt16LittleEndianNoAssert  = writeInt16LittleEndianNoAssert;
exports.writeInt32BigEndianNoAssert     = writeInt32BigEndianNoAssert;
exports.writeInt32LittleEndianNoAssert  = writeInt32LittleEndianNoAssert;
exports.writeIntBigEndianNoAssert       = writeIntBigEndianNoAssert;
exports.writeIntLittleEndianNoAssert    = writeIntLittleEndianNoAssert;
exports.writeUint8NoAssert              = writeUint8NoAssert;
exports.writeUint16BigEndianNoAssert    = writeUint16BigEndianNoAssert;
exports.writeUint16LittleEndianNoAssert = writeUint16LittleEndianNoAssert;
exports.writeUint32BigEndianNoAssert    = writeUint32BigEndianNoAssert;
exports.writeUint32LittleEndianNoAssert = writeUint32LittleEndianNoAssert;
exports.writeUintBigEndianNoAssert      = writeUintBigEndianNoAssert;
exports.writeUintLittleEndianNoAssert   = writeUintLittleEndianNoAssert;
/* No side effect */
