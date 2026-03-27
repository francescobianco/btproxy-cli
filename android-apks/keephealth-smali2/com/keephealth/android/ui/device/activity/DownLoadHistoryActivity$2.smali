.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$2;
.super Ljava/lang/Thread;
.source "DownLoadHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->downLoadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

.field final synthetic val$fileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Ljava/lang/String;)V
    .registers 3

    .line 279
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$2;->val$fileUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$2;->val$fileUrl:Ljava/lang/String;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialFile:Ljava/io/File;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/io/File;

    move-result-object v2

    # invokes: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Ljava/lang/String;Ljava/io/File;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method
