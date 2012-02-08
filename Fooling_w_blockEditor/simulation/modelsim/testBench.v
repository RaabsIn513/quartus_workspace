module aTestBench;
  reg inStim; 
  wire outMon;
  
  blockEd DUT(
    .in_pin( inStim ),
    .out_pin( outMon )
    );
    
    // Apply the stim
    initial begin
      #5 inStim = 0;
      $monitor( "in_pin:%b, out_pin:%b", inStim, outMon );
      
    end
    
    always begin
      #5 inStim = !inStim;
    end  
    

endmodule