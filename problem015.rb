#!/usr/bin/env ruby

# → = 0, ↓ = 1とすると、
# ex) SIZE = 2
# 0011
# 0101
# 0110
# 1001
# 1010
# 1100
# の6通り
# 2 ^ (SIZE * 2)通りの2ビット数のうち
# ビットの0か1がSIZE個を超えるものを削る
# → それ以上右や下にはいけないため
# ex) 0000, 0001, 1110, 1111

#SIZE = 20
#
#@count = 0
#def process(x, y)
#  if x == 0 && y == 0
#    @count += 1
#  end
#  
#  process(x - 1, y) if x > 0
#  process(x, y - 1) if y > 0
#end
#
#process(SIZE, SIZE)
#
#print "answer = " + @count.to_s

SIZE = 20

count = 0
for a in 0..(SIZE * 2 - 1)
  for b in (a + 1)..(SIZE * 2 - 1)
    for c in (b + 1)..(SIZE * 2 - 1)
      for d in (c + 1)..(SIZE * 2 - 1)
        for e in (d + 1)..(SIZE * 2 - 1)
          for f in (e + 1)..(SIZE * 2 - 1)
            for g in (f + 1)..(SIZE * 2 - 1)
              for h in (g + 1)..(SIZE * 2 - 1)
                for i in (h + 1)..(SIZE * 2 - 1)
                  for j in (i + 1)..(SIZE * 2 - 1)
                    for k in (j + 1)..(SIZE * 2 - 1)
                      for l in (k + 1)..(SIZE * 2 - 1)
puts "a = #{a}, b = #{b}, c = #{c}, d = #{d}, e = #{e}, f = #{f}, g = #{g}, h = #{h}, i = #{i}, j = #{j}, k = #{k}, l = #{l}"
                        for m in (l + 1)..(SIZE * 2 - 1)
                          for n in (m + 1)..(SIZE * 2 - 1)
                            for o in (n + 1)..(SIZE * 2 - 1)
                              for p in (o + 1)..(SIZE * 2 - 1)
                                for q in (p + 1)..(SIZE * 2 - 1)
                                  for r in (q + 1)..(SIZE * 2 - 1)
                                    for s in (r + 1)..(SIZE * 2 - 1)
                                      for t in (s + 1)..(SIZE * 2 - 1)
                                        count += 1
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

print "answer = " + count.to_s
