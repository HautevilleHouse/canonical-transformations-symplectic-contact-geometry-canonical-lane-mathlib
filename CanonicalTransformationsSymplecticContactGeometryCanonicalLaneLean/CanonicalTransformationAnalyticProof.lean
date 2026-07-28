import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.SymplecticContactObjects
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.SymplecticStructure
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.CanonicalTransformationEvidenceTerms

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

structure CanonicalTransformationAnalyticCertificate where
  symplecticStructureClosed : Prop
  contactStructureClosed : Prop
  bridgeClosedEvidence : Prop
  gateClosedEvidence : Prop
  certificateClosed : symplecticStructureClosed ∧ contactStructureClosed ∧ bridgeClosedEvidence ∧ gateClosedEvidence

def ConstrainedCanonicalTransformationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_canonical_transformation_endgame (A : AdmissibleClass) : ConstrainedCanonicalTransformationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse