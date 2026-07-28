import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.ContactStructure

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure LegendreTransform (M : ContactManifold) (N : ContactManifold) where
  functionType : Type u
  domain : Type v
  codomain : Type w
  involutiveCondition : Prop
  contactCondition : Prop

structure ContactTransformation (M : ContactManifold) (N : ContactManifold) where
  map : M.carrier → N.carrier
  smooth : Prop
  preservesContactStructure : Prop
  legendreTransform : LegendreTransform M N

structure ContactTransformationPackage (M : ContactManifold) (N : ContactManifold) where
  contactTransformation : ContactTransformation M N
  legendreTransformClosed : Prop
  involutiveCondition : Prop
  contactConditionSatisfied : Prop

structure ContactTransformationEvidence (M : ContactManifold) (N : ContactManifold) (P : ContactTransformationPackage M N) where
  legendreTransformClosed : P.legendreTransformClosed
  involutiveCondition : P.involutiveCondition
  contactConditionSatisfied : P.contactConditionSatisfied
  transformationSmooth : P.contactTransformation.smooth
  preservesContact : P.contactTransformation.preservesContactStructure

def ContactTransformationClosed (M : ContactManifold) (N : ContactManifold) (P : ContactTransformationPackage M N) : Prop :=
  P.legendreTransformClosed ∧ P.involutiveCondition ∧ P.contactConditionSatisfied ∧
  P.contactTransformation.smooth ∧ P.contactTransformation.preservesContactStructure

theorem contact_transformation_closed_from_evidence (M : ContactManifold) (N : ContactManifold)
    (P : ContactTransformationPackage M N) (E : ContactTransformationEvidence M N P) :
    ContactTransformationClosed M N P := by
  exact And.intro E.legendreTransformClosed
    (And.intro E.involutiveCondition
      (And.intro E.contactConditionSatisfied
        (And.intro E.transformationSmooth E.preservesContact)))

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse