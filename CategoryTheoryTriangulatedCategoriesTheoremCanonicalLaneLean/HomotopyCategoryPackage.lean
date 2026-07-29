import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedCategoryPackage

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure HomotopyCategoryPackage (A : Type u) [AdditiveCategory A] where
  chainComplexes : Category
  homotopyCategory : Category
  shift : homotopyCategory ⥤ homotopyCategory
  distinguishedTriangles : Set (Triangle homotopyCategory)
  homotopyTriangulated : TriangulatedCategoryPackage.replaceCategory homotopyCategory shift distinguishedTriangles
  quotientFunctor : chainComplexes ⥤ homotopyCategory
  quotientIsTriangulated : Prop

structure HomotopyCategoryEvidence (A : Type u) [AdditiveCategory A] (H : HomotopyCategoryPackage A) where
  homotopyTriangulatedClosed : TriangulatedCategoryClosed H.homotopyTriangulated
  quotientIsTriangulatedClosed : H.quotientIsTriangulated

def HomotopyCategoryClosed (A : Type u) [AdditiveCategory A] (H : HomotopyCategoryPackage A) : Prop :=
  TriangulatedCategoryClosed H.homotopyTriangulated ∧ H.quotientIsTriangulated

theorem homotopy_category_closed_from_evidence
    (A : Type u) [AdditiveCategory A] (H : HomotopyCategoryPackage A)
    (E : HomotopyCategoryEvidence A H) : HomotopyCategoryClosed A H := by
  exact And.intro E.homotopyTriangulatedClosed E.quotientIsTriangulatedClosed

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse