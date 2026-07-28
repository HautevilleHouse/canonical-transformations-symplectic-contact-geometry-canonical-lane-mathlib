import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.ContactManifold

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure ContactTransformationPackage {M N : ContactManifoldPackage} where
  map : M.manifold → N.manifold
  smooth : Prop
  preservesContactForm : Prop

structure ContactTransformationEvidence {M N : ContactManifoldPackage} (T : ContactTransformationPackage M N) where
  smooth : T.smooth
  preservesContactForm : T.preservesContactForm

def ContactTransformationClosed {M N : ContactManifoldPackage} (T : ContactTransformationPackage M N) : Prop :=
  T.smooth ∧ T.preservesContactForm

theorem contact_transformation_closed_from_evidence {M N : ContactManifoldPackage} (T : ContactTransformationPackage M N) (E : ContactTransformationEvidence T) : ContactTransformationClosed T :=
  And.intro E.smooth E.preservesContactForm

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse