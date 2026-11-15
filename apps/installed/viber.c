// system:
#include <stdlib.h>

int main(void)
{
	char commands[] =
		"bash -c '"
			"cd \"$HOME/sync/apps/installed/\" &&\n"
			"./\"viber.AppImage\" \n"
		"'";

	if (system(commands) != 0)
	{
		return 1;
	}

	return 0;
}