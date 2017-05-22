open Jest
open Node.Buffer

let _ =

describe "readDoubleBigEndianNoAssert" (fun _ ->
  let open Expect in

  test "valid offset" (fun _ ->
    expect @@ readDoubleBigEndianNoAssert (fromArray [|1;2;3;4;5;6;7;8|]) ~offset:0 |> toBeCloseTo 8.207e-304);

  (* I guess the no assert assertion isn't considered an exception *)
  Skip.test "offset out of bounds" (fun _ ->
    expect (fun () -> readDoubleBigEndianNoAssert (fromArray [|1;2;3;4;5;6;7;8|]) ~offset:1) |> toThrow);
);

