var count: Int = 0
func TOH(nod: Int, sour: String, aux: String, dest: String) {
  if nod == 0 {
    return
  }
  TOH(nod: nod - 1, sour: sour, aux: dest, dest: aux)
  print("Move disk \(nod) from tower \(sour) to tower \(dest)")
  count += 1
  TOH(nod: nod - 1, sour: aux, aux: sour, dest: dest)
}


TOH(nod: 6, sour: "A", aux: "B", dest: "C")
print("Total steps: \(count)")
