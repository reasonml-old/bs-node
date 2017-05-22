(* Copyright (C) 2015-2016 Bloomberg Finance L.P.
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * In addition to the permissions granted to you by the LGPL, you may combine
 * or link a "work that uses the Library" with a publicly distributed version
 * of this file to produce a combined library or application, then distribute
 * that combined work under the terms of your choosing, with no requirement
 * to comply with the obligations normally placed on you by section 4 of the
 * LGPL version 3 (or the corresponding section of a later version of the LGPL
 * should you choose to use a later version).
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA. *)

open Js.Typed_array

type t

external fromString : Js.String.t -> t = "Buffer.from" [@@bs.val]
external fromStringWithEncoding : Js.String.t -> encoding:Js.String.t -> t =
  "Buffer.from" [@@bs.val]
external fromArray : int array -> t = "Buffer.from" [@@bs.val]
external fromArrayBuffer : ArrayBuffer.t -> t = "Buffer.from" [@@bs.val]
external fromArrayBufferOffset: ArrayBuffer.t -> offset:int -> t =
  "Buffer.from" [@@bs.val]
external fromArrayBufferRange: ArrayBuffer.t -> offset:int ->
  length:int -> t = "Buffer.from" [@@bs.val]
external fromBuffer: t -> t = "Buffer.from" [@@bs.val]

external alloc: int -> t = "Buffer.alloc" [@@bs.val]
external allocFillInt: int -> fill:int -> t = "Buffer.alloc" [@@bs.val]
external allocFillString: int -> fill:Js.String.t -> t = "Buffer.alloc" [@@bs.val]
external allocFillStringWithEncoding: int -> fill:Js.String.t ->
  encoding:Js.String.t -> t = "Buffer.alloc" [@@bs.val]
external allocFillBuffer: int -> fill:t -> t = "Buffer.alloc" [@@bs.val]
external allocUnsafe: int -> t = "Buffer.allocUnsafe" [@@bs.val]
external allocUnsafeSlow: int -> t = "Buffer.allocUnsafeSlow" [@@bs.val]

external unsafeGet : t -> int -> int = "" [@@bs.get_index]
external unsafeSet : t -> int -> int -> unit = "" [@@bs.set_index]

external byteLengthString : Js.String.t -> int = "Buffer.byteLength" [@@bs.val]
external byteLengthStringWithEncoding : Js.String.t -> encoding:Js.String.t -> int =
  "Buffer.byteLength" [@@bs.val]
external byteLengthBuffer : t -> int = "Buffer.byteLength" [@@bs.val]
external byteLengthInt8Array : Int8Array.t -> int =
  "Buffer.byteLength" [@@bs.val]
external byteLengthUint8Array : Uint8Array.t -> int =
  "Buffer.byteLength" [@@bs.val]
external byteLengthInt16Array : Int16Array.t -> int =
  "Buffer.byteLength" [@@bs.val]
external byteLengthUint16Array : Uint16Array.t -> int =
  "Buffer.byteLength" [@@bs.val]
external byteLengthInt32Array : Int32Array.t -> int =
  "Buffer.byteLength" [@@bs.val]
external byteLengthUint32Array : Uint32Array.t -> int =
  "Buffer.byteLength" [@@bs.val]
external byteLengthFloat32Array : Float32Array.t -> int =
  "Buffer.byteLength" [@@bs.val]
external byteLengthFloat64Array : Float64Array.t -> int =
  "Buffer.byteLength" [@@bs.val]
external byteLengthDataView : DataView.t -> int = "Buffer.byteLength" [@@bs.val]
external byteLengthArrayBuffer : ArrayBuffer.t -> int = "Buffer.byteLength" [@@bs.val]

external compare : t -> t -> int = "Buffer.compare" [@@bs.val]

external concat : t array -> t = "Buffer.concat" [@@bs.val]
external concatLength : t array -> length:int -> t = "Buffer.concat" [@@bs.val]

external isEncoding : Js.String.t -> bool = "Buffer.isEncoding" [@@bs.val]

type buffer
external buffer : buffer = "Buffer" [@@bs.val]
external poolSize : int = "Buffer.poolSize" [@@bs.val]
external setPoolSize : buffer -> int -> int = "poolSize" [@@bs.set]
let setPoolSize n = setPoolSize buffer n

external copy : t -> t -> int = "" [@@bs.send]
external copyOffset : t -> t -> targetStart:int -> int = "copy" [@@bs.send]
external copyOffsetFromOffset : t -> t -> targetStart:int -> sourceStart:int ->
  int = "copy" [@@bs.send]
external copyOffsetFromRange : t -> t -> targetStart:int -> sourceStart:int ->
  sourceEnd:int -> int = "copy" [@@bs.send]
external copyToUint8Array : t -> Uint8Array.t -> int = "copy" [@@bs.send]
external copyToUint8ArrayOffset : t -> Uint8Array.t -> targetStart:int ->
  int = "copy" [@@bs.send]
external copyToUint8ArrayFrom: t -> Uint8Array.t -> targetStart:int ->
  sourceStart:int -> int = "copy" [@@bs.send]
external copyToUint8ArrayFromRange : t -> Uint8Array.t -> targetStart:int ->
  sourceStart:int -> sourceEnd:int -> int = "copy" [@@bs.send]

(* FIXME after iterators support *)
(* external entries : t -> Iterator = "" [@@bs.get] *)

external equals : t -> t -> bool = "" [@@bs.send]

external fillString : t -> Js.String.t -> t = "fill" [@@bs.send]
external fillStringOffset : t -> value:Js.String.t -> offset:int -> t =
  "fill" [@@bs.send]
external fillStringRange : t -> value:Js.String.t -> offset:int ->
  end_:int -> t = "fill" [@@bs.send]
external fillStringRangeWithEncoding : t -> value:Js.String.t -> offset:int ->
  end_:int -> encoding:Js.String.t -> t = "fill" [@@bs.send]
external fillBuffer : t -> t -> t = "fill" [@@bs.send]
external fillBufferOffset : t -> value:t -> offset:int -> t = "fill" [@@bs.send]
external fillBufferRange : t -> value:t -> offset:int -> end_:int -> t =
  "fill" [@@bs.send]
external fillInt : t -> int -> t = "fill" [@@bs.send]
external fillIntOffset : t -> value:int -> offset:int -> t = "fill" [@@bs.send]
external fillIntRange : t -> value:int -> offset:int -> end_:int -> t =
  "fill" [@@bs.send]

external includesString : t -> Js.String.t -> bool = "includes" [@@bs.send]
external includesStringFrom : t -> value:Js.String.t -> offset:int -> bool =
  "includes" [@@bs.send]
external includesStringWithEncodingFrom : t -> value:Js.String.t -> offset:int ->
  encoding:Js.String.t -> bool ="includes" [@@bs.send]
external includesBuffer : t -> t -> bool = "includes" [@@bs.send]
external includesBufferFrom : t -> value:t -> offset:int -> bool =
  "includes" [@@bs.send]
external includesInt : t -> int -> bool = "includes" [@@bs.send]
external includesIntFrom : t -> value:int -> offset:int -> bool =
  "includes" [@@bs.send]

external indexOfString : t -> Js.String.t -> int = "indexOf" [@@bs.send]
external indexOfStringFrom : t -> value:Js.String.t -> offset:int -> int =
  "indexOf" [@@bs.send]
external indexOfStringWithEncodingFrom : t -> value:Js.String.t -> offset:int ->
  encoding:Js.String.t -> int ="indexOf" [@@bs.send]
external indexOfBuffer : t -> t -> int = "indexOf" [@@bs.send]
external indexOfBufferFrom : t -> value:t -> offset:int -> int =
  "indexOf" [@@bs.send]
external indexOfInt : t -> int -> int = "indexOf" [@@bs.send]
external indexOfIntFrom : t -> value:int -> offset:int -> int =
  "indexOf" [@@bs.send]

(* FIXME after iterators support *)
(* external keys : t -> Iterator = "" [@@bs.send] *)

external lastIndexOfString : t -> Js.String.t -> int = "lastIndexOf" [@@bs.send]
external lastIndexOfStringFrom : t -> value:Js.String.t -> offset:int -> int =
  "lastIndexOf" [@@bs.send]
external lastIndexOfStringWithEncodingFrom : t -> value:Js.String.t -> offset:int ->
  encoding:Js.String.t -> int ="lastIndexOf" [@@bs.send]
external lastIndexOfBuffer : t -> t -> int = "lastIndexOf" [@@bs.send]
external lastIndexOfBufferFrom : t -> value:t -> offset:int -> int =
  "lastIndexOf" [@@bs.send]
external lastIndexOfInt : t -> int -> int = "lastIndexOf" [@@bs.send]
external lastIndexOfIntFrom : t -> value:int -> offset:int -> int =
  "lastIndexOf" [@@bs.send]

external length : t -> int = "" [@@bs.get]

external readDoubleBigEndian : t -> offset:int -> float = "" [@@bs.send]
external readDoubleBigEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readDoubleBE" [@@bs.send]

external readDoubleLittleEndian : t -> offset:int -> float = "" [@@bs.send]
external readDoubleLittleEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readDoubleLE" [@@bs.send]

external readFloatBigEndian : t -> offset:int -> float = "" [@@bs.send]
external readFloatBigEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readFloatBE" [@@bs.send]

external readFloatLittleEndian : t -> offset:int -> float = "" [@@bs.send]
external readFloatLittleEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readFloatLE" [@@bs.send]

external readInt8 : t -> offset:int -> float = "" [@@bs.send]
external readInt8NoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readInt8" [@@bs.send]

external readInt16BigEndian : t -> offset:int -> float = "" [@@bs.send]
external readInt16BigEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readInt16BE" [@@bs.send]

external readInt16LittleEndian : t -> offset:int -> float = "" [@@bs.send]
external readInt16LittleEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readInt16LE" [@@bs.send]

external readInt32BigEndian : t -> offset:int -> float = "" [@@bs.send]
external readInt32BigEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readInt32BE" [@@bs.send]

external readInt32LittleEndian : t -> offset:int -> float = "" [@@bs.send]
external readInt32LittleEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readInt32LE" [@@bs.send]

external readIntBigEndian : t -> offset:int -> length:int -> float = "" [@@bs.send]
external readIntBigEndianNoAssert : t -> offset:int -> length:int -> (_ [@bs.as {json|true|json}]) ->
  float = "readIntBE" [@@bs.send]

external readIntLittleEndian : t -> offset:int -> length:int -> float = "" [@@bs.send]
external readIntLittleEndianNoAssert : t -> offset:int -> length:int -> (_ [@bs.as {json|true|json}]) ->
  float = "readIntLE" [@@bs.send]

external readUint8 : t -> offset:int -> float = "" [@@bs.send]
external readUint8NoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readUint8" [@@bs.send]

external readUint16BigEndian : t -> offset:int -> float = "" [@@bs.send]
external readUint16BigEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readUint16BE" [@@bs.send]

external readUint16LittleEndian : t -> offset:int -> float = "" [@@bs.send]
external readUint16LittleEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readUint16LE" [@@bs.send]

external readUint32BigEndian : t -> offset:int -> float = "" [@@bs.send]
external readUint32BigEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readUint32BE" [@@bs.send]

external readUint32LittleEndian : t -> offset:int -> float = "" [@@bs.send]
external readUint32LittleEndianNoAssert : t -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "readUint32LE" [@@bs.send]

external readUintBigEndian : t -> offset:int -> length:int -> float = "" [@@bs.send]
external readUintBigEndianNoAssert : t -> offset:int -> length:int -> (_ [@bs.as {json|true|json}]) ->
  float = "readUintBE" [@@bs.send]

external readUintLittleEndian : t -> offset:int -> length:int -> float = "" [@@bs.send]
external readUintLittleEndianNoAssert : t -> offset:int -> length:int -> (_ [@bs.as {json|true|json}]) ->
  float = "readUintLE" [@@bs.send]

external slice : t -> t = "" [@@bs.send]
external sliceOffset : t -> start:int -> t = "slice" [@@bs.send]
external sliceRange : t -> start:int -> end_:int -> t = "slice" [@@bs.send]

external swap16 : t -> t = "" [@@bs.send]
external swap32 : t -> t = "" [@@bs.send]
external swap64 : t -> t = "" [@@bs.send]

external toJSON : t -> < .. > Js.t = "" [@@bs.send]

external toString: t -> Js.String.t = "" [@@bs.send]
external toStringWithEncoding: t -> encoding:Js.String.t -> Js.String.t =
  "toString" [@@bs.send]
external toStringWithEncodingOffset: t -> encoding:Js.String.t -> start:int
  -> Js.String.t = "toString" [@@bs.send]
external toStringWithEncodingRange: t -> encoding:Js.String.t -> start:int
  -> end_:int -> Js.String.t = "toString" [@@bs.send]

(* FIXME after iterators support *)
(* external values : t -> Iterator = "" [@@bs.get] *)

external write : t -> Js.String.t -> int = "" [@@bs.send]
external writeOffset : t -> value:Js.String.t -> offset:int -> int =
  "write" [@@bs.send]
external writeRange : t -> value:Js.String.t -> offset:int -> length:int -> int =
  "write" [@@bs.send]
external writeRangeWithEncoding : t -> value:Js.String.t -> offset:int ->
  length:int -> encoding:Js.String.t -> int = "write" [@@bs.send]

external writeDoubleBigEndian : t -> value:float -> offset:int -> float = "" [@@bs.send]
external writeDoubleBigEndianNoAssert : t -> value:float -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeDoubleBE" [@@bs.send]

external writeDoubleLittleEndian : t -> value:float -> offset:int -> float = "" [@@bs.send]
external writeDoubleLittleEndianNoAssert : t -> value:float -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeDoubleLE" [@@bs.send]

external writeFloatBigEndian : t -> value:float -> offset:int -> float = "" [@@bs.send]
external writeFloatBigEndianNoAssert : t -> value:float -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeFloatBE" [@@bs.send]

external writeFloatLittleEndian : t -> value:float -> offset:int -> float = "" [@@bs.send]
external writeFloatLittleEndianNoAssert : t -> value:float -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeFloatLE" [@@bs.send]

external writeInt8 : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeInt8NoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeInt8" [@@bs.send]

external writeInt16BigEndian : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeInt16BigEndianNoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeInt16BE" [@@bs.send]

external writeInt16LittleEndian : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeInt16LittleEndianNoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeInt16LE" [@@bs.send]

external writeInt32BigEndian : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeInt32BigEndianNoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeInt32BE" [@@bs.send]

external writeInt32LittleEndian : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeInt32LittleEndianNoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeInt32LE" [@@bs.send]

external writeIntBigEndian : t -> value:int -> offset:int -> length:int -> float = "" [@@bs.send]
external writeIntBigEndianNoAssert : t -> value:int -> offset:int -> length:int -> (_ [@bs.as {json|true|json}]) ->
  float = "writeIntBE" [@@bs.send]

external writeIntLittleEndian : t -> value:int -> offset:int -> length:int -> float = "" [@@bs.send]
external writeIntLittleEndianNoAssert : t -> value:int -> offset:int -> length:int -> (_ [@bs.as {json|true|json}]) ->
  float = "writeIntLE" [@@bs.send]

external writeUint8 : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeUint8NoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeUint8" [@@bs.send]

external writeUint16BigEndian : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeUint16BigEndianNoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeUint16BE" [@@bs.send]

external writeUint16LittleEndian : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeUint16LittleEndianNoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeUint16LE" [@@bs.send]

external writeUint32BigEndian : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeUint32BigEndianNoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeUint32BE" [@@bs.send]

external writeUint32LittleEndian : t -> value:int -> offset:int -> float = "" [@@bs.send]
external writeUint32LittleEndianNoAssert : t -> value:int -> offset:int -> (_ [@bs.as {json|true|json}]) -> float =
  "writeUint32LE" [@@bs.send]

external writeUintBigEndian : t -> value:int -> offset:int -> length:int -> float = "" [@@bs.send]
external writeUintBigEndianNoAssert : t -> value:int -> offset:int -> length:int -> (_ [@bs.as {json|true|json}]) ->
  float = "writeUintBE" [@@bs.send]

external writeUintLittleEndian : t -> value:int -> offset:int -> length:int -> float = "" [@@bs.send]
external writeUintLittleEndianNoAssert : t -> value:int -> offset:int -> length:int -> (_ [@bs.as {json|true|json}]) ->
  float = "writeUintLE" [@@bs.send]

external _INSPECT_MAX_BYTES : t -> int = "INSPECT_MAX_BYTES" [@@bs.get]
external kMaxLength : t -> int = "" [@@bs.get]

external transcode : t -> source:t -> from:Js.String.t -> to_:Js.String.t ->
  t = "" [@@bs.send]
