.class public Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;
.super Lcom/keephealth/android/base/BaseFragment;
.source "EcgFragment.java"


# instance fields
.field ecgHeart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090154
    .end annotation
.end field

.field ecgHeart2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090155
    .end annotation
.end field

.field private ecgRecordInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/EcgRecordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

.field private ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

.field ecgState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090156
    .end annotation
.end field

.field ecgState2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090157
    .end annotation
.end field

.field ecgTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090158
    .end annotation
.end field

.field ecgTime2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090159
    .end annotation
.end field

.field ecgView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09015a
    .end annotation
.end field

.field layoutMeasure:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090310
    .end annotation
.end field

.field layoutMeasure1:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090311
    .end annotation
.end field

.field layoutMeasure2:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090312
    .end annotation
.end field

.field layoutNoData:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090318
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseFragment;-><init>()V

    return-void
.end method

.method private getDesc(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 178
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 182
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d0

    .line 183
    :cond_2e
    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 184
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d0

    .line 185
    :cond_46
    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 186
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d0

    .line 187
    :cond_5e
    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 188
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100292

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 189
    :cond_75
    const-string v2, "16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 190
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 191
    :cond_8c
    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 192
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 193
    :cond_a3
    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 194
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 195
    :cond_ba
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 196
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_d0
    :goto_d0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_dc

    .line 199
    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_dc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getLayoutId()I
    .registers 2

    const v0, 0x7f0c0102

    return v0
.end method

.method protected initView()V
    .registers 1

    .line 78
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->initView()V

    return-void
.end method

.method synthetic lambda$onVisiable$0$com-keephealth-android-ui-ecg-fragment-EcgFragment(Landroid/view/View;)V
    .registers 3

    .line 98
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method protected onVisiable()V
    .registers 16

    .line 84
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->onVisiable()V

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 89
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getEcgRecordInfoDao()Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo:Ljava/util/List;

    const/16 v2, 0x8

    if-eqz v0, :cond_3a8

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_3a8

    .line 99
    :cond_46
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, "bpm"

    const-string v5, ":"

    const v6, 0x7f100157

    const-string v7, "  AM"

    const-string v8, "  PM"

    const/16 v9, 0x9

    const v10, 0x7f060113

    const v11, 0x7f1002a0

    const v12, 0x7f0600a1

    if-ne v0, v1, :cond_184

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getState()I

    move-result v0

    if-nez v0, :cond_b2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d2

    .line 110
    :cond_b2
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    :goto_d2
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime:Landroid/widget/TextView;

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMDHM:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_152

    .line 116
    :cond_f2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 118
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_12c

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_152

    .line 121
    :cond_12c
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_152
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgHeart:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getAvgHeart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3cb

    .line 127
    :cond_184
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getState()I

    move-result v0

    if-nez v0, :cond_1dc

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1fc

    .line 138
    :cond_1dc
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    :goto_1fc
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime:Landroid/widget/TextView;

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMDHM:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27c

    .line 144
    :cond_21c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 146
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_256

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27c

    .line 149
    :cond_256
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_27c
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgHeart:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getAvgHeart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getState()I

    move-result v0

    if-nez v0, :cond_2d7

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2f7

    .line 158
    :cond_2d7
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    :goto_2f7
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_317

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime2:Landroid/widget/TextView;

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMDHM:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_377

    .line 164
    :cond_317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_351

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_377

    .line 169
    :cond_351
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_377
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgHeart2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getAvgHeart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3cb

    .line 93
    :cond_3a8
    :goto_3a8
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutNoData:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3cb
    return-void
.end method

.method satrtMeasuring()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900b6
        }
    .end annotation

    const v0, 0x7f0900b6

    .line 257
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 258
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 259
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_21

    .line 260
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3e

    .line 262
    :cond_21
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->showToast(Ljava/lang/String;)V

    goto :goto_3e

    .line 265
    :cond_30
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->showToast(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method toEcgWebView()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09021e
        }
    .end annotation

    const v0, 0x7f09021e

    .line 206
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    const-string v1, "loadType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1d
    return-void
.end method

.method toEcgWebViewInstructions()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090242
        }
    .end annotation

    const v0, 0x7f090449

    .line 223
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string v1, "loadType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1d
    return-void
.end method

.method toEcgWebViewNoun()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090449
        }
    .end annotation

    const v0, 0x7f090449

    .line 214
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v1, "loadType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1d
    return-void
.end method

.method toRecords()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090313
        }
    .end annotation

    const v0, 0x7f090310

    .line 234
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 235
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_12
    return-void
.end method

.method todatail1()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090311
        }
    .end annotation

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    const-string v1, "recordInfo"

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 243
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo1:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v1

    const-string v3, "measureTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 244
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method todatail2()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090312
        }
    .end annotation

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    const-string v1, "recordInfo"

    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 251
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgRecordInfo2:Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v1

    const-string v3, "measureTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 252
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
