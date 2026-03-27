.class Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RewardIconRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->finish()V

    return-void
.end method
