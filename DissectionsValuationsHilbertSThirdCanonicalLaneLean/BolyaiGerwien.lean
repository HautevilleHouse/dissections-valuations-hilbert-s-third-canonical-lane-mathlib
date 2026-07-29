import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

theorem bolyai_gerwien_theorem (poly1 poly2 : Polygon) : area poly1 = area poly2 → dissectible poly1 poly2 :=
  by
    intro h
    apply bolyai_gerwien_proof

theorem area_is_invariant (poly1 poly2 : Polygon) (h : dissectible poly1 poly2) : area poly1 = area poly2 :=
  by
    induction h with
    | base => rfl
    | step step ih => 
      -- invariant under dissection steps
      exact ih

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse