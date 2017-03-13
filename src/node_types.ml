type node_exports
type node_module = <
  id : string ;
  exports : node_exports ;
  parent : node_module Js.null_undefined;
  (* in REPL V4 it is [undefined]
    in CLI it can be [null]
  *)

  filename : string ;

  loaded : Js.boolean;
  children : node_module array ;
  paths : string array;
> Js.t
 (** WARN:
     its path name should not be changed
     see {!Ppx_entry}
*)

type node_require = <
  main : node_module Js.undefined;

  resolve : string -> string [@bs]
  (* @raise exception   *)
> Js.t
(** WARN:
    its path name should not be changed
    see {!Ppx_entry}
*)

type string_buffer (* can be either string or buffer *)

type buffer
