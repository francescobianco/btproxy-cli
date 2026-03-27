.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$2;
.super Landroid/os/Handler;
.source "FirmwareUpdateOtaNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_46

    .line 256
    :cond_8
    const-string v0, "gfgf433"

    const-string v1, "\u5f00\u59cb\u5347\u7ea7"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v3, p1

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downLoadRate(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;JJ)V

    goto :goto_46

    .line 260
    :cond_1b
    const-string p1, "DOWN_FAILD:"

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V

    .line 262
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 263
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->finish()V

    .line 265
    const-string p1, "AppApplication.isOtaUpdate== false   222"

    const-string v0, "tttre4"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string p1, "333"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-void
.end method
