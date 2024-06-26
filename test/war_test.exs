defmodule WarTest do
  use ExUnit.Case
  doctest War

  test "deal_1" do
    t1 = [1,1,1,1,13,13,13,13,11,11,11,11,12,12,12,12,10,10,10,10,9,9,9,9,7,7,7,7,8,8,8,8,6,6,6,6,5,5,5,5,4,4,4,4,3,3,3,3,2,2,2,2]
    r1 = [1,1,1,1,13,13,13,13,12,12,12,12,11,11,11,11,10,10,10,10,9,9,9,9,8,8,8,8,7,7,7,7,6,6,6,6,5,5,5,5,4,4,4,4,3,3,3,3,2,2,2,2]
    assert War.deal(t1) == r1
  end

  test "deal_2" do
    t2 = [1,13,1,13,1,13,1,13,12,11,12,11,12,11,12,11,10,9,10,9,10,9,10,9,8,7,8,7,8,7,8,7,6,5,6,5,6,5,6,5,4,3,4,3,4,3,4,3,2,2,2,2]
    r2 = [4,3,2,2,2,2,4,3,4,3,4,3,6,5,6,5,6,5,6,5,8,7,8,7,8,7,8,7,10,9,10,9,10,9,10,9,12,11,12,11,12,11,12,11,1,13,1,13,1,13,1,13]
    assert War.deal(t2) == r2
  end

  test "deal_3" do
    t3 = [13,1,13,1,13,1,13,1,11,12,11,12,11,12,11,12,9,10,9,10,9,10,9,10,7,8,7,8,7,8,7,8,5,6,5,6,5,6,5,6,3,4,3,4,3,4,3,4,2,2,2,2]
    r3 = [4,3,2,2,2,2,4,3,4,3,4,3,6,5,6,5,6,5,6,5,8,7,8,7,8,7,8,7,10,9,10,9,10,9,10,9,12,11,12,11,12,11,12,11,1,13,1,13,1,13,1,13]
    assert War.deal(t3) == r3
  end

  test "deal_4" do
    t4 = [10,11,12,13,1,2,3,4,5,6,7,8,9,10,11,12,13,1,2,3,4,5,6,7,8,9,10,11,12,13,1,2,3,4,5,6,7,8,9,10,11,12,13,1,2,3,4,5,6,7,8,9]
    r4 = [1,1,13,12,9,5,11,4,9,3,8,7,7,2,13,10,12,5,10,4,9,6,8,3,1,1,13,12,7,5,11,4,9,3,8,6,7,2,13,10,12,5,11,11,10,8,6,4,6,3,2,2]
    assert War.deal(t4) == r4
  end

  test "deal_5" do
    t5 = [1,2,3,4,5,6,7,8,9,10,11,12,13,1,2,3,4,5,6,7,8,9,10,11,12,13,1,2,3,4,5,6,7,8,9,10,11,12,13,1,2,3,4,5,6,7,8,9,10,11,12,13]
    r5 = [1,10,13,8,11,9,8,7,11,8,13,7,13,6,12,6,9,5,8,5,7,4,7,4,11,6,12,10,6,3,2,2,12,5,9,3,10,4,9,2,10,3,5,2,1,1,1,13,12,11,4,3]
    assert War.deal(t5) == r5
  end

  test "deal_6" do
    t6 = [9,8,2,3,9,8,3,13,5,8,4,1,6,4,2,10,12,13,7,1,3,4,7,7,2,7,10,1,13,6,12,9,11,5,5,4,11,12,11,3,9,1,10,10,5,6,6,12,2,8,11,13]
    r6 = [9,3,8,6,11,7,8,5,13,6,10,3,12,11,10,9,9,7,1,11,11,10,13,4,9,2,1,10,4,4,2,2,13,4,13,5,8,3,1,8,7,6,1,12,5,5,3,2,12,7,12,6]
    assert War.deal(t6) == r6
  end

  test "deal_7" do
    t7 = [12, 7, 13, 7, 11, 3, 12, 8, 10, 4, 1, 12, 9, 3, 1, 6, 1, 12, 9, 2, 9, 2, 8, 13, 7, 3, 4, 13, 3, 9, 10, 4, 6, 5, 6, 5, 11, 6, 10, 4, 1, 11, 8, 2, 11, 13, 5, 2, 10, 7, 8, 5]
    r7 = [9, 4, 13, 10, 5, 4, 12, 4, 9, 2, 1, 12, 7, 6, 6, 3, 6, 5, 4, 2, 1, 13, 10, 7, 5, 3, 13, 11, 11, 10, 9, 3, 12, 7, 8, 2, 1, 8, 10, 8, 9, 5, 3, 2, 13, 12, 11, 7, 1, 11, 8, 6]
    assert War.deal(t7) == r7
  end

  test "deal_8" do
    t8 = [9, 4, 1, 5, 11, 7, 2, 7, 5, 10, 5, 2, 10, 8, 13, 10, 9, 6, 1, 6, 8, 6, 12, 3, 1, 11, 12, 5, 1, 3, 9, 3, 4, 2, 12, 4, 8, 2, 10, 7, 13, 13, 12, 11, 11, 9, 8, 4, 13, 3, 7, 6]
    r8 = [13, 13, 10, 8, 7, 2, 12, 4, 4, 2, 9, 3, 1, 3, 12, 5, 1, 11, 12, 3, 8, 6, 1, 6, 9, 6, 13, 10, 10, 8, 5, 2, 11, 7, 1, 5, 9, 4, 6, 5, 13, 7, 3, 2, 11, 10, 9, 8, 12, 7, 11, 4]
    assert War.deal(t8) == r8
  end

  test "deal_9" do
    t9 = [13, 3, 11, 7, 12, 7, 12, 8, 4, 1, 10, 12, 9, 3, 1, 9, 1, 12, 6, 2, 9, 2, 8, 3, 7, 13, 4, 13, 10, 9, 3, 4, 6, 5, 6, 5, 11, 6, 10, 4, 11, 1, 8, 2, 11, 13, 5, 10, 2, 7, 8, 5]
    r9 = [8, 5, 12, 5, 5, 3, 10, 9, 11, 11, 10, 10, 7, 7, 7, 6, 4, 4, 6, 2, 1, 8, 13, 2, 11, 5, 3, 2, 1, 1, 12, 12, 9, 4, 3, 2, 13, 10, 11, 6, 1, 9, 8, 4, 13, 9, 12, 6, 13, 8, 7, 3]
    assert War.deal(t9) == r9
  end

  test "deal_10" do
    t10 = [13, 10, 13, 4, 2, 5, 12, 9, 3, 2, 1, 8, 8, 12, 6, 7, 8, 7, 4, 12, 7, 11, 5, 6, 5, 3, 4, 11, 10, 3, 1, 12, 1, 7, 13, 11, 1, 10, 9, 3, 6, 13, 11, 9, 13, 4, 9, 8, 6, 5, 2, 2]
    r10 = [9,4,9,7,1,12,10,8,13,5,11,2,1,13,1,11,12,6,10,6,3,2,8,7,5,5,3,2,7,4,1,12,12,9,9,7,13,11,13,6,10,3,8,3,6,2,13,11,8,5,4,4]
    assert War.deal(t10) == r10
  end

end
