open Jest

external join : string array -> string = "" [@@bs.module "path"]  [@@bs.splice]

let _ =

describe "join" (fun _ ->
  let open Expect in

  test "concat paths with sep" (fun _ ->
    expect @@ join [|"a"; "b"|] |> toEqual "a/b");
);
