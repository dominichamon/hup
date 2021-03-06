do(write, [1, 2, 3])

input = [3, 2, 1]
do(write, input)

# define func up front
sum_fn = func(cum, in) { return cum + in }
mean = do(fold, sum_fn, input) / do(length, input)
# do(write, mean)

# define func inline
mean2 = do(fold, func(cum, in) { return cum + in }, input)
# do(write, mean2)

#do(write, [mean, mean2])

# simple map
sq = do(map, func(in) { return in * in }, input)
do(write, sq)

# map example with extra args
# sqdiff = do(map, func(in, mean) {
# 	diff = in - mean
# 	return diff * diff
# }, input, mean)
# stdev = do(fold, sum, sqdiff) / do(length, sqdiff)
# 
# do(write, [mean, mean2, stdev])

