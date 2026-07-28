import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.SymplecticManifold

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure CanonicalTransformationPackage {M N : Type u} (P : SymplecticManifoldPackage M) (Q : SymplecticManifoldPackage N) where
  phi : M → N
  symplectic : Prop
  diffeo : Prop
  preservesOmega : Prop

structure CanonicalTransformationEvidence {M N : Type u} {P : SymplecticManifoldPackage M} {Q : SymplecticManifoldPackage N} (T : CanonicalTransformationPackage P Q) where
  symplecticClosed : T.symplectic
  diffeoClosed : T.diffeo
  preservesOmegaClosed : T.preservesOmega

def CanonicalTransformationClosed {M N : Type u} {P : SymplecticManifoldPackage M} {Q : SymplecticManifoldPackage N} (T : CanonicalTransformationPackage P Q) : Prop :=
  T.symplectic ∧ T.diffeo ∧ T.preservesOmega

theorem canonical_transformation_closed_from_evidence {M N : Type u} {P : SymplecticManifoldPackage M} {Q : SymplecticManifoldPackage N} (T : CanonicalTransformationPackage P Q) (E : CanonicalTransformationEvidence T) : CanonicalTransformationClosed T :=
  And.intro E.symplecticClosed (And.intro E.diffeoClosed E.preservesOmegaClosed)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse