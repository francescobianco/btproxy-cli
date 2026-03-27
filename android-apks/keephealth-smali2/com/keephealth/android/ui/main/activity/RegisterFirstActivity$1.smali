.class Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$1;
.super Landroid/os/Handler;
.source "RegisterFirstActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Landroid/os/Looper;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 89
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 90
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->tvChooseZero:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->courtrys:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->access$000(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->courtrys:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->access$000(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    const v1, 0x7f1000dd

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 92
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->relaCountry:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_32
    return-void
.end method
