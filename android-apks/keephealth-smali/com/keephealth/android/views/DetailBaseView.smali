.class public Lcom/keephealth/android/views/DetailBaseView;
.super Landroid/view/View;
.source "DetailBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/DetailBaseView$IMoveListener;
    }
.end annotation


# static fields
.field private static TOUCH_SLOP:I


# instance fields
.field private isHandlerTouch:Z

.field private moveListener:Lcom/keephealth/android/views/DetailBaseView$IMoveListener;

.field protected touchEnable:Z

.field touchX1:F

.field private vTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/keephealth/android/views/DetailBaseView;->touchX1:F

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/keephealth/android/views/DetailBaseView;->touchEnable:Z

    .line 35
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailBaseView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/keephealth/android/views/DetailBaseView;->touchX1:F

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/keephealth/android/views/DetailBaseView;->touchEnable:Z

    .line 40
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailBaseView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/keephealth/android/views/DetailBaseView;->touchX1:F

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/keephealth/android/views/DetailBaseView;->touchEnable:Z

    .line 45
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailBaseView;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const/high16 v0, 0x41000000    # 8.0f

    .line 48
    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    sput v0, Lcom/keephealth/android/views/DetailBaseView;->TOUCH_SLOP:I

    return-void
.end method


# virtual methods
.method public getMoveListener()Lcom/keephealth/android/views/DetailBaseView$IMoveListener;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/views/DetailBaseView;->moveListener:Lcom/keephealth/android/views/DetailBaseView$IMoveListener;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 55
    iget-boolean v0, p0, Lcom/keephealth/android/views/DetailBaseView;->touchEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_85

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-eqz v0, :cond_5f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_12

    goto :goto_81

    .line 71
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 72
    iget-object v4, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 77
    iget-boolean v2, p0, Lcom/keephealth/android/views/DetailBaseView;->isHandlerTouch:Z

    if-nez v2, :cond_2c

    return v1

    :cond_2c
    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_39

    .line 93
    iget-object v2, p0, Lcom/keephealth/android/views/DetailBaseView;->moveListener:Lcom/keephealth/android/views/DetailBaseView$IMoveListener;

    if-eqz v2, :cond_39

    .line 94
    invoke-interface {v2}, Lcom/keephealth/android/views/DetailBaseView$IMoveListener;->getPre()V

    :cond_39
    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_46

    .line 98
    iget-object p1, p0, Lcom/keephealth/android/views/DetailBaseView;->moveListener:Lcom/keephealth/android/views/DetailBaseView$IMoveListener;

    if-eqz p1, :cond_46

    .line 99
    invoke-interface {p1}, Lcom/keephealth/android/views/DetailBaseView$IMoveListener;->getNext()V

    .line 102
    :cond_46
    iput-boolean v1, p0, Lcom/keephealth/android/views/DetailBaseView;->isHandlerTouch:Z

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "touchX2-touchX1="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/DetailBaseView;->touchX1:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    goto :goto_81

    .line 58
    :cond_5f
    iput-boolean v3, p0, Lcom/keephealth/android/views/DetailBaseView;->isHandlerTouch:Z

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 60
    iput v0, p0, Lcom/keephealth/android/views/DetailBaseView;->touchX1:F

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_74

    .line 63
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    goto :goto_77

    .line 65
    :cond_74
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 67
    :goto_77
    iget-object v0, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/views/DetailBaseView;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 107
    :goto_81
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailBaseView;->invalidate()V

    return v3

    :cond_85
    return v1
.end method

.method public setOnMoveListener(Lcom/keephealth/android/views/DetailBaseView$IMoveListener;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/views/DetailBaseView;->moveListener:Lcom/keephealth/android/views/DetailBaseView$IMoveListener;

    return-void
.end method

.method public setTouchEnable(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lcom/keephealth/android/views/DetailBaseView;->touchEnable:Z

    return-void
.end method
