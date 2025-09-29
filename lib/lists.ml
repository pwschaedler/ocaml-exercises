(* Tail of a List *)
let rec last (l : 'a list) : 'a option =
  match l with
  | [] -> None
  | [ x ] -> Some x
  | _ :: xs -> last xs

let%test _ = last [ "a"; "b"; "c"; "d" ] = Some "d"
let%test _ = last [] = None

(* Last Two Elements of a List *)
(* Alternative syntax:
   let rec last_two (l : 'a list) : 'a option = match l with *)
let rec last_two = function
  | [] | [ _ ] -> None
  | [ a; b ] -> Some (a, b)
  | _ :: xs -> last_two xs

let%test _ = last_two [ "a"; "b"; "c"; "d" ] = Some ("c", "d")
let%test _ = last_two [ "a" ] = None
