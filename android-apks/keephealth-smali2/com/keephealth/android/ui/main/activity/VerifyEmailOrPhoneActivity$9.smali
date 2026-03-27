.class Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$9;
.super Ljava/lang/Object;
.source "VerifyEmailOrPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showNoReceiveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V
    .registers 2

    .line 468
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 471
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_d

    .line 472
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_d
    return-void
.end method
