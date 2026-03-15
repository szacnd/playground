theorem add_comm (m n: Nat) : m + n = n + m := by
  induction n with
    | zero =>
      rw [Nat.add_zero, Nat.zero_add]
    | succ n ih =>
      rw [Nat.add_succ, Nat.succ_add, ih]

#check add_comm
