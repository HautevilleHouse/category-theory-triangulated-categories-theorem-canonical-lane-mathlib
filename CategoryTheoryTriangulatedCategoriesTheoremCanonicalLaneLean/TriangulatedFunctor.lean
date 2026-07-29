import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedCategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure TriangulatedFunctor (C D : TriangulatedCategory) where
  objMap : C.Obj → D.Obj
  shiftCommute : Prop
  distinguishedPreserved : Prop
  additive : Prop

structure TriangulatedFunctorEvidence {C D : TriangulatedCategory} (F : TriangulatedFunctor C D) where
  shiftCommuteClosed : F.shiftCommute
  distinguishedPreservedClosed : F.distinguishedPreserved
  additiveClosed : F.additive

def TriangulatedFunctorClosed {C D : TriangulatedCategory} (F : TriangulatedFunctor C D) : Prop :=
  F.shiftCommute ∧ F.distinguishedPreserved ∧ F.additive

theorem triangulated_functor_closed_from_evidence {C D : TriangulatedCategory}
    (F : TriangulatedFunctor C D) (E : TriangulatedFunctorEvidence F) :
    TriangulatedFunctorClosed F := by
  exact And.intro E.shiftCommuteClosed (And.intro E.distinguishedPreservedClosed E.additiveClosed)

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse