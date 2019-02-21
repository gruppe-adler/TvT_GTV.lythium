class GRAD_Replay {
    precision = 3;                                    // precision of replay, 5 means every 5 seconds one snapshot (number)
    trackedSides[] = {"west","east","independent"};   // defines the sides that will be tracked (possible are "west", "east", "independant", "civilian") (array)
    stepsPerTick = 1;                                 // defines steps played back at once (number)
    trackedVehicles = 1;                              // defines if empty and AI steered vehicles will be tracked (0/1)
    trackedAI = 1;                                    // defines if AI will be tracked (0/1)
    sendingChunkSize = 10;                            // higher number means replay loading is faster, but might cause instability / lags during loading
    trackShots = 1;                                   // defines if shots will be tracked (0/1)
};
