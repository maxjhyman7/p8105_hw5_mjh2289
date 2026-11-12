normal_draw = function(mu) {
  
  normal_draw_values <- tibble(
    value = rnorm(n = n, mean = mu, sd = sigma)
    )
  
  normal_draw_values |> 
    summarize(
      mu_hat = mean(value)
    )
  
}

