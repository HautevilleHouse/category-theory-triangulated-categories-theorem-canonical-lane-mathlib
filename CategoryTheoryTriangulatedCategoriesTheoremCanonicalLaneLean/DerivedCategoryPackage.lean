import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedCategoryPackage

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure DerivedCategoryPackage {A : Type u} [AbelianCategory A] where
  homotopyCategory : Category
  derivedCategory : Category
  derivedShift : derivedCategory ⥤ derivedCategory
  distinguishedTriangles : Set (Triangle derivedCategory)
  derivedTriangulated : TriangulatedCategoryPackage.replaceCategory derivedCategory derivedShift distinguishedTriangles
  localizationFunctor : homotopyCategory ⥤ derivedCategory
  localizationIsTriangulated : Prop

structure DerivedCategoryEvidence {A : Type u} [AbelianCategory A] (D : DerivedCategoryPackage A) where
  derivedTriangulatedClosed : TriangulatedCategoryClosed D.derivedTriangulated
  localizationIsTriangulatedClosed : D.localizationIsTriangulated

def DerivedCategoryClosed {A : Type u} [AbelianCategory A] (D : DerivedCategoryPackage A) : Prop :=
  TriangulatedCategoryClosed D.derivedTriangulated ∧ D.localizationIsTriangulated

theorem derived_category_closed_from_evidence
    {A : Type u} [AbelianCategory A] (D : DerivedCategoryPackage A)
    (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.derivedTriangulatedClosed E.localizationIsTriangulatedClosed

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse