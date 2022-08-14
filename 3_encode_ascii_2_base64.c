// encode ASCII to base64

#include <stdio.h>
#include <stdlib.h>
#define SIZE 1000

// take input
char* base64Encoder(char input_str[], int len_str)
{
    // character set for b64
    char char_set[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    // resulting string
    char *res_str = (char *) malloc(SIZE * sizeof(char));

    int index, no_of_bits = 0, padding = 0, val = 0, count = 0, temp;
    int i, j, k = 0;

    // loop to take 3 characters from input_str and store in val

    for (i = 0; i < len_str; i += 3)
    {
        val = 0, count = 0, no_of_bits = 0;

        for (j = i; j < len_str && j <= i + 2; j++)
        {
            val = val << 8;
            val = val | input_str[j];
            count++;
        }

        no_of_bits = count * 8;
        padding = no_of_bits % 3;

        // extract all bits from val (6 at a time)
        while (no_of_bits != 0)
        {
            if (no_of_bits >= 6)
            {
                temp = no_of_bits - 6;

                index = (val >> temp) & 63;
                no_of_bits -= 6;
            }
            else
            {
                temp = 6 - no_of_bits;

                // append zeros to right if bits are less than 6
                index = (val << temp) & 63;
                no_of_bits = 0;
            }
            res_str[k++] = char_set[index];
        }
    }
    // padding
    for (i = 1; i <= padding; i++)
    {
        res_str[k++] = '=';
    }

    res_str[k] = '\0';

    return res_str;

}

int main()
{
    char input_str[] = "H3ll0 Purpl3 W0rld";
    int len_str;

    // calculate length of string
    len_str = sizeof(input_str) / sizeof(input_str[0]);

    // exclude '\0' character
    len_str -= 1;

    printf("Input string is: %s\n", input_str);
    printf("Base64 encoded: %s\n", base64Encoder(input_str, len_str));
    return 0;
}

