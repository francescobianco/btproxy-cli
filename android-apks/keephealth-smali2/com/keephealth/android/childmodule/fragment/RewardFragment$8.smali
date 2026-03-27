.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$8;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RewardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/RewardFragment;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 332
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
