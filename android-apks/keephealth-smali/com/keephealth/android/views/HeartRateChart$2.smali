.class Lcom/keephealth/android/views/HeartRateChart$2;
.super Ljava/lang/Object;
.source "HeartRateChart.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/HeartRateChart;->animateY()V
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

    .line 698
    iput-object p1, p0, Lcom/keephealth/android/views/HeartRateChart$2;->this$0:Lcom/keephealth/android/views/HeartRateChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart$2;->this$0:Lcom/keephealth/android/views/HeartRateChart;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/keephealth/android/views/HeartRateChart;->animateValue:F

    .line 703
    iget-object p1, p0, Lcom/keephealth/android/views/HeartRateChart$2;->this$0:Lcom/keephealth/android/views/HeartRateChart;

    invoke-virtual {p1}, Lcom/keephealth/android/views/HeartRateChart;->invalidate()V

    return-void
.end method
