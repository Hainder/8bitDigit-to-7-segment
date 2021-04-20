module eightDigitToSevenSeg (
	input [7:0] eightDigit,
	input clk,
	output [6:0] sevenSeg0,
	output [6:0] sevenSeg1,
	output [6:0] sevenSeg2
);
	reg [3:0] firstDig;
	reg [3:0] secDig;
	reg [3:0] thirdDig;

	always @(posedge clk) begin
		firstDig = eightDigit%10;
		secDig = (eightDigit%100)/10;
		thirdDig = (eightDigit/100);
	end


	digitToSevenSegm u_digitToSevenSegm(
		.digit (firstDig),
		.segment  (sevenSeg0)
	);

	digitToSevenSegm u_digitToSevenSegm1(
		.digit (sectDig),
		.segment  (sevenSeg1)
	);

		digitToSevenSegm u_digitToSevenSegm0(
		.digit (thirdDig),
		.segment  (sevenSeg2)
	);
	
endmodule 