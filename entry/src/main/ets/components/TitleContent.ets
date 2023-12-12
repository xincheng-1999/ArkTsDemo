@Component
export struct TitleContent {
  @Prop title:string
  @Prop content: string
  build(){
    Column(){
      Text(){
        Span(this.title)
      }
      .width("100%")
      .padding({left: "32lpx"})
      .fontSize('64lpx')
      .padding({top:'40lpx', left:'32lpx'})
      .fontWeight(500)
      .fontColor($r("app.color.CT1"))

      Text(){
        Span(this.content)
      }
      .width("100%")
      .padding({left: "32lpx"})
      .fontSize('32lpx')
      .padding({ left:'32lpx'})
      .fontColor($r("app.color.CT3"))
    }

  }
}