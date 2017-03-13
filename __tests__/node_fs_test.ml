open Jest

let _ =
  describe "content" (fun _ ->
      test "non-zero length" (fun _ ->
          Just (Truthy (Js.Undefined.bind [%node __filename] begin fun [@bs] f ->
              let content : string =
                Node.Fs.readFileSync  f `utf8 in
              content |> String.length
            end))))
