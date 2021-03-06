require 'minitest/autorun'

class RegExFilter
  def find_png(file_name_list)
    matches = file_name_list
    matches.delete_if { |file| !file.match(/\.png$/) }
    matches
  end

  def find_three_letters(list)
    matches = list
    matches.delete_if { |string| !string.match(/^.{3}$/) }
    matches
  end

  def find_non_intial_bs(list)
    matches = list
    matches.delete_if { |string| string.match(/^B/) }
    matches
  end

  def find_no_bs_at_all(list)
    matches = list
    matches.delete_if { |string| string.match(/[Bb]+/) }
    matches
  end
end

# puts "find_png().to_s"
# puts find_png(["file1.jpg", "file2.png"]).to_s
# puts "find_three_letters(['cat', 'dog', 'rhinoceros']).to_s"
# puts find_three_letters(['cat', 'dog', 'rhinoceros']).to_s
# puts "find_non_intial_bs(['Ben', 'Edwin', 'Lauren']).to_s"
# puts find_non_intial_bs(['Ben', 'Edwin', 'Lauren']).to_s
# puts "find_no_bs_at_all(['Ben', 'Edwin', 'Lauren', 'Ruby']).to_s"
# puts find_no_bs_at_all(['Ben', 'Edwin', 'Lauren', 'Ruby']).to_s

class TestRegExFilter < Minitest::Test
  def test_find_png
    filter = RegExFilter.new
    files = ['file1.jpg', 'file2.png']
    assert_equal ['file2.png'], filter.find_png(files)
  end
end
