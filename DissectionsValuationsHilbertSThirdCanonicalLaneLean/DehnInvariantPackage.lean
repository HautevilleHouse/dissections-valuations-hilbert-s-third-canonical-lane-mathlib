import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure DehnInvariantPackage where
  polyhedron : Type u
  invariant : polyhedron → ℚ
  additiveUnderDissection : Prop
  vanishingOnCube : Prop
  edgeLengthIndependent : Prop

structure DehnInvariantEvidence (D : DehnInvariantPackage) where
  additiveUnderDissectionClosed : D.additiveUnderDissection
  vanishingOnCubeClosed : D.vanishingOnCube
  edgeLengthIndependentClosed : D.edgeLengthIndependent

def DehnInvariantClosed (D : DehnInvariantPackage) : Prop :=
  D.additiveUnderDissection ∧ D.vanishingOnCube ∧ D.edgeLengthIndependent

theorem dehn_invariant_closed_from_evidence (D : DehnInvariantPackage)
    (E : DehnInvariantEvidence D) : DehnInvariantClosed D := by
  exact And.intro E.additiveUnderDissectionClosed
    (And.intro E.vanishingOnCubeClosed E.edgeLengthIndependentClosed)

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse