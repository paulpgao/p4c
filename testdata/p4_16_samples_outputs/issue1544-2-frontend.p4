control c(inout bit<32> x) {
    bit<32> tmp;
    bit<32> tmp_0;
    bit<32> tmp_1;
    bit<32> tmp_2;
    apply {
        {
            bit<32> a_0 = x;
            bit<32> b_0 = x + 32w1;
            bool hasReturned = false;
            bit<32> retval;
            bit<32> tmp_3;
            if (a_0 > b_0) {
                tmp_3 = b_0;
            } else {
                tmp_3 = a_0;
            }
            hasReturned = true;
            retval = tmp_3;
            tmp = retval;
        }
        tmp_0 = tmp;
        {
            bit<32> a_1 = x;
            bit<32> b_1 = x + 32w4294967295;
            bool hasReturned_1 = false;
            bit<32> retval_1;
            bit<32> tmp_9;
            if (a_1 > b_1) {
                tmp_9 = b_1;
            } else {
                tmp_9 = a_1;
            }
            hasReturned_1 = true;
            retval_1 = tmp_9;
            tmp_1 = retval_1;
        }
        tmp_2 = tmp_1;
        {
            bit<32> a_2 = tmp_0;
            bit<32> b_2 = tmp_2;
            bool hasReturned_2 = false;
            bit<32> retval_2;
            bit<32> tmp_10;
            if (a_2 > b_2) {
                tmp_10 = b_2;
            } else {
                tmp_10 = a_2;
            }
            hasReturned_2 = true;
            retval_2 = tmp_10;
            x = retval_2;
        }
    }
}

control ctr(inout bit<32> x);
package top(ctr _c);
top(c()) main;

