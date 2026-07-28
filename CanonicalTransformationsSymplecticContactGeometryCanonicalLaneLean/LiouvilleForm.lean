import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure LiouvilleFormPackage where
  phaseSpace : SymplecticStructurePackage
  canonicalOneForm : Type u
  symplecticPotential : Prop
  tautologicalForm : Prop
  pullbackProperty : Prop

structure LiouvilleFormEvidence (P : LiouvilleFormPackage) where
  symplecticPotentialClosed : P.symplecticPotential
  tautologicalFormClosed : P.tautologicalForm
  pullbackPropertyClosed : P.pullbackProperty

def LiouvilleFormClosed (P : LiouvilleFormPackage) : Prop :=
  P.symplecticPotential ∧ P.tautologicalForm ∧ P.pullbackProperty

theorem liouville_form_closed_from_evidence (P : LiouvilleFormPackage) (E : LiouvilleFormEvidence P) : LiouvilleFormClosed P := by
  exact And.intro E.symplecticPotentialClosed (And.intro E.tautologicalFormClosed E.pullbackPropertyClosed)

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse