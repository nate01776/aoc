# sudo docker build -t advent/2b .
# sudo docker run advent/2b

path = "./seed.txt";
text_array = File.read(path).split(/\n/);
valid_count = 0;

text_array.each do |i|
    # prepare expectations
    expected_letter = i.split(" ")[1][0];
    current_pw = i.split(" ")[2].split("");

    # get valid positions for letter to be
    position_one = i.split(" ")[0].split("-")[0].to_i;
    position_two = i.split(" ")[0].split("-")[1].to_i;
    
    # check letter is at one but not two locations
    if current_pw[position_one - 1] == expected_letter
        if current_pw[position_two - 1] != expected_letter
            valid_count += 1;
        end
    elsif current_pw[position_two - 1] == expected_letter
        if current_pw[position_one - 1] != expected_letter 
            valid_count += 1;
        end
    end
end

puts valid_count;