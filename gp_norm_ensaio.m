function [y,m,dp]=gp_norm_ensaio(x)

%Gabriel Pires 05/02/2008

ensaios=size(x,3);
canais=size(x,1);
m=reshape(mean(x(:,:,:),2),canais,ensaios);
dp=reshape(std(x(:,:,:),0,2),canais,ensaios);
m_f=permute(repmat(m,[1 1 256]),[1 3 2]);
dp_f=permute(repmat(dp,[1 1 256]),[1 3 2]);
y=(x-m_f)./dp_f;
