
def get_a_number(line)
    if line.length == 0
        line << 1
    elsif line.length >= 1
        line << (line.last + 1)
    end

    return line.last

end


def serve_customer(line)
    line.shift
end

