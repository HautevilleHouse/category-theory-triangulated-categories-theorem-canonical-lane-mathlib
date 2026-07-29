import canonicalLaneMathlib.AdmissibleClass
import .TriangulatedAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure CohomologyFunctorPackage (O : TriangulatedAdmissibleObject) where
  targetCategory : Type u
  exactness : Prop
  longExactSequence : Prop
  vanishingCondition : Prop
  endpointMatchesDerivedStatement : Prop

structure CohomologyFunctorEvidence (O : TriangulatedAdmissibleObject)
    (P : CohomologyFunctorPackage O) where
  exactnessClosed : P.exactness
  longExactSequenceClosed : P.longExactSequence
  vanishingConditionClosed : P.vanishingCondition
  endpointMatchesDerivedStatementClosed : P.endpointMatchesDerivedStatement

def CohomologyFunctorClosed (O : TriangulatedAdmissibleObject)
    (P : CohomologyFunctorPackage O) : Prop :=
  P.exactness ∧ P.longExactSequence ∧ P.vanishingCondition ∧ P.endpointMatchesDerivedStatement

theorem cohomology_functor_closed_from_evidence (O : TriangulatedAdmissibleObject)
    (P : CohomologyFunctorPackage O) (E : CohomologyFunctorEvidence O P) :
    CohomologyFunctorClosed O P := by
  exact And.intro E.exactnessClosed
    (And.intro E.longExactSequenceClosed
      (And.intro E.vanishingConditionClosed E.endpointMatchesDerivedStatementClosed))

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse