import 'package:newton_particles/newton_particles.dart';

enum AvailableEffect {
  rain(
    "Rain",
    supportedParameters: [
      AnimationParameter.color,
      AnimationParameter.fadeout,
      AnimationParameter.scale,
    ],
  ),
  explode(
    "Explode",
    defaultEffectConfiguration: EffectConfiguration(
      minAngle: -180,
      maxAngle: 180,
      minDuration: 4000,
      maxDuration: 7000,
      minFadeOutThreshold: 0.6,
      maxFadeOutThreshold: 0.8,
      minBeginScale: 1,
      maxBeginScale: 1,
      minEndScale: 1,
      maxEndScale: 1,
    ),
    supportedParameters: [
      AnimationParameter.angle,
      AnimationParameter.color,
      AnimationParameter.distance,
      AnimationParameter.fadeout,
      AnimationParameter.scale
    ],
  ),
  firework(
    "Firework",
    defaultEffectConfiguration: EffectConfiguration(
      minAngle: -120,
      maxAngle: -60,
      minDuration: 1000,
      maxDuration: 2000,
      minFadeOutThreshold: 0.6,
      maxFadeOutThreshold: 0.8,
      minBeginScale: 1,
      maxBeginScale: 1,
      minEndScale: 1,
      maxEndScale: 1,
      trail: StraightTrail(
        trailWidth: 3,
        trailProgress: 0.3,
      ),
    ),
    supportedParameters: [
      AnimationParameter.angle,
      AnimationParameter.color,
      AnimationParameter.distance,
      AnimationParameter.fadeout,
      AnimationParameter.scale,
      AnimationParameter.trail,
    ],
  ),
  smoke("Smoke",
      defaultEffectConfiguration: EffectConfiguration(
        minAngle: -5,
        maxAngle: 5,
        minDuration: 4000,
        maxDuration: 7000,
        minFadeOutThreshold: 0.6,
        maxFadeOutThreshold: 0.8,
        minBeginScale: 1,
        maxBeginScale: 1,
        minEndScale: 1,
        maxEndScale: 1,
      ),
      supportedParameters: [
        AnimationParameter.color,
        AnimationParameter.angle,
        AnimationParameter.distance,
        AnimationParameter.fadeout,
        AnimationParameter.scale,
      ]),
  fountain(
    "Fountain",
    defaultEffectConfiguration: EffectConfiguration(
      particlesPerEmit: 10,
      minDuration: 4000,
      maxDuration: 4000,
      minDistance: 200,
      maxDistance: 200,
      minFadeOutThreshold: 0.6,
      maxFadeOutThreshold: 0.8,
      minBeginScale: 1,
      maxBeginScale: 1,
      minEndScale: 1,
      maxEndScale: 1,
    ),
    supportedParameters: [
      AnimationParameter.color,
      AnimationParameter.distance,
      AnimationParameter.fadeout,
      AnimationParameter.scale,
    ],
  ),
  pulse("Pulse",
      defaultEffectConfiguration: EffectConfiguration(
        particlesPerEmit: 15,
        emitDuration: 1000,
        minDuration: 4000,
        maxDuration: 4000,
        minDistance: 200,
        maxDistance: 200,
        minFadeOutThreshold: 0.8,
        maxFadeOutThreshold: 0.8,
        minBeginScale: 1,
        maxBeginScale: 1,
        minEndScale: 1,
        maxEndScale: 1,
      ),
      supportedParameters: [
        AnimationParameter.color,
        AnimationParameter.distance,
        AnimationParameter.fadeout,
        AnimationParameter.scale,
      ]);

  const AvailableEffect(
    this.label, {
    this.defaultEffectConfiguration = const EffectConfiguration(
      particlesPerEmit: 1,
      minDuration: 4000,
      maxDuration: 7000,
      minDistance: 100,
      maxDistance: 200,
      minFadeOutThreshold: 0.6,
      maxFadeOutThreshold: 0.8,
      minBeginScale: 1,
      maxBeginScale: 1,
      minEndScale: 1,
      maxEndScale: 1,
    ),
    this.supportedParameters = const [],
  });

  final String label;
  final EffectConfiguration defaultEffectConfiguration;
  final List<AnimationParameter> supportedParameters;

  bool supportParameter(AnimationParameter parameter) {
    return supportedParameters.contains(parameter);
  }

  static AvailableEffect of(String label) {
    return AvailableEffect.values.firstWhere((effect) => effect.label == label);
  }
}

enum AnimationParameter {
  angle,
  color,
  distance,
  fadeout,
  scale,
  trail,
}
