import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure TriangulatedAdmissibleObject where
  category : Type u
  shift : ℤ → category → category
  distinguishedTriangles : Set (Triple category)
  octahedralAxiom : Prop

structure AdmissibleClass where
  object : TriangulatedAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (TriangulatedBridgeClosed A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse