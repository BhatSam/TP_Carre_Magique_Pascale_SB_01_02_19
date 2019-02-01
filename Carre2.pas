program carrepas;
uses crt ;
//BUT : completer le carre
//ENTREE : dimension du tableau
// SORTIE : tableau complete

	CONST tmax= 5;
	VAR middle, nb, i, j : INTEGER ;
	tabu: array [1..tmax,1..tmax] of INTEGER ;
	

BEGIN
clrscr;
middle:=(tmax div 2)+1;

	nb:=1  ;
		FOR i:=1 TO tmax DO
		BEGIN
			FOR j:=1 TO tmax DO
			BEGIN

 				tabu[i,j]:=0; 
	
				

	 		end;
	 		writeln;


	 	end;

	
	 
    i:=middle-1;
	j:=middle;
	tabu[i,j]:=nb;
	 	WHILE (nb<>(tmax*tmax)) DO
	   	BEGIN
	   		i:=i-1;
	   		j:=j+1;
	   		nb:=nb+1;
	   		IF i<1 THEN
	   		BEGIN
	   			i:=tmax;
	   		end;
	   		IF j>tmax THEN
	   		BEGIN
	   			j:=1;
	   	    end;
	   	    IF j<1 THEN
	   	    BEGIN
	   	    	j:=tmax;
	   	    end;
	   	    WHILE tabu[i,j]<>0 DO
	   	    BEGIN
	   	    i:=i-1;
	   	    j:=j-1;
	   	    IF i<1 THEN
	   		BEGIN
	   			i:=tmax;
	   		end;
	   		IF j>tmax THEN
	   		BEGIN
	   			j:=1;
	   	    end;
	   	    IF j<1 THEN
	   	    BEGIN
	   	    	j:=tmax;
	   	    end;

	   	    END;
            


	   		
	  		tabu[i,j]:=nb;

	   end;




FOR i:=1 TO tmax DO
		BEGIN
			FOR j:=1 TO tmax DO
			BEGIN

 		
				write ('|');

				write (tabu[i,j]:2);
				
	 		end;
	 		write ('|');

	 		writeln;
	 	end;

    readln;
END.
	