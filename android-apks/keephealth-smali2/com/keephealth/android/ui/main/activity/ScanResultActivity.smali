.class public Lcom/keephealth/android/ui/main/activity/ScanResultActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "ScanResultActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/ScanResultContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/ScanResultPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/ScanResultContract$View;"
    }
.end annotation


# instance fields
.field btnInvite:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a5
    .end annotation
.end field

.field ivHeader:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b0
    .end annotation
.end field

.field private mid:Ljava/lang/String;

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068d
    .end annotation
.end field

.field tvTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f6
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method btnInvite()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a5
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/ScanResultPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->mid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->applyAdd(I)V

    goto :goto_23

    :cond_13
    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/ScanResultPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->mid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->inviteGuardian(I)V

    :cond_23
    :goto_23
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c007f

    return v0
.end method

.method protected initView()V
    .registers 7

    .line 42
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    const-string v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->type:I

    if-nez v3, :cond_2f

    .line 49
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->finish()V

    .line 51
    :cond_2f
    const-string v0, "\\|"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v3

    const v4, 0x7f0d002e

    invoke-virtual {v3, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->ivHeader:Landroid/widget/ImageView;

    aget-object v5, v0, v2

    invoke-virtual {v3, p0, v4, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 53
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->tvName:Landroid/widget/TextView;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 54
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->mid:Ljava/lang/String;

    .line 56
    :cond_57
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->type:I

    if-ne v0, v2, :cond_7c

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->btnInvite:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100536

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->tvTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9e

    :cond_7c
    if-ne v0, v1, :cond_9e

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->btnInvite:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->tvTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method public returnCode(I)V
    .registers 4

    if-nez p1, :cond_15

    .line 71
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002d7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->showToast(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->finish()V

    goto/16 :goto_92

    :cond_15
    const/16 v0, 0xc

    if-ne p1, v0, :cond_28

    .line 74
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002d9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->showToast(Ljava/lang/String;)V

    goto :goto_92

    :cond_28
    const/16 v0, 0xd

    const v1, 0x7f1002cc

    if-ne p1, v0, :cond_3b

    .line 76
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->showToast(Ljava/lang/String;)V

    goto :goto_92

    :cond_3b
    const/16 v0, 0x10

    if-ne p1, v0, :cond_4e

    .line 78
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->showToast(Ljava/lang/String;)V

    goto :goto_92

    :cond_4e
    const/16 v0, 0xe

    if-ne p1, v0, :cond_61

    .line 80
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002dd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->showToast(Ljava/lang/String;)V

    goto :goto_92

    :cond_61
    const/16 v0, 0x11

    if-ne p1, v0, :cond_74

    .line 82
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_92

    :cond_74
    const/16 v0, 0x12

    if-ne p1, v0, :cond_87

    .line 84
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_92

    .line 86
    :cond_87
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;->showToast(Ljava/lang/String;)V

    :goto_92
    return-void
.end method
