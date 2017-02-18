# FLBezierPath
封装 UIBezierPath，使用链式调用
系统用法：

```
UIBezierPath *path = [UIBezierPath bezierPath];
[path moveToPoint:CGPointMake(0, 20)];
[path addLineToPoint:CGPointMake(30, 50)];
[path stroke];
```
使用链式调用：

  ```
UIBezierPath.fl_path.maker.moveTo(0,20).addLineTo(30,50).stroke();
  ```
  
  支持cocoaPod：输入：`pod search FLBezierPath` 查询最新版本
  
  详细的介绍请前往简书 [将链式调用的DSL进行到底](http://www.jianshu.com/p/5c4d725dcbb7)
