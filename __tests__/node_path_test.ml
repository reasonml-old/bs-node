open Jest

external join : string array -> string = "" [@@bs.module "path"]  [@@bs.splice]

let _ =
  describe "join" (fun _ ->
      test "concat paths with sep" (fun _ ->
          Just (Equal ((join [|"a"; "b"|], "a/b")))))
