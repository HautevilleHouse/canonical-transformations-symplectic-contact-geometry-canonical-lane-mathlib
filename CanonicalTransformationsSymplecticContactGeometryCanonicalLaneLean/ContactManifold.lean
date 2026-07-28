import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure ContactManifoldPackage (M : Type u) where
  alpha : M → ℝ
  nondegenerate : Prop
  contactCondition : Prop
  smooth : Prop

structure ContactManifoldEvidence {M : Type u} (P : ContactManifoldPackage M) where
  nondegenerateClosed : P.nondegenerate
  contactConditionClosed : P.contactCondition
  smoothClosed : P.smooth

def ContactManifoldClosed {M : Type u} (P : ContactManifoldPackage M) : Prop :=
  P.nondegenerate ∧ P.contactCondition ∧ P.smooth

theorem contact_manifold_closed_from_evidence {M : Type u} (P : ContactManifoldPackage M) (E : ContactManifoldEvidence P) : ContactManifoldClosed P :=
  And.intro E.nondegenerateClosed (And.intro E.contactConditionClosed E.smoothClosed)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse