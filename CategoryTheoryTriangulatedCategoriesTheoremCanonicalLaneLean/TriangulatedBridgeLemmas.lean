import canonicalLaneMathlib.AdmissibleClass
import .TriangulatedAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

def TriangulatedBridgeClosed (O : TriangulatedAdmissibleObject) : Prop :=
  O.octahedralAxiom

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    TriangulatedBridgeClosed A.object := by
  exact A.object.octahedralAxiom

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse