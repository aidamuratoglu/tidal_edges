##| Command R => Play
##| Command S => Stop
##| Shift Command S => Save

# define base chords
emin = chord(:E, :minor)
gmaj = chord(:G, :major)
bmin = chord(:B, :minor)
dmin = chord(:D, :minor)

tempo = 60
use_synth :dark_ambience

live_loop :yann_remix do
  use_bpm tempo
  play emin, attack: 0.3, sustain: 0.5, release: 1.5
  sleep(3)
  play gmaj, attack: 0.3, sustain: 0.5, release: 1.5
  sleep(3)
  play bmin, attack: 0.3, sustain: 0.5, release: 1.5
  sleep(3)
  play dmin, attack: 0.3, sustain: 0.5, release: 2.5
  sleep(3)
  tempo -= 1
  
  
  with_fx :reverb,room: 1 do
    use_bpm 55
    use_synth :growl
    
    4.times do
      play emin, attack: 0.3, decay: 0.2, sustain: 0.5, release: 1.5
      sleep(0.5)
      play gmaj, attack: 0.3, decay: 0.2, sustain: 0.5, release: 1.5
      sleep(0.5)
      play bmin, attack: 0.3, decay: 0.2, sustain: 0.5, release: 1.5
      sleep(0.5)
      play dmin, attack: 0.3, decay: 0.2, sustain: 0.5, release: 1.5
      sleep(1.5)
    end
    
    use_synth :piano
    
    4.times do
      play emin, attack: 0.3, sustain: 0.5, release: 0.5, amp: 2
      sleep(0.5)
      play gmaj, attack: 0.3, sustain: 0.5, release: 0.5, amp: 2
      sleep(0.5)
      play bmin, attack: 0.3, sustain: 0.5, release: 0.5, amp: 2
      sleep(0.5)
      play dmin, attack: 0.3, sustain: 0.5, release: 0.5, amp: 2
      sleep(1.5)
    end
    
    4.times do
      sample :ambi_glass_hum, rpitch: 5
      play emin, attack: 0.3, sustain: 0.5, release: 0.5, amp: 2
      sleep(0.5)
      play gmaj, attack: 0.3, sustain: 0.5, release: 0.5, amp: 2
      sleep(0.5)
      play bmin, attack: 0.3, sustain: 0.5, release: 0.5, amp: 2
      sleep(0.5)
      play dmin, attack: 0.3, sustain: 0.5, release: 0.5, amp: 2
      sleep(1.5)
    end
    
    sleep(1.5)
    
    use_synth :subpulse
    sample :ambi_lunar_land
    4.times do
      play dmin, attack: 0.3, sustain: 0.5, release: 0.5, amp: 0.6
      sleep(0.5)
      play gmaj, attack: 0.3, sustain: 0.5, release: 0.5, amp: 0.6
      sleep(0.5)
      play bmin, attack: 0.3, sustain: 0.5, release: 0.5, amp: 0.6
      sleep(0.5)
      play dmin, attack: 0.3, sustain: 0.5, release: 2.5, amp: 0.6
      sleep(1.5)
    end
    
  end
  
  play invert_chord(emin, 1)
  sleep(1.5)
  play invert_chord(gmaj, 1)
  sleep(1.5)
  play invert_chord(bmin, 1)
  sleep(1.5)
  play invert_chord(dmin, 1)
  
  tempo = 55
  
  5.times do
    sample :ambi_choir, rate: 0.25, rpitch: 5
    sleep(3)
    sample :ambi_choir, rate: 0.25, rpitch: 7
    sleep(3)
    sample :ambi_choir, rate: 0.25, rpitch: 9
    sleep(3)
    sample :ambi_choir, rate: 0.25, rpitch: -1
  end
  
  with_fx :reverb,room: 1 do
    use_synth :piano
    use_bpm 55
    
    2.times do
      sample :ambi_glass_hum, rpitch: 5
      play emin, attack: 0.3, sustain: 0.5, amp: 2
      sleep(0.5)
      play gmaj, attack: 0.3, sustain: 0.5, amp: 2
      sleep(0.5)
      play bmin, attack: 0.3, sustain: 0.5, amp: 2
      sleep(0.5)
      play dmin, attack: 0.3, sustain: 0.5, amp: 2
      sleep(1.5)
    end
    
    sample :ambi_glass_hum, rpitch: 5
    play emin, attack: 0.3, sustain: 0.5, amp: 2
    sleep(0.5)
    play invert_chord(gmaj, 1), attack: 0.3, sustain: 0.5, amp: 2
    sleep(0.5)
    play invert_chord(bmin, 1), attack: 0.3, sustain: 0.5, amp: 4
    sleep(0.5)
    play dmin, attack: 0.3, sustain: 0.5, amp: 2
    sleep(1.5)
    
    2.times do
      sample :ambi_glass_hum, rpitch: 5
      play emin, attack: 0.3, sustain: 0.5, amp: 2
      sleep(0.5)
      play gmaj, attack: 0.3, sustain: 0.5, amp: 2
      sleep(0.5)
      play bmin, attack: 0.3, sustain: 0.5, amp: 2
      sleep(0.5)
      play dmin, attack: 0.3, sustain: 0.5, amp: 2
      sleep(1.5)
    end
  end
end










