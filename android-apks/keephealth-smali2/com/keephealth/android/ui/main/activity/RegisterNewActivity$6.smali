.class Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$6;
.super Ljava/lang/Object;
.source "RegisterNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showNoReceiveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 243
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 244
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    return-void
.end method
