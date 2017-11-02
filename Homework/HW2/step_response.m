%% Problem 1
G1 = tf([-1 1],[1 4 25]);
G2 = tf([-0.5 1],[1 4 25]);
G3 = tf([0 1],[1 4 25]);
G4 = tf([0.5 1],[1 4 25]);
G5 = tf([1 1],[1 4 25]);
figure(1); clf; hold on
step(G1);
step(G2);
step(G3);
step(G4);
step(G5);

%%
P = tf([10 40 125], [1 4 25]);
step(P);