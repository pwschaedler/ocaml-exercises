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

(* N'th Element of a List *)
let rec at idx l =
  match (idx, l) with
  | i, _ when i < 0 -> None
  | _, [] -> None
  | 0, x :: _ -> Some x
  | _, _ :: xs -> at (idx - 1) xs

(* Alternative syntax for dealing with the list and an extra argument:
   let rec at k = function ... *)
(* Official solution was similar but used an if expression:
   ...
   | h :: t -> if k = 0 then Some h else at (k - 1) t *)

let%test _ = at 2 [ "a"; "b"; "c"; "d"; "e" ] = Some "c"
let%test _ = at 2 [ "a" ] = None
