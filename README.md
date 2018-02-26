# Scroll Views

* Scrolling in maps
* A view where you can only see a portion of it because that view is too large.
* date picker
* facebook or instagram scrolling the large feed

When to use a scroll view?
* any time the bounds of the content are larger than the visible view. 

Any time you see scrolling, a scroll view was probably used directly or indirectly.

Views like table views use a scroll view for their scrolling functionality.

## Panning

We can pan, by adding a view to a scroll view and setting the scrollview's `contentSize`.

## Zooming

![Imgur](http://i.imgur.com/6HoxHTc.png)

* Set the `minimumZoomScale` and `maximumZoomScale`.
* conform to the `UIScrollViewDelegate`
* Use the `- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView` method to return the view that will be transformed when zooming happens.

## Paging

![Imgur](http://i.imgur.com/DgdVqB4.png)

Benefits of an array?

* Index in the array of image views could map to the order of the views in the scroll view
* **Dynamically** add. It means that if we setup our code correctly, to add more items to our scroll view, we simply add another item to the array. 

Notes for this are in the code comments

### Generics

```
NSArray <UIImage *> *images = @[];
```

This array _should_ only contain UIImages. 
In swift, this would be a **must**.

* You can access properties of the type (UIImage) directly from the array.

## ScrollViews and Auto Layout

* You can use auto layout within a scrollview, just constrain the contents to the scroll view. The contents will then define the scroll views `contentSize`.



## Exam
