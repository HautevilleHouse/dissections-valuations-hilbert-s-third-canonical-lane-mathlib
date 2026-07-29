import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdCanonicalLaneLean

structure AdmissibleClass where
  object : HilbertThirdAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HilbertThirdWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DissectionsValuationsHilbertSThirdCanonicalLaneLean
end HautevilleHouse
