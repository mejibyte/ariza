# -*- coding: utf-8 -*-

# Question 1
q  = Question.new(:text => "Yakınlarınız sizi tarif etmek için aşağıdakilerden hangisini söylerdi?")

a = Answer.create(:text => "Çok iyi bir insan", :points => 3)
b = Answer.create(:text => "Kafa dengi biri", :points => 5)
c = Answer.create(:text => "Her ihtimalin insanı", :points => 10)

q.answers = [a, b, c]
q.save!

# Question 2
q  = Question.new(:text => "Şu şıklardan hangisi daha çok sizi temsil ediyor?")

a = Answer.create(:text => "Önce davranıp sonra düşünürüm", :points => 5)
b = Answer.create(:text => "Önce düşünüp sonra davranırım", :points => 3)
c = Answer.create(:text => "Ne davranırım ne de düşünürüm", :points => 10)

q.answers = [a, b, c]
q.save!

# Question 3
q  = Question.new(:text => "Biraz alengirli ama çözümü mümkün bir sorun karşısında nasıl tepki verirsiniz?")

a = Answer.create(:text => "'Tüm sorunlar da beni buluyor kardeşim!' diye isyan ederim", :points => 10)
b = Answer.create(:text => "Eğer sorunu çözemezsem başıma gelecekleri düşünürüm", :points => 5)
c = Answer.create(:text => "Sorunu çözmek için planlar yapmaya başlarım", :points => 3)

q.answers = [a, b, c]
q.save!

# Question 4
q  = Question.new(:text => "Değiştirmeye gücünüzün yetmediği (ciddi bir hastalık, kaza gibi) trajik bir durum karşısında nasıl tepki verirsiniz?")

a = Answer.create(:text => "Üzüntüye boğulsam da durumu kabullenmek için çaba gösteririm", :points => 3)
b = Answer.create(:text => "Beni bu hale düşürenlerden öcümü almak için planlar yapmaya başlarım", :points => 10)
c = Answer.create(:text => "Böyle bir cezayı hakketmiş olmak için ne suç işlemiş olabileceğimi düşünürüm", :points => 5)

q.answers = [a, b, c]
q.save!

# Question 5
q  = Question.new(:text => "Bir nakliyat firmasına ait boş bir kamyonetin, evinizin önünde saatlerce beklediğini görürseniz ne yaparsınız?")

a = Answer.create(:text => "Acaba kim taşınıyor diye merak ederim", :points => 3)
b = Answer.create(:text => "Bu şüpheli durumu polise ihbar ederim", :points => 5)
c = Answer.create(:text => "Polise bile güvenmem. Gidip olaya kendim müdahale ederim.", :points => 10)

q.answers = [a, b, c]
q.save!

# Question 6
q  = Question.new(:text => "Size birgün boyunca \'neden?\' sorusunu kullanmayı yasaklasalar ilk tepkiniz ne olurdu?")

a = Answer.create(:text => "Yasağa uyarsam ne kazanacağımı sorarım", :points => 3)
b = Answer.create(:text => "Bana yasak koymaya kalkanı pişman ederim", :points => 10)
c = Answer.create(:text => "Neden 'neden?' dememem gerektiğini sorarım", :points => 5)

q.answers = [a, b, c]
q.save!

# Question 7
q  = Question.new(:text => "İç güdülerinizle mantığınız ters düşse hangisini seçersiniz?")

a = Answer.create(:text => "İçgüdülerimi seçerim", :points => 5)
b = Answer.create(:text => "Mantığımı seçerim", :points => 3)
c = Answer.create(:text => "Her ikisini de seçmem", :points => 10)

q.answers = [a, b, c]
q.save!

# Question 8
q  = Question.new(:text => "Yakınlarınıza sizin ne denli bencil olduğunuzu sorsak ne derlerdi?")

a = Answer.create(:text => "Hayli bencil", :points => 10)
b = Answer.create(:text => "Eh, biraz bencil olduğunu söylesek yalan olmaz", :points => 5)
c = Answer.create(:text => "Bencillik ne demek; hayatımda tanıdığım en fedakâr insan o", :points => 3)

q.answers = [a, b, c]
q.save!

# Question 9
q  = Question.new(:text => "Aldığınız kararları ne sıklıkta değiştirirsiniz?")

a = Answer.create(:text => "Kafama eserse değiştiririm", :points => 5)
b = Answer.create(:text => "Kolay kolay değiştirmem", :points => 3)
c = Answer.create(:text => "Ben karar alana kadar olaylar kendiliğinden değişir", :points => 10)

q.answers = [a, b, c]
q.save!

# Question 10
q  = Question.new(:text => "Çevrenizdekilerin sizin hakkınızdaki düşünceleri sizin için ne denli önemlidir?")

a = Answer.create(:text => "Çevrenin ne düşündüğüne önem veririm", :points => 3)
b = Answer.create(:text => "Çevrenin ne düşündüğünü iplemem", :points => 5)
c = Answer.create(:text => "Çevre benim ne düşündüğümü önemsesin, diye düşünürüm", :points => 10)

q.answers = [a, b, c]
q.save!

