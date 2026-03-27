.class Lcom/keephealth/android/views/wheel/NewWheelView$2;
.super Landroid/os/Handler;
.source "NewWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/wheel/NewWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/wheel/NewWheelView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 2

    .line 1009
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1011
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$100(Lcom/keephealth/android/views/wheel/NewWheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1012
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$100(Lcom/keephealth/android/views/wheel/NewWheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1013
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView;->lastScrollY:I
    invoke-static {v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$500(Lcom/keephealth/android/views/wheel/NewWheelView;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1014
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # setter for: Lcom/keephealth/android/views/wheel/NewWheelView;->lastScrollY:I
    invoke-static {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$502(Lcom/keephealth/android/views/wheel/NewWheelView;I)I

    if-eqz v1, :cond_26

    .line 1016
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # invokes: Lcom/keephealth/android/views/wheel/NewWheelView;->doScroll(I)V
    invoke-static {v2, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$400(Lcom/keephealth/android/views/wheel/NewWheelView;I)V

    .line 1021
    :cond_26
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$100(Lcom/keephealth/android/views/wheel/NewWheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4a

    .line 1022
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$100(Lcom/keephealth/android/views/wheel/NewWheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 1023
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$100(Lcom/keephealth/android/views/wheel/NewWheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1025
    :cond_4a
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$100(Lcom/keephealth/android/views/wheel/NewWheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_62

    .line 1026
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView;->animationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$1100(Lcom/keephealth/android/views/wheel/NewWheelView;)Landroid/os/Handler;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_71

    .line 1027
    :cond_62
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_6c

    .line 1028
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    # invokes: Lcom/keephealth/android/views/wheel/NewWheelView;->justify()V
    invoke-static {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->access$1200(Lcom/keephealth/android/views/wheel/NewWheelView;)V

    goto :goto_71

    .line 1030
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView$2;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->finishScrolling()V

    :goto_71
    return-void
.end method
