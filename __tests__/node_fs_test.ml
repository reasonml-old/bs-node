open Jest

let _ =

describe "content" (fun _ ->
  let open ExpectJs in

  test "non-zero length" (fun _ ->
    expect (
      match [%node __filename] with
      | None -> 0
      | Some filename -> Node.Fs.readFileSync filename `utf8 |> String.length)
      |> toBeTruthy);
);
