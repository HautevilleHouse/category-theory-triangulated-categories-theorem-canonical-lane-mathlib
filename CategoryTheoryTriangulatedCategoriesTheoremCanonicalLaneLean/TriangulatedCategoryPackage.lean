import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure TriangulatedCategoryPackage where
  category : Type u
  shift : category ⥤ category
  distinguishedTriangles : Set (Triangle category)
  shiftAutoEquivalence : IsEquivalence shift
  octahedralAxiom : Prop
  triangleAxioms : Prop

structure TriangulatedCategoryEvidence (T : TriangulatedCategoryPackage) where
  shiftAutoEquivalenceClosed : T.shiftAutoEquivalence
  octahedralAxiomClosed : T.octahedralAxiom
  triangleAxiomsClosed : T.triangleAxioms

def TriangulatedCategoryClosed (T : TriangulatedCategoryPackage) : Prop :=
  T.shiftAutoEquivalence ∧ T.octahedralAxiom ∧ T.triangleAxioms

theorem triangulated_category_closed_from_evidence
    (T : TriangulatedCategoryPackage) (E : TriangulatedCategoryEvidence T) :
    TriangulatedCategoryClosed T := by
  exact And.intro E.shiftAutoEquivalenceClosed
    (And.intro E.octahedralAxiomClosed E.triangleAxiomsClosed)

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse