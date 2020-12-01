# sudo docker build -t advent/1 .
# sudo docker run advent/1:latest

path = "./seed.txt"
text = File.read(path)

textArray = text.split(/\n/)

targetValue = 2020

textArray.each do |i|
    textArray.each do |n|
        if n.to_i + i.to_i == targetValue
            puts n.to_i * i.to_i;
        end
    end
end