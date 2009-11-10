# -*- coding: utf-8 -*-
class TestResult < ActiveRecord::Base
  has_and_belongs_to_many :answers

  validate :must_have_exactly_one_answer_for_each_question

  def points
    answers.collect { |a| a.points }.sum
  end

  def text
    p = points
    if p <= 30
      "Siz bir arıza değilsiniz! Gidin ve sade yaşamınızın tadını çıkarın. <span class='italic'>'Yok ben illâ aranıyorum'</span> diyorsanız, ‘ARIZA’ adlı kitabın <span class='italic'>‘Fabrikasyon Normaller’</span> adlı bölümünde kendi profilinizle yüzleşebilirsiniz..."
    elsif p <= 49
      "Ara ara arızalanan modellerdensiniz. Dönemsel olarak ya da yoğun stres altında arıza potansiyeliniz gün ışığına çıkıyor. Ancak, arızalandığınız anlar dışında gayet normal görünüp, günlük yaşamınızı kolaylıkla idame ettirebilirsiniz. Puanınız 50'ye ne kadar yakınsa, arızalanma sıklığınız veya şiddetiniz de o kadar çok demektir. Yine de bir <span class='italic'>'psikopat'</span>dan çok <span class='italic'>'pat'lamamış</span> bir <span class='italic'>'psiko'</span> sayılırsınız. Arıza yanlarınızı daha iyi tanımak isterseniz, ‘ARIZA’ adlı kitap size karanlıkta kalan yüzünüzü gösterecektir."
    else
      "Tebrikler! <span class='italic'>Bu testi bir başkasının adına çözdüğünüzü</span> ya da <span class='italic'>soruları çarpıtarak cevaplandırdığınızı</span> söyleseniz bile kimse size inanmaz! Çünkü siz ağır siklet bir arızasınız! Kıdemli, full-time bir psikopat... Ve evet haklısınız, evinizin önündeki nakliyat firmasına ait kamyonet sizin için bekliyor! Belki ‘ARIZA’ adlı kitap size bir yol gösterebilir. Korkmayın yalnız değilsiniz!"
    end
  end

  def title
    p = points
    if p <= 30
      "30 Puan ve Altı"
    elsif p <= 49
      "30 - 50 Puan Arası"
    else
      "50 Puan ve Üstü"
    end
  end

  protected

  def has_exactly_one_answer_for_each_question?
    Question.all.each do |question|
      return false if (answers & question.answers).size != 1
    end
    return true
  end

  def must_have_exactly_one_answer_for_each_question
    unless has_exactly_one_answer_for_each_question?
      errors.add(:answers, "Please select exactly one answer for each question")
    end
  end
end
