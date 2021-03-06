#!/bin/bash - 
#===============================================================================
#
#          FILE: ctags_with_deps.sh
# 
#         USAGE: ./ctags_with_deps.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: Sunday, August 30, 2015 13:51
#      REVISION:  ---
#===============================================================================

gcc -M $* | \
    sed -e 's/[\\ ]/\n/g' | \
    sed -e '/^$/d' -e '/\.o:[ \t]*$/d' | \
    ctags -L - -I __attribute__,__attribute_deprecated__,__attribute_format_arg__,__attribute_format_strfmon__,__attribute_malloc__,__attribute_noinline__,__attribute_pure__,__attribute_used__,__attribute_warn_unused_result__,__wur,__THROW,__nonnull+ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+liaS --extra=+q
