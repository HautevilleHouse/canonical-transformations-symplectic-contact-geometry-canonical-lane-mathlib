import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.CanonicalTransformation

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure GeneratingFunctionPackage {M N : Type u} (P : SymplecticManifoldPackage M) (Q : SymplecticManifoldPackage N) where
  S : M × N → ℝ
  generatesPhi : (M → N) → Prop
  type : Nat
  nondegeneracy : Prop

structure GeneratingFunctionEvidence {M N : Type u} {P : SymplecticManifoldPackage M} {Q : SymplecticManifoldPackage N} (G : GeneratingFunctionPackage P Q) where
  generatesPhiClosed : G.generatesPhi
  nondegeneracyClosed : G.nondegeneracy

def GeneratingFunctionClosed {M N : Type u} {P : SymplecticManifoldPackage M} {Q : SymplecticManifoldPackage N} (G : GeneratingFunctionPackage P Q) : Prop :=
  G.generatesPhi ∧ G.nondegeneracy

theorem generating_function_closed_from_evidence {M N : Type u} {P : SymplecticManifoldPackage M} {Q : SymplecticManifoldPackage N} (G : GeneratingFunctionPackage P Q) (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G :=
  And.intro E.generatesPhiClosed E.nondegeneracyClosed

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse