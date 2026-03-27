.class Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;
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

    .line 580
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 583
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "close"

    if-eqz p1, :cond_37

    .line 584
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 585
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgStatus:Landroid/widget/ImageView;

    const v0, 0x7f0d0238

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_69

    .line 587
    :cond_37
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 588
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 589
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->imgStatus:Landroid/widget/ImageView;

    const v0, 0x7f0d0237

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 592
    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etPwd:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
