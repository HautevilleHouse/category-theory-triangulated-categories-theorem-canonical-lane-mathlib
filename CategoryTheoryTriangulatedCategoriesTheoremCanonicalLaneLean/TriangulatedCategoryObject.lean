import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure TriangulatedCategoryObject where
  carrier : Type u
  shift : carrier → carrier
  mappingCone : (carrier → carrier) → carrier
  distinguishedTriangles : Set (carrier × carrier × carrier)
  shiftAutoEquivalence : Equivalence (Functor.of shift) (Functor.of shift)
  octahedralAxiom : Prop
  shiftAutoEquivalenceTerm : shiftAutoEquivalence
  octahedralAxiomTerm : octahedralAxiom

structure AdmittedTriangulatedObject where
  object : TriangulatedCategoryObject
  distinguishedTrianglesClosed : Prop
  octahedralAxiomClosed : Prop
  conclusion : distinguishedTrianglesClosed ∧ octahedralAxiomClosed

def TriangulatedWitnessClosed (O : AdmittedTriangulatedObject) : Prop :=
  O.distinguishedTrianglesClosed ∧ O.octahedralAxiomClosed

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse