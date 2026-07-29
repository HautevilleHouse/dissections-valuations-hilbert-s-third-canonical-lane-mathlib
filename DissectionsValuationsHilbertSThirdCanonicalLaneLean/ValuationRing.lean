import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure PrimitiveValuationRing where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  valuation : ring → ℤ₊? 
  valuationAxioms : Prop
  valuationAxiomsTerm : valuationAxioms

structure ValuationRingEvidence (V : PrimitiveValuationRing) where
  valuationAxiomsClosed : V.valuationAxioms

def ValuationRingClosed (V : PrimitiveValuationRing) : Prop :=
  V.valuationAxioms

theorem valuation_ring_closed_from_evidence (V : PrimitiveValuationRing)
    (E : ValuationRingEvidence V) : ValuationRingClosed V := by
  exact E.valuationAxiomsClosed

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse