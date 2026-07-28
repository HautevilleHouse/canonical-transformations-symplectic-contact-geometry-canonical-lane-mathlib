import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure SymplecticStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothAtlas : Type v
  symplecticForm : Type w
  closedNondegenerate : Prop
  smoothTwoForm : Prop
  dOmegaZero : Prop
  nondegeneracy : Prop

structure SymplecticStructureEvidence (P : SymplecticStructurePackage) where
  closedNondegenerateClosed : P.closedNondegenerate
  smoothTwoFormClosed : P.smoothTwoForm
  dOmegaZeroClosed : P.dOmegaZero
  nondegeneracyClosed : P.nondegeneracy

def SymplecticStructureClosed (P : SymplecticStructurePackage) : Prop :=
  P.closedNondegenerate ∧ P.smoothTwoForm ∧ P.dOmegaZero ∧ P.nondegeneracy

theorem symplectic_structure_closed_from_evidence (P : SymplecticStructurePackage) (E : SymplecticStructureEvidence P) : SymplecticStructureClosed P := by
  exact And.intro E.closedNondegenerateClosed (And.intro E.smoothTwoFormClosed (And.intro E.dOmegaZeroClosed E.nondegeneracyClosed))

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse