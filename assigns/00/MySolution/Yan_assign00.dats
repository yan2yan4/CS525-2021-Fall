
#include
"share/atspre_staload.hats"

#include
"share/atspre_staload_libats_ML.hats"

#include "./../assign00.dats"
(* ****** ****** *)
(*
** 
** Finding the number
** of bits in int-values
**
*)
(* ****** ****** *)
//
// HX: Sample
// factorial(n) = 1*2*...*n 
//
//extern
//fun fact(n: int): int =

implement factorial(n) = 
if n > 0
then n * factorial(n-1) else 1

(*
implement main0() =
{
val () =
println!
("factorial(10) = ", factorial(10))
}
////
*)

//
(* ****** ****** *)
//
// HX: 5 points
// The function int_test should
// return the size of an integer in C
// where the size means the number of bits.
// Note that you should only use comparison
// and addition in the implementation of the
// following function [int_test].
//
//extern 
fun int_test(n: int): int =
(
//implement 
//int_test(n) =
  if 
  (n = 0)
  then 0 
  else (int_test(n/2) + 1)
)

(*
implement main0() =
{
val () =
println!
("int_test(8) = ", int_test(4))
}
////
*)


(* ****** ****** *)
//
// HX: 10 points
// The function [gheep] is defined as follows:
//



fun ghaap(n: int): int =
//implement ghaap(n) =
(
  if
  (n >= 2)
  then n * ghaap(n-1) * ghaap(n-2)
  else (n+1)
  // end of [if]
)
//
// Please implement a tail-recursive function gheep
// such thats gheep(n) = ghaap(n) for all integers n
//

//fun gheep(n: int): int

implement gheep(n) =
(
  let
  
  fun 
  helper(n: int, cons: int, a: int, b: int) =
  (
    if (n = 1)
    then a
    else
    (
      if (n = 2)
      then b
      else helper(n-1, cons+1, b, a*b*cons)
    ) 
  )

  in
    helper(n,3,2,4)
  end
)


(*
implement main0() =
{
val () =
println!("gheep(3) = ", gheep(3))
}

////
*)



//
(* ****** ****** *)
//




(*
datatype
intlist =
| intlist_nil of ()
| intlist_cons of (int, intlist)
//
#define nil intlist_nil
#define :: intlist_cons
#define cons intlist_cons
*)




//
(* ****** ****** *)
//
// HX: 15 points
//
// intlist_append returns the concatenation
// of two given integer lists. For instance,
// given xs=(0,2,4) and ys = (1,3,5), then the
// returned list is (0, 2, 4, 1, 3, 5)
// Please give a tail-recursive implementation
// of intlist_append.
//

(*
fun
//intlist_append : (intlist, intlist) -> intlist
//intlist_append（a: intlist, b: intlist）: intlist
intlist_append
(a: list0(a)
 b: list(a)): list0(a)
*)


fun
  intlist_rev(a: intlist): intlist =
  (
    intlist_revapp(a, intlist_nil())  
  )
  and 
  intlist_revapp(a:intlist, b:intlist):intlist = 
  (
    case a of 
    | intlist_nil() => b
    | intlist_cons(a1, a) => intlist_revapp(a, intlist_cons(a1, b))
  )


implement
intlist_append(a, b) =
(
case a of
| intlist_nil() => b
| intlist_cons(a1, a) => intlist_append(a, intlist_cons(a1, b))
)
 
fun
intlist_print
(a: intlist): void =
(
case a of 
| intlist_nil() => ()
| intlist_cons(a1,a) => (println!(a1); intlist_print(a))
) 
 
implement main0() =
  let 
    val a = intlist_nil()
    val a = intlist_cons(4,a)
    val a = intlist_cons(2,a)
    val a = intlist_cons(0,a)
    val b = intlist_nil()
    val b = intlist_cons(5,b)
    val b = intlist_cons(3,b)
    val b = intlist_cons(1,b)  
    val result = intlist_append(intlist_rev(a), b)
    
    val() = intlist_print(result)

  in 
  end

  
                                                              //a = g0ofg1($list{int}(0,2,4))
                                                              //b = g0ofg1($list{int}(1,3,5))
                                                              //a = 0 :: 2 :: 4 :: nil0{int}()
                                                              //b = 1 :: 3 :: 5 :: nil0{int}()
  //val () =
  //println!("intlist_append(a, b) = ", intlist_append(a, b))


//
(* ****** ****** *)



(* end of [assign00.dats] *)