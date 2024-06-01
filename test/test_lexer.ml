open OUnit2
open Nlp_lib.Lexer

let test_is_letter _ =
  assert_equal true (is_letter 'a');
  assert_equal true (is_letter 'Z');
  assert_equal true (is_letter '_');
  assert_equal false (is_letter '1');
  assert_equal false (is_letter ' ');
  assert_equal false (is_letter '!')

let suite =
  "Lexer Tests" >::: [
    "test_is_letter" >:: test_is_letter;
  ]

let () =
  run_test_tt_main suite
