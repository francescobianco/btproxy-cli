.class Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$13;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RegisterNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->createObserver()V
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

    .line 573
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$13;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 576
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$13;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etUsername:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
