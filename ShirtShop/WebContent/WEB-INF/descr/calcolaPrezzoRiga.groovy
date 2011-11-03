#input double prezzoMaglietta, double prezzoStampaFronte, double prezzoStampaRetro, double dimensioneStampaFronte, double dimensioneStampaRetro, int quantita
#output double prezzoSingolo, double prezzoRiga

if (!prezzoMaglietta)
	prezzoMaglietta = 0;
if (!prezzoStampaFronte)
	prezzoStampaFronte = 0;
if (!prezzoStampaRetro)
	prezzoStampaRetro = 0;
if (!dimensioneStampaFronte)
	dimensioneStampaFronte = 1;
if (!dimensioneStampaRetro)
	dimensioneStampaRetro = 1;
if (!quantita)
	quantita = 1;

def prezzoSingolo = prezzoMaglietta+(prezzoStampaFronte*dimensioneStampaFronte)+(prezzoStampaRetro*dimensioneStampaRetro);
def prezzoRiga = prezzoSingolo*quantita;

return ["prezzoSingolo": prezzoSingolo, "prezzoRiga": prezzoRiga];