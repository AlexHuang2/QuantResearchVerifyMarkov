# Quantitative Research Project: Verify Third-Order Markov Property

Let <img src="http://www.sciweavers.org/upload/Tex2Img_1557547769/render.png" align="center" border="0" alt="p_x(t)" width="37" height="19" /> be the price of a cryptocurrency x at time t (where t has been converted into an integer index). There are 5 cryptocurrencies: AAA, BBB, CCC, DDD, and EEE.

Let the first-order price differential <br /> <img src="http://www.sciweavers.org/upload/Tex2Img_1557547208/render.png" width="274" height="62" />

Let the second-order price differential <br /> <img src="http://www.sciweavers.org/upload/Tex2Img_1557547321/render.png" width="521" height="82" />

Let the third-order price differential <br /> <img src="http://www.sciweavers.org/upload/Tex2Img_1557547952/render.png" align="center" border="0" alt="\Delta^3 p_x(t) = \left\{\begin{matrix} (1,1,1)\textup{ if }p_x(t+3)-p_x(t-2) > 0\textup{ and }p_x(t+2)-p_x(t+1) > 0\textup{ and }p_x(t+1)-p_x(t) > 0\\ (1,1,0)\textup{ if }p_x(t+3)-p_x(t-2) = 0\textup{ and }p_x(t+2)-p_x(t+1) > 0\textup{ and }p_x(t+1)-p_x(t) > 0\\ (1,1,-1)\textup{ if }p_x(t+3)-p_x(t-2) < 0\textup{ and }p_x(t+2)-p_x(t+1) > 0\textup{ and }p_x(t+1)-p_x(t) > 0\\ \textup{etc.} \end{matrix}\right." width="749" height="82" />

My hypothesis was that <img src="http://www.sciweavers.org/upload/Tex2Img_1557547428/render.png" align="center" border="0" alt="\Delta^3 p_x(t)" width="57" height="21" /> is a Markov chain, i.e.,
<img src="http://www.sciweavers.org/upload/Tex2Img_1557547534/render.png" align="center" border="0" alt="\mathbb{P} \left (\Delta^3 p_x(t) = k_t | \Delta^3 p_x(t-1) = k_{t-1},\Delta^3 p_x(t-2) = k_{t-2},..., \Delta^3 p_x(0) = k_{0} \right ) = \mathbb{P} \left (\Delta^3 p_x(t) = k_t | \Delta^3 p_x(t-1) = k_{t-1}\right )" width="796" height="22" />
<br /> More specifically, that 3 is the smallest n for which <img src="http://www.sciweavers.org/upload/Tex2Img_1557547697/render.png" align="center" border="0" alt="\Delta^n p_x(t)" width="58" height="19" /> is a Markov chain.

A short Python script, `get_diff_time_series.ipynb` was written to generate these a time series of these price change directions, in the first, second, third, and fourth order. Then, a short R script, `verify_markov_property.R`  was used to verify the Markov property in these time series using the markovchain package, which did not have an equivalent in Python. My hypothesis will indeed be true if the test for first order and second order fails, but the test for the third order passes and continues to pass for higher orders.

The null hypothesis is that the diff time series is not a Markov chain, and this null hypothesis is rejected with a p-value greater than 0.05. As we will see, the test produces a p-value of 0 for first and second order, and a p-value of 1 for third order. We verify the fourth-order diff time series as well, just to empirically verify that the results are consistent with what they should theoretically be (which is that if third order is Markov, all higher orders should be as well, by property of Markov chains). These results hold for all 5 coins.
