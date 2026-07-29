import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure TriangulatedCategoryPackage where
  obj : Type u
  shift : obj → obj
  distinguishedTriangles : Set (obj × obj × obj × (obj → obj) × (obj → obj) × (obj → obj))
  shiftAdditive : Prop
  shiftIsEquivalence : Prop
  shiftAdditiveTerm : shiftAdditive
  shiftIsEquivalenceTerm : shiftIsEquivalence

structure TriangulatedCategoryEvidence (C : TriangulatedCategoryPackage) where
  shiftAdditiveClosed : C.shiftAdditive
  shiftIsEquivalenceClosed : C.shiftIsEquivalence

def TriangulatedCategoryClosed (C : TriangulatedCategoryPackage) : Prop :=
  C.shiftAdditive ∧ C.shiftIsEquivalence

theorem triangulated_category_closed_from_evidence (C : TriangulatedCategoryPackage) (E : TriangulatedCategoryEvidence C) : TriangulatedCategoryClosed C := by
  exact And.intro E.shiftAdditiveClosed E.shiftIsEquivalenceClosed

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
