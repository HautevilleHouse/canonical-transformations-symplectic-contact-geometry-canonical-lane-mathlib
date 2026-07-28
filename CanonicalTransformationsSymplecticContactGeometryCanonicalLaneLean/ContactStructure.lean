import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure ContactStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothAtlas : Type v
  contactForm : Type w
  maximallyNonintegrable : Prop
  smoothOneForm : Prop
  dAlphaNondegenerateOnKernel : Prop
  conformalClass : Prop

structure ContactStructureEvidence (P : ContactStructurePackage) where
  maximallyNonintegrableClosed : P.maximallyNonintegrable
  smoothOneFormClosed : P.smoothOneForm
  dAlphaNondegenerateOnKernelClosed : P.dAlphaNondegenerateOnKernel
  conformalClassClosed : P.conformalClass

def ContactStructureClosed (P : ContactStructurePackage) : Prop :=
  P.maximallyNonintegrable ∧ P.smoothOneForm ∧ P.dAlphaNondegenerateOnKernel ∧ P.conformalClass

theorem contact_structure_closed_from_evidence (P : ContactStructurePackage) (E : ContactStructureEvidence P) : ContactStructureClosed P := by
  exact And.intro E.maximallyNonintegrableClosed (And.intro E.smoothOneFormClosed (And.intro E.dAlphaNondegenerateOnKernelClosed E.conformalClassClosed))

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse