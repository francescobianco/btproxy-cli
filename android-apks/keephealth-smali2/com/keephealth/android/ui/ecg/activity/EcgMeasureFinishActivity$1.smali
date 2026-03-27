.class Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$1;
.super Ljava/lang/Object;
.source "EcgMeasureFinishActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgScrollView:Lcom/keephealth/android/views/ecg/MyEcgScrollView;

    iget-object p3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    # getter for: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->seekBarPosition:I
    invoke-static {p3}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->access$000(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)I

    move-result p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->setChange(I)V

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    # setter for: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->seekBarPosition:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->access$002(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;I)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
