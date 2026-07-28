import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean

structure SymplecticContactAdmittedObject where
  manifold : Type u
  form : Type v
  isSymplectic : Prop
  isContact : Prop
  dimEven : dim = 2n
  conclusion : isSymplectic ∧ isContact

def SymplecticContactWitnessClosed (O : SymplecticContactAdmittedObject) : Prop :=
  O.conclusion

end CanonicalTransformationsSymplecticContactGeometryCanonicalLaneLean
end HautevilleHouse