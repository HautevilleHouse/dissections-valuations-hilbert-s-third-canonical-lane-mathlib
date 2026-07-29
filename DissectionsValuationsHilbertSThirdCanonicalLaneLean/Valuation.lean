import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure ValuationPackage where
  polyhedron : Type u
  baseSet : Type v
  valuation : (polyhedron → ℝ) → polyhedron → ℝ
  additivity : ∀ f g p, valuation (λ x => f x + g x) p = valuation f p + valuation g p
  homogeneity : ∀ f p a, valuation (λ x => a * f x) p = a * valuation f p
  translationInvariant : ∀ f p v, valuation f (translate p v) = valuation f p
  translate : polyhedron → ℝ^3 → polyhedron
  dehnInvariant : polyhedron → ℝ
  dehnInvariantIsValuation : ∃ f : polyhedron → ℝ, ∀ p, dehnInvariant p = valuation f p

structure ValuationEvidence (V : ValuationPackage) where
  additivityClosed : V.additivity
  homogeneityClosed : V.homogeneity
  translationInvariantClosed : V.translationInvariant
  dehnInvariantIsValuationClosed : V.dehnInvariantIsValuation

def ValuationClosed (V : ValuationPackage) : Prop :=
  V.additivity ∧ V.homogeneity ∧ V.translationInvariant ∧ V.dehnInvariantIsValuation

theorem valuation_closed_from_evidence (V : ValuationPackage) (E : ValuationEvidence V) :
    ValuationClosed V := by
  exact And.intro E.additivityClosed (And.intro E.homogeneityClosed
    (And.intro E.translationInvariantClosed E.dehnInvariantIsValuationClosed))

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse
