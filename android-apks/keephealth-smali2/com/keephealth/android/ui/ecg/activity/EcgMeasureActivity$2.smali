.class Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;
.super Ljava/lang/Object;
.source "EcgMeasureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    # operator++ for: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I
    invoke-static {v0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->access$208(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)I

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    # getter for: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I
    invoke-static {v0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->access$200(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_15

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    # invokes: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mearsureFinish()V
    invoke-static {v0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->access$300(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V

    goto :goto_46

    .line 124
    :cond_15
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    # getter for: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timerLca:I
    invoke-static {v3}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->access$200(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$2;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_46
    return-void
.end method
