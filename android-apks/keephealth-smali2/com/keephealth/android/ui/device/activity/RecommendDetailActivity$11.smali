.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$11;
.super Ljava/lang/Object;
.source "RecommendDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->Delay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

.field final synthetic val$millSeconds:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1172
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$11;->val$millSeconds:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1176
    :try_start_0
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$11;->val$millSeconds:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    .line 1178
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_b
    return-void
.end method
