import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure SydlerValuationPackage where
  hadwigerType : Type u
  valuation : hadwigerType → ℚ
  translationInvariant : Prop
  scissorCongruenceInvariant : Prop
  continuousOnPolytopes : Prop
  normalizedOnCube : Prop

structure SydlerValuationEvidence (S : SydlerValuationPackage) where
  translationInvariantClosed : S.translationInvariant
  scissorCongruenceInvariantClosed : S.scissorCongruenceInvariant
  continuousOnPolytopesClosed : S.continuousOnPolytopes
  normalizedOnCubeClosed : S.normalizedOnCube

def SydlerValuationClosed (S : SydlerValuationPackage) : Prop :=
  S.translationInvariant ∧ S.scissorCongruenceInvariant ∧
  S.continuousOnPolytopes ∧ S.normalizedOnCube

theorem sydler_valuation_closed_from_evidence (S : SydlerValuationPackage)
    (E : SydlerValuationEvidence S) : SydlerValuationClosed S := by
  exact And.intro E.translationInvariantClosed
    (And.intro E.scissorCongruenceInvariantClosed
      (And.intro E.continuousOnPolytopesClosed E.normalizedOnCubeClosed))

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse