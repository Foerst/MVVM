### MVC架构

![img](https://www.objc.io/images/issue-13/mvvm1-16d81619.png)

iOS中 Controller和View一般在一起，因此可以是这种形式：

![img](https://www.objc.io/images/issue-13/intermediate-5287a0c6.png)

ViewController中总是放置业务逻辑、呈现逻辑(presentation logic)等，显得很臃肿


### MVVM架构

由MVC演化而来，兼容MVC。呈现逻辑放在ViewModel中, 简化ViewController，使呈现逻辑更容易测试。

![img](https://www.objc.io/images/issue-13/mvvm-b27768df.png)


参考：

[MVVM](https://www.objc.io/issues/13-architecture/mvvm/)

[From MVC to MVVM in Swift](http://rasic.info/from-mvc-to-mvvm-in-swift/)




### 绑定

MVVM 的 ViewModel 和 MVP的 Presenter 相比，多了数据绑定机制。一旦 ViewModel 所对应的 Model 发生变化，ViewModel 的属性也会发生变化，而相对应的 View 也随即产生变化。绑定机制既有很明显的强大优点——自动连接 View 和 Model，也有很明显的缺点——更高的耦合度，更复杂的代码逻辑。


参考：

[Bindings, Generics, Swift and MVVM](http://rasic.info/bindings-generics-swift-and-mvvm/)

```bash
docker-compose exec backend /bin/bash
```

[Solving the iOS Binding Problem with Swift](http://rasic.info/solving-the-ios-binding-problem-with-swift/)