import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.OctahedralAxiom

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure DistinguishedTrianglePropertiesPackage {C : TriangulatedCategoryPackage} {T : TriangulatedCategoryEvidence C} (O : OctahedralAxiomPackage T) where
  identityTriangleDistinguished : Prop
  rotationClosure : Prop
  completionToTriangle : Prop
  identityTriangleDistinguishedTerm : identityTriangleDistinguished
  rotationClosureTerm : rotationClosure
  completionToTriangleTerm : completionToTriangle

structure DistinguishedTrianglePropertiesEvidence {C : TriangulatedCategoryPackage} {T : TriangulatedCategoryEvidence C} {O : OctahedralAxiomPackage T} (P : DistinguishedTrianglePropertiesPackage O) where
  identityTriangleDistinguishedClosed : P.identityTriangleDistinguished
  rotationClosureClosed : P.rotationClosure
  completionToTriangleClosed : P.completionToTriangle

def DistinguishedTrianglePropertiesClosed {C : TriangulatedCategoryPackage} {T : TriangulatedCategoryEvidence C} {O : OctahedralAxiomPackage T} (P : DistinguishedTrianglePropertiesPackage O) : Prop :=
  P.identityTriangleDistinguished ∧ P.rotationClosure ∧ P.completionToTriangle

theorem distinguished_triangle_properties_closed_from_evidence {C : TriangulatedCategoryPackage} {T : TriangulatedCategoryEvidence C} {O : OctahedralAxiomPackage T} (P : DistinguishedTrianglePropertiesPackage O) (E : DistinguishedTrianglePropertiesEvidence P) : DistinguishedTrianglePropertiesClosed P := by
  exact And.intro E.identityTriangleDistinguishedClosed (And.intro E.rotationClosureClosed E.completionToTriangleClosed)

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
