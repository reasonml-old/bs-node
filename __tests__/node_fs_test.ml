open Jest

let _ =
  describe "content" (fun _ ->
      test "non-zero length" (fun _ ->
          Just (Truthy (
              match [%node __filename] with
              | None -> 0
              | Some filename -> Node.Fs.readFileSync filename `utf8 |> String.length))))
