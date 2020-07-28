//Group Members Names & ID :
//Moayad Salim 15128
//Hamed Khamis 15126
//Gadeer Khalfan 15165
//Hajer Nasser 15125

using System;

namespace NeuralNetworkProject
{
    class Program
    {
        static float Sum_of_Weights(float input1,float weight1, float input2,float weight2) //Sum of weights function
        {
            float sumofWeights = input1 * weight1 + input2 * weight2;
            return sumofWeights;
        }
        static float Sigmoid(float value) //Sigmoid activation function
        {
            float e = 1;
            for (int i = 10 - 1; i > 0; i--)
                e = 1 + (-value) * e / i;
            return 1 / (1 + e);
        }
        static float Output(float sigmoid1, float weight1, float sigmoid2, float weight2) //Output function
        {
            float output = sigmoid1 * weight1 + sigmoid2 * weight2;
            return output;
        }
        static float Output_Error(float target, float sigmoidofOutput) //Output error function
        {
            float outputError = target - sigmoidofOutput;
            return outputError;
        }
        static float Sigmoid_Prime(float sigmoid) //Sigmoid Prime function
        {
            float sigmoidPrime = sigmoid * (1 - sigmoid);
            return sigmoidPrime;
        }
        static float Gradient_of_Output(float sigmoidofOutput, float error) //Gradient of output function
        {
            float GradientofOutput = Sigmoid_Prime(sigmoidofOutput) * error;
            return GradientofOutput;
        }
        static float Gradient_of_Head(float sigmoid, float weight, float gradientofOutput) //Gradient of head function
        {
            float gradientofHead = Sigmoid_Prime(sigmoid) * weight * gradientofOutput;
            return gradientofHead;
        }
        static float Weight_Adjustment(float weight, int n, float gradient, float sigmoid) //Weight adjustment function
        {
            int n1 = n;
            if (n1 != 1)
                n1 = n1 - 1;
            float MF = 0.0001f, TP = 0.25f;
            float newWeight = weight * n + MF * weight * n1 + TP * gradient * n * sigmoid;
            return newWeight;
        }
        static void Main(string[] args) //Main function
        {
            //Inputs and initialize the values of Neural Network
            Console.Write("Enter Input1 : ");
            float I1 = float.Parse(Console.ReadLine());
            Console.Write("Enter Input2 : ");
            float I2 = float.Parse(Console.ReadLine());
            Console.Write("Enter Weight1 : ");
            float W1 = float.Parse(Console.ReadLine());
            Console.Write("Enter Weight2 : ");
            float W2 = float.Parse(Console.ReadLine());
            Console.Write("Enter Weight3 : ");
            float W3 = float.Parse(Console.ReadLine());
            Console.Write("Enter Weight4 : ");
            float W4 = float.Parse(Console.ReadLine());
            Console.Write("Enter Weight5 : ");
            float W5 = float.Parse(Console.ReadLine());
            Console.Write("Enter Weight6 : ");
            float W6 = float.Parse(Console.ReadLine());

            //Variables declaration
            float H1 = 0, H2 = 0;
            float sigmoidH1 = 0, sigmoidH2 = 0;
            float output = 0, sigmoidofOutput = 0, error = 1;
            float gradientofOutput = 0, gradientH1 = 0, gradientH2 = 0;
            int n = 1;

            //Repeat forward propagation and backward propagation in loop tell the output error is reach 0
            while (error != 0)
            {
                //Forward Propagation :
                H1 = Sum_of_Weights(I1, W1, I2, W3); //Calculate head 1
                H2 = Sum_of_Weights(I1, W2, I2, W4); //Calculate head 2

                sigmoidH1 = Sigmoid(H1); //Calculate Sigmoid of head 1
                sigmoidH2 = Sigmoid(H2); //Calculate Sigmoid of head 2

                output = Output(sigmoidH1, W5, sigmoidH2, W6); //Calculate Output
                sigmoidofOutput = Sigmoid(output); //Calculate Sigmoid of output
                error = Output_Error(0, sigmoidofOutput); //Calculate output error

                //Backward Propagation :
                gradientofOutput = Gradient_of_Output(sigmoidofOutput, error); //Calculate gradient of output
                gradientH1 = Gradient_of_Head(sigmoidH1, W5, gradientofOutput); //Calculate gradient of head 1
                gradientH2 = Gradient_of_Head(sigmoidH2, W6, gradientofOutput); //Calculate gradient of head 2

                W1 = Weight_Adjustment(W1, n, gradientH1, sigmoidH1); //Calculate new weight 1
                W2 = Weight_Adjustment(W2, n, gradientH2, sigmoidH2); //Calculate new weight 2
                W3 = Weight_Adjustment(W3, n, gradientH1, sigmoidH1); //Calculate new weight 3
                W4 = Weight_Adjustment(W4, n, gradientH2, sigmoidH2); //Calculate new weight 4
                W5 = Weight_Adjustment(W5, n, gradientofOutput, sigmoidofOutput); //Calculate new weight 5
                W6 = Weight_Adjustment(W6, n, gradientofOutput, sigmoidofOutput); //Calculate new weight 6
                n++; //Calculate number of iteration
            }

            //Printing the Final Outputs of Neural Network
            Console.WriteLine("\n" + "Head1 = " + H1);
            Console.WriteLine("Head2 = " + H2 + "\n");
            Console.WriteLine("Sigmoid of Head1 = " + sigmoidH1);
            Console.WriteLine("Sigmoid of Head2 = " + sigmoidH2 + "\n");
            Console.WriteLine("Output = " + output);
            Console.WriteLine("Output Error = " + error + "\n");
            Console.WriteLine("Gradient of Output = " + gradientofOutput);
            Console.WriteLine("Gradient of Head1 = " + gradientH1);
            Console.WriteLine("Gradient of Head2 = " + gradientH2 + "\n");
            Console.WriteLine("New Weight1 = " + W1);
            Console.WriteLine("New Weight2 = " + W2);
            Console.WriteLine("New Weight3 = " + W3);
            Console.WriteLine("New Weight4 = " + W4);
            Console.WriteLine("New Weight5 = " + W5);
            Console.WriteLine("New Weight6 = " + W6);
        }
    }
}
