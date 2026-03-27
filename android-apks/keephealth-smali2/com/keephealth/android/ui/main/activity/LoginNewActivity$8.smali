.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "LoginNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V
    .registers 2

    .line 757
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 8

    .line 760
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)I

    move-result p1

    const-string v0, "close"

    const-string v1, "open"

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne p1, v4, :cond_80

    .line 761
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const/4 v4, 0x2

    # setter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$002(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;I)I

    .line 762
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvSmsAndPassword:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v5, 0x7f1006eb

    invoke-virtual {v4, v5}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v5, 0x7f100349

    invoke-virtual {v4, v5}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 764
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 765
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvGetVerificationCode:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 767
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_107

    .line 768
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 769
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    const v0, 0x7f0d0237

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 770
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto/16 :goto_107

    .line 773
    :cond_80
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$002(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;I)I

    .line 774
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvSmsAndPassword:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v5, 0x7f100680

    invoke-virtual {v4, v5}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v5, 0x7f1004d2

    invoke-virtual {v4, v5}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 776
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 777
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvGetVerificationCode:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvCountDown:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f6

    .line 780
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 781
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgStatus:Landroid/widget/ImageView;

    const v0, 0x7f0d0238

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 782
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 784
    :cond_f6
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->countDownTimer:Landroid/os/CountDownTimer;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_107

    .line 785
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->countDownTimer:Landroid/os/CountDownTimer;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_107
    :goto_107
    return-void
.end method
