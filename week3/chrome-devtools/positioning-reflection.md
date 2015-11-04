#How can you use Chrome's DevTools inspector to help you format or position elements?

The DevTools let you play with HTML and CSS and see the direct effect of your changes.  It's easy to click on the element you want to change, and add or take away from its styles.  Once you find what you like you can make more permanent changes using the source file.

#How can you resize elements on the DOM using CSS?

You can use width and height to resize them.  You can also change how they display (from block to inline, for example).

#What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?

1. Absolute means to put the element (say, one of our rectangles) in a specific place relative to something else.  So, if I place a rectangle in an absolute position with a left-margin of 100px, it will stay there even if another element is floated over it.

2. Fixed positioning will attach something to a part of the page (say the top or bottom), where it will stay even if you scroll through the page.  This is helpful for tables that may be more than one page long--having the header cells always visible makes it easier to read the table.

3. Static: Static elements are in the normal flow--this seems to be the kind of initial or default positioning.

4. Relative positioning appears to set the position of the element against its container or last non-positioned ancestor element.

Easiest and hardest to use are funny words at this point because it's all still kind of tricky to me.  I can't say one feels natural and another is a struggle--I'm still trying to figure them out.  The DevTools help.

#What are the differences between margin, border, and padding?

The padding is what exists between the elemend and it's border.  So, if I had "Dana Breen" inside a rectangle, the space between the words and the rectangle represents the padding.  The border is the rectangle itself, and I can make it thick, thin, dotted and dashed.  The margin is the space that lines the outside of the rectangle--if I make a margin, then no other elements can bump right up again the rectangle, they will be repelled by the margin.  It's like a forcefield!

#What was your impression of this challenge overall? (love, hate, and why?)

It was fun!  I like being able to see the changes we made right away, and it was interesting being able to tick the boxes and get a sense of what selectors did to each of the elements.  It felt a bit like a laboratory.

#Here are my images:

![3.4.1](imgs/3.4.1.jpg)
![3.4.2](imgs/3.4.2.jpg)
![3.4.3](imgs/3.4.3.jpg)
![3.4.4](imgs/3.4.4.jpg)
![3.4.5](imgs/3.4.5.jpg)
![3.4.6](imgs/3.4.6.jpg)
![3.4.7](imgs/3.4.7.jpg)
![3.4.8](imgs/3.4.8.jpg)
![3.4.9](imgs/3.4.9.jpg)