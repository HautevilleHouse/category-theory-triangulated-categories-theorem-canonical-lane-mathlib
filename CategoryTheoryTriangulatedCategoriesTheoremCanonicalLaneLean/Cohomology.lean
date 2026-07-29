import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedStructure
import CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedFunctor

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure CohomologyFunctorPackage {C : CategoryPackage} {S : ShiftFunctorPackage C} (T : TriangulatedCategoryPackage C S) (A : CategoryPackage) where
  functor : TriangulatedFunctorPackage T A A_someShift? -- simplify to abelian
  abelianTarget : Prop
  longExactSequence : Prop

structure CohomologyFunctorEvidence {C : CategoryPackage} {S : ShiftFunctorPackage C} {T : TriangulatedCategoryPackage C S} {A : CategoryPackage} (H : CohomologyFunctorPackage T A) where
  abelianTargetClosed : H.abelianTarget
  longExactSequenceClosed : H.longExactSequence

def CohomologyFunctorClosed {C : CategoryPackage} {S : ShiftFunctorPackage C} {T : TriangulatedCategoryPackage C S} {A : CategoryPackage} (H : CohomologyFunctorPackage T A) : Prop :=
  H.abelianTarget ∧ H.longExactSequence

theorem cohomology_functor_closed_from_evidence {C : CategoryPackage} {S : ShiftFunctorPackage C} {T : TriangulatedCategoryPackage C S} {A : CategoryPackage} (H : CohomologyFunctorPackage T A) (E : CohomologyFunctorEvidence H) : CohomologyFunctorClosed H :=
  And.intro E.abelianTargetClosed E.longExactSequenceClosed

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse