.class Lcom/keephealth/android/views/TempChart$2;
.super Ljava/lang/Object;
.source "TempChart.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/TempChart;->animateY()V
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

    .line 667
    iput-object p1, p0, Lcom/keephealth/android/views/TempChart$2;->this$0:Lcom/keephealth/android/views/TempChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart$2;->this$0:Lcom/keephealth/android/views/TempChart;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/keephealth/android/views/TempChart;->animateValue:F

    .line 672
    iget-object p1, p0, Lcom/keephealth/android/views/TempChart$2;->this$0:Lcom/keephealth/android/views/TempChart;

    invoke-virtual {p1}, Lcom/keephealth/android/views/TempChart;->invalidate()V

    return-void
.end method
