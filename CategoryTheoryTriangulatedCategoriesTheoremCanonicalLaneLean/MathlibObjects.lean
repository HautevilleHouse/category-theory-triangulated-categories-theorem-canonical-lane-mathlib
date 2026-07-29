import CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedCategory

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure TriangulatedSpace where
  carrier : Type
  triangulatedStructure : TriangulatedCategoryPackage

structure TriangulatedAdmittedObject where
  space : TriangulatedSpace
  isTriangulated : Prop
  conclusion : isTriangulated

def TriangulatedWitnessClosed (O : TriangulatedAdmittedObject) : Prop :=
  O.isTriangulated

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse