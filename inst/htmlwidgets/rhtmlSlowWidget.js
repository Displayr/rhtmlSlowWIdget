HTMLWidgets.widget({
  name: 'rhtmlSlowWidget',
  type: 'output',

  factory: function(el, width, height, stateChanged) {
    return {
      renderValue: function(x, state) {
        var remaining_s = x.time_to_display_s;
        var update_time_remaining = function () {
          el.innerText = remaining_s--;
          if (remaining_s >= 0)
            setTimeout(update_time_remaining, 1000);
        };
        update_time_remaining();
      },

      resize: function(width, height) {
      }
    };
  }
});