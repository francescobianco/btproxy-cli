.class Lcom/keephealth/android/util/ThreadUtil$1;
.super Ljava/lang/Object;
.source "ThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ThreadUtil;->setMainLooper(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Landroidx/lifecycle/MutableLiveData;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/util/ThreadUtil$1;->val$data:Landroidx/lifecycle/MutableLiveData;

    iput-object p2, p0, Lcom/keephealth/android/util/ThreadUtil$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/util/ThreadUtil$1;->val$data:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/keephealth/android/util/ThreadUtil$1;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
