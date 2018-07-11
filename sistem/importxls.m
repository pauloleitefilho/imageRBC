num2 = xlsread('plan.xlsx', 'x1','c2:l26')
num=num2';
disp('Variancia');
num1=var(num)
disp('Valor maximo');
num2=max(num)
disp('Valor minimo');
num3=min(num)
disp('media minimo');
num4=median(num)
save saida.txt num -ascii