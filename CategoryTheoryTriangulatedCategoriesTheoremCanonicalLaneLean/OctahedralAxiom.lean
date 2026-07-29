import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean.TriangulatedStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure OctahedralAxiomPackage {C : CategoryPackage} {S : ShiftFunctorPackage C} (T : TriangulatedCategoryPackage C S) where
  octahedralProperty : Prop

structure OctahedralAxiomEvidence {C : CategoryPackage} {S : ShiftFunctorPackage C} {T : TriangulatedCategoryPackage C S} (O : OctahedralAxiomPackage T) where
  octahedralPropertyClosed : O.octahedralProperty

def OctahedralAxiomClosed {C : CategoryPackage} {S : ShiftFunctorPackage C} {T : TriangulatedCategoryPackage C S} (O : OctahedralAxiomPackage T) : Prop :=
  O.octahedralProperty

theorem octahedral_axiom_closed_from_evidence {C : CategoryPackage} {S : ShiftFunctorPackage C} {T : TriangulatedCategoryPackage C S} (O : OctahedralAxiomPackage T) (E : OctahedralAxiomEvidence O) : OctahedralAxiomClosed O :=
  E.octahedralPropertyClosed

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse