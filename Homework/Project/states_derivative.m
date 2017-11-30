function [ dX ] = states_derivative ( t, X )
%STATES_DERIVATIVE Outputs the derivative of all the states in X

dt = ( t(end)-t(1) ) / length(t);

dX = X;
for i = 1:length(X)-1
    dX(i,:) = [0 diff(X(i,:))/dt];
end

