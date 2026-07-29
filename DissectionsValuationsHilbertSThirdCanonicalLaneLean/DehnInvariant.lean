import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure DehnInvariantPackage where
  polyhedron : Type u
  edgeLengths : polyhedron → List ℝ
  dihedralAngles : polyhedron → List ℝ
  invariant : polyhedron → ℝ
  additiveUnderCutting : Prop
  vanishesOnCube : Prop
  unchangedByCongruence : Prop

structure DehnInvariantEvidence (D : DehnInvariantPackage) where
  additiveUnderCuttingClosed : D.additiveUnderCutting
  vanishesOnCubeClosed : D.vanishesOnCube
  unchangedByCongruenceClosed : D.unchangedByCongruence

def DehnInvariantClosed (D : DehnInvariantPackage) : Prop :=
  D.additiveUnderCutting ∧ D.vanishesOnCube ∧ D.unchangedByCongruence

theorem dehn_invariant_closed_from_evidence (D : DehnInvariantPackage) (E : DehnInvariantEvidence D) :
    DehnInvariantClosed D := by
  exact And.intro E.additiveUnderCuttingClosed (And.intro E.vanishesOnCubeClosed E.unchangedByCongruenceClosed)

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse
