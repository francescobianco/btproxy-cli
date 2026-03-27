.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$6;
.super Ljava/lang/Object;
.source "RewardFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/RewardFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$6;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .registers 2

    .line 296
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$6;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->duihuanDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$300(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 293
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$6;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
