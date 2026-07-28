import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean.DarbouxTheorem

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDarbouxClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_darboux_endgame (A : AdmissibleClass) : ConstrainedDarbouxClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse