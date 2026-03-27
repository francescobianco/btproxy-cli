.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;
.super Ljava/lang/Object;
.source "ScreenRegulationActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;


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

    .line 385
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 4

    .line 388
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Lcom/keephealth/android/model/bean/UpHander;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveOnOff(Z)V

    .line 389
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWristScreenB()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    .line 390
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlViewBrightScreen:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/16 v0, 0x8

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 391
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvStartTime1:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setIsVisible(ZLandroid/widget/TextView;)V

    .line 392
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvEndTime1:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setIsVisible(ZLandroid/widget/TextView;)V

    .line 393
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setScreen()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    goto :goto_3f

    .line 395
    :cond_3a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setDeviceInit(ZZ)V
    invoke-static {p1, p2, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;ZZ)V

    :goto_3f
    return-void
.end method
