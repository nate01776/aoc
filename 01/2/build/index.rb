# sudo docker build -t advent/2 .
# sudo docker run advent/2:latest

path = "./seed.txt"
text = File.read(path)

textArray = text.split(/\n/)

targetValue = 2020

textArray.each do |i|
    textArray.each do |n|
        textArray.each do |x|
            if n.to_i + i.to_i + x.to_i == targetValue
                puts n.to_i * i.to_i * x.to_i;
            end
        end
    end
end