import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure TStructure {C : Type u} [Category.{v} C] (T : TriangulatedStructure C) where
  Dold : Set C
  DoldShift : ∀ (X : C), X ∈ Dold → T.shift.obj X ∈ Dold
  DoldCone : ∀ (X Y : C) (f : X ⟶ Y), X ∈ Dold → Y ∈ Dold → cone f ∈ Dold
  Dnew : Set C
  DnewShift : ∀ (X : C), X ∈ Dnew → T.shift.obj X ∈ Dnew
  DnewCone : ∀ (X Y : C) (f : X ⟶ Y), X ∈ Dnew → Y ∈ Dnew → cone f ∈ Dnew
  orthogonality : ∀ (X : C), X ∈ Dold → X ∈ Dnew → (0 : X ⟶ X) = 𝟙 X
  tStructureClosed : Prop

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse