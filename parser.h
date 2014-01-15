#ifndef _PARSER_H_
#define _PARSER_H_

#include <memory>

#include "ast.h"

namespace parser {
ast::Function* Function();
ast::Function* TopLevel();
ast::Prototype* Extern();
}  // end parser

#endif
