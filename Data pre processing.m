
a=[];
diff_a=diff(stimulus);
for c = 1:2266216
        if diff_a(c) > 0
            a(end+1)=c+1;
        elseif diff_a(c) < 0
            a(end+1)=c;
        end
            
            
end


for j= 1:9
     start =(j-1)*20+1;
     finish = j*20;
     if j==9
         if rem(length(a),2)~=0
            finish=length(a)-1;
         else
             finish=length(a);
         end      
     end
      column=1;
     for i=start:2:finish
         for k=1:16
         
            S10(j).data(column,1:length(emg(a(i):a(i+1),k)'))=emg(a(i):a(i+1),k)';
            column=column+1;
         end
     end
end