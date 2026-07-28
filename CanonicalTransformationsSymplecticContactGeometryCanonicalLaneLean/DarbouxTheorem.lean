import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure DarbouxPackage where
  symplecticFormClosed : Prop
  localCoordinatesExist : Prop
  transformationToCanonical : Prop
  contactCaseAnalog : Prop

structure DarbouxEvidence (D : DarbouxPackage) where
  symplecticFormClosed : D.symplecticFormClosed
  localCoordinatesExist : D.localCoordinatesExist
  transformationToCanonical : D.transformationToCanonical
  contactCaseAnalog : D.contactCaseAnalog

def DarbouxClosed (D : DarbouxPackage) : Prop :=
  D.symplecticFormClosed ∧ D.localCoordinatesExist ∧ D.transformationToCanonical ∧ D.contactCaseAnalog

theorem darboux_closed_from_evidence (D : DarbouxPackage) (E : DarbouxEvidence D) : DarbouxClosed D := by
  exact And.intro E.symplecticFormClosed (And.intro E.localCoordinatesExist (And.intro E.transformationToCanonical E.contactCaseAnalog))

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse