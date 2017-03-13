domains
	nama_makanan,orang,makan=symbol
	harga,sum,dikali=integer
	
	
predicates
	nondeterm kata
	nondeterm makanan (nama_makanan, harga)
	nondeterm jumlah (sum,sum,sum)
	nondeterm kali (dikali,dikali,dikali)
	nondeterm beli(orang,makan)
	nondeterm beli(orang)
	nondeterm huruf(char)
	
	
clauses
	kata:-
		write("================= ODAH ETAM NONGKI ================="),nl,
		write("masukkan huruf sembarang untuk menampilkan Menu Makanan dan Lain Lain"),nl,
		readchar(_).		
	
	makanan("Nasi Goreng",12000).
	makanan("Mie Goreng",10000).
	makanan("Tempe Mendoan",6000).
	makanan("Kentang Goreng",10000).
	makanan("Chicken Sandwith",15000).
	makanan("Pisang Keju",10000).
	
	jumlah(X,Y,Sum):-
		Sum=X+Y.
		
	kali(X,Y,Dikali):-
		Dikali=X*Y.
		
	beli(A):-	
		beli(A,tempe_mendoan).
		beli(A,pisang_keju).
	
	beli(hanafi,chicken_sandwith).
	beli(ari,tempe_mendoan).
	beli(surya,nasi_goreng).
	beli(indrajid,pisang_keju).
	
	huruf(H):-
		'a' <= H,
		H <= 'c'.
goal
	kata(),
	makanan(Nama_Makanan,Harga);
	jumlah(10000,6000,Sum),kali(15000,3,Dikali);
	makanan(Nama_Makanan,Harga),Harga<12000;
	beli(Membeli_Tempe_Mendoan);
	beli(Membeli_Pisang_Keju);
	huruf('b').