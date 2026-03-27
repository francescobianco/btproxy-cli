.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$1;
.super Ljava/lang/Object;
.source "CustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomFragment;->selectBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 432
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 433
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    return-void
.end method
