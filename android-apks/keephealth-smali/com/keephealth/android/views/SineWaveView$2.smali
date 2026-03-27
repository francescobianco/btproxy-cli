.class Lcom/keephealth/android/views/SineWaveView$2;
.super Ljava/lang/Object;
.source "SineWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/SineWaveView;->startWaveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/SineWaveView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/SineWaveView;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView$2;->this$0:Lcom/keephealth/android/views/SineWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 301
    iget-object p1, p0, Lcom/keephealth/android/views/SineWaveView$2;->this$0:Lcom/keephealth/android/views/SineWaveView;

    const/high16 v0, 0x40000000    # 2.0f

    # += operator for: Lcom/keephealth/android/views/SineWaveView;->phase2:F
    invoke-static {p1, v0}, Lcom/keephealth/android/views/SineWaveView;->access$116(Lcom/keephealth/android/views/SineWaveView;F)F

    .line 302
    iget-object p1, p0, Lcom/keephealth/android/views/SineWaveView$2;->this$0:Lcom/keephealth/android/views/SineWaveView;

    # getter for: Lcom/keephealth/android/views/SineWaveView;->phase2:F
    invoke-static {p1}, Lcom/keephealth/android/views/SineWaveView;->access$100(Lcom/keephealth/android/views/SineWaveView;)F

    move-result p1

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_18

    iget-object p1, p0, Lcom/keephealth/android/views/SineWaveView$2;->this$0:Lcom/keephealth/android/views/SineWaveView;

    # -= operator for: Lcom/keephealth/android/views/SineWaveView;->phase2:F
    invoke-static {p1, v0}, Lcom/keephealth/android/views/SineWaveView;->access$124(Lcom/keephealth/android/views/SineWaveView;F)F

    .line 303
    :cond_18
    iget-object p1, p0, Lcom/keephealth/android/views/SineWaveView$2;->this$0:Lcom/keephealth/android/views/SineWaveView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SineWaveView;->invalidate()V

    return-void
.end method
