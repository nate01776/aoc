# sudo docker build -t advent/2a .
# sudo docker run advent/2a:latest

path = "./seed.txt";
text_array = File.read(path).split(/\n/);
valid_count = 0;


text_array.each do |i|
    # prepare expectations
    expected_letter = i.split(" ")[1][0];
    current_pw = i.split(" ")[2];

    # get no. of occurances of expected_letter in current_pw
    letter_min = i.split(" ")[0].split("-")[0].to_i;
    letter_max = i.split(" ")[0].split("-")[1].to_i;
    letter_occ = current_pw.count(expected_letter);

    # validate no. of occurances is above min and below max
    if letter_occ <= letter_max && letter_occ >= letter_min
        # add to overall count
        valid_count += 1
    end
end

puts valid_count;