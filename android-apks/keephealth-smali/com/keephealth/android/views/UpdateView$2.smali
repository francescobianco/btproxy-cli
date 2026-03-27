.class Lcom/keephealth/android/views/UpdateView$2;
.super Ljava/lang/Thread;
.source "UpdateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/UpdateView;->startDownLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/UpdateView;

.field final synthetic val$apkFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/UpdateView;Ljava/io/File;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/keephealth/android/views/UpdateView$2;->this$0:Lcom/keephealth/android/views/UpdateView;

    iput-object p2, p0, Lcom/keephealth/android/views/UpdateView$2;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/views/UpdateView$2;->this$0:Lcom/keephealth/android/views/UpdateView;

    # getter for: Lcom/keephealth/android/views/UpdateView;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/views/UpdateView;->access$000(Lcom/keephealth/android/views/UpdateView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/views/UpdateView$2;->val$apkFile:Ljava/io/File;

    # invokes: Lcom/keephealth/android/views/UpdateView;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/views/UpdateView;->access$100(Lcom/keephealth/android/views/UpdateView;Ljava/lang/String;Ljava/io/File;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method
