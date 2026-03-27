.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$7;
.super Ljava/lang/Object;
.source "ScreenRegulationActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V
    .registers 2

    .line 426
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    .line 429
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvProgress:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iput p2, p1, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    .line 440
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setDeviceInit(ZZ)V
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;ZZ)V

    return-void
.end method
