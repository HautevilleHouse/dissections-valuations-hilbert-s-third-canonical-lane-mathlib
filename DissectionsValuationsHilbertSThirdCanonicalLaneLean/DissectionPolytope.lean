import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure DissectionPolytope where
  carrier : Type u
  faces : List (Set carrier)
  faceDimension : Set carrier → Nat
  incidenceCondition : ∀ (F G : Set carrier), F ∈ faces → G ∈ faces → F ∩ G ∈ faces
  pureCondition : ∀ (F : Set carrier), F ∈ faces → ∃ (d : Nat), faceDimension F = d

structure DissectionPolytopeEvidence (P : DissectionPolytope) where
  facesNonempty : P.faces ≠ []
  incidenceConditionClosed : P.incidenceCondition
  pureConditionClosed : P.pureCondition

def DissectionPolytopeClosed (P : DissectionPolytope) : Prop :=
  P.faces ≠ [] ∧ P.incidenceCondition ∧ P.pureCondition

theorem dissection_polytope_closed_from_evidence (P : DissectionPolytope)
    (E : DissectionPolytopeEvidence P) : DissectionPolytopeClosed P := by
  exact And.intro E.facesNonempty (And.intro E.incidenceConditionClosed E.pureConditionClosed)

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse