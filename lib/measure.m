function qubit = measure(qubit)
qubit = abs(qubit).^2 > rand(size(qubit, 1), 1);
end