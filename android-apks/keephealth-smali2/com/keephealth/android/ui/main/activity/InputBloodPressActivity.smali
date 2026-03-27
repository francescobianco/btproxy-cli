.class public Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "InputBloodPressActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

.field c:Ljava/util/Calendar;

.field dialogViewTime:Lcom/keephealth/android/childmodule/DialogView;

.field healthBloodItemDao:Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

.field stringFz:[Ljava/lang/String;

.field stringSs:[Ljava/lang/String;

.field stringTime:[Ljava/lang/String;

.field strings:[Ljava/lang/String;

.field valueFz:I

.field valueSs:I

.field viewModel:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/16 v0, 0xa1

    .line 59
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringFz:[Ljava/lang/String;

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringSs:[Ljava/lang/String;

    const/16 v0, 0x80

    .line 61
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->valueFz:I

    const/16 v0, 0x58

    .line 62
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->valueSs:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->viewModel:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;->upload:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    return-object v0
.end method

.method public initListener()V
    .registers 3

    .line 92
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvDate:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvTime:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvBloodFz:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvBloodSs:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 6

    .line 67
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 68
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->viewModel:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    .line 69
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->toBack()V

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f100665

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->healthBloodItemDao:Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->timestampToDateFiveGang(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->timestampToDateHM(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->timestampToDateYMD(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->timestampToDateHM(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7b
    const/16 v0, 0xa1

    if-ge v1, v0, :cond_b5

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringFz:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mmHg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringSs:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_b2

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_b5
    return-void
.end method

.method synthetic lambda$createObserver$0$com-keephealth-android-ui-main-activity-InputBloodPressActivity(Ljava/lang/String;)V
    .registers 9

    .line 214
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->hideLoading()V

    .line 215
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_50

    const p1, 0x7f10050d

    .line 216
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 217
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 218
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 219
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const-string v5, "year"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    const-string v2, "month"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v1, "day"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 223
    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->setResult(ILandroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->finish()V

    goto/16 :goto_d7

    :cond_50
    const p1, 0x7f10044a

    .line 226
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    if-eqz p1, :cond_d7

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->healthBloodItemDao:Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    .line 229
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    .line 230
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v4, v2

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v4, v1

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Minute:Lorg/greenrobot/greendao/Property;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    const/16 v2, 0xc

    .line 231
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v4, v1

    .line 229
    invoke-virtual {p1, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    if-eqz p1, :cond_d7

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->healthBloodItemDao:Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->delete(Ljava/lang/Object;)V

    :cond_d7
    :goto_d7
    return-void
.end method
