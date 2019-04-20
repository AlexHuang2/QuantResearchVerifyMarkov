library(markovchain)

names = list("AAA","BBB","CCC","DDD","EEE")
order_nums = list("first","second","third", "fourth")
for(name in names) {
	for(order_num in order_nums){
		df <- read.csv(file=paste("/Volumes/MasterDrive/Quant Research/",name,"_prices_interpolated_final.csv",sep=""), header=TRUE, sep=",")
		df_size = as.integer(nrow(df))
		states <- df[[paste(order_num,'_order_states',sep="")]]
		# conduct this test only on training data, as we don't want to learn from test data yet
		train_size <- ceiling(0.75 * df_size)
		states <- head(states, train_size)
		print(paste(name,":",order_num,"order"))
		# Produce a p-value under the null hypothesis that the state is not Markov
		verifyMarkovProperty(states, verbose = TRUE)
	}
}

# Results:

# [1] "AAA : first order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 6747.562 
# Degrees of freedom are: 27 
# And corresponding p-value is: 0 
# [1] "AAA : second order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 3972.538 
# Degrees of freedom are: 729 
# And corresponding p-value is: 0 
# [1] "AAA : third order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 2833.363 
# Degrees of freedom are: 19683 
# And corresponding p-value is: 1 
# [1] "AAA : fourth order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 2483.2 
# Degrees of freedom are: 531441 
# And corresponding p-value is: 1 
# [1] "BBB : first order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 7885.333 
# Degrees of freedom are: 27 
# And corresponding p-value is: 0 
# [1] "BBB : second order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 4727.16 
# Degrees of freedom are: 729 
# And corresponding p-value is: 0 
# [1] "BBB : third order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 3266.689 
# Degrees of freedom are: 19683 
# And corresponding p-value is: 1 
# [1] "BBB : fourth order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 2795.434 
# Degrees of freedom are: 531441 
# And corresponding p-value is: 1 
# [1] "CCC : first order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 5633.864 
# Degrees of freedom are: 27 
# And corresponding p-value is: 0 
# [1] "CCC : second order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 3683.362 
# Degrees of freedom are: 729 
# And corresponding p-value is: 0 
# [1] "CCC : third order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 2811.39 
# Degrees of freedom are: 19683 
# And corresponding p-value is: 1 
# [1] "CCC : fourth order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 2445.214 
# Degrees of freedom are: 531441 
# And corresponding p-value is: 1 
# [1] "DDD : first order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 15631.58 
# Degrees of freedom are: 27 
# And corresponding p-value is: 0 
# [1] "DDD : second order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 8281.305 
# Degrees of freedom are: 729 
# And corresponding p-value is: 0 
# [1] "DDD : third order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 4770.352 
# Degrees of freedom are: 19683 
# And corresponding p-value is: 1 
# [1] "DDD : fourth order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 4014.535 
# Degrees of freedom are: 531441 
# And corresponding p-value is: 1 
# [1] "EEE : first order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 6429.828 
# Degrees of freedom are: 27 
# And corresponding p-value is: 0 
# [1] "EEE : second order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 3683.645 
# Degrees of freedom are: 729 
# And corresponding p-value is: 0 
# [1] "EEE : third order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 2627.453 
# Degrees of freedom are: 19683 
# And corresponding p-value is: 1 
# [1] "EEE : fourth order"
# Testing markovianity property on given data sequence
# Chi - square statistic is: 2273.361 
# Degrees of freedom are: 531441 
# And corresponding p-value is: 1 