BEGIN {
    FS="\t"
}

{
    for (i = 1; i < NF; i++) {
        idx = index($i, ":");
        k = substr($i, 0, idx - 1)
        ret[k] = substr($i, idx + 1)
    }
}

END {
    for (k in ret) {
        print(k, ret[k])
    }
}
