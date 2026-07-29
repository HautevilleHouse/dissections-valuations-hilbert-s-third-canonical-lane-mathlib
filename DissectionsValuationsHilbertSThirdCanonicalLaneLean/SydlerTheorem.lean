import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure SydlerTheoremPackage where
  polyhedron : Type u
  volume : polyhedron → ℝ
  dehnInvariant : polyhedron → ℝ
  volumeAndDehnInvariantComplete : ∀ p q : polyhedron,
    volume p = volume q ∧ dehnInvariant p = dehnInvariant q → scissorsCongruent p q
  scissorsCongruent : polyhedron → polyhedron → Prop

structure SydlerTheoremEvidence (S : SydlerTheoremPackage) where
  volumeAndDehnInvariantCompleteClosed : S.volumeAndDehnInvariantComplete

def SydlerTheoremClosed (S : SydlerTheoremPackage) : Prop :=
  S.volumeAndDehnInvariantComplete

theorem sydler_theorem_closed_from_evidence (S : SydlerTheoremPackage)
    (E : SydlerTheoremEvidence S) : SydlerTheoremClosed S := by
  exact E.volumeAndDehnInvariantCompleteClosed

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse
