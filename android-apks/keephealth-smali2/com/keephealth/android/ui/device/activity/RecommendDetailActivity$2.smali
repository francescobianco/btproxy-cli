.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$2;
.super Ljava/lang/Thread;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downLoadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

.field final synthetic val$fileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Ljava/lang/String;)V
    .registers 3

    .line 394
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$2;->val$fileUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$2;->val$fileUrl:Ljava/lang/String;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialFile:Ljava/io/File;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$100(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/io/File;

    move-result-object v2

    # invokes: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Ljava/lang/String;Ljava/io/File;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method
