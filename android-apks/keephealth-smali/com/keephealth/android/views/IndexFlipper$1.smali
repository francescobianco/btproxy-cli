.class Lcom/keephealth/android/views/IndexFlipper$1;
.super Ljava/lang/Object;
.source "IndexFlipper.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/IndexFlipper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/IndexFlipper;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/IndexFlipper;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 48
    iget-object p1, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/views/IndexFlipper;->fling:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/views/IndexFlipper;->access$002(Lcom/keephealth/android/views/IndexFlipper;Z)Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 74
    iget-object p3, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    const/4 p4, 0x1

    # setter for: Lcom/keephealth/android/views/IndexFlipper;->fling:Z
    invoke-static {p3, p4}, Lcom/keephealth/android/views/IndexFlipper;->access$002(Lcom/keephealth/android/views/IndexFlipper;Z)Z

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_3e

    .line 76
    iget-object p1, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    # getter for: Lcom/keephealth/android/views/IndexFlipper;->rightInAnim:Landroid/view/animation/Animation;
    invoke-static {p1}, Lcom/keephealth/android/views/IndexFlipper;->access$100(Lcom/keephealth/android/views/IndexFlipper;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/IndexFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    # getter for: Lcom/keephealth/android/views/IndexFlipper;->leftOutAnim:Landroid/view/animation/Animation;
    invoke-static {p1}, Lcom/keephealth/android/views/IndexFlipper;->access$200(Lcom/keephealth/android/views/IndexFlipper;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/IndexFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    invoke-virtual {p1}, Lcom/keephealth/android/views/IndexFlipper;->getDisplayedChild()I

    move-result p1

    .line 79
    iget-object p2, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    invoke-virtual {p2}, Lcom/keephealth/android/views/IndexFlipper;->showNext()V

    .line 80
    iget-object p2, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    invoke-virtual {p2}, Lcom/keephealth/android/views/IndexFlipper;->getDisplayedChild()I

    move-result p2

    .line 81
    iget-object p3, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    # invokes: Lcom/keephealth/android/views/IndexFlipper;->triggerChanged(II)V
    invoke-static {p3, p1, p2}, Lcom/keephealth/android/views/IndexFlipper;->access$300(Lcom/keephealth/android/views/IndexFlipper;II)V

    return p4

    .line 83
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, -0x3d380000    # -100.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_76

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    # getter for: Lcom/keephealth/android/views/IndexFlipper;->leftInAnim:Landroid/view/animation/Animation;
    invoke-static {p1}, Lcom/keephealth/android/views/IndexFlipper;->access$400(Lcom/keephealth/android/views/IndexFlipper;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/IndexFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iget-object p1, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    # getter for: Lcom/keephealth/android/views/IndexFlipper;->rightOutAnim:Landroid/view/animation/Animation;
    invoke-static {p1}, Lcom/keephealth/android/views/IndexFlipper;->access$500(Lcom/keephealth/android/views/IndexFlipper;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/IndexFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 86
    iget-object p1, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    invoke-virtual {p1}, Lcom/keephealth/android/views/IndexFlipper;->getDisplayedChild()I

    move-result p1

    .line 87
    iget-object p2, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    invoke-virtual {p2}, Lcom/keephealth/android/views/IndexFlipper;->showPrevious()V

    .line 88
    iget-object p2, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    invoke-virtual {p2}, Lcom/keephealth/android/views/IndexFlipper;->getDisplayedChild()I

    move-result p2

    .line 89
    iget-object p3, p0, Lcom/keephealth/android/views/IndexFlipper$1;->this$0:Lcom/keephealth/android/views/IndexFlipper;

    # invokes: Lcom/keephealth/android/views/IndexFlipper;->triggerChanged(II)V
    invoke-static {p3, p1, p2}, Lcom/keephealth/android/views/IndexFlipper;->access$300(Lcom/keephealth/android/views/IndexFlipper;II)V

    return p4

    :cond_76
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
