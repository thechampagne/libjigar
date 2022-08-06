#ifndef __JIGAR_H__
#define __JIGAR_H__

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif
/*
* lower case
* 
* Example:
* * *
* int main()
* {
*     char* text = "HelLo World ";
*     jigar_lower_case(text);
*     printf("%s\n", text); // "hello world "
*     return 0;
* }
* * *
* 
* @param text
*/
extern void jigar_lower_case(char* text);

/*
* upper case
* 
* Example:
* * *
* int main()
* {
*     char* text = "HelLo World ";
*     jigar_upper_case(text);
*     printf("%s\n", text); // "HELLO WORLD "
*     return 0;
* }
* * *
* 
* @param text
*/
extern void jigar_upper_case(char* text);

/*
* macro case
* 
* Example:
* * *
* int main()
* {
*     char* text = "HelLo World ";
*     jigar_macro_case(text);
*     printf("%s\n", text); // "HELLO_WORLD_"
*     return 0;
* }
* * *
* 
* @param text
*/
extern void jigar_macro_case(char* text);

/*
* train case
* 
* Example:
* * *
* int main()
* {
*     char* text = "HelLo World ";
*     jigar_train_case(text);
*     printf("%s\n", text); // "HELLO-WORLD-"
*     return 0;
* }
* * *
* 
* @param text
*/
extern void jigar_train_case(char* text);

/*
* snake case
* 
* Example:
* * *
* int main()
* {
*     char* text = "HelLo World ";
*     jigar_snake_case(text);
*     printf("%s\n", text); // "hello_world_"
*     return 0;
* }
* * *
* 
* @param text
*/
extern void jigar_snake_case(char* text);

/*
* snake camel case
* 
* Example:
* * *
* int main()
* {
*     char* text = " HelLo World ";
*     jigar_snake_camel_case(text);
*     printf("%s\n", text); // "_hello_World_"
*     return 0;
* }
* * *
* 
* @param text
*/
extern void jigar_snake_camel_case(char* text);

/*
* snake pascal case
* 
* Example:
* * *
* int main()
* {
*     char* text = " HelLo World ";
*     jigar_snake_pascal_case(text);
*     printf("%s\n", text); // "_Hello_World_"
*     return 0;
* }
* * *
* 
* @param text
*/
extern void jigar_snake_pascal_case(char* text);

/*
* kebab case
* 
* Example:
* * *
* int main()
* {
*     char* text = "HelLo World ";
*     jigar_kebab_case(text);
*     printf("%s\n", text); // "hello-world-"
*     return 0;
* }
* * *
* 
* @param text
*/
extern void jigar_kebab_case(char* text);

/*
* kebab pascal case
* 
* Example:
* * *
* int main()
* {
*     char* text = "HelLo World ";
*     jigar_kebab_pascal_case(text);
*     printf("%s\n", text); // "Hello-World-"
*     return 0;
* }
* * *
* 
* @param text
*/
extern void jigar_kebab_pascal_case(char* text);

/*
* camel case
* 
* Example:
* * *
* int main()
* {
*     char* text = "HelLo World ";
*     jigar_camel_case(text);
*     printf("%s\n", text); // "helloWorld"
*     return 0;
* }
* * *
* 
* NOTE: spaces will be unused.
*
* @param text
* @return the acutal size of text
*/
extern size_t jigar_camel_case(char* text);

/*
* pascal case
* 
* Example:
* * *
* int main()
* {
*     char* text = "HelLo World ";
*     jigar_pascal_case(text);
*     printf("%s\n", text); // "HelloWorld"
*     return 0;
* }
* * *
* 
* NOTE: spaces will be unused.
*
* @param text
* @return the acutal size of text
*/
extern size_t jigar_pascal_case(char* text);

#ifdef __cplusplus
}
#endif

#endif // __JIGAR_H__