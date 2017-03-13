type node_require = <
  main : Node_module.t Js.undefined;

  resolve : string -> string [@bs]
  (* @raise exception   *)
> Js.t
(** WARN:
    its path name should not be changed
    see {!Ppx_entry}
*)
