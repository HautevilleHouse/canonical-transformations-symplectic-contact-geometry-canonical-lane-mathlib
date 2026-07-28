import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.ContactManifold

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure LegendrianSubmanifoldPackage (M : ContactManifoldPackage) where
  submanifold : Type
  embedding : submanifold → M.manifold
  isotropic : Prop
  maximal : Prop

structure LegendrianSubmanifoldEvidence (M : ContactManifoldPackage) (L : LegendrianSubmanifoldPackage M) where
  isotropic : L.isotropic
  maximal : L.maximal

def LegendrianSubmanifoldClosed (M : ContactManifoldPackage) (L : LegendrianSubmanifoldPackage M) : Prop :=
  L.isotropic ∧ L.maximal

theorem legendrian_submanifold_closed_from_evidence (M : ContactManifoldPackage) (L : LegendrianSubmanifoldPackage M) (E : LegendrianSubmanifoldEvidence M L) : LegendrianSubmanifoldClosed M L :=
  And.intro E.isotropic E.maximal

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse