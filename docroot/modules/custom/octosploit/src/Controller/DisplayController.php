<?php

namespace Drupal\octosploit\Controller;


class DisplayController {

  /**
   * Constructs a display output without TWIG autoescaping.
   *
   * Named argument are not auto-escaped.
   */
  public function arg($input = NULL) {
    return array(
      '#markup' => '<p>'. $input .'</p>',
    );
  }

  /**
   * Constructs a display output without TWIG autoescaping.
   *
   * Normally a GET parameter would be auto-escaped, but
   * running it through the t function incorrectly will
   * undo that.
   */
  public function display() {
    $input = \Drupal::request()->query->get('input');
    $input = $input ? $input : 'no input';
    return array(
      '#markup' => t($input),
    );
  }
}