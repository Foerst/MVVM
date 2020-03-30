### MVC架构

传统的MVC架构是这样的：

![img](https://www.objc.io/images/issue-13/mvvm1-16d81619.png)

iOS中 Controller和View一般在一起，因此是这种形式：

![img](https://www.objc.io/images/issue-13/intermediate-5287a0c6.png)

ViewController中总是放置业务逻辑、呈现逻辑(presentation logic)等，显得很臃肿。另外，ViewController和View的生命周期耦合在一起，不便于单元测试。


### MVVM架构

由MVC演化而来，兼容MVC。呈现逻辑(视图显示逻辑、验证逻辑、网络请求等)放在ViewModel中, 简化ViewController，使呈现逻辑更容易测试。

![img](https://www.objc.io/images/issue-13/mvvm-b27768df.png)


参考：

[MVVM](https://www.objc.io/issues/13-architecture/mvvm/)

中文版 [https://objccn.io/issue-13-1/](https://objccn.io/issue-13-1/)

[From MVC to MVVM in Swift](http://rasic.info/from-mvc-to-mvvm-in-swift/)




### 绑定

MVVM 的 ViewModel 和 MVP的 Presenter 相比，多了数据绑定机制。MVVM 在使用当中，通常还会利用双向绑定技术，使得 Model 变化时，ViewModel 会自动更新，而 ViewModel 变化时，View 也会自动变化。所以，MVVM 模式有些时候又被称作：model-view-binder 模式。绑定机制既有很明显的强大优点——自动连接 View 和 Model，也有很明显的缺点——更高的耦合度，更复杂的代码逻辑。


参考：

[Bindings, Generics, Swift and MVVM](http://rasic.info/bindings-generics-swift-and-mvvm/)

```bash
docker-compose exec backend /bin/bash
```

[Solving the iOS Binding Problem with Swift](http://rasic.info/solving-the-ios-binding-problem-with-swift/)


2020/3/19新发现内容

[MVP](https://blog.coding.net/blog/ios-architecture-patterns)

[原文](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52#.hij705e7r)

[*PPT*](http://slides.com/borlov/arch/fullscreen#/)