import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure HilbertAdmittedObject where
  tetrahedron : Type u
  volume : tetrahedron → ℚ
  dehnInvariantDefined : Prop
  dissectedProposition : ℚ
  conclusion : dehnInvariantDefined ∧ dissectedProposition = 0

structure HilbertEndgameState where
  object : HilbertAdmittedObject

def HilbertWitnessClosed (O : HilbertAdmittedObject) : Prop :=
  O.dehnInvariantDefined ∧ O.dissectedProposition = 0

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse