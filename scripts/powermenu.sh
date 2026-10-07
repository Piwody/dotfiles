#!/usr/bin/env bash
opciones="  Bloquear\n  Suspender\n  Cerrar sesión\n  Reiniciar\n  Apagar"
eleccion=$(echo -e "$opciones" | wofi --dmenu --prompt "Energía" --width 260 --height 260)
case "$eleccion" in
  *Bloquear)      hyprlock ;;
  *Suspender)     systemctl suspend ;;
  *"Cerrar sesión") hyprctl dispatch 'hl.dsp.exit()' ;;
  *Reiniciar)     systemctl reboot ;;
  *Apagar)        systemctl poweroff ;;
esac
