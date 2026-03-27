.class Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;
.super Ljava/lang/Object;
.source "SetPhoneWenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 49
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v0, "\u8bf7\u6c42\u5b8c\u6bd5:"

    const-string v1, "GFF32f"

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eqz p1, :cond_b3

    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    .line 50
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v4, "PersonInfoActivity"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 51
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 53
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    const-class v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    const-string v0, "isConnect"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 58
    sput v3, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ISCONNECT:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FDD3232"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e5

    .line 62
    :cond_5c
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v4, "MainActivity"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 63
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 65
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    const-class v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-virtual {v4, p1}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->setResult(I)V

    .line 68
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->finish()V

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    .line 72
    :cond_99
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v0, "AddMemberActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 73
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 74
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 75
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_e5

    .line 79
    :cond_b3
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 81
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    const-class v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-virtual {v4, p1}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->setResult(I)V

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->finish()V

    .line 85
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    :goto_e5
    return-void
.end method
