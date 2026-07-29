import canonicalLaneMathlib.AdmissibleClass
import .TriangulatedAdmissibleClass
import .TriangulatedBridgeLemmas
import .TriangulatedGateLemmas

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

def ConstrainedTriangulatedClosure (A : AdmissibleClass) : Prop :=
  TriangulatedBridgeClosed A.object ∧ gateClosed A

theorem constrained_triangulated_endgame (A : AdmissibleClass) :
    ConstrainedTriangulatedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse