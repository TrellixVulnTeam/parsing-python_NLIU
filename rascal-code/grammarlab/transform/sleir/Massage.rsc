@contributor{Vadim Zaytsev - vadim@grammarware.net - UvA}
@contributor{Generated by meta::Mutations, do not edit manually!}
@doc{Contains 72 mutations intentionally generalised from massage-equivalence.}
module grammarlab::transform::sleir::Massage

import grammarlab::language::Grammar;
import grammarlab::language::SLEIR;

// SLEIR:MassageOptMark2MarkOpt
@doc{massage ⊢ MassageOptMark2MarkOpt, Type III, page 9}
public GGrammar mutate(MassageOptMark2MarkOpt(), GGrammar g)
{
	g.P = visit(g.P){case optional(mark(s,x)) => mark(s,optional(x))};
	return g;
}
// SLEIR:MassageMarkOpt2OptMark
@doc{massage ⊢ MassageMarkOpt2OptMark, Type III, page 9}
public GGrammar mutate(MassageMarkOpt2OptMark(), GGrammar g)
{
	g.P = visit(g.P){case mark(s,optional(x)) => optional(mark(s,x))};
	return g;
}
// SLEIR:MassageOptLabel2LabelOpt
@doc{massage ⊢ MassageOptLabel2LabelOpt, Type III, page 9}
public GGrammar mutate(MassageOptLabel2LabelOpt(), GGrammar g)
{
	g.P = visit(g.P){case optional(label(s,x)) => label(s,optional(x))};
	return g;
}
// SLEIR:MassageLabelOpt2OptLabel
@doc{massage ⊢ MassageLabelOpt2OptLabel, Type III, page 9}
public GGrammar mutate(MassageLabelOpt2OptLabel(), GGrammar g)
{
	g.P = visit(g.P){case label(s,optional(x)) => optional(label(s,x))};
	return g;
}
// SLEIR:MassageStarMark2MarkStar
@doc{massage ⊢ MassageStarMark2MarkStar, Type III, page 9}
public GGrammar mutate(MassageStarMark2MarkStar(), GGrammar g)
{
	g.P = visit(g.P){case star(mark(s,x)) => mark(s,star(x))};
	return g;
}
// SLEIR:MassageMarkStar2StarMark
@doc{massage ⊢ MassageMarkStar2StarMark, Type III, page 9}
public GGrammar mutate(MassageMarkStar2StarMark(), GGrammar g)
{
	g.P = visit(g.P){case mark(s,star(x)) => star(mark(s,x))};
	return g;
}
// SLEIR:MassageStarLabel2LabelStar
@doc{massage ⊢ MassageStarLabel2LabelStar, Type III, page 9}
public GGrammar mutate(MassageStarLabel2LabelStar(), GGrammar g)
{
	g.P = visit(g.P){case star(label(s,x)) => label(s,star(x))};
	return g;
}
// SLEIR:MassageLabelStar2StarLabel
@doc{massage ⊢ MassageLabelStar2StarLabel, Type III, page 9}
public GGrammar mutate(MassageLabelStar2StarLabel(), GGrammar g)
{
	g.P = visit(g.P){case label(s,star(x)) => star(label(s,x))};
	return g;
}
// SLEIR:MassagePlusMark2MarkPlus
@doc{massage ⊢ MassagePlusMark2MarkPlus, Type III, page 9}
public GGrammar mutate(MassagePlusMark2MarkPlus(), GGrammar g)
{
	g.P = visit(g.P){case plus(mark(s,x)) => mark(s,plus(x))};
	return g;
}
// SLEIR:MassageMarkPlus2PlusMark
@doc{massage ⊢ MassageMarkPlus2PlusMark, Type III, page 9}
public GGrammar mutate(MassageMarkPlus2PlusMark(), GGrammar g)
{
	g.P = visit(g.P){case mark(s,plus(x)) => plus(mark(s,x))};
	return g;
}
// SLEIR:MassagePlusLabel2LabelPlus
@doc{massage ⊢ MassagePlusLabel2LabelPlus, Type III, page 9}
public GGrammar mutate(MassagePlusLabel2LabelPlus(), GGrammar g)
{
	g.P = visit(g.P){case plus(label(s,x)) => label(s,plus(x))};
	return g;
}
// SLEIR:MassageLabelPlus2PlusLabel
@doc{massage ⊢ MassageLabelPlus2PlusLabel, Type III, page 9}
public GGrammar mutate(MassageLabelPlus2PlusLabel(), GGrammar g)
{
	g.P = visit(g.P){case label(s,plus(x)) => plus(label(s,x))};
	return g;
}
// SLEIR:MassageNotLabel2LabelNot
@doc{massage ⊢ MassageNotLabel2LabelNot, Type III, page 9}
public GGrammar mutate(MassageNotLabel2LabelNot(), GGrammar g)
{
	g.P = visit(g.P){case not(label(s,x)) => label(s,not(x))};
	return g;
}
// SLEIR:MassageLabelNot2NotLabel
@doc{massage ⊢ MassageLabelNot2NotLabel, Type III, page 9}
public GGrammar mutate(MassageLabelNot2NotLabel(), GGrammar g)
{
	g.P = visit(g.P){case label(s,not(x)) => not(label(s,x))};
	return g;
}
// SLEIR:MassageNotMark2MarkNot
@doc{massage ⊢ MassageNotMark2MarkNot, Type III, page 9}
public GGrammar mutate(MassageNotMark2MarkNot(), GGrammar g)
{
	g.P = visit(g.P){case not(mark(s,x)) => mark(s,not(x))};
	return g;
}
// SLEIR:MassageMarkNot2NotMark
@doc{massage ⊢ MassageMarkNot2NotMark, Type III, page 9}
public GGrammar mutate(MassageMarkNot2NotMark(), GGrammar g)
{
	g.P = visit(g.P){case mark(s,not(x)) => not(mark(s,x))};
	return g;
}
// SLEIR:MassageOptOpt
@doc{massage ⊢ MassageOptOpt, Type III, page 9}
public GGrammar mutate(MassageOptOpt(), GGrammar g)
{
	g.P = visit(g.P){case optional(optional(x)) => optional(x)};
	return g;
}
// SLEIR:MassageOptStar
@doc{massage ⊢ MassageOptStar, Type III, page 9}
public GGrammar mutate(MassageOptStar(), GGrammar g)
{
	g.P = visit(g.P){case optional(star(x)) => star(x)};
	return g;
}
// SLEIR:MassageOptPlus2Star
@doc{massage ⊢ MassageOptPlus2Star, Type III, page 9}
public GGrammar mutate(MassageOptPlus2Star(), GGrammar g)
{
	g.P = visit(g.P){case optional(plus(x)) => star(x)};
	return g;
}
// SLEIR:MassageStar2OptPlus
@doc{massage ⊢ MassageStar2OptPlus, Type III, page 9}
public GGrammar mutate(MassageStar2OptPlus(), GGrammar g)
{
	g.P = visit(g.P){case star(x) => optional(plus(x))};
	return g;
}
// SLEIR:MassageStarOpt
@doc{massage ⊢ MassageStarOpt, Type III, page 9}
public GGrammar mutate(MassageStarOpt(), GGrammar g)
{
	g.P = visit(g.P){case star(optional(x)) => star(x)};
	return g;
}
// SLEIR:MassageStarStar
@doc{massage ⊢ MassageStarStar, Type III, page 9}
public GGrammar mutate(MassageStarStar(), GGrammar g)
{
	g.P = visit(g.P){case star(star(x)) => star(x)};
	return g;
}
// SLEIR:MassageStarPlus
@doc{massage ⊢ MassageStarPlus, Type III, page 9}
public GGrammar mutate(MassageStarPlus(), GGrammar g)
{
	g.P = visit(g.P){case star(plus(x)) => star(x)};
	return g;
}
// SLEIR:MassagePlusOpt2Star
@doc{massage ⊢ MassagePlusOpt2Star, Type III, page 9}
public GGrammar mutate(MassagePlusOpt2Star(), GGrammar g)
{
	g.P = visit(g.P){case plus(optional(x)) => star(x)};
	return g;
}
// SLEIR:MassageStar2PlusOpt
@doc{massage ⊢ MassageStar2PlusOpt, Type III, page 9}
public GGrammar mutate(MassageStar2PlusOpt(), GGrammar g)
{
	g.P = visit(g.P){case star(x) => plus(optional(x))};
	return g;
}
// SLEIR:MassagePlusStar
@doc{massage ⊢ MassagePlusStar, Type III, page 9}
public GGrammar mutate(MassagePlusStar(), GGrammar g)
{
	g.P = visit(g.P){case plus(star(x)) => star(x)};
	return g;
}
// SLEIR:MassagePlusPlus
@doc{massage ⊢ MassagePlusPlus, Type III, page 9}
public GGrammar mutate(MassagePlusPlus(), GGrammar g)
{
	g.P = visit(g.P){case plus(plus(x)) => plus(x)};
	return g;
}
// SLEIR:MassageSeqStarStar
@doc{massage ⊢ MassageSeqStarStar, Type III, page 9}
public GGrammar mutate(MassageSeqStarStar(), GGrammar g)
{
	g.P = visit(g.P){case sequence([star(x),star(x)]) => star(x)};
	return g;
}
// SLEIR:MassageSeqOptStar
@doc{massage ⊢ MassageSeqOptStar, Type III, page 9}
public GGrammar mutate(MassageSeqOptStar(), GGrammar g)
{
	g.P = visit(g.P){case sequence([optional(x),star(x)]) => star(x)};
	return g;
}
// SLEIR:MassageSeqStarOpt
@doc{massage ⊢ MassageSeqStarOpt, Type III, page 9}
public GGrammar mutate(MassageSeqStarOpt(), GGrammar g)
{
	g.P = visit(g.P){case sequence([star(x),optional(x)]) => star(x)};
	return g;
}
// SLEIR:MassageSeqOptPlus
@doc{massage ⊢ MassageSeqOptPlus, Type III, page 9}
public GGrammar mutate(MassageSeqOptPlus(), GGrammar g)
{
	g.P = visit(g.P){case sequence([optional(x),plus(x)]) => plus(x)};
	return g;
}
// SLEIR:MassageSeqPlusOpt
@doc{massage ⊢ MassageSeqPlusOpt, Type III, page 9}
public GGrammar mutate(MassageSeqPlusOpt(), GGrammar g)
{
	g.P = visit(g.P){case sequence([plus(x),optional(x)]) => plus(x)};
	return g;
}
// SLEIR:MassageSeqPlusStar
@doc{massage ⊢ MassageSeqPlusStar, Type III, page 9}
public GGrammar mutate(MassageSeqPlusStar(), GGrammar g)
{
	g.P = visit(g.P){case sequence([plus(x),star(x)]) => plus(x)};
	return g;
}
// SLEIR:MassageSeqStarPlus
@doc{massage ⊢ MassageSeqStarPlus, Type III, page 9}
public GGrammar mutate(MassageSeqStarPlus(), GGrammar g)
{
	g.P = visit(g.P){case sequence([star(x),plus(x)]) => plus(x)};
	return g;
}
// SLEIR:MassageSeqXStar2Plus
@doc{massage ⊢ MassageSeqXStar2Plus, Type III, page 9}
public GGrammar mutate(MassageSeqXStar2Plus(), GGrammar g)
{
	g.P = visit(g.P){case sequence([x,star(x)]) => plus(x)};
	return g;
}
// SLEIR:MassagePlus2SeqXStar
@doc{massage ⊢ MassagePlus2SeqXStar, Type III, page 9}
public GGrammar mutate(MassagePlus2SeqXStar(), GGrammar g)
{
	g.P = visit(g.P){case plus(x) => sequence([x,star(x)])};
	return g;
}
// SLEIR:MassageSeqStarX2Plus
@doc{massage ⊢ MassageSeqStarX2Plus, Type III, page 9}
public GGrammar mutate(MassageSeqStarX2Plus(), GGrammar g)
{
	g.P = visit(g.P){case sequence([star(x),x]) => plus(x)};
	return g;
}
// SLEIR:MassagePlus2SeqStarX
@doc{massage ⊢ MassagePlus2SeqStarX, Type III, page 9}
public GGrammar mutate(MassagePlus2SeqStarX(), GGrammar g)
{
	g.P = visit(g.P){case plus(x) => sequence([star(x),x])};
	return g;
}
// SLEIR:MassageOrXEps2Opt
@doc{massage ⊢ MassageOrXEps2Opt, Type III, page 9}
public GGrammar mutate(MassageOrXEps2Opt(), GGrammar g)
{
	g.P = visit(g.P){case choice([x,epsilon()]) => optional(x)};
	return g;
}
// SLEIR:MassageOpt2OrXEps
@doc{massage ⊢ MassageOpt2OrXEps, Type III, page 9}
public GGrammar mutate(MassageOpt2OrXEps(), GGrammar g)
{
	g.P = visit(g.P){case optional(x) => choice([x,epsilon()])};
	return g;
}
// SLEIR:MassageOrEpsX2Opt
@doc{massage ⊢ MassageOrEpsX2Opt, Type III, page 9}
public GGrammar mutate(MassageOrEpsX2Opt(), GGrammar g)
{
	g.P = visit(g.P){case choice([epsilon(),x]) => optional(x)};
	return g;
}
// SLEIR:MassageOpt2OrEpsX
@doc{massage ⊢ MassageOpt2OrEpsX, Type III, page 9}
public GGrammar mutate(MassageOpt2OrEpsX(), GGrammar g)
{
	g.P = visit(g.P){case optional(x) => choice([epsilon(),x])};
	return g;
}
// SLEIR:MassageOrOptEps
@doc{massage ⊢ MassageOrOptEps, Type III, page 9}
public GGrammar mutate(MassageOrOptEps(), GGrammar g)
{
	g.P = visit(g.P){case choice([optional(x),epsilon()]) => optional(x)};
	return g;
}
// SLEIR:MassageOrOptX
@doc{massage ⊢ MassageOrOptX, Type III, page 9}
public GGrammar mutate(MassageOrOptX(), GGrammar g)
{
	g.P = visit(g.P){case choice([optional(x),x]) => optional(x)};
	return g;
}
// SLEIR:MassageOrStarX
@doc{massage ⊢ MassageOrStarX, Type III, page 9}
public GGrammar mutate(MassageOrStarX(), GGrammar g)
{
	g.P = visit(g.P){case choice([star(x),x]) => star(x)};
	return g;
}
// SLEIR:MassageOrStarPlus
@doc{massage ⊢ MassageOrStarPlus, Type III, page 9}
public GGrammar mutate(MassageOrStarPlus(), GGrammar g)
{
	g.P = visit(g.P){case choice([star(x),plus(x)]) => star(x)};
	return g;
}
// SLEIR:MassageOrStarOpt
@doc{massage ⊢ MassageOrStarOpt, Type III, page 9}
public GGrammar mutate(MassageOrStarOpt(), GGrammar g)
{
	g.P = visit(g.P){case choice([star(x),optional(x)]) => star(x)};
	return g;
}
// SLEIR:MassageOrStarEps
@doc{massage ⊢ MassageOrStarEps, Type III, page 9}
public GGrammar mutate(MassageOrStarEps(), GGrammar g)
{
	g.P = visit(g.P){case choice([star(x),epsilon()]) => star(x)};
	return g;
}
// SLEIR:MassageOrPlusEps2Star
@doc{massage ⊢ MassageOrPlusEps2Star, Type III, page 9}
public GGrammar mutate(MassageOrPlusEps2Star(), GGrammar g)
{
	g.P = visit(g.P){case choice([plus(x),epsilon()]) => star(x)};
	return g;
}
// SLEIR:MassageStar2OrPlusEps
@doc{massage ⊢ MassageStar2OrPlusEps, Type III, page 9}
public GGrammar mutate(MassageStar2OrPlusEps(), GGrammar g)
{
	g.P = visit(g.P){case star(x) => choice([plus(x),epsilon()])};
	return g;
}
// SLEIR:MassageOrPlusOpt2Star
@doc{massage ⊢ MassageOrPlusOpt2Star, Type III, page 9}
public GGrammar mutate(MassageOrPlusOpt2Star(), GGrammar g)
{
	g.P = visit(g.P){case choice([plus(x),optional(x)]) => star(x)};
	return g;
}
// SLEIR:MassageStar2OrPlusOpt
@doc{massage ⊢ MassageStar2OrPlusOpt, Type III, page 9}
public GGrammar mutate(MassageStar2OrPlusOpt(), GGrammar g)
{
	g.P = visit(g.P){case star(x) => choice([plus(x),optional(x)])};
	return g;
}
// SLEIR:MassageOrPlusX
@doc{massage ⊢ MassageOrPlusX, Type III, page 9}
public GGrammar mutate(MassageOrPlusX(), GGrammar g)
{
	g.P = visit(g.P){case choice([plus(x),x]) => plus(x)};
	return g;
}
// SLEIR:MassageSeqXOpt2SeqOptX
@doc{massage ⊢ MassageSeqXOpt2SeqOptX, Type III, page 9}
public GGrammar mutate(MassageSeqXOpt2SeqOptX(), GGrammar g)
{
	g.P = visit(g.P){case sequence([x,optional(sequence([y,x]))]) => sequence([optional(sequence([x,y])),x])};
	return g;
}
// SLEIR:MassageSeqOptX2SeqXOpt
@doc{massage ⊢ MassageSeqOptX2SeqXOpt, Type III, page 9}
public GGrammar mutate(MassageSeqOptX2SeqXOpt(), GGrammar g)
{
	g.P = visit(g.P){case sequence([optional(sequence([x,y])),x]) => sequence([x,optional(sequence([y,x]))])};
	return g;
}
// SLEIR:MassageSeqXPlus2SeqPlusX
@doc{massage ⊢ MassageSeqXPlus2SeqPlusX, Type III, page 9}
public GGrammar mutate(MassageSeqXPlus2SeqPlusX(), GGrammar g)
{
	g.P = visit(g.P){case sequence([x,plus(sequence([y,x]))]) => sequence([plus(sequence([x,y])),x])};
	return g;
}
// SLEIR:MassageSeqPlusX2SeqXPlus
@doc{massage ⊢ MassageSeqPlusX2SeqXPlus, Type III, page 9}
public GGrammar mutate(MassageSeqPlusX2SeqXPlus(), GGrammar g)
{
	g.P = visit(g.P){case sequence([plus(sequence([x,y])),x]) => sequence([x,plus(sequence([y,x]))])};
	return g;
}
// SLEIR:MassageSeqXStar2SeqStarX
@doc{massage ⊢ MassageSeqXStar2SeqStarX, Type III, page 9}
public GGrammar mutate(MassageSeqXStar2SeqStarX(), GGrammar g)
{
	g.P = visit(g.P){case sequence([x,star(sequence([y,x]))]) => sequence([star(sequence([x,y])),x])};
	return g;
}
// SLEIR:MassageSeqStarX2SeqXStar
@doc{massage ⊢ MassageSeqStarX2SeqXStar, Type III, page 9}
public GGrammar mutate(MassageSeqStarX2SeqXStar(), GGrammar g)
{
	g.P = visit(g.P){case sequence([star(sequence([x,y])),x]) => sequence([x,star(sequence([y,x]))])};
	return g;
}
// SLEIR:MassageSeqXStar2SLPlus
@doc{massage ⊢ MassageSeqXStar2SLPlus, Type III, page 9}
public GGrammar mutate(MassageSeqXStar2SLPlus(), GGrammar g)
{
	g.P = visit(g.P){case sequence([x,star(sequence([y,x]))]) => seplistplus(x,y)};
	return g;
}
// SLEIR:MassageSLPlus2SeqXStar
@doc{massage ⊢ MassageSLPlus2SeqXStar, Type III, page 9}
public GGrammar mutate(MassageSLPlus2SeqXStar(), GGrammar g)
{
	g.P = visit(g.P){case seplistplus(x,y) => sequence([x,star(sequence([y,x]))])};
	return g;
}
// SLEIR:MassageSeqStarX2SLPlus
@doc{massage ⊢ MassageSeqStarX2SLPlus, Type III, page 9}
public GGrammar mutate(MassageSeqStarX2SLPlus(), GGrammar g)
{
	g.P = visit(g.P){case sequence([star(sequence([x,y])),x]) => seplistplus(x,y)};
	return g;
}
// SLEIR:MassageSLPlus2SeqStarX
@doc{massage ⊢ MassageSLPlus2SeqStarX, Type III, page 9}
public GGrammar mutate(MassageSLPlus2SeqStarX(), GGrammar g)
{
	g.P = visit(g.P){case seplistplus(x,y) => sequence([star(sequence([x,y])),x])};
	return g;
}
// SLEIR:MassageOptSeqXStar2SLStar
@doc{massage ⊢ MassageOptSeqXStar2SLStar, Type III, page 9}
public GGrammar mutate(MassageOptSeqXStar2SLStar(), GGrammar g)
{
	g.P = visit(g.P){case optional(sequence([x,star(sequence([y,x]))])) => sepliststar(x,y)};
	return g;
}
// SLEIR:MassageSLStar2OptSeqXStar
@doc{massage ⊢ MassageSLStar2OptSeqXStar, Type III, page 9}
public GGrammar mutate(MassageSLStar2OptSeqXStar(), GGrammar g)
{
	g.P = visit(g.P){case sepliststar(x,y) => optional(sequence([x,star(sequence([y,x]))]))};
	return g;
}
// SLEIR:MassageOptSeqStarX2SLStar
@doc{massage ⊢ MassageOptSeqStarX2SLStar, Type III, page 9}
public GGrammar mutate(MassageOptSeqStarX2SLStar(), GGrammar g)
{
	g.P = visit(g.P){case optional(sequence([star(sequence([x,y])),x])) => sepliststar(x,y)};
	return g;
}
// SLEIR:MassageSLStar2OptSeqStarX
@doc{massage ⊢ MassageSLStar2OptSeqStarX, Type III, page 9}
public GGrammar mutate(MassageSLStar2OptSeqStarX(), GGrammar g)
{
	g.P = visit(g.P){case sepliststar(x,y) => optional(sequence([star(sequence([x,y])),x]))};
	return g;
}
// SLEIR:MassageOptSLPlus2SLStar
@doc{massage ⊢ MassageOptSLPlus2SLStar, Type III, page 9}
public GGrammar mutate(MassageOptSLPlus2SLStar(), GGrammar g)
{
	g.P = visit(g.P){case optional(seplistplus(x,y)) => sepliststar(x,y)};
	return g;
}
// SLEIR:MassageSLStar2OptSLPlus
@doc{massage ⊢ MassageSLStar2OptSLPlus, Type III, page 9}
public GGrammar mutate(MassageSLStar2OptSLPlus(), GGrammar g)
{
	g.P = visit(g.P){case sepliststar(x,y) => optional(seplistplus(x,y))};
	return g;
}
// SLEIR:MassageNotNot
@doc{massage ⊢ MassageNotNot, Type III, page 9}
public GGrammar mutate(MassageNotNot(), GGrammar g)
{
	g.P = visit(g.P){case not(not(x)) => x};
	return g;
}
// SLEIR:MassageAndNot2Except
@doc{massage ⊢ MassageAndNot2Except, Type III, page 9}
public GGrammar mutate(MassageAndNot2Except(), GGrammar g)
{
	g.P = visit(g.P){case allof([x,not(y)]) => except(x,y)};
	return g;
}
// SLEIR:MassageExcept2AndNot
@doc{massage ⊢ MassageExcept2AndNot, Type III, page 9}
public GGrammar mutate(MassageExcept2AndNot(), GGrammar g)
{
	g.P = visit(g.P){case except(x,y) => allof([x,not(y)])};
	return g;
}