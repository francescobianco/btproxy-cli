.class Lcom/keephealth/android/views/TempChart$1;
.super Ljava/lang/Object;
.source "TempChart.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/TempChart;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/TempChart;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/TempChart;)V
    .registers 2

    .line 468
    iput-object p1, p0, Lcom/keephealth/android/views/TempChart$1;->this$0:Lcom/keephealth/android/views/TempChart;

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

    .line 476
    iget-object p1, p0, Lcom/keephealth/android/views/TempChart$1;->this$0:Lcom/keephealth/android/views/TempChart;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/views/TempChart;->isOver:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/views/TempChart;->access$002(Lcom/keephealth/android/views/TempChart;Z)Z

    .line 477
    iget-object p1, p0, Lcom/keephealth/android/views/TempChart$1;->this$0:Lcom/keephealth/android/views/TempChart;

    # invokes: Lcom/keephealth/android/views/TempChart;->animateY()V
    invoke-static {p1}, Lcom/keephealth/android/views/TempChart;->access$100(Lcom/keephealth/android/views/TempChart;)V

    .line 478
    iget-object p1, p0, Lcom/keephealth/android/views/TempChart$1;->this$0:Lcom/keephealth/android/views/TempChart;

    invoke-virtual {p1}, Lcom/keephealth/android/views/TempChart;->invalidate()V

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
