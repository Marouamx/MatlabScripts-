
%%%%%% Solving Systems of Equations Using Determinants %%%%%%% 
%%%%%% Supports complex numbers as parameters too %%%%%%%
%%%%%% enter cmplx nbrs in the format : a+bi %%%%%%%

  n = input("Enter nbr of unknowns for your system of eq : ")
    
  mat = zeros(n,n+1);


  mat = GetData(mat); %to fill the matrix 


  fprintf('\n the matrix you entered : \n');
  disp(mat)   
   
   
  fprintf('\n Computing the result...   \n');

     for i = 1:n, 
        
        mat_x(:,:,i) = mat(:,1:n); 
        mat_x(:,i,i) = mat(:,n+1); 
        %disp(mat_x(:,:,i)) %the nominator matrix 
        results(i) = det(mat_x(:,:,i)) / det(mat(:,1:n)); %create a matrix to hold the resultants  

     end 

     
    %displaying the output
    for j = 1:n, 
      fprintf('\n unknown nbr %i is %f\n ',j,results(j));
    end
   