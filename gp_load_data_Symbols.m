function s=gp_load_data_Symbols(y,n,id,t1,t2,fs,label_id)

Ts=1/fs;
ind=gp_findindex(y(1:label_id,:),id); 
if (ind==0)
    s=0;
else
    for i=1:(length(ind))
        a1=ind(i)+(t1/Ts);
        a2=ind(i)+(t2/Ts)-1;
        for j=1:n     
            s(j,:,i)=y(j+1,a1:a2);  
         end
    end

end


