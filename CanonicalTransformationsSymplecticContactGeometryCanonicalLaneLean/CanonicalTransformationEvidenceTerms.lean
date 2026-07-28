import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.SymplecticContactObjects
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.SymplecticStructure

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure SymplecticAdmittedEvidenceTerms (A : AdmissibleClass) where
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

def SymplecticAdmittedEvidenceTerms.fromAdmissibleClass (A : AdmissibleClass) : SymplecticAdmittedEvidenceTerms A :=
  { bridgeClosed := bridge_from_admissible_class A,
    gateClosed := gate_from_admissible_class A }

structure ContactAdmittedEvidenceTerms where
  contactFormNondegenerate : Prop
  contactFormNondegenerateTerm : contactFormNondegenerate

structure CanonicalTransformationAnalyticEvidence (P : SymplecticStructurePackage) where
  symplecticEvidence : SymplecticEvidence P
  contactEvidence : ContactAdmittedEvidenceTerms

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse