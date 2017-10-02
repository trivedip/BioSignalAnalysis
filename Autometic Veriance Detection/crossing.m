function crossing_count = crossing(column)
pl = detrend(column);
cross_count = nnz(diff(sign(pl)));
%cross_count = nnz(diff(sign(pl(find(pl)))));
crossing_count = cross_count;