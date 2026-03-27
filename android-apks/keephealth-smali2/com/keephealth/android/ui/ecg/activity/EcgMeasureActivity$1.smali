.class Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;
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

    .line 99
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    # operator++ for: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeOut:I
    invoke-static {v0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->access$008(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)I

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    # getter for: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeOut:I
    invoke-static {v0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->access$000(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_39

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->timeOut:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->access$002(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;I)I

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    # invokes: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->stopMeasure()V
    invoke-static {v0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->access$100(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutStart:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutFaild:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutMeasureing:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_42

    .line 112
    :cond_39
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->mhandle:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_42
    return-void
.end method
