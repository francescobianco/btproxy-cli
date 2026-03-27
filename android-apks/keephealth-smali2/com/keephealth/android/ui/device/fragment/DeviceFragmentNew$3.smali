.class Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$3;
.super Ljava/lang/Object;
.source "DeviceFragmentNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V
    .registers 2

    .line 704
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$3;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const p1, 0x7f090516

    const-wide/16 v0, 0x3e8

    .line 707
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 708
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 709
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_2c

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_20

    goto :goto_2c

    .line 712
    :cond_20
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$3;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4d

    .line 710
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$3;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$2400(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto :goto_4d

    .line 715
    :cond_3d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$3;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$2500(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-void
.end method
