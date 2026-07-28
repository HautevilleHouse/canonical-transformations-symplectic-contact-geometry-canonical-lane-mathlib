import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.SymplecticStructure
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.ContactStructure
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.CanonicalTransformation
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.ContactTransformation

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure Symplectization (M : ContactManifold) where
  symplecticManifold : SymplecticManifold
  projection : symplecticManifold.carrier → M.carrier
  formRelation : Prop
  closedNondegenerateProof : SymplecticFormClosed symplecticManifold

structure Contactization (M : SymplecticManifold) where
  contactManifold : ContactManifold
  projection : contactManifold.carrier → M.carrier
  formRelation : Prop
  maximallyNonintegrableProof : ContactFormClosed contactManifold

structure SymplecticContactBridgePackage where
  symplectizationFunctor : ∀ (M : ContactManifold), Symplectization M
  contactizationFunctor : ∀ (M : SymplecticManifold), Contactization M
  adjunctionProperties : Prop

structure SymplecticContactBridgeEvidence (B : SymplecticContactBridgePackage) where
  symplectizationDefined : ∀ (M : ContactManifold), Symplectization M
  contactizationDefined : ∀ (M : SymplecticManifold), Contactization M
  adjunctionPropertiesClosed : B.adjunctionProperties

def SymplecticContactBridgeClosed (B : SymplecticContactBridgePackage) : Prop :=
  (∀ (M : ContactManifold), Symplectization M) ∧
  (∀ (M : SymplecticManifold), Contactization M) ∧
  B.adjunctionProperties

theorem symplectic_contact_bridge_closed_from_evidence (B : SymplecticContactBridgePackage)
    (E : SymplecticContactBridgeEvidence B) : SymplecticContactBridgeClosed B := by
  exact And.intro E.symplectizationDefined
    (And.intro E.contactizationDefined E.adjunctionPropertiesClosed)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse