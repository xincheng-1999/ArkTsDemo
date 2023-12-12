import router from '@ohos.router'
@Component
export struct  NavigationBar {
  @Prop title:string

  @BuilderParam child: () => {}
  build(){
    Row(){
      Row(){
        Image($r("app.media.leftReturn")).width("36lpx").margin({left:"32lpx"})
      }.width('100lpx')
      .onClick(() => {
        router.back()
      })

      Text(){
        Span(this.title).fontColor($r("app.color.CT1")).fontSize("36lpx").fontWeight(500)
      }

      Row(){
        this.child()
      }.margin({right: '32lpx'}).width("100lpx").height('100%').justifyContent(FlexAlign.End)

    }
    .width("100%")
    .height("88lpx")
    .backgroundColor("#ffffff")
    .justifyContent(FlexAlign.SpaceBetween)
  }
}