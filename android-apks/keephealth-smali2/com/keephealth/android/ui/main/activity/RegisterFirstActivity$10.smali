.class Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$10;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RegisterFirstActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V
    .registers 2

    .line 412
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$10;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 415
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$10;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
