import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure HamiltonianVectorFieldPackage where
  symplecticStructure : SymplecticStructurePackage
  hamiltonianFunction : Type u
  vectorField : Type v
  interiorProductEquation : Prop
  flowPreservesSymplectic : Prop
  poissonBracket : Prop

structure HamiltonianVectorFieldEvidence (P : HamiltonianVectorFieldPackage) where
  interiorProductEquationClosed : P.interiorProductEquation
  flowPreservesSymplecticClosed : P.flowPreservesSymplectic
  poissonBracketClosed : P.poissonBracket

def HamiltonianVectorFieldClosed (P : HamiltonianVectorFieldPackage) : Prop :=
  P.interiorProductEquation ∧ P.flowPreservesSymplectic ∧ P.poissonBracket

theorem hamiltonian_vector_field_closed_from_evidence (P : HamiltonianVectorFieldPackage) (E : HamiltonianVectorFieldEvidence P) : HamiltonianVectorFieldClosed P := by
  exact And.intro E.interiorProductEquationClosed (And.intro E.flowPreservesSymplecticClosed E.poissonBracketClosed)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse