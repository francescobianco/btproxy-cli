.class Lcom/keephealth/android/util/QthreeUtils$2;
.super Ljava/lang/Object;
.source "QthreeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/QthreeUtils;->systemBlueListIsExist(Landroid/app/Activity;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$deviceList:Ljava/util/List;

.field final synthetic val$macAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/keephealth/android/util/QthreeUtils$2;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/keephealth/android/util/QthreeUtils$2;->val$deviceList:Ljava/util/List;

    iput-object p3, p0, Lcom/keephealth/android/util/QthreeUtils$2;->val$macAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/util/QthreeUtils$2;->val$context:Landroid/app/Activity;

    new-instance v1, Lcom/keephealth/android/util/QthreeUtils$2$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/QthreeUtils$2$1;-><init>(Lcom/keephealth/android/util/QthreeUtils$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
