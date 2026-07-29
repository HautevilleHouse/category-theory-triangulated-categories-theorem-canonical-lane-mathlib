import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure DerivedCategory (A : Type u) [Category.{v} A] [Abelian A] where
  obj : Type (max u v)
  category : Category obj
  triangulated : TriangulatedStructure obj
  naturalTransformation : cohomologicalFunctor A obj
  universalProperty : ∀ (D : Type (max u v)) [Category D] [Triangulated D],
    (∃ (F : A ⥤ D), F.Additive ∧ F.Exact) → (∃! (G : obj ⥤ D), G.Triangulated ∧ ...)
  derivedCategoryClosed : Prop

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse