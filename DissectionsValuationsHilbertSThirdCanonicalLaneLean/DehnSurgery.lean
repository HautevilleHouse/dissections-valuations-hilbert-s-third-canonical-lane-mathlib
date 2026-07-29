import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure PrimitiveDehnSurgeryPackage where
  threeManifold : Type u
  topology : TopologicalSpace threeManifold
  knotEmbedding : threeManifold → threeManifold → Prop
  surgeryCoefficient : ℚ
  surgeredManifold : Type u
  surgeredTopology : TopologicalSpace surgeredManifold
  surgeryPerformed : Prop
  surgeryPerformedTerm : surgeryPerformed

structure DehnSurgeryEvidence (D : PrimitiveDehnSurgeryPackage) where
  surgeryPerformedClosed : D.surgeryPerformed
  coefficientRationalClosed : True

def DehnSurgeryClosed (D : PrimitiveDehnSurgeryPackage) : Prop :=
  D.surgeryPerformed

theorem dehn_surgery_closed_from_evidence (D : PrimitiveDehnSurgeryPackage)
    (E : DehnSurgeryEvidence D) : DehnSurgeryClosed D := by
  exact E.surgeryPerformedClosed

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse