function filled = GetData (mat) 
  
  n = size(mat,1);
  
  fprintf('enter all parameters respectivly row by row \n\n ');  

    for rows = 1:n, 
      for clmns = 1:n+1,
        
       mat(rows, clmns)  = input("");
       
      end 
   end  
  filled = mat; 
  
endfunction
