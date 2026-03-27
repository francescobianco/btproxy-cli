.class Lcom/keephealth/android/views/SineWaveView$1;
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

    .line 284
    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView$1;->this$0:Lcom/keephealth/android/views/SineWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 287
    iget-object p1, p0, Lcom/keephealth/android/views/SineWaveView$1;->this$0:Lcom/keephealth/android/views/SineWaveView;

    const/high16 v0, 0x3fc00000    # 1.5f

    # += operator for: Lcom/keephealth/android/views/SineWaveView;->phase1:F
    invoke-static {p1, v0}, Lcom/keephealth/android/views/SineWaveView;->access$016(Lcom/keephealth/android/views/SineWaveView;F)F

    .line 288
    iget-object p1, p0, Lcom/keephealth/android/views/SineWaveView$1;->this$0:Lcom/keephealth/android/views/SineWaveView;

    # getter for: Lcom/keephealth/android/views/SineWaveView;->phase1:F
    invoke-static {p1}, Lcom/keephealth/android/views/SineWaveView;->access$000(Lcom/keephealth/android/views/SineWaveView;)F

    move-result p1

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_18

    iget-object p1, p0, Lcom/keephealth/android/views/SineWaveView$1;->this$0:Lcom/keephealth/android/views/SineWaveView;

    # -= operator for: Lcom/keephealth/android/views/SineWaveView;->phase1:F
    invoke-static {p1, v0}, Lcom/keephealth/android/views/SineWaveView;->access$024(Lcom/keephealth/android/views/SineWaveView;F)F

    .line 289
    :cond_18
    iget-object p1, p0, Lcom/keephealth/android/views/SineWaveView$1;->this$0:Lcom/keephealth/android/views/SineWaveView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/SineWaveView;->invalidate()V

    return-void
.end method
