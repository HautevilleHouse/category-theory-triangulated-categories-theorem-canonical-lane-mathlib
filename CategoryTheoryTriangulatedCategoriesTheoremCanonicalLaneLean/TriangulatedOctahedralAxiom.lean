import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean

structure OctahedralAxiomPackage (O : TriangulatedAdmissibleObject) where
  compositionCompatibility : Prop
  mappingConeConsistency : Prop
  octahedralDiagramCommutes : Prop
  impliesDistinguished : Prop

structure OctahedralEvidence (O : TriangulatedAdmissibleObject) (P : OctahedralAxiomPackage O) where
  compositionCompatibilityClosed : P.compositionCompatibility
  mappingConeConsistencyClosed : P.mappingConeConsistency
  octahedralDiagramCommutesClosed : P.octahedralDiagramCommutes
  impliesDistinguishedClosed : P.impliesDistinguished

def OctahedralClosed (O : TriangulatedAdmissibleObject) (P : OctahedralAxiomPackage O) : Prop :=
  P.compositionCompatibility ∧ P.mappingConeConsistency ∧
  P.octahedralDiagramCommutes ∧ P.impliesDistinguished

theorem octahedral_closed_from_evidence (O : TriangulatedAdmissibleObject)
    (P : OctahedralAxiomPackage O) (E : OctahedralEvidence O P) :
    OctahedralClosed O P := by
  exact And.intro E.compositionCompatibilityClosed
    (And.intro E.mappingConeConsistencyClosed
      (And.intro E.octahedralDiagramCommutesClosed E.impliesDistinguishedClosed))

end CategoryTheoryTriangulatedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse