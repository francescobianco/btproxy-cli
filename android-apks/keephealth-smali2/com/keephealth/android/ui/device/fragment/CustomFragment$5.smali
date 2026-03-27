.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$5;
.super Ljava/lang/Thread;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomFragment;->downLoadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

.field final synthetic val$fileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;)V
    .registers 3

    .line 623
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$5;->val$fileUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$5;->val$fileUrl:Ljava/lang/String;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialFile:Ljava/io/File;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/io/File;

    move-result-object v2

    # invokes: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;Ljava/io/File;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 629
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method
