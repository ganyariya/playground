/**
 * infdef & define _{XXX}_H は**同じ c ファイル内での多重 include**を防ぐためのものであることに注意
 * 異なる c ファイル (main.c, add.c) それぞれで add.h を読み込むと、各ヘッダーがそれぞれの c ファイルに展開される
 */
#ifndef _ADD_H
#define _ADD_H

/**
 * 1. int globalW;
 * int による宣言だけであれば header ファイルでグローバル変数を宣言して問題ない
 *
 * 2. int globalW = 0;
 * これは宣言にくわえて、実態の生成・定義を行っている。
 * その結果、ヘッダーを include したすべての .c ファイルで globalW の実体が生成されてエラーになる。
 *
 * 3. extern int globalW;
 * これがもっとも推奨される書き方
 * `globalW` がどこかの c ファイルで定義されることだけを伝える
 */
extern int globalW;

int add(int x, int y);

#endif
