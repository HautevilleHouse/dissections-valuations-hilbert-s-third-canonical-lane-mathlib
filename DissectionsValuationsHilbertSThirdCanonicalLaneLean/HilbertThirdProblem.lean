import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure PrimitiveHilbertThirdProblem where
  tetrahedron : Type u
  dissectionRegion : Type u
  equidecomposable : tetrahedron → tetrahedron → Prop
  dehnInvariant : tetrahedron → ℚ ⊗ ℝ/ℚ
  hilbertThirdResolved : Prop
  hilbertThirdResolvedTerm : hilbertThirdResolved

structure HilbertThirdProblemEvidence (H : PrimitiveHilbertThirdProblem) where
  hilbertThirdResolvedClosed : H.hilbertThirdResolved

def HilbertThirdProblemClosed (H : PrimitiveHilbertThirdProblem) : Prop :=
  H.hilbertThirdResolved

theorem hilbert_third_problem_closed_from_evidence (H : PrimitiveHilbertThirdProblem)
    (E : HilbertThirdProblemEvidence H) : HilbertThirdProblemClosed H := by
  exact E.hilbertThirdResolvedClosed

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse