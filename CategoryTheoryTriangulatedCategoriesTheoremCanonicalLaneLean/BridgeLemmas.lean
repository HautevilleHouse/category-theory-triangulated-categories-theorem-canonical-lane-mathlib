import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedCategoryAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TriangulatedCategoryClosed A.object.category

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.closureCondition

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse