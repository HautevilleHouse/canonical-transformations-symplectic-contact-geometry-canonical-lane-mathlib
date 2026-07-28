import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure SymplecticManifoldPackage (M : Type u) where
  omega : M → M → ℝ
  closed : Prop
  nondegenerate : Prop
  smooth : Prop

structure SymplecticManifoldEvidence {M : Type u} (P : SymplecticManifoldPackage M) where
  closedClosed : P.closed
  nondegenerateClosed : P.nondegenerate
  smoothClosed : P.smooth

def SymplecticManifoldClosed {M : Type u} (P : SymplecticManifoldPackage M) : Prop :=
  P.closed ∧ P.nondegenerate ∧ P.smooth

theorem symplectic_manifold_closed_from_evidence {M : Type u} (P : SymplecticManifoldPackage M) (E : SymplecticManifoldEvidence P) : SymplecticManifoldClosed P :=
  And.intro E.closedClosed (And.intro E.nondegenerateClosed E.smoothClosed)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse