%{
int l,n,w,c;
%}
%%
[\n] {l++;}
[ \t] {n++;}
[^ \n\t]+ {w++;c=c+yyleng;}
%%
int yywrap(){return 1;}
int main()
{
extern FILE *yyin; 
yyin=fopen("Input.txt","r"); 
yylex();
printf("Line=%d, whitespace=%d, word=%d, total char=%d \n",l,n,w,n+c);
}
