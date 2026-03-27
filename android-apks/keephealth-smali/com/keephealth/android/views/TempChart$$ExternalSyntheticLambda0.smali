.class public final synthetic Lcom/keephealth/android/views/TempChart$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/views/TempChart;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/views/TempChart;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/TempChart$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/views/TempChart;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/views/TempChart;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/TempChart;->lambda$initAnimator$0$com-keephealth-android-views-TempChart(Landroid/animation/ValueAnimator;)V

    return-void
.end method
