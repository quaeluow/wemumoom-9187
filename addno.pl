@ns=(
"1112",
"1239",
"1387",
"1399",
"1442",
"1511",
"1781",
"1960",
"2042",
"2264",
"2276",
"2584",
"3181",
"3432",
"3515",
"3552",
"3780",
"3878",
"3883",
"4435",
"4438",
"4473",
"4511",
"4569",
"4724",
"4743",
"4912",
"4964",
"5542",
"5560",
"5880",
"5988",
"6039",
"6086",
"6200",
"6229",
"6280",
"6542",
"6745",
"6843",
"6856",
"7014",
"7230",
"7443",
"7455",
"7517",
"7697",
"8081",
"8240",
"8509",
"8696",
"8779",
"8881",
"9386",
"9618",
"9674",
"9851",
"9872",
"9896",
"9933"
);

for ($i1=0;$i1<=$#ns;++$i1)
{
open(icli,"<./qs/$ns[$i1].tex");
@icli=<icli>;
close(icli);
open(output,">./gt/$ns[$i1].tex");
$r=0;
foreach $icli (@icli)
{
    if ($r==1)
    {
	print output "[$ns[$i1]] ";
	++$r;
    }
    print output "$icli";
    if ($icli=~/block/)
    {
	++$r;
    }
}
close(output);
}

