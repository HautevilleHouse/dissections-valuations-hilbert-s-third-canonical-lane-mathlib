import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure PrimitiveDissection where
  polytope : Type u
  faces : List (PolytopeFace ?)
  dissectionAdmissible : Prop
  dissectionAdmissibleTerm : dissectionAdmissible

structure DissectionEvidence (D : PrimitiveDissection) where
  dissectionAdmissibleClosed : D.dissectionAdmissible

def DissectionClosed (D : PrimitiveDissection) : Prop :=
  D.dissectionAdmissible

theorem dissection_closed_from_evidence (D : PrimitiveDissection)
    (E : DissectionEvidence D) : DissectionClosed D := by
  exact E.dissectionAdmissibleClosed

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse