s.boot;

SynthDef(\a0, {
    var env, osc;
    env = EnvGen.kr(Env.perc(0.01, sustain), doneAction: 2);
    osc = SinOsc.ar(freq) * env * amp;
    Out.ar(out, osc);
}).add;

TempoClock.tempo = (135 / 60) / 6;

(
~s1 = Pdef(\s1, Pbind(
    \instrument, Pseq([\a0], inf),
    \freq, Pseq([440, 220, 880, 440, 783.991, 82.4069,440, 440, 578.330, 329.628, 61.7354, 440, 523.251, 146.832, 21.8268,], inf), // NOTAS MUSICALES Hz
    \dur, 1/16,
    \rate, Pseq([1, 2, 4].pyramid, inf), // Velocidad de reproducción
    \sp, Pseq([0.1, 0.2, 0, Pn(0.1, 2)].mirror, inf),
    \amp, 0.8, // Amplitud
    \out, 0
));
);


~s1.play.quant();
~s1.stop;