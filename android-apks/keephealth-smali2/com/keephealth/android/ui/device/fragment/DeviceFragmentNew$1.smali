.class Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;
.super Ljava/lang/Object;
.source "DeviceFragmentNew.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateUi(I)V
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

    .line 478
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onItemClick$1(Landroid/view/View;)V
    .registers 1

    return-void
.end method


# virtual methods
.method synthetic lambda$onItemClick$0$com-keephealth-android-ui-device-fragment-DeviceFragmentNew$1(Landroid/view/View;)V
    .registers 4

    .line 566
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 567
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    const/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$onItemClick$2$com-keephealth-android-ui-device-fragment-DeviceFragmentNew$1(Landroid/view/View;)V
    .registers 3

    .line 575
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 578
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SetPermissionUtils;->goSystemSetPermission(Landroid/content/Context;I)V

    goto :goto_25

    .line 580
    :cond_1a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    # getter for: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1400(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method synthetic lambda$onItemClick$3$com-keephealth-android-ui-device-fragment-DeviceFragmentNew$1(Landroid/view/View;)V
    .registers 2

    .line 583
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    # getter for: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1500(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 584
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    # getter for: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1500(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 9

    .line 481
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->adapter:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;->getType()I

    move-result p1

    const-string p2, "cardOrWallet"

    const v0, 0x7f10053c

    const v1, 0x7f100258

    packed-switch p1, :pswitch_data_3a2

    goto/16 :goto_3a1

    .line 632
    :pswitch_1b
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 633
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_44

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_30

    goto :goto_44

    .line 636
    :cond_30
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 637
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a1

    .line 634
    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$2200(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 640
    :cond_53
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$2300(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 620
    :pswitch_62
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 621
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_8b

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_77

    goto :goto_8b

    .line 624
    :cond_77
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 625
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a1

    .line 622
    :cond_8b
    :goto_8b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$2000(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 628
    :cond_9a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$2100(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 607
    :pswitch_a9
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 608
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_d6

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_be

    goto :goto_d6

    .line 611
    :cond_be
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/CardActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 612
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a1

    .line 609
    :cond_d6
    :goto_d6
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1800(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 616
    :cond_e5
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1900(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 594
    :pswitch_f4
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_130

    .line 595
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_121

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_109

    goto :goto_121

    .line 598
    :cond_109
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/device/activity/CardActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 599
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a1

    .line 596
    :cond_121
    :goto_121
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1600(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 603
    :cond_130
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1700(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    :pswitch_13f
    const p1, 0x7f0901e4

    const-wide/16 v0, 0x3e8

    .line 562
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result p1

    if-nez p1, :cond_3a1

    .line 563
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_186

    .line 564
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    const p2, 0x7f10037d

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    const p2, 0x7f10047b

    .line 565
    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    const p2, 0x7f1004a1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;)V

    new-instance v5, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1$$ExternalSyntheticLambda1;-><init>()V

    .line 564
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_3a1

    .line 572
    :cond_186
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    # getter for: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->permissionsLocation:[Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1400(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3a1

    .line 573
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v1, 0x7f1004a3

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    .line 574
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v2, 0x7f10049e

    invoke-virtual {p2, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v3, 0x7f100257

    invoke-virtual {p2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;)V

    new-instance v5, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;)V

    .line 573
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p2

    # setter for: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->mDialog:Landroid/app/Dialog;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1502(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3a1

    .line 551
    :pswitch_1d2
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_203

    .line 552
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_1f4

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_1e7

    goto :goto_1f4

    .line 555
    :cond_1e7
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_3a1

    .line 553
    :cond_1f4
    :goto_1f4
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1200(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 558
    :cond_203
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1300(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 540
    :pswitch_212
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_243

    .line 541
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_234

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_227

    goto :goto_234

    .line 544
    :cond_227
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_3a1

    .line 542
    :cond_234
    :goto_234
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1000(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 547
    :cond_243
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$1100(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 529
    :pswitch_252
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_287

    .line 530
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_278

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez p1, :cond_278

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    if-eqz p1, :cond_26b

    goto :goto_278

    .line 533
    :cond_26b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_3a1

    .line 531
    :cond_278
    :goto_278
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$800(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 536
    :cond_287
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$900(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 518
    :pswitch_296
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_2c7

    .line 519
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_2b8

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_2ab

    goto :goto_2b8

    .line 522
    :cond_2ab
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_3a1

    .line 520
    :cond_2b8
    :goto_2b8
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$600(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 525
    :cond_2c7
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$700(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 505
    :pswitch_2d6
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_319

    .line 506
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_30a

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_2eb

    goto :goto_30a

    .line 509
    :cond_2eb
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    const-string p2, "comeClass"

    const-string v0, "deviceFragment"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a1

    .line 507
    :cond_30a
    :goto_30a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$400(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 514
    :cond_319
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$500(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto/16 :goto_3a1

    .line 494
    :pswitch_328
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_357

    .line 495
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_349

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_33d

    goto :goto_349

    .line 498
    :cond_33d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3a1

    .line 496
    :cond_349
    :goto_349
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$200(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto :goto_3a1

    .line 501
    :cond_357
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$300(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto :goto_3a1

    .line 483
    :pswitch_365
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_394

    .line 484
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_386

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p1, :cond_37a

    goto :goto_386

    .line 487
    :cond_37a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3a1

    .line 485
    :cond_386
    :goto_386
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$000(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    goto :goto_3a1

    .line 490
    :cond_394
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$1;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$100(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Ljava/lang/String;)V

    :cond_3a1
    :goto_3a1
    return-void

    :pswitch_data_3a2
    .packed-switch 0x0
        :pswitch_365
        :pswitch_328
        :pswitch_2d6
        :pswitch_296
        :pswitch_252
        :pswitch_212
        :pswitch_1d2
        :pswitch_13f
        :pswitch_f4
        :pswitch_a9
        :pswitch_62
        :pswitch_1b
    .end packed-switch
.end method
