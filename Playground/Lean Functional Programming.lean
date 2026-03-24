#eval 1 + 2
#eval 1 + 2 * 5
#eval String.append "Hello " "World"
#eval String.append "great " (String.append "oak " "tree")
#eval 42 + 19
#eval String.append "A" (String.append "B" "C")
#eval if 3 == 3 then 5 else 7
#eval if 3 == 4 then "equal" else "not equal"
#eval (1 - 2: Nat)
#eval (1 - 2: Int)
#check (1 - 2: Int)

-- #check String.append ["hello", ""] "world"
-- Returns an erro
-- Application type mismatch: The argument
--  ["hello", ""]
-- has type
--  List String
-- but is expected to have type
--  String
-- in the application
--  String.append ["hello", ""]

def lean : String := "Lean" -- This does not define a function tha return "Lean", but associates the "variable" lean with the strign "Lean"

-- Do define a function, it's necessary to provide at least one argument
def add_one (n: Nat) : Nat := n + 1
-- Syntax: def (function name) (argument : type) : (return type) := (algorithm)
def maximum (n: Nat) (k: Nat) : Nat :=
  if n < k then
    k
  else n

-- Example
#eval maximum (5+8) (2 * 7)
-- maximum (5 + 8) (2 * 7) => 
-- maximum 13 14 => 
-- if 13 < 14 then 14 else 13 =>
-- 14 (returned value)

def spaceBetween (before : String) (after : String) : String :=
  String.append before (String.append " " after)

-- As functional programming is basicaly a type of lambda calculus
-- There's no "two arguments functions" everything is threated as
-- A function, that creates a functions and so on.
-- Let's do a math example f(x) = 2x + 1, could be the writen as
-- g(x) = x + 1, h(x) = 2x => h(g(x)) = f(x)
-- Read: https://en.wikipedia.org/wiki/Lambda_calculus