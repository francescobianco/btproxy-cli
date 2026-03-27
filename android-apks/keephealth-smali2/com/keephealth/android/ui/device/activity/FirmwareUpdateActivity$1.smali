.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;
.super Ljava/lang/Thread;
.source "FirmwareUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->downLoadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

.field final synthetic val$apkFile:Ljava/io/File;

.field final synthetic val$fileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 149
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;->val$fileUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;->val$fileUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;->val$apkFile:Ljava/io/File;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;Ljava/io/File;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method
