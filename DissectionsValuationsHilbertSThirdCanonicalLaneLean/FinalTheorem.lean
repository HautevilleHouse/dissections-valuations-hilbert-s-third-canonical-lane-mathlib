import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

def ConstrainedHilbertThirdClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hilbert_third_endgame (A : AdmissibleClass) :
    ConstrainedHilbertThirdClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse
