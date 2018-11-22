<?php
/***
 * The footer section from template.
 */
?>
</main>
    <footer class="site__footer">
      <div class="lace clear"><a href="" class="site__logo">Barcoding</a>
        <nav class="nav nav-social">
          <ul>
            <li><a href="" target="_blank"><span class="bottle">
                    <svg class="symbol symbol-pinterest">
                      <use xlink:href="#pinterest"></use>
                    </svg></span><span class="visible-for-screen-readers">Pinterest</span></a></li>
            <li><a href="" target="_blank"><span class="bottle">
                    <svg class="symbol symbol-google">
                      <use xlink:href="#google"></use>
                    </svg></span><span class="visible-for-screen-readers">Google+</span></a></li>
            <li><a href="" target="_blank"><span class="bottle">
                    <svg class="symbol symbol-linkedin">
                      <use xlink:href="#linkedin"></use>
                    </svg></span><span class="visible-for-screen-readers">linkedin</span></a></li>
            <li><a href="" target="_blank"> <span class="bottle">
                    <svg class="symbol symbol-twitter">
                      <use xlink:href="#twitter"></use>
                    </svg></span><span class="visible-for-screen-readers">Twitter   </span></a></li>
            <li><a href="" target="_blank"><span class="bottle">
                    <svg class="symbol symbol-facebook">
                      <use xlink:href="#facebook"></use>
                    </svg></span><span class="visible-for-screen-readers">Facebook</span></a></li>
          </ul>
        </nav>
      </div>
      <div class="sole clear">
        <div class="tread">
            <?php
            wp_nav_menu(array(
                'theme_location' => 'footer-left',
                'container' => 'nav',
                'container_class' => 'nav nav-secondary-main',
            ));
            ?>
        </div>
        <div class="tread">
            <?php
            wp_nav_menu(array(
                'theme_location' => 'footer-right',
                'container' => 'nav',
                'container_class' => 'nav nav-bulleted nav-action',
            ));
            ?>
            <?php
            wp_nav_menu(array(
                'theme_location' => 'footer-right-legal',
                'container' => 'nav',
                'container_class' => 'nav nav-bulleted nav-legal',
            ));
            ?>
        </div>
      </div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/assets/js/build/main.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/assets/js/build/site.js"></script>

  <?php wp_footer(); ?>
  </body>
</html>