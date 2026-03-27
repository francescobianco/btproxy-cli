.class Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;
.super Ljava/lang/Object;
.source "NoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/NoticeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V
    .registers 2

    .line 1059
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1062
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->had_set:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$500(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12e

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->had_set:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$500(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "had_set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12e

    .line 1063
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    if-eqz p1, :cond_135

    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_135

    .line 1064
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v1, "PersonInfoActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "class"

    const-string v2, "classStr"

    const-string v3, "MainActivityNew"

    const v4, 0x7f100200

    const/4 v5, 0x1

    if-eqz p1, :cond_8f

    .line 1065
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_80

    .line 1067
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    const-class v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p1, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1068
    const-string v4, "isConnect"

    const-string v6, "true"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {v4, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1070
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 1071
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    sget-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 1073
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 1074
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    .line 1075
    sput v5, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    goto/16 :goto_135

    .line 1077
    :cond_80
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_135

    .line 1080
    :cond_8f
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v6, "MainActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e8

    .line 1081
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_da

    .line 1082
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    const-class v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p1, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1083
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {v4, p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1084
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    const/16 v4, 0xc8

    invoke-virtual {p1, v4}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->setResult(I)V

    .line 1085
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 1086
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    sget-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 1088
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 1089
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    goto :goto_135

    .line 1091
    :cond_da
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_135

    .line 1093
    :cond_e8
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v6, "AddMemberActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_135

    .line 1094
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_120

    .line 1095
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    const-class v4, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p1, v4}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1096
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 1097
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    sget-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 1099
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    goto :goto_135

    .line 1101
    :cond_120
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_135

    .line 1106
    :cond_12e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    const-class v0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_135
    :goto_135
    return-void
.end method
