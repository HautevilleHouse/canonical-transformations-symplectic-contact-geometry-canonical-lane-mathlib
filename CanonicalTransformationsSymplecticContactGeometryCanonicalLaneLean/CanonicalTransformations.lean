import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure CanonicalTransformationPackage where
  source : SymplecticStructurePackage
  target : SymplecticStructurePackage
  diffeomorphism : Type u
  symplecticPullback : Prop
  preservesOmega : Prop
  inverseAlsoSymplectic : Prop

structure CanonicalTransformationEvidence (P : CanonicalTransformationPackage) where
  symplecticPullbackClosed : P.symplecticPullback
  preservesOmegaClosed : P.preservesOmega
  inverseAlsoSymplecticClosed : P.inverseAlsoSymplectic

def CanonicalTransformationClosed (P : CanonicalTransformationPackage) : Prop :=
  P.symplecticPullback ∧ P.preservesOmega ∧ P.inverseAlsoSymplectic

theorem canonical_transformation_closed_from_evidence (P : CanonicalTransformationPackage) (E : CanonicalTransformationEvidence P) : CanonicalTransformationClosed P := by
  exact And.intro E.symplecticPullbackClosed (And.intro E.preservesOmegaClosed E.inverseAlsoSymplecticClosed)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse