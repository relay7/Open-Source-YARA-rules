rule GeorBotMemory
{
meta:
	Author = "AlienVault"
	reference = "https://www.alienvault.com/blogs/labs-research/georbot-botnet-a-cyber-espionage-campaign-against-georgian-government"
strings:
	$a = {53 4F 46 54 57 41 52 45 5C 00 4D 69 63 72 6F 73 6F 66 74 5C 00 57 69 6E 64 6F 77 73 5C 43 75 72 72 65 6E 74 56 65 72 73 69 6F 6E 5C 00 52 75 6E 00 55 53 42 53 45 52 56}
	$b = {73 79 73 74 65 6D 33 32 5C 75 73 62 73 65 72 76 2E 65 78 65}
	$c = {5C 75 73 62 73 65 72 76 2E 65 78 65}
condition:
	$a and ($b or $c)
}