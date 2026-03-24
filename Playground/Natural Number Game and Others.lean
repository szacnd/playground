-- Here, are the exercises from the "Natural number game"
-- Aqui, estão exercicios do jogo "Natural number game"

theorem thsv_eq_thsv (x q: Nat) : 37*x + q = 37*x + q := by
  rfl
  -- rfl is the same as reflexivity
  -- rfl é o mesmo que reflexitividade

#check thsv_eq_thsv

-- Note: The syntax of LEAN is as follow
-- theorem (theorem name) (hypotesis) ... (hypotheses) : (goal) := by
--  tatics
-- Nota: A sintaxe do LEAN é a seguinte
-- theorem (nome do teorema) (hipotese) ... (hipotese) : (objetivo) := by
--  tática

theorem ty_eq_txps (x y: Nat) (h : y = x + 7) : 2*y = 2*(x + 7) := by
  rw[h]
  -- The natural number game, says that the reflexivity is necessary
  -- The lean mathlib doens't seen to require that.
  -- O jogo natural number game, diz que a reflexitivade é necessária
  -- A biblioteca mathlib parece que não requer isso.

#check ty_eq_txps

-- This is along one, prove that 2 + 2 = 4, ussing successor.
-- Essa é uma longa, prove que 2 + 2 = 4, usando sucessores.

theorem one_eq_succ_zero : (1 : Nat) = Nat.succ 0 :=
  rfl

#check one_eq_succ_zero

theorem two_eq_succ_one : (2 : Nat) = Nat.succ 1 :=
  rfl

#check two_eq_succ_one

theorem three_eq_succ_two : (3 : Nat) = Nat.succ 2 :=
  rfl

#check three_eq_succ_two

theorem four_eq_succ_three : (4 : Nat) = Nat.succ 3 :=
  rfl

#check four_eq_succ_three

-- Before we prove that 2 + 2 = 4, the game ask to prove that 2 is the successor of the succesor of zero
-- Antes de provarmos que 2 + 2 = 4, o jogo pede para provar que 2 é o sucessor do sucessor de zero
theorem t_eq_succ_succ_z : (2 : Nat) = Nat.succ (Nat.succ 0) := by
  calc
    (2 : Nat)
        = Nat.succ 1 := two_eq_succ_one
    _  = Nat.succ (Nat.succ 0) := by
          rw [one_eq_succ_zero]

-- Essa demonstração em especial requer uma certa explicação do porque escrevi desta forma
-- O LEAN verifica quando um objetivo já é completado, ou seja, processos extras são ignorados
-- e tratados como erros.
-- A documentação de calc pode ser lida em https://leanprover-community.github.io/extras/calc.html
-- Basicamente, permite que você crie o seu prórprio caminho para a demonstração
-- Pois, segundo o lean, uma demonstração curta e direta seria
-- theorem t_eq_succ_succ_z_s : (2 : Nat) = Nat.succ (Nat.succ 0 ) := by
--  rfl

#check t_eq_succ_succ_z

-- Bellow here, is some examples that I tried on reunions and
-- by myself
-- Abaixo daqui, estão alguns exemplos que testamos em reuniões e
-- por mim mesmo.
theorem add_comm (m n: Nat) : m + n = n + m := by
  induction n with
    | zero =>
      rw [Nat.add_zero, Nat.zero_add]
    | succ n ih =>
      rw [Nat.add_succ, Nat.succ_add, ih]

#check add_comm
