cd sanesecurity-real/

#rsync -av rsync://rsync.sanesecurity.net/sanesecurity .

for f in *.hsb; do
	echo "" >> "../raw/sanesecurity-$f";
	cat "$f" >> "../raw/sanesecurity-$f";
	sort -u -o "../raw/sanesecurity-$f" "../raw/sanesecurity-$f";
done

for f in *.hdb; do
	echo "" >> "../raw/sanesecurity-$f";
	cat "$f" >> "../raw/sanesecurity-$f";
	sort -u -o "../raw/sanesecurity-$f" "../raw/sanesecurity-$f";
done

rm -v ../raw/sanesecurity-crdfam.clamav.hdb ../raw/sanesecurity-doppelstern.hdb ../raw/sanesecurity-malware.expert.hdb
