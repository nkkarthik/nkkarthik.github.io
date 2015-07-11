
$(function () {

      var jumps = [
          { from: [2, 4], eat: [3, 4], to: [4, 4] }, 
          { from: [3, 2], eat: [3, 3], to: [3, 4] }, 
          { from: [1, 3], eat: [2, 3], to: [3, 3] }, 
          { from: [1, 5], eat: [1, 4], to: [1, 3] }, 
          { from: [3, 4], eat: [3, 3], to: [3, 2] }, 
          { from: [3, 1], eat: [3, 2], to: [3, 3] }, 
          { from: [3, 5], eat: [2, 5], to: [1, 5] }, 
          { from: [3, 7], eat: [3, 6], to: [3, 5] }, 
          { from: [4, 3], eat: [3, 3], to: [2, 3] }, 
          { from: [1, 3], eat: [2, 3], to: [3, 3] }, 
          { from: [4, 1], eat: [4, 2], to: [4, 3] }, 
          { from: [4, 3], eat: [3, 3], to: [2, 3] }, 
          { from: [4, 5], eat: [4, 4], to: [4, 3] }, 
          { from: [4, 7], eat: [4, 6], to: [4, 5] }, 
          { from: [4, 5], eat: [3, 5], to: [2, 5] }, 
          { from: [1, 5], eat: [2, 5], to: [3, 5] }, 
          { from: [5, 3], eat: [4, 3], to: [3, 3] }, 
          { from: [2, 3], eat: [3, 3], to: [4, 3] }, 
          { from: [5, 1], eat: [5, 2], to: [5, 3] }, 
          { from: [5, 4], eat: [5, 3], to: [5, 2] }, 
          { from: [6, 5], eat: [5, 5], to: [4, 5] }, 
          { from: [5, 7], eat: [5, 6], to: [5, 5] }, 
          { from: [7, 3], eat: [6, 3], to: [5, 3] }, 
          { from: [4, 3], eat: [5, 3], to: [6, 3] }, 
          { from: [7, 5], eat: [7, 4], to: [7, 3] }, 
          { from: [7, 3], eat: [6, 3], to: [5, 3] }, 
          { from: [5, 2], eat: [5, 3], to: [5, 4] }, 
          { from: [5, 4], eat: [5, 5], to: [5, 6] }, 
          { from: [3, 5], eat: [4, 5], to: [5, 5] }, 
          { from: [5, 6], eat: [5, 5], to: [5, 4] }, 
          { from: [6, 4], eat: [5, 4], to: [4, 4] }
      ];
      
      function pos_to_id(p) { 
          return '#marble-' + p[0] + '-' + p[1]; 
      }
      
      function hide(pos) { $(pos_to_id(pos)).fadeOut(); }
      
      function show(pos) { $(pos_to_id(pos)).fadeIn(); }
      
      $.each(jumps, function(i, jump) {
                 setTimeout(function() {
                                hide(jump.from); 
                                show(jump.to); 
                                hide(jump.eat);
                            }, 
                            1000 * (i+2));
             });

  });
