import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedFunctor

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure MappingConePackage {C : TriangulatedCategoryPackage} {T : TriangulatedCategoryEvidence C} (O : OctahedralAxiomPackage T) where
  coneObject : C.obj → (C.obj → C.obj) → C.obj
  coneDistinguished : ∀ (f : C.obj → C.obj), (C.obj, C.obj, coneObject (C.obj) f, f, (λ _ => C.obj), (λ _ => C.obj)) ∈ C.distinguishedTriangles
  coneDistinguishedTerm : coneDistinguished

structure MappingConeEvidence {C : TriangulatedCategoryPackage} {T : TriangulatedCategoryEvidence C} {O : OctahedralAxiomPackage T} (M : MappingConePackage O) where
  coneDistinguishedClosed : M.coneDistinguished

def MappingConeClosed {C : TriangulatedCategoryPackage} {T : TriangulatedCategoryEvidence C} {O : OctahedralAxiomPackage T} (M : MappingConePackage O) : Prop :=
  M.coneDistinguished

theorem mapping_cone_closed_from_evidence {C : TriangulatedCategoryPackage} {T : TriangulatedCategoryEvidence C} {O : OctahedralAxiomPackage T} (M : MappingConePackage O) (E : MappingConeEvidence M) : MappingConeClosed M := by
  exact E.coneDistinguishedClosed

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
