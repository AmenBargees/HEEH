function I=HEEH(data)

h=hilbert(data);
realpart=real(h).^2;
imaginarypart=imag(h).^2;
envelope= sqrt(realpart+imaginarypart);
p=isoutlier(envelope,"mean");
[n,m]=size(data);
q=zeros(n,m);

% to remove any sample with value of 1 but the samples before and after are
% zeros. (EX: 0,1,0)

for is=1:m

    for ig=2:n-1

        s=p(ig-1,is)+p(ig,is)+p(ig+1,is);
        s=s/2;

        if s==0.5
            p(ig,is)=0;
        
        end 
    end
end

% to remove any 2 samples with value of 1 but the samples before and after are
% zeros. (EX: 0,1,1,0)

% for is=1:m
% 
%     for ig=2:n-2
% 
%         s=p(ig-1,is)+p(ig,is)+p(ig+1,is)+p(ig+2,is);
%         s2=s/2;
% 
%         if p(ig,is)==1;
%           if p(ig-1,is)==0
% 
%               if s2==1
%                 p(ig,is)=0;
%                 p(ig+1,is)=0;
%               end
%          end 
%         end
%     end
% end

% to remove any 3 samples with value of 1 but the samples before and after are
% zeros. (EX: 0,1,1,1,0)

% for is=1:m
% 
%     for ig=2:n-3
% 
%         s=p(ig-1,is)+p(ig,is)+p(ig+1,is)+p(ig+2,is)+p(ig+3,is);
%         s=s/3;
%         if p(ig,is)==1
%           if p(ig-1,is)==0
% 
%             if s==1
%               p(ig,is)=0;
%               p(ig+1,is)=0;
%               p(ig+2,is)=0;
%             end
%         end 
%     end
%     end
% end



% to choose the sample in the middle 
for is=1:m
    
    f=find(p(:,is)==1);
    d1=0;
    d2=0;

    for ig=1:length(f)

               sa=p(f(ig)+1,is);
               

                 if sa==0
                     
                     d2=ig;

                     d=round(d1+((d2-d1)/2));
                     q(f(d),is)=1;
                 end
                 d1=d2;
    end
end


                     


[det2,I]=sort(abs(q),1,"descend");

subplot(211); wigg(data,1,0.002,2)
subplot(212); wigg(q,1,0.002,4)

end         

% For comparrison of trace 20 in synthetic, 10 and 20 % noise
% subplot(311); plot(data(1:2500,20))
% subplot(312); plot(ten(1:2500,20))
% subplot(313); plot(twnty(1:2500,20))


