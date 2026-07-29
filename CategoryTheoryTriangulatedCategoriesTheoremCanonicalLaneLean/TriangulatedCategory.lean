import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure TriangulatedCategoryPackage where
  shiftFunctor : Type u → Type u
  distinguishedTriangles : Type v
  shiftAdditive : Prop
  shiftAutoequivalence : Prop
  triangleAxioms : Prop
  octahedralAxiom : Prop

structure TriangulatedCategoryEvidence (T : TriangulatedCategoryPackage) where
  shiftAdditiveClosed : T.shiftAdditive
  shiftAutoequivalenceClosed : T.shiftAutoequivalence
  triangleAxiomsClosed : T.triangleAxioms
  octahedralAxiomClosed : T.octahedralAxiom

def TriangulatedCategoryClosed (T : TriangulatedCategoryPackage) : Prop :=
  T.shiftAdditive ∧ T.shiftAutoequivalence ∧ T.triangleAxioms ∧ T.octahedralAxiom

theorem triangulated_category_closed_from_evidence
    (T : TriangulatedCategoryPackage) (E : TriangulatedCategoryEvidence T) :
    TriangulatedCategoryClosed T := by
  exact And.intro E.shiftAdditiveClosed
    (And.intro E.shiftAutoequivalenceClosed
      (And.intro E.triangleAxiomsClosed E.octahedralAxiomClosed))

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse