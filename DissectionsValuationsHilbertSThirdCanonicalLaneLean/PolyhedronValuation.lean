import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure PrimitivePolyhedronValuation where
  polyhedron : Type u
  valuation : (set of polyhedron) → ℤ
  valuationProperties : Prop
  valuationPropertiesTerm : valuationProperties

structure PolyhedronValuationEvidence (P : PrimitivePolyhedronValuation) where
  valuationPropertiesClosed : P.valuationProperties

def PolyhedronValuationClosed (P : PrimitivePolyhedronValuation) : Prop :=
  P.valuationProperties

theorem polyhedron_valuation_closed_from_evidence (P : PrimitivePolyhedronValuation)
    (E : PolyhedronValuationEvidence P) : PolyhedronValuationClosed P := by
  exact E.valuationPropertiesClosed

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse