.class Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;
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

    .line 419
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 422
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "close"

    if-eqz p1, :cond_37

    .line 423
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 424
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgStatus:Landroid/widget/ImageView;

    const v0, 0x7f0d0238

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_69

    .line 426
    :cond_37
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 427
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 428
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->imgStatus:Landroid/widget/ImageView;

    const v0, 0x7f0d0237

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 431
    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
