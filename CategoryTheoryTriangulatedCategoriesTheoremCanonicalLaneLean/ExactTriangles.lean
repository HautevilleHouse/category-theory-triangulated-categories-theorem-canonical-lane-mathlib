import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure Triangle (C : Type u) [Category C] where
  hom₁ : C
  hom₂ : C
  hom₃ : C
  f : hom₁ ⟶ hom₂
  g : hom₂ ⟶ hom₃
  h : hom₃ ⟶ shiftFunctor.C⁺¹ hom₁
  rotate : Triangle C := Triangle.mk hom₂ hom₃ (shiftFunctor.C⁺¹ hom₁) g h (-shiftFunctor.map f)

def shiftFunctor (C : Type u) [Category C] [TriangulatedStructure C] : C ⥤ C :=
  TriangulatedStructure.shift.functor

def shift (C : Type u) [Category C] [TriangulatedStructure C] : C → C :=
  λ X => shiftFunctor C X

structure ExactTriangle (C : Type u) [Category C] [TriangulatedStructure C] where
  triangle : Triangle C
  exact : triangle ∈ TriangulatedStructure.distinguishedTriangles C

theorem rotation_exact (C : Type u) [Category C] [TriangulatedStructure C] (T : ExactTriangle C) :
  T.triangle.rotate ∈ TriangulatedStructure.distinguishedTriangles C :=
  TriangulatedStructure.TR2 C T.triangle T.exact

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse