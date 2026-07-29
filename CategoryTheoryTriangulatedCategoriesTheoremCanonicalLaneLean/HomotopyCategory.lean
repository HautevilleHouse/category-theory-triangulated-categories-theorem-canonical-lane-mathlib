import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedStructure
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.ExactTriangles

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure HomotopyCategory (A : Type u) [AddCommGroup A] where
  carrier : Type v
  [h : Category carrier]
  [t : TriangulatedStructure carrier]

def homotopy_category_triangulated (A : Type u) [AddCommGroup A] : HomotopyCategory A := by
  refine ⟨Quotient (HomotopyRelation A), inferInstance, { shift := default, distinguishedTriangles := default, TR1 := ?_, TR2 := ?_, TR3 := ?_, TR4 := ?_ }⟩
  -- placeholder
  exact sorry

theorem mapping_cone_exact (C : Type u) [Category C] [TriangulatedStructure C] (f : C ⟶ C) :
  Triangle.mk (cone f) (mappingCone f) (cone f) (0 : cone f ⟶ mappingCone f) (0 : mappingCone f ⟶ cone f) (0 : cone f ⟶ shift C (cone f)) ∈ distinguishedTriangles C :=
  sorry

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse