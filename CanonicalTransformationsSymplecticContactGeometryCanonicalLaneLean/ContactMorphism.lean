import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.ContactManifold

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure ContactMorphismPackage {M N : Type u} (P : ContactManifoldPackage M) (Q : ContactManifoldPackage N) where
  phi : M → N
  contact : Prop
  diffeo : Prop
  preservesAlpha : Prop

structure ContactMorphismEvidence {M N : Type u} {P : ContactManifoldPackage M} {Q : ContactManifoldPackage N} (T : ContactMorphismPackage P Q) where
  contactClosed : T.contact
  diffeoClosed : T.diffeo
  preservesAlphaClosed : T.preservesAlpha

def ContactMorphismClosed {M N : Type u} {P : ContactManifoldPackage M} {Q : ContactManifoldPackage N} (T : ContactMorphismPackage P Q) : Prop :=
  T.contact ∧ T.diffeo ∧ T.preservesAlpha

theorem contact_morphism_closed_from_evidence {M N : Type u} {P : ContactManifoldPackage M} {Q : ContactManifoldPackage N} (T : ContactMorphismPackage P Q) (E : ContactMorphismEvidence T) : ContactMorphismClosed T :=
  And.intro E.contactClosed (And.intro E.diffeoClosed E.preservesAlphaClosed)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse