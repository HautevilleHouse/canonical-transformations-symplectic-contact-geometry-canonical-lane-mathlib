import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure SymplecticSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  symplecticForm : carrier → carrier → ℝ

structure ContactSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  contactForm : carrier → carrier → carrier → ℝ

structure SymplecticAdmittedObject where
  space : SymplecticSpace
  compactWithoutBoundary : Prop
  symplecticFormClosed : Prop
  conclusion : compactWithoutBoundary ∧ symplecticFormClosed

structure ContactAdmittedObject where
  space : ContactSpace
  contactFormNondegenerate : Prop
  conclusion : contactFormNondegenerate

structure AdmissibleClass where
  object : SymplecticAdmittedObject ⊎ ContactAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def SymplecticWitnessClosed (O : SymplecticAdmittedObject) : Prop :=
  O.compactWithoutBoundary ∧ O.symplecticFormClosed

def ContactWitnessClosed (O : ContactAdmittedObject) : Prop :=
  O.contactFormNondegenerate

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse