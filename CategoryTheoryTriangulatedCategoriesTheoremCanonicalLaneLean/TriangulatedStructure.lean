import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure ShiftFunctorPackage (C : CategoryPackage) where
  shift : ℤ → C.objects → C.objects
  shiftMorphism : (n : ℤ) → {X Y : C.objects} → C.morphisms X Y → C.morphisms (shift n X) (shift n Y)
  shiftFunctorial : Prop

structure TrianglePackage (C : CategoryPackage) where
  triangleType : Type w
  source : triangleType → C.objects
  target : triangleType → C.objects
  map : triangleType → C.morphisms (source obj) (target obj) for obj in ???
  distinguished : triangleType → Prop

-- We define a distinguished triangle as a triple (X,Y,Z) with maps f: X→Y, g: Y→Z, h: Z→X[1]
structure DistinguishedTriangle (C : CategoryPackage) (S : ShiftFunctorPackage C) where
  X : C.objects
  Y : C.objects
  Z : C.objects
  f : C.morphisms X Y
  g : C.morphisms Y Z
  h : C.morphisms Z (S.shift 1 X)

structure TriangulatedCategoryPackage (C : CategoryPackage) (S : ShiftFunctorPackage C) where
  distinguishedTriangles : Type u
  distinguished : distinguishedTriangles → DistinguishedTriangle C S
  axioms : Prop

structure TriangulatedCategoryEvidence {C : CategoryPackage} {S : ShiftFunctorPackage C} (T : TriangulatedCategoryPackage C S) where
  axiomsClosed : T.axioms

def TriangulatedCategoryClosed {C : CategoryPackage} {S : ShiftFunctorPackage C} (T : TriangulatedCategoryPackage C S) : Prop :=
  T.axioms

theorem triangulated_category_closed_from_evidence {C : CategoryPackage} {S : ShiftFunctorPackage C} (T : TriangulatedCategoryPackage C S) (E : TriangulatedCategoryEvidence T) : TriangulatedCategoryClosed T :=
  E.axiomsClosed

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse