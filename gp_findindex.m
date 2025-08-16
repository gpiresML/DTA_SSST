function ind=find_index(file,id)

[trig tam]=size(file);

j=1;
trigger=file(trig,:);

if id==77
    for i=1:tam-1
        if (trigger(i)~=trigger(i+1) && trigger(i+1)>77)
            ind(j)=i+1;
            j=j+1;
        end
    end
    if j==1
        ind=0;
    end


else
    for i=1:tam-1
        if (trigger(i)~=id) &&  (trigger(i+1)==id)
            ind(j)=i+1;
            j=j+1;
        end
    end
end