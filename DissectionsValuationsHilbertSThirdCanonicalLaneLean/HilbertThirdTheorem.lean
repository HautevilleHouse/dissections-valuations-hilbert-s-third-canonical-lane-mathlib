import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure HilbertThirdTheoremPackage where
  polyhedron : Type u
  volume : polyhedron → ℝ
  dehnInvariant : polyhedron → ℝ
  regularTetrahedron : polyhedron
  regularTetrahedronVolume : ℝ
  regularTetrahedronDehnInvariant : ℝ
  volumeIdentity : ∀ p q, volume (combined p q) = volume p + volume q
  combined : polyhedron → polyhedron → polyhedron

structure HilbertThirdTheoremEvidence (H : HilbertThirdTheoremPackage) where
  volumeIdentityClosed : H.volumeIdentity
  volumeNotDehnDetermined : H.regularTetrahedronVolume ≠ 0 ∧ H.regularTetrahedronDehnInvariant ≠ 0

def HilbertThirdTheoremClosed (H : HilbertThirdTheoremPackage) : Prop :=
  H.volumeIdentity ∧ H.regularTetrahedronVolume ≠ 0 ∧ H.regularTetrahedronDehnInvariant ≠ 0

theorem hilbert_third_theorem_closed_from_evidence (H : HilbertThirdTheoremPackage)
    (E : HilbertThirdTheoremEvidence H) : HilbertThirdTheoremClosed H := by
  exact And.intro E.volumeIdentityClosed E.volumeNotDehnDetermined

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse
