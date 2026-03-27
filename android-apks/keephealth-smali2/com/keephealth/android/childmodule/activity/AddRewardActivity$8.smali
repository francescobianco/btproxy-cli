.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "AddRewardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 7

    .line 240
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->tvAddName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_c8

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->tvAddName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto/16 :goto_c8

    .line 248
    :cond_20
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$100(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->setIconId(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconId:I
    invoke-static {p1, v1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$302(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;I)I

    .line 249
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconId:I
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$300(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)I

    move-result p1

    if-nez p1, :cond_3a

    return-void

    .line 252
    :cond_3a
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->isEdit:Z
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$400(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Z

    move-result p1

    if-nez p1, :cond_78

    .line 253
    new-instance p1, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;

    invoke-direct {p1}, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;-><init>()V

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->tv_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->setName(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->setCoin(I)V

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$100(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->setIconId(I)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->saveReward(Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;)V

    goto :goto_c7

    .line 259
    :cond_78
    new-instance p1, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;

    invoke-direct {p1}, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemId:I
    invoke-static {v1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$600(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->setId(I)V

    .line 261
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->setCoin(I)V

    .line 262
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$100(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->setIconId(I)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->tv_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->setName(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->updateReward(Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;)V

    :goto_c7
    return-void

    .line 241
    :cond_c8
    :goto_c8
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    if-nez p1, :cond_ea

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    new-instance v0, Lcom/keephealth/android/childmodule/DialogView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    const v2, 0x7f100693

    invoke-virtual {v1, v2}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    const v4, 0x7f10071b

    invoke-virtual {v3, v4}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    goto :goto_f1

    .line 244
    :cond_ea
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->show()V

    :goto_f1
    return-void
.end method
