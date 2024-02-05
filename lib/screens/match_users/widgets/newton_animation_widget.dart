import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newton_particles/newton_particles.dart';
import 'package:senpai/services/custom_newton_particles/available_effect.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class NewtonAnimationWidget extends StatelessWidget {
  const NewtonAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: $constants.match.blur,
            sigmaY: $constants.match.blur,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: $constants.palette.black.withOpacity(0.4),
            ),
          ),
        ),
        Newton(
          activeEffects: [
            ExplodeEffect(
              particleConfiguration: ParticleConfiguration(
                shape: CircleShape(),
                size: const Size(5, 5),
                color: const SingleParticleColor(color: Colors.white),
                postEffectBuilder: (particle) => ExplodeEffect(
                  particleConfiguration: ParticleConfiguration(
                    shape: CircleShape(),
                    size: const Size(5, 5),
                    color: SingleParticleColor(
                      color: $constants.palette.pink,
                    ),
                  ),
                  effectConfiguration: AvailableEffect
                      .firework.defaultEffectConfiguration
                      .copyWith(
                    maxAngle: 180,
                    minAngle: -180,
                    particleCount: 10,
                    particlesPerEmit: 10,
                    distanceCurve: Curves.decelerate,
                    origin: particle.position,
                    emitDuration: 300,
                  ),
                ),
              ),
              effectConfiguration:
                  AvailableEffect.firework.defaultEffectConfiguration.copyWith(
                emitDuration: 300,
                maxAngle: 180,
                minAngle: -180,
                distanceCurve: Curves.decelerate,
                origin: Offset(
                  getSize(context).width / 2,
                  getSize(context).height / 2,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
