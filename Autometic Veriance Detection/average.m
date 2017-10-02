function out_put = average(tabIn,block_size)
inc_tmp = size(tabIn,1);
out_iterations = floor(inc_tmp/block_size);
array_for_com = zeros(block_size,1);
bksz = block_size;
start=1;
counter = 1;
end_block = bksz;
ctr_iterations =0;
avg2 = [0 0];

for j=1:1:out_iterations
    for i=start:block_size:end_block
        %avg1 = mean(tabIn(i:end_block));
        temp_arr = tabIn(i:end_block);
        for z=start:1:end_block
        ctr_iterations = ctr_iterations +1; 
        end
        avg1 = nanmean(temp_arr);
        %disp(avg1);

        
        %avg2(ctr_iterations,1) = ctr_iterations;
        %avg2(ctr_iterations,2) = avg1;
        avg2(counter,1) = ctr_iterations;
        avg2(counter,2) = avg1;
        %disp(ctr_iterations);
        
    end
    array_for_com(counter) = avg1;
    counter = counter +1;
    
    start = end_block+1;
    end_block = end_block+bksz;
    
    
end
    kriss = crossing(avg2)
    
   
    %sum(array_for_com(:)==0)
out_put = avg2;
