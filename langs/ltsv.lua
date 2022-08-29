function ltsv(line)
    local data = {}
    local token
    for token in line:gmatch("[^\t]+") do
        local i = token:find(":")
        data[token:sub(1, i - 1)] = token:sub(i + 1)
    end
    return data
end

for line in io.lines() do
    record = ltsv(line)
end

for k, v in pairs(record) do
    print(k, v)
end
