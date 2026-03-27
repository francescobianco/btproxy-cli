.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$2;
.super Landroid/os/Handler;
.source "FirmwareUpdateOtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 290
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_3a

    .line 292
    :cond_8
    const-string v0, "gfgf433"

    const-string v1, "\u5f00\u59cb\u5347\u7ea7"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v3, p1

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downLoadRate(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;JJ)V

    goto :goto_3a

    .line 296
    :cond_1b
    const-string p1, "\u5f53\u524d\u9875\u9762 FirmwareUpdateOtaActivity: \u4e0b\u8f7d\u5931\u8d25\u5347\u7ea7\u5931\u8d25"

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V

    .line 298
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 299
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 300
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    :goto_3a
    return-void
.end method
