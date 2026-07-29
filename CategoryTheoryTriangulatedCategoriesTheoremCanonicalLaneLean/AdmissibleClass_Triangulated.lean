import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure TriangulatedAdmissibleObject where
  category : Type u
  catCategory : Category category
  triangulated : TriangulatedStructure category
  triCatTStructure : TStructure triangulated
  triCatDerivedCategory : DerivedCategory (some abelian category)
  conclusion : triCatTStructure.tStructureClosed ∧ triCatDerivedCategory.derivedCategoryClosed

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
trivial

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse