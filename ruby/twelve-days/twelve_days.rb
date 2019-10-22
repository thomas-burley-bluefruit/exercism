class TwelveDays
  VERSES = 
  {
    'first'    =>  'a Partridge in a Pear Tree.', 
    'second'   =>  'two Turtle Doves, and ',
    'third'    =>  'three French Hens, ',
    'fourth'   =>  'four Calling Birds, ',
    'fifth'    =>  'five Gold Rings, ',
    'sixth'    =>  'six Geese-a-Laying, ',
    'seventh'  =>  'seven Swans-a-Swimming, ',
    'eighth'   =>  'eight Maids-a-Milking, ',
    'ninth'    =>  'nine Ladies Dancing, ',
    'tenth'    =>  'ten Lords-a-Leaping, ',
    'eleventh' =>  'eleven Pipers Piping, ',
    'twelfth'  =>  'twelve Drummers Drumming, '
  }
  def self.song
    song = ''
    VERSES.each_with_index do|(verse, lyric), index| 
      song += "On the #{verse} day of Christmas my true love gave to me: " 
      VERSES.slice(*VERSES.keys[0..index]).reverse_each{|verse, lyric| song << lyric}
      if index < VERSES.size-1 then song << "\n\n" else song << "\n"  end      
    end
    song
  end
end