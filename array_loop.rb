def ekle hash,key,value
	if hash[key]
		hash[key] = hash[key].push(value)
	else
		hash[key] = [value]
	end
end

h = {}

while true
	print("Cikmak icin 1, devam icin 2 e basin:")
	sorgu = gets.chomp.to_i
	if sorgu == 1
		break
	elsif sorgu == 2
		print("Ogrenci no giriniz: ")
		no = gets.chomp.to_i
		print("Ders adi giriniz:")
		ders = gets.chomp
		ekle(h, no, ders)
	else
		print("Yanlis giris.")
	end
end

2.times do |i|
	print("Ogrenci sorugusu icin 1, ders sorgusu icin 2 : ")
	sor = gets.chomp.to_i
	if sor == 1
		print("Ogrenci no giriniz:")
		no2 = gets.chomp.to_i
		print no2,"numarali ögrencinin aldigi dersler : \n"
		puts h[no2]
	elsif sor == 2
		print("Ders adi giriniz : ")
		ders2 = gets.chomp
		print ders2,"adli dersi alan ogrenci numaraları : \n"
		h.each do |i|
			puts i[0] if i[1].include?(ders2)
		end
	else
		print("Yanlis giris")
	end
end
