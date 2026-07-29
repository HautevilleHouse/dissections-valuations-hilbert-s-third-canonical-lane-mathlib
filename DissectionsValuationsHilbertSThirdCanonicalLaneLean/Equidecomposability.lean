import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure Equidecomposable (P Q : Polyhedron 3) where
  parts : List (Polyhedron 3)
  partitionP : disjoint_union parts P
  partitionQ : disjoint_union parts Q
  congruence : ∀ part ∈ parts, congruent part P

theorem equidecomposable_iff_dissectible (P Q : Polyhedron 3) : Equidecomposable P Q ↔ dissectible P Q :=
  by
    constructor
    · intro h
      exact dissectible_from_equidecomposable h
    · intro h
      exact equidecomposable_from_dissectible h

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse