# encoding: UTF-8
String.class_eval do
  def translit
    self.gsub(/[\u2018\u2019\u201A\u201B\u2032\u2035]/,"'").mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/n, '').downcase.to_s.gsub(/[^-_a-z0-9]/, '_')
  end
end
