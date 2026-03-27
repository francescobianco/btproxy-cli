.class public Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "EcgMeasureFinishActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/ecg/MyEcgScrollView$OnScrollListener;
.implements Lcom/keephealth/android/persenter/ecg/EcgDetailContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/ecg/EcgDetailPresenter;",
        ">;",
        "Lcom/keephealth/android/views/ecg/MyEcgScrollView$OnScrollListener;",
        "Lcom/keephealth/android/persenter/ecg/EcgDetailContract$View;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

.field ecgScrollView:Lcom/keephealth/android/views/ecg/MyEcgScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09015c
    .end annotation
.end field

.field layoutDesc:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090302
    .end annotation
.end field

.field mNestedScrollView:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903da
    .end annotation
.end field

.field mSeekBar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e3
    .end annotation
.end field

.field private measureTime:J

.field private seekBarPosition:I

.field private showInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/ECGItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field tvAvgHr:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061f
    .end annotation
.end field

.field tvCheckTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090633
    .end annotation
.end field

.field tvDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09064f
    .end annotation
.end field

.field tvSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906d4
    .end annotation
.end field

.field tvStateTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e1
    .end annotation
.end field

.field tvZengyi:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09071c
    .end annotation
.end field

.field viewData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->seekBarPosition:I

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->showInfos:Ljava/util/List;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->viewData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->seekBarPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->seekBarPosition:I

    return p1
.end method

.method private getDesc(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 135
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\u3001"

    if-eqz v2, :cond_3c

    .line 139
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 140
    :cond_3c
    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 141
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 142
    :cond_57
    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 143
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 144
    :cond_72
    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 145
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100291

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 146
    :cond_8d
    const-string v2, "16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 147
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 148
    :cond_a9
    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 149
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100299

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 150
    :cond_c5
    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 151
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100297

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 152
    :cond_e1
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 153
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 156
    :cond_fd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_106

    .line 157
    const-string p1, ""

    return-object p1

    .line 159
    :cond_106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showDeleteDialog()V
    .registers 4

    .line 196
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)V

    const v2, 0x7f1001e1

    .line 197
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f100193

    .line 208
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 209
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setType(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f060127

    .line 211
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightTextColor(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    return-void
.end method

.method private showDetailDialog()V
    .registers 5

    .line 185
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f11031d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 186
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v2, 0x7f0903d7

    .line 188
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ecg/MyEcgAllViews;

    .line 189
    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->viewData:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ecg/MyEcgAllViews;->setData(Ljava/util/List;)V

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 191
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c004d

    return v0
.end method

.method public getSuccess(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/ECGItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->showInfos:Ljava/util/List;

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->viewData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->showInfos:Ljava/util/List;

    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_39

    const/4 p1, 0x0

    .line 226
    :goto_12
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->showInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_32

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->viewData:Ljava/util/List;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->showInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getHr()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 229
    :cond_32
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgScrollView:Lcom/keephealth/android/views/ecg/MyEcgScrollView;

    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->viewData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->setData(Ljava/util/List;)V

    :cond_39
    return-void
.end method

.method protected initView()V
    .registers 6

    .line 81
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10028e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d026b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "measureTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->measureTime:J

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "recordInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgScrollView:Lcom/keephealth/android/views/ecg/MyEcgScrollView;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/ecg/MyEcgScrollView;->setmScrollListener(Lcom/keephealth/android/views/ecg/MyEcgScrollView$OnScrollListener;)V

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvZengyi:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1007ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10mm/mv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvSpeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1007ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "25mm/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity$1;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getState()I

    move-result v0

    if-nez v0, :cond_c9

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvStateTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->layoutDesc:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_f7

    .line 112
    :cond_c9
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f7

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvStateTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->layoutDesc:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_f7
    :goto_f7
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvAvgHr:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getAvgHeart()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "bpm"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f10027c

    if-eqz v0, :cond_167

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvCheckTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMDHM:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1ed

    .line 123
    :cond_167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0x9

    .line 125
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1b5

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvCheckTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  AM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1ed

    .line 128
    :cond_1b5
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvCheckTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  PM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_1ed
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/ecg/EcgDetailPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->measureTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/ecg/EcgDetailPresenter;->getEcgDetail(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-ecg-activity-EcgMeasureFinishActivity(Landroid/view/View;)V
    .registers 2

    .line 84
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->showDeleteDialog()V

    return-void
.end method

.method synthetic lambda$showDeleteDialog$1$com-keephealth-android-ui-ecg-activity-EcgMeasureFinishActivity(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 198
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getEcgRecordInfoDao()Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    move-result-object p1

    .line 199
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getECGItemInfoDao()Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    move-result-object p2

    .line 200
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-wide v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->measureTime:J

    .line 201
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 203
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-wide v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->measureTime:J

    .line 204
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    new-array v0, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, p2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    const/16 p1, 0xc8

    .line 206
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->finish()V

    return-void
.end method

.method public onScroll(I)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->seekBarPosition:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method toShare()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0906bf
        }
    .end annotation

    const v0, 0x7f0906bf

    const-wide/16 v1, 0x3e8

    .line 175
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_23

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string v1, "measureTime"

    iget-wide v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->measureTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 178
    const-string v1, "recordInfo"

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgRecordInfo:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 179
    const-class v1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_23
    return-void
.end method

.method toWebview()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0905f8
        }
    .end annotation

    const v0, 0x7f0905f8

    .line 166
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v1, "loadType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    const-class v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_19
    return-void
.end method
