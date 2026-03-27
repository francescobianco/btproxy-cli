.class Lcom/keephealth/android/views/HeartRateChart$1;
.super Ljava/lang/Object;
.source "HeartRateChart.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/HeartRateChart;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/HeartRateChart;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/HeartRateChart;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/keephealth/android/views/HeartRateChart$1;->this$0:Lcom/keephealth/android/views/HeartRateChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 515
    iget-object p1, p0, Lcom/keephealth/android/views/HeartRateChart$1;->this$0:Lcom/keephealth/android/views/HeartRateChart;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/views/HeartRateChart;->isOver:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/views/HeartRateChart;->access$002(Lcom/keephealth/android/views/HeartRateChart;Z)Z

    .line 516
    iget-object p1, p0, Lcom/keephealth/android/views/HeartRateChart$1;->this$0:Lcom/keephealth/android/views/HeartRateChart;

    # invokes: Lcom/keephealth/android/views/HeartRateChart;->animateY()V
    invoke-static {p1}, Lcom/keephealth/android/views/HeartRateChart;->access$100(Lcom/keephealth/android/views/HeartRateChart;)V

    .line 517
    iget-object p1, p0, Lcom/keephealth/android/views/HeartRateChart$1;->this$0:Lcom/keephealth/android/views/HeartRateChart;

    invoke-virtual {p1}, Lcom/keephealth/android/views/HeartRateChart;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
