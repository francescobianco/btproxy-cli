.class Lcom/keephealth/android/views/wheel/NewWheelView2$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NewWheelView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/wheel/NewWheelView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 2

    .line 979
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 981
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z
    invoke-static {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$000(Lcom/keephealth/android/views/wheel/NewWheelView2;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 982
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView2;->scroller:Landroid/widget/Scroller;
    invoke-static {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$100(Lcom/keephealth/android/views/wheel/NewWheelView2;)Landroid/widget/Scroller;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 983
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # invokes: Lcom/keephealth/android/views/wheel/NewWheelView2;->clearMessages()V
    invoke-static {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$200(Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    return v0

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    .line 996
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I
    invoke-static {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$600(Lcom/keephealth/android/views/wheel/NewWheelView2;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # invokes: Lcom/keephealth/android/views/wheel/NewWheelView2;->getItemHeight()I
    invoke-static {p3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$700(Lcom/keephealth/android/views/wheel/NewWheelView2;)I

    move-result p3

    mul-int/2addr p2, p3

    iget-object p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I
    invoke-static {p3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$800(Lcom/keephealth/android/views/wheel/NewWheelView2;)I

    move-result p3

    add-int/2addr p2, p3

    # setter for: Lcom/keephealth/android/views/wheel/NewWheelView2;->lastScrollY:I
    invoke-static {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$502(Lcom/keephealth/android/views/wheel/NewWheelView2;I)I

    .line 997
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    iget-boolean p1, p1, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    if-eqz p1, :cond_21

    const p1, 0x7fffffff

    goto :goto_32

    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;
    invoke-static {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$900(Lcom/keephealth/android/views/wheel/NewWheelView2;)Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # invokes: Lcom/keephealth/android/views/wheel/NewWheelView2;->getItemHeight()I
    invoke-static {p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$700(Lcom/keephealth/android/views/wheel/NewWheelView2;)I

    move-result p2

    mul-int/2addr p1, p2

    :goto_32
    move v8, p1

    .line 998
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    iget-boolean p1, p1, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3d

    neg-int p1, v8

    move v7, p1

    goto :goto_3e

    :cond_3d
    move v7, p2

    .line 999
    :goto_3e
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView2;->scroller:Landroid/widget/Scroller;
    invoke-static {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$100(Lcom/keephealth/android/views/wheel/NewWheelView2;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # getter for: Lcom/keephealth/android/views/wheel/NewWheelView2;->lastScrollY:I
    invoke-static {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$500(Lcom/keephealth/android/views/wheel/NewWheelView2;)I

    move-result v2

    neg-float p1, p4

    float-to-int p1, p1

    div-int/lit8 v4, p1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1000
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # invokes: Lcom/keephealth/android/views/wheel/NewWheelView2;->setNextMessage(I)V
    invoke-static {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$1000(Lcom/keephealth/android/views/wheel/NewWheelView2;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 990
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    # invokes: Lcom/keephealth/android/views/wheel/NewWheelView2;->startScrolling()V
    invoke-static {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$300(Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    .line 991
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;->this$0:Lcom/keephealth/android/views/wheel/NewWheelView2;

    neg-float p2, p4

    float-to-int p2, p2

    # invokes: Lcom/keephealth/android/views/wheel/NewWheelView2;->doScroll(I)V
    invoke-static {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->access$400(Lcom/keephealth/android/views/wheel/NewWheelView2;I)V

    const/4 p1, 0x1

    return p1
.end method
