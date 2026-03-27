.class public Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "FamilyPermissonActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;"
    }
.end annotation


# instance fields
.field ctBlood:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090100
    .end annotation
.end field

.field ctHeart:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090101
    .end annotation
.end field

.field ctOxygen:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090102
    .end annotation
.end field

.field ctSleep:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090103
    .end annotation
.end field

.field ctSport:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090104
    .end annotation
.end field

.field ctTemp:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090106
    .end annotation
.end field

.field private familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

.field private isUpdate:Z

.field ivHeader:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b0
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068d
    .end annotation
.end field

.field private updatePosition:I

.field private updateVaule:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->isUpdate:Z

    return-void
.end method

.method private editUserName()V
    .registers 8

    .line 192
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 193
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00dc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090135

    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100348

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f09016c

    .line 196
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 197
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/FamilyBean;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v3, 0x7f090632

    .line 198
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0906e4

    .line 199
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, v2}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;Landroid/app/Dialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 213
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 215
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 216
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 217
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 218
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic lambda$editUserName$6(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 198
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method editName()V
    .registers 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090304
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->editUserName()V

    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0053

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 64
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100313

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 68
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "family"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/FamilyBean;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    .line 70
    :cond_2d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ivHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/FamilyBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/FamilyBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSport:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isSport()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 74
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSleep:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isSleep()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 75
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctHeart:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isHeartRate()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 76
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctBlood:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isBloodPressure()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 77
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctOxygen:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isBloodOxygen()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 78
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctTemp:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isTemperature()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSport:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSleep:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctHeart:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctBlood:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctOxygen:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctTemp:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    return-void
.end method

.method synthetic lambda$editUserName$7$com-keephealth-android-ui-main-activity-FamilyPermissonActivity(Landroid/app/Dialog;Landroid/widget/EditText;Landroid/view/View;)V
    .registers 4

    .line 200
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 201
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 202
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100348

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_5e

    .line 203
    :cond_20
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->vaildUserName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 204
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100342

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_5e

    .line 206
    :cond_3d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/FamilyBean;->setNickName(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->tvName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/FamilyBean;->getNickName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->UpdateFamily(Lcom/keephealth/android/model/bean/FamilyBean;)V

    :goto_5e
    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-FamilyPermissonActivity(Z)V
    .registers 3

    .line 0
    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updatePosition:I

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isSport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setSport(Z)V

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->UpdateFamily(Lcom/keephealth/android/model/bean/FamilyBean;)V

    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-main-activity-FamilyPermissonActivity(Z)V
    .registers 3

    .line 0
    const/4 v0, 0x2

    .line 86
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updatePosition:I

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isSleep()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setSleep(Z)V

    .line 89
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->UpdateFamily(Lcom/keephealth/android/model/bean/FamilyBean;)V

    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-main-activity-FamilyPermissonActivity(Z)V
    .registers 3

    .line 0
    const/4 v0, 0x3

    .line 92
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updatePosition:I

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isHeartRate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setHeartRate(Z)V

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->UpdateFamily(Lcom/keephealth/android/model/bean/FamilyBean;)V

    return-void
.end method

.method synthetic lambda$initView$3$com-keephealth-android-ui-main-activity-FamilyPermissonActivity(Z)V
    .registers 3

    .line 0
    const/4 v0, 0x4

    .line 98
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updatePosition:I

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isBloodPressure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setBloodPressure(Z)V

    .line 101
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->UpdateFamily(Lcom/keephealth/android/model/bean/FamilyBean;)V

    return-void
.end method

.method synthetic lambda$initView$4$com-keephealth-android-ui-main-activity-FamilyPermissonActivity(Z)V
    .registers 3

    .line 0
    const/4 v0, 0x5

    .line 104
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updatePosition:I

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isBloodOxygen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setBloodOxygen(Z)V

    .line 107
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->UpdateFamily(Lcom/keephealth/android/model/bean/FamilyBean;)V

    return-void
.end method

.method synthetic lambda$initView$5$com-keephealth-android-ui-main-activity-FamilyPermissonActivity(Z)V
    .registers 3

    .line 0
    const/4 v0, 0x6

    .line 110
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updatePosition:I

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->isTemperature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setTemperature(Z)V

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->UpdateFamily(Lcom/keephealth/android/model/bean/FamilyBean;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 5

    .line 124
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->isUpdate:Z

    if-eqz v0, :cond_27

    const/16 v0, 0x3f4

    .line 125
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v2, "status"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string v2, "family"

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 131
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    :cond_27
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->finish()V

    return-void
.end method

.method removeFamily()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900ae
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->removeFamily(I)V

    return-void
.end method

.method public returnRemoveFamily(I)V
    .registers 5

    if-nez p1, :cond_22

    const/16 p1, 0x3f4

    .line 139
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    .line 140
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->setResult(ILandroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->finish()V

    goto :goto_30

    .line 147
    :cond_22
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->showToast(Ljava/lang/String;)V

    :goto_30
    return-void
.end method

.method public returnUpdateFamily(I)V
    .registers 3

    if-nez p1, :cond_7

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->isUpdate:Z

    goto/16 :goto_8c

    .line 156
    :cond_7
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10078c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->showToast(Ljava/lang/String;)V

    .line 157
    iget p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updatePosition:I

    packed-switch p1, :pswitch_data_8e

    goto :goto_8c

    .line 179
    :pswitch_1b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object p1

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setTemperature(Z)V

    .line 180
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctTemp:Lcom/keephealth/android/views/CustomToggleButton;

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    goto :goto_8c

    .line 175
    :pswitch_2e
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object p1

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setBloodOxygen(Z)V

    .line 176
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctOxygen:Lcom/keephealth/android/views/CustomToggleButton;

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    goto :goto_8c

    .line 171
    :pswitch_41
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object p1

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setBloodPressure(Z)V

    .line 172
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctBlood:Lcom/keephealth/android/views/CustomToggleButton;

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    goto :goto_8c

    .line 167
    :pswitch_54
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object p1

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setHeartRate(Z)V

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctHeart:Lcom/keephealth/android/views/CustomToggleButton;

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    goto :goto_8c

    .line 163
    :pswitch_67
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object p1

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setSleep(Z)V

    .line 164
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSleep:Lcom/keephealth/android/views/CustomToggleButton;

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    goto :goto_8c

    .line 159
    :pswitch_7a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object p1

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/FamilyPermisson;->setSport(Z)V

    .line 160
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSport:Lcom/keephealth/android/views/CustomToggleButton;

    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->updateVaule:Z

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    :goto_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_67
        :pswitch_54
        :pswitch_41
        :pswitch_2e
        :pswitch_1b
    .end packed-switch
.end method
