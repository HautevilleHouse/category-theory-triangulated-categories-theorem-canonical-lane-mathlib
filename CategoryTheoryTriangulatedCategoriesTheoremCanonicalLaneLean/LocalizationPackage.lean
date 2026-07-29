import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedCategoryPackage

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure LocalizationPackage (T : TriangulatedCategoryPackage) where
  localizingClass : Set (Morphism T.category)
  localizedCategory : Category
  localizationFunctor : T.category ⥤ localizedCategory
  localizedTriangulated : TriangulatedCategoryPackage.replaceCategory localizedCategory (T.shift.mapFunctor) (T.distinguishedTriangles.image localizationFunctor)
  localizingClassCompatible : Prop

structure LocalizationEvidence (T : TriangulatedCategoryPackage) (L : LocalizationPackage T) where
  localizedTriangulatedClosed : TriangulatedCategoryClosed L.localizedTriangulated
  localizingClassCompatibleClosed : L.localizingClassCompatible

def LocalizationClosed (T : TriangulatedCategoryPackage) (L : LocalizationPackage T) : Prop :=
  TriangulatedCategoryClosed L.localizedTriangulated ∧ L.localizingClassCompatible

theorem localization_closed_from_evidence
    (T : TriangulatedCategoryPackage) (L : LocalizationPackage T)
    (E : LocalizationEvidence T L) : LocalizationClosed T L := by
  exact And.intro E.localizedTriangulatedClosed E.localizingClassCompatibleClosed

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse