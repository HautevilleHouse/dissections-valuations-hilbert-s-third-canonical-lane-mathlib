import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure HadwigerValuationPackage where
  valuationType : Type u
  convexBodyType : Type v
  continuity : Prop
  translationInvariant : Prop
  rotationInvariant : Prop
  additivityUnderConvexUnion : Prop
  decomposition : List (valuationType → convexBodyType → ℝ)
  intrinsicVolumesDefined : Prop

structure HadwigerValuationEvidence (H : HadwigerValuationPackage) where
  continuityClosed : H.continuity
  translationInvariantClosed : H.translationInvariant
  rotationInvariantClosed : H.rotationInvariant
  additivityUnderConvexUnionClosed : H.additivityUnderConvexUnion
  intrinsicVolumesDefinedClosed : H.intrinsicVolumesDefined

def HadwigerValuationClosed (H : HadwigerValuationPackage) : Prop :=
  H.continuity ∧ H.translationInvariant ∧ H.rotationInvariant ∧ H.additivityUnderConvexUnion ∧ H.intrinsicVolumesDefined

theorem hadwiger_valuation_closed_from_evidence (H : HadwigerValuationPackage) (E : HadwigerValuationEvidence H) :
    HadwigerValuationClosed H := by
  exact And.intro E.continuityClosed (And.intro E.translationInvariantClosed (And.intro E.rotationInvariantClosed (And.intro E.additivityUnderConvexUnionClosed E.intrinsicVolumesDefinedClosed)))

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse
