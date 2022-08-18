function ltsv(line)
    local data = {}
    local i, token
    for token in string.gmatch(line, "[^\t]+") do
        i = string.find(token, ":")
        data[string.sub(token, 1, i - 1)] = string.sub(token, i + 1)
    end
    return data
end

for line in io.lines() do
    record = ltsv(line)
end

for k, v in pairs(record) do
    print(k, v)
end
