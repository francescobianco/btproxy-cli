.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;
.super Ljava/lang/Thread;
.source "FirmwareUpdateOtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downLoadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

.field final synthetic val$apkFile:Ljava/io/File;

.field final synthetic val$filrUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 213
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;->val$filrUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;->val$filrUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;->val$apkFile:Ljava/io/File;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;Ljava/io/File;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_1f

    :catch_a
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gfgf433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method
