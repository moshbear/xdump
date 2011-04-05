/* xdump code
 * (c) 2009 m0shbear
 * RELEASED INTO PUBLIC DOMAIN.
 * Donations encouraged.
 */
#include <stdio.h>
int main(int argc, char**argv) {
int i;
while ((i=getchar())!=EOF)
#if PUT == 0 /* bin */
	printf("%d%d%d%d%d%d%d%d ",!!(i&0x80),!!(i&0x40),!!(i&0x20),!!(i&0x10),!!(i&8),!!(i&4),!!(i&2),!!(i&1));
#elif PUT == 1 /* hex */
	printf("%02x ", (i&0xff));
#elif PUT == 2 /* dec */
	printf("%01d ", (i&255));
#elif PUT == 3 /* oct */
	printf("%03o", (i & 0377));
#endif
printf("\n");
return 0;
}
