(function() {
  'use strict';

  describe('extend', function() {
    it('returns the first argument', function() {
      var to = {};
      var from = {};
      var extended = _.extend(to, from);

      expect(extended).to.equal(to);
    });

    it('should extend an object with the attributes of another', function() {
      var to = {};
      var from = { a: 'b' };
      var extended = _.extend(to, from);

      expect(extended.a).to.equal('b');
    });

    it('should override properties found on the destination', function() {
      var to = { a: 'x' };
      var from = { a: 'b' };
      var extended = _.extend(to, from);

      expect(extended.a).to.equal('b');
    });

    it('should not override properties not found in the source', function() {
      var to = { x: 'x' };
      var from = { a: 'b' };
      var extended = _.extend(to, from);

      expect(extended.x).to.equal('x');
    });

    it('should extend from multiple source objects', function() {
      var extended = _.extend({ x: 1 }, { a: 2 }, { b:3 });

      expect(extended).to.eql({ x: 1, a: 2, b: 3 });
    });

    it('in the case of a conflict, it should use the last property\'s values when extending from multiple source objects', function() {
      var extended = _.extend({ x: 'x' }, { a: 'a', x: 2 }, { a: 1 });

      expect(extended).to.eql({ x: 2, a: 1 });
    });
  });

  describe('map', function() {
    it('should apply a function to every value in an array', function() {
      var doubledNumbers = _.map([1, 2, 3], function(num) {
        return num * 2;
      });

      expect(doubledNumbers).to.eql([2, 4, 6]);
    });

    it('should produce a brand new array instead of modifying the input array', function() {
      var numbers = [1, 2, 3];
      var mappedNumbers = _.map(numbers, function(num) {
        return num;
      });

      expect(mappedNumbers).to.not.equal(numbers);
    });
  });

  describe('memoize', function() {
    var add, memoAdd;

    beforeEach(function() {
      add = function(a, b) {
        return a + b;
      };

      memoAdd = _.memoize(add);
    });

    it('should produce the same result as the non-memoized version', function() {
      expect(add(1, 2)).to.equal(3);
      expect(memoAdd(1, 2)).to.equal(3);
    });

    it('should give different results for different arguments', function() {
      expect(memoAdd(1, 2)).to.equal(3);
      expect(memoAdd(3, 4)).to.equal(7);
    });

    it('should not run the memoized function twice for any given set of arguments', function() {
      // Here, we wrap a dummy function in a spy. A spy is a wrapper function (much like _.memoize
      // or _.once) that keeps track of interesting information about the function it's spying on;
      // e.g. whether or not the function has been called.
      var spy = sinon.spy(function() { return 'Dummy output'; });
      var memoSpy = _.memoize(spy);

      memoSpy(10);
      expect(spy).to.have.been.calledOnce;
      memoSpy(10);
      expect(spy).to.have.been.calledOnce;
    });
  });

  describe('uniq', function() {
    it('should return all unique values contained in an unsorted array', function() {
      var numbers = [1, 2, 1, 3, 1, 4];

      expect(_.uniq(numbers)).to.eql([1, 2, 3, 4]);
    });

    it('should produce a brand new array instead of modifying the input array', function() {
      var numbers = [1, 2, 1, 3, 1, 4];
      var uniqueNumbers = _.uniq(numbers);

      expect(uniqueNumbers).to.not.equal(numbers);
    });
  });


}());
