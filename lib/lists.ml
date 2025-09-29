(* Tail of a List *)
let rec last (l : 'a list) : 'a option =
  match l with [] -> None | [ x ] -> Some x | _ :: xs -> last xs

let%test _ = last [ "a"; "b"; "c"; "d" ] = Some "d"
let%test _ = last [] = None
