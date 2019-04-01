#! @System P1P1_polytope

LoadPackage( "ToricVarieties" );

#! @Example
P1P1 := Polytope( [[1,1],[1,-1],[-1,-1],[-1,1]] );
#! <A polytope in |R^2>
P1P1 := ToricVariety( P1P1 );
#! <A projective toric variety of dimension 2>
IsProjective( P1P1 );
#! true
IsComplete( P1P1 );
#! true 
CoordinateRingOfTorus( P1P1, "x" );
#! Q[x1,x1_,x2,x2_]/( x1*x1_-1, x2*x2_-1 )
IsVeryAmple( Polytope( P1P1 ) );
#! true
ProjectiveEmbedding( P1P1 );
#! [ |[ x1_*x2_ ]|, |[ x1_ ]|, |[ x1_*x2 ]|, |[ x2_ ]|,
#! |[ 1 ]|, |[ x2 ]|, |[ x1*x2_ ]|, |[ x1 ]|, |[ x1*x2 ]| ]
Length( ProjectiveEmbedding( P1P1 ) );
#! 9
CoxRing( P1P1 );
#! Q[x_1,x_2,x_3,x_4]
#! (weights: [ ( 0, 1 ), ( 1, 0 ), ( 1, 0 ), ( 0, 1 ) ])
Display( SRIdeal( P1P1 ) );
#! x_1*x_4,
#! x_2*x_3 
#! 
#! A (left) ideal generated by the 2 entries of the above matrix
#! 
#! (graded, degrees of generators: [ ( 0, 2 ), ( 2, 0 ) ])
Display( IrrelevantIdeal( P1P1 ) );
#! x_1*x_2,
#! x_1*x_3,
#! x_2*x_4,
#! x_3*x_4 
#! 
#! A (left) ideal generated by the 4 entries of the above matrix
#! 
#! (graded, degrees of generators: [ ( 1, 1 ), ( 1, 1 ), ( 1, 1 ), ( 1, 1 ) ])
#! @EndExample

#! @System P1P1_product

#! @Example
P1 := ProjectiveSpace( 1 );
#! <A projective toric variety of dimension 1>
IsComplete( P1 );
#! true
IsSmooth( P1 );
#! true
Dimension( P1 );
#! 1
CoxRing( P1, "q" );
#! Q[q_1,q_2]
#! (weights: [ 1, 1 ])
P1xP1 := P1*P1;
#! <A projective smooth toric variety of dimension 2 which is a product 
#! of 2 toric varieties>
ByASmallerPresentation( ClassGroup( P1xP1 ) );
#! <A free left module of rank 2 on free generators>
CoxRing( P1xP1, "x1,y1,y2,x2" );
#! Q[x1,y1,y2,x2]
#! (weights: [ ( 0, 1 ), ( 1, 0 ), ( 1, 0 ), ( 0, 1 ) ])
Display( SRIdeal( P1xP1 ) );
#! x1*x2,
#! y1*y2
#! 
#! A (left) ideal generated by the 2 entries of the above matrix
#! 
#! (graded, degrees of generators: [ ( 0, 2 ), ( 2, 0 ) ])
Display( IrrelevantIdeal( P1xP1 ) );
#! x1*y1,
#! x1*y2,
#! y1*x2,
#! y2*x2
#! 
#! A (left) ideal generated by the 4 entries of the above matrix
#! 
#! (graded, degrees of generators: [ ( 1, 1 ), ( 1, 1 ), ( 1, 1 ), ( 1, 1 ) ])
#! @EndExample
