.class Lcom/keephealth/android/ui/device/activity/CardActivity$1;
.super Ljava/lang/Object;
.source "CardActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/CardActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/CardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/CardActivity;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 108
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CardActivity;

    const-class v1, Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/CardBean;

    if-eqz p1, :cond_2a

    .line 111
    const-string p3, "cardType"

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/CardBean;->getIndex()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CardActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/CardActivity;->cardOrWallet:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/CardActivity;->access$000(Lcom/keephealth/android/ui/device/activity/CardActivity;)I

    move-result p1

    const-string p3, "cardOrWallet"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CardActivity;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/activity/CardActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2a
    return-void
.end method
