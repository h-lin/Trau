/*
 * FileConverter.h
 *
 *  Created on: Dec 15, 2016
 *      Author: diepbp
 */

#ifndef FILECONVERTER_H_
#define FILECONVERTER_H_

#include <regex>
#include "Utils.h"
#include "Config.h"

static std::map<char, char> ENCODEMAP;
static std::map<char, char> DECODEMAP;
static int intVar = 0;
extern Config config;

template< typename T >
std::string int2hex( T i );

template< typename T >
int hex2int(T s);

/*
 * For all string variables
 * Change var name: xyz --> len_xyz
 * and change var type: string -> int
 */
std::string redefineStringVar(std::string var);

std::string redefineOtherVar(std::string var, std::string type);

/*
 * (Indexof v1 v2) --> ....
 */
void updateIndexOf(
		std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap);

/*
 * (LastIndexof v1 v2) --> ....
 */
void updateLastIndexOf(
		std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap);

/*
 * (EndsWith v1 v2) --> ....
 */
void updateEndsWith(
		std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap);

/*
 * (StartsWith v1 v2) --> ....
 */
void updateStartsWith(
		std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap);

/*
 * = x (Replace ...) --> true
 */
void updateReplace(
		std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap);

/*
 * = x (ReplaceAll ...) --> true
 */
void updateReplaceAll(
		std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap);


/*
 *
 */
std::string sumTokens(std::vector<std::pair<std::string, int>> tokens,
		int start, int finish);

/*
 *
 */
int findTokens(std::vector<std::pair<std::string, int>> tokens, int startPos, std::string s, int type);

/*
 *
 */
void formatOPByRewriter(StringOP &op,
		std::map<StringOP, std::string> rewriterStrMap);


/*
 *
 */
StringOP simplifyOP(StringOP op);

/*
 *
 */
StringOP findOpArg(
		std::vector<std::pair<std::string, int>> tokens,
		int &startPos);

/*
 *
 */
StringOP findStringOP(
		std::vector<std::pair<std::string, int>> tokens,
		int startPos);

/*
 *
 */
StringOP findStringOP(
		std::vector<std::pair<std::string, int>> tokens,
		int startPos,
		int &endPos);

/*
 *
 */
StringOP findStringOP_nonRecursive(
		std::vector<std::pair<std::string, int>> tokens,
		int startPos,
		int &endPos);
/*
 *
 */
StringOP parseOP(std::string s);

/*
 *
 */
void updateEquality(
		std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap
		);

/*
 *
 */
bool isArithmeticOP(StringOP opx, std::set<std::string> otherVars);

/*
 *
 */
void updateNot(std::vector<std::pair<std::string, int>> &tokens,
		std::set<std::string> otherVars,
		std::vector<std::string> &smtVarDefinition);

/*
 * (implies x) --> (implies false x)
 */
void updateImplies(std::vector<std::pair<std::string, int>> &tokens,
		std::vector<std::string> &smtVarDefinition);

/*
 * (RegexIn ...) --> TRUE
 */
void updateRegexIn(
		std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap,
		std::vector<std::string> &smtVarDefinition);

/*
 * (Contain v1 v2) --> TRUE || FALSE
 */
void updateContain(
		std::vector<std::pair<std::string, int>> &tokens,
		std::map<std::string, bool> containStrMap);

/*
 * (Substring a b c) --> c
 */
void updateSubstring(std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap);

/*
 * ToUpper --> len = len
 */
void updateToUpper(std::vector<std::pair<std::string, int>> &tokens);

/*
 * ToLower --> len = len
 */
void updateToLower(std::vector<std::pair<std::string, int>> &tokens);

/*
 * Concat --> +
 */
void updateConcat(std::vector<std::pair<std::string, int>> &tokens);

/*
 * Length --> ""
 */
void updateLength(std::vector<std::pair<std::string, int>> &tokens);

/*
 * "abcdef" --> 6
 */
void updateConst(std::vector<std::pair<std::string, int>> &tokens);

/*
 * (Str2Regex x)--> = | x |
 */
void updateStr2Regex(std::vector<std::pair<std::string, int>> &tokens);

/*
 *
 */
void updateRegexStar(
		std::vector<std::pair<std::string, int>> &tokens,
		int &regexCnt);

/*
 *
 */
void updateRegexPlus(
		std::vector<std::pair<std::string, int>> &tokens,
		int &regexCnt);


/*
 *
 */
void updateCharAt(std::vector<std::pair<std::string, int>> &tokens,
		std::map<StringOP, std::string> rewriterStrMap);

/*
 * xyz --> len_xyz
 */
void updateVariables(
		std::vector<std::pair<std::string, int>> &tokens,
		std::vector<std::string> strVars);

/*
 * contain a string variable
 */
bool strContaintStringVar(std::string notStr, std::vector<std::string> strVars);

/*
 * Get all chars in consts
 */
std::set<char> getUsedChars(std::string str);

/*
 *
 */
bool prepareEncoderDecoderMap(std::string fileName);

/*
 * "abc123" 			--> 6
 * Concat abc def --> + len_abc len_def
 * Length abc 		--> len_abc
 */
void toLengthLine(
		std::vector<std::pair<std::string, int>> tokens,
		std::vector<std::string> &strVars,
		bool handleNotOp,
		std::map<StringOP, std::string> rewriterStrMap,
		int &regexCnt,
		std::vector<std::string> &smtVarDefinition,
		std::vector<std::string> &smtLenConstraints);

/*
 * Replace special const in constraints
 */
std::string encodeSpecialChars(std::string str);

/*
 * replace declare-variable by declare-fun
 */
std::vector<std::string> replaceVariableDefinition(std::vector<std::pair<std::string, int>> tokens);

/*
 *
 */
bool isSetCommand(std::vector<std::pair<std::string, int>> tokens);

/*
 *
 */
std::vector<std::string> rewriteLeftAssociationConstraints(std::vector<std::string> tokens);

/*
 *
 */
std::vector<std::vector<std::string>> collectArgs(
		int pos,
		int &endPos,
		std::vector<std::string> tokens);

/*
 * read SMT file and get maxInt and sumInt
 */
std::pair<int, long> getAllInt(std::string inputFile);

/*
 *
 */
std::pair<std::string, std::string> getParameters(std::vector<std::pair<std::string, int>> tokens, unsigned pos);

/*
 *
 */
std::vector<std::string> getParameters(std::vector<std::vector<std::pair<std::string, int>>> fileTokens, unsigned pos, unsigned line);

/*
 * print constraints
 */
ConstraintSet getConstraints(std::string inputFile);

/*
 * read SMT file
 */
void encodeSpecialChars(std::string inputFile, std::string outFile);

/*
 *
 */
std::string encodeHex(std::string constStr);


/*
 * read SMT file
 */
void encodeHex(std::string inputFile, std::string outFile);

/*
 * "GrammarIn" --> some new vars, some new constraints
 */
void rewriteGRM(std::string s,
		std::map<std::string, std::vector<std::vector<std::string>>> _equalMap,
		int &newVars,
		std::vector<std::string> &definitions,
		std::vector<std::string> &constraints);
/*
 * replace the CFG constraint by the regex constraints
 */
void toNonGRMFile(
		std::string inputFile,
		std::string outFile,
		std::map<std::string, std::vector<std::vector<std::string>>> equalitiesMap,
		std::map<std::string, std::string> constMap);

/*
 *
 */
void defineIntVars(
		std::map<StringOP, std::string> rewriterStrMap,
		std::set<std::string> carryOnConstraints,
		std::vector<std::string> &smtVarDefinition);

/*
 * read SMT file
 * convert the file to length file & store it
 */
void toLengthFile(std::string inputFile, bool handleNotOp,
		std::set<std::string> carryOnConstraints,
		std::map<StringOP, std::string> rewriterStrMap,
		int &regexCnt,
		std::vector<std::string> &smtVarDefinition,
		std::vector<std::string> &smtLenConstraints);


/*
 *
 */
std::string decodeStr(std::string s);

/*
 * read SMT file
 * add length constraints and write it
 */
void addConstraintsToSMTFile(
		std::string inputFile,
		std::map<std::string, std::vector<std::vector<std::string>>> _equalMap,
		std::vector<std::string> lengthConstraints,
		std::string outFile);

#endif /* FILECONVERTER_H_ */
