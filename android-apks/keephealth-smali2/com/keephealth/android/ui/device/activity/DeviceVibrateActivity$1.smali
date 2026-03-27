.class Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DeviceVibrateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-ui-device-activity-DeviceVibrateActivity$1(III)V
    .registers 4

    .line 79
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->vibrateStrong:I
    invoke-static {p2, p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$002(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;I)I

    if-eqz p1, :cond_4d

    const/4 p2, 0x1

    if-eq p1, p2, :cond_39

    const/4 p2, 0x2

    if-eq p1, p2, :cond_25

    const/4 p2, 0x3

    if-eq p1, p2, :cond_11

    goto :goto_61

    .line 94
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->tv_vibrate_status:Landroid/widget/TextView;

    const p3, 0x7f10075f

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateStrong(I)V

    goto :goto_61

    .line 90
    :cond_25
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->tv_vibrate_status:Landroid/widget/TextView;

    const p3, 0x7f10075d

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateStrong(I)V

    goto :goto_61

    .line 86
    :cond_39
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->tv_vibrate_status:Landroid/widget/TextView;

    const p3, 0x7f100760

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateStrong(I)V

    goto :goto_61

    .line 82
    :cond_4d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->tv_vibrate_status:Landroid/widget/TextView;

    const p2, 0x7f1001aa

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateStrong(I)V

    :goto_61
    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->vibrateStrong:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$000(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)I

    move-result v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;)V

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelVibrateDialog(Landroid/content/Context;ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    return-void
.end method
