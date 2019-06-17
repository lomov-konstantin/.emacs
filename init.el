;; GNU Emacs configuration file

;; Show-paren-mode settings
(show-paren-mode t) ;; включить выделение выражений между {},[],()
(setq show-paren-style 'expression) ;; выделить цветом выражения между {},[],()

;; Inhibit startup/splash screen
(setq inhibit-splash-screen   t)
(setq ingibit-startup-message t) ;; экран приветствия можно вызвать комбинацией C-h C-a

;; Linum plugin
(require 'linum) ;; вызвать Linum
(line-number-mode   t) ;; показать номер строки в mode-line
(global-linum-mode  t) ;; показывать номера строк во всех буферах
(column-number-mode t) ;; показать номер столбца в mode-line
(setq linum-format " %d") ;; задаем формат нумерации строк

;; Display file size/time in mode-line
(setq display-time-24hr-format t) ;; 24-часовой временной формат в mode-line
(display-time-mode             t) ;; показывать часы в mode-line
(size-indication-mode          t) ;; размер файла в %-ах

;; Start window size
(when (window-system)
    (set-frame-size (selected-frame) 150 50))

(load-theme 'deeper-blue)
(setq frame-title-format "Emacs")
(setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера
(menu-bar-mode -1);; отключаем графическое меню
(tool-bar-mode -1);; отключаем tool-bar
(scroll-bar-mode -1);; отключаем полосу прокрутки
(set-default 'cursor-type 'hbar)
(blink-cursor-mode -1) ;; курсор не мигает
(column-number-mode)
(fset 'yes-or-no-p 'y-or-n-p);; Short messages
(windmove-default-keybindings);; Навигация по окнам клавишами Shift-<стрелка>
(ido-mode)

(provide 'init)
