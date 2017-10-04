function calculated_bpm = bpm(ecg_sig)

data=ecg_sig;
sample_freq = 128;

% Perform CWT with scale 3 and wavelet Coiflet-1
cof=cwt(data,3,'coif1');

% R -Peak Identification
cofsq=cof.^2;
threshold=mean(cofsq);
peak=0;
%datapoints=6*sample_freq*10;

% Remove edge effects
cofsq(1)=0;
cofsq(end)=0;

ntime=6*sample_freq;


for i=1:ntime
    if cofsq(i) >=threshold
        peak=peak+1;
    end
end

% Beats per minute
beats= peak;     % (peak/sample_freq)*36;
calculated_bpm = beats;

