import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure GeneratingFunctionPackage where
  function : Type u
  mixedVariables : Type v
  producesSymplectomorphism : Prop
  gradientCondition : Prop
  explicitTransform : Prop

structure GeneratingFunctionEvidence (P : GeneratingFunctionPackage) where
  producesSymplectomorphismClosed : P.producesSymplectomorphism
  gradientConditionClosed : P.gradientCondition
  explicitTransformClosed : P.explicitTransform

def GeneratingFunctionClosed (P : GeneratingFunctionPackage) : Prop :=
  P.producesSymplectomorphism ∧ P.gradientCondition ∧ P.explicitTransform

theorem generating_function_closed_from_evidence (P : GeneratingFunctionPackage) (E : GeneratingFunctionEvidence P) : GeneratingFunctionClosed P := by
  exact And.intro E.producesSymplectomorphismClosed (And.intro E.gradientConditionClosed E.explicitTransformClosed)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse