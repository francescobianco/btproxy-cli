.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;
.super Ljava/lang/Thread;
.source "FirmwareUpdateOtaQActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

.field final synthetic val$apkFile:Ljava/io/File;

.field final synthetic val$filrUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 332
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;->val$filrUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;->val$filrUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;->val$apkFile:Ljava/io/File;

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;Ljava/io/File;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method
