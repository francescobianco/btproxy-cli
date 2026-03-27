.class Lcom/keephealth/android/views/SwipeDragLayout$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SwipeDragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/SwipeDragLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/SwipeDragLayout;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/SwipeDragLayout;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clampViewPositionHorizontal "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DragLayout"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p3, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p3}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingLeft()I

    move-result p3

    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;
    invoke-static {v0}, Lcom/keephealth/android/views/SwipeDragLayout;->access$800(Lcom/keephealth/android/views/SwipeDragLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/SwipeDragLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    .line 142
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;
    invoke-static {v0}, Lcom/keephealth/android/views/SwipeDragLayout;->access$000(Lcom/keephealth/android/views/SwipeDragLayout;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_13

    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$800(Lcom/keephealth/android/views/SwipeDragLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .line 153
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$800(Lcom/keephealth/android/views/SwipeDragLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 154
    iget-object p3, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p3}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p2, p4

    int-to-float p2, p2

    neg-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    # setter for: Lcom/keephealth/android/views/SwipeDragLayout;->offset:F
    invoke-static {p3, p2}, Lcom/keephealth/android/views/SwipeDragLayout;->access$102(Lcom/keephealth/android/views/SwipeDragLayout;F)F

    .line 156
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->offset:F
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$100(Lcom/keephealth/android/views/SwipeDragLayout;)F

    move-result p2

    # invokes: Lcom/keephealth/android/views/SwipeDragLayout;->dispatchSwipeEvent(F)V
    invoke-static {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout;->access$900(Lcom/keephealth/android/views/SwipeDragLayout;F)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 6

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xvel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " yvel:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "releasedChild"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;
    invoke-static {p2}, Lcom/keephealth/android/views/SwipeDragLayout;->access$000(Lcom/keephealth/android/views/SwipeDragLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_193

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->isOpen()Z

    move-result p1

    const-string p2, ""

    const-string p3, "Released and isOpen"

    if-eqz p1, :cond_c6

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->offset:F
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$100(Lcom/keephealth/android/views/SwipeDragLayout;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_6a

    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->offset:F
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$100(Lcom/keephealth/android/views/SwipeDragLayout;)F

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->needOffset:F
    invoke-static {v1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$200(Lcom/keephealth/android/views/SwipeDragLayout;)F

    move-result v1

    sub-float v1, v0, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6a

    .line 79
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->open()V

    .line 80
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    if-eqz p1, :cond_18e

    .line 81
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onCancel(Lcom/keephealth/android/views/SwipeDragLayout;)V

    goto/16 :goto_18e

    .line 83
    :cond_6a
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->offset:F
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$100(Lcom/keephealth/android/views/SwipeDragLayout;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_96

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->clickToClose:Z
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$400(Lcom/keephealth/android/views/SwipeDragLayout;)Z

    move-result p1

    if-eqz p1, :cond_18e

    .line 85
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->close()V

    .line 86
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    if-eqz p1, :cond_18e

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onClosed(Lcom/keephealth/android/views/SwipeDragLayout;)V

    goto/16 :goto_18e

    .line 93
    :cond_96
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->close()V

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->isOpen:Z
    invoke-static {p2}, Lcom/keephealth/android/views/SwipeDragLayout;->access$500(Lcom/keephealth/android/views/SwipeDragLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    if-eqz p1, :cond_18e

    .line 96
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onClosed(Lcom/keephealth/android/views/SwipeDragLayout;)V

    goto/16 :goto_18e

    .line 100
    :cond_c6
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->offset:F
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$100(Lcom/keephealth/android/views/SwipeDragLayout;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_fb

    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->offset:F
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$100(Lcom/keephealth/android/views/SwipeDragLayout;)F

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->needOffset:F
    invoke-static {v1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$200(Lcom/keephealth/android/views/SwipeDragLayout;)F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_fb

    .line 101
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->close()V

    .line 102
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    if-eqz p1, :cond_18e

    .line 103
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onCancel(Lcom/keephealth/android/views/SwipeDragLayout;)V

    goto/16 :goto_18e

    .line 105
    :cond_fb
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->offset:F
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$100(Lcom/keephealth/android/views/SwipeDragLayout;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_14d

    .line 106
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->clickToOpen:Z
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$600(Lcom/keephealth/android/views/SwipeDragLayout;)Z

    move-result p1

    if-eqz p1, :cond_139

    .line 107
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->open()V

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    if-eqz p1, :cond_125

    .line 109
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onOpened(Lcom/keephealth/android/views/SwipeDragLayout;)V

    .line 111
    :cond_125
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mISwipeLayout:Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$700(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;

    move-result-object p1

    if-eqz p1, :cond_18e

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mISwipeLayout:Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$700(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;->onMenuIsOpen(Landroid/view/View;)V

    goto :goto_18e

    .line 116
    :cond_139
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    if-eqz p1, :cond_18e

    .line 117
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onClick(Lcom/keephealth/android/views/SwipeDragLayout;)V

    goto :goto_18e

    .line 121
    :cond_14d
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->open()V

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->isOpen:Z
    invoke-static {p2}, Lcom/keephealth/android/views/SwipeDragLayout;->access$500(Lcom/keephealth/android/views/SwipeDragLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    if-eqz p1, :cond_17b

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onOpened(Lcom/keephealth/android/views/SwipeDragLayout;)V

    .line 126
    :cond_17b
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mISwipeLayout:Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$700(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;

    move-result-object p1

    if-eqz p1, :cond_18e

    .line 127
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->mISwipeLayout:Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;
    invoke-static {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->access$700(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;->onMenuIsOpen(Landroid/view/View;)V

    .line 132
    :cond_18e
    :goto_18e
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SwipeDragLayout;->invalidate()V

    :cond_193
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    .line 69
    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout$1;->this$0:Lcom/keephealth/android/views/SwipeDragLayout;

    # getter for: Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;
    invoke-static {p2}, Lcom/keephealth/android/views/SwipeDragLayout;->access$000(Lcom/keephealth/android/views/SwipeDragLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
