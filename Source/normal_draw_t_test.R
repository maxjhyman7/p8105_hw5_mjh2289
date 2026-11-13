normal_draw_t_test = function(mu) {
  
  normal_draw <- tibble(x = rnorm(n = n, mean = mu, sd = sigma))
  
  t_test <- t.test(x = normal_draw) |> 
    broom::tidy() |> 
    select(estimate, p.value) |> 
    rename(
      mu_hat = estimate,
      p_value = p.value
      )
  
  return(t_test)
  
}

