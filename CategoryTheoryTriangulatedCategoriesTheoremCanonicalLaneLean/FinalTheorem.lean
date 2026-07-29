import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

def ConstrainedTriangulatedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_triangulated_endgame (A : AdmissibleClass) :
    ConstrainedTriangulatedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse