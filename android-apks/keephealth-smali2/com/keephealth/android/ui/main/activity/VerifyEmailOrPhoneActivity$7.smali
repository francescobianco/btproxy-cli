.class Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$7;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "VerifyEmailOrPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->createObserver()V
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

    .line 445
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 448
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showNoReceiveDialog()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->access$600(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V

    return-void
.end method
