.class public Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "DrinkWaterAddActivity.java"


# instance fields
.field addDrinkWater:I

.field addWater:Ljava/lang/String;

.field etDrinkWaterGoal:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field tvBottle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09062a
    .end annotation
.end field

.field tvCup:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063a
    .end annotation
.end field

.field tv_fast_add:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090739
    .end annotation
.end field

.field tv_left_box:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090750
    .end annotation
.end field

.field tv_right_box:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090774
    .end annotation
.end field

.field tv_unit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09078d
    .end annotation
.end field

.field userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addWater:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->saveWaterDataBle()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->saveWaterData()V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private hideKeyboard()V
    .registers 4

    .line 323
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1c

    .line 324
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 325
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 328
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method private isTouchInsideView(Landroid/widget/EditText;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x2

    .line 373
    new-array v0, v0, [I

    .line 374
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 375
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 376
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    const/4 v2, 0x0

    .line 377
    aget v3, v0, v2

    if-lt v1, v3, :cond_29

    invoke-virtual {p1}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_29

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lt p2, v0, :cond_29

    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    if-gt p2, v0, :cond_29

    move v2, v1

    :cond_29
    return v2
.end method

.method private saveWaterData()V
    .registers 12

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f100263

    if-eqz v0, :cond_1f

    .line 250
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_1f
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    if-nez v0, :cond_30

    .line 254
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_115

    .line 256
    :cond_30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;-><init>()V

    const/4 v2, 0x1

    .line 258
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setYear(I)V

    const/4 v3, 0x2

    .line 259
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMonth(I)V

    const/4 v4, 0x5

    .line 260
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setDay(I)V

    const/16 v5, 0xb

    .line 261
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setHour(I)V

    const/16 v5, 0xc

    .line 262
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMinuter(I)V

    .line 263
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setData(J)V

    .line 264
    iget v5, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setWater(I)V

    .line 265
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v5

    .line 266
    invoke-virtual {v5, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->save(Ljava/lang/Object;)V

    .line 267
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v5

    .line 268
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getYear()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 269
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getMonth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    aput-object v1, v8, v2

    .line 268
    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-nez v1, :cond_fb

    .line 271
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 272
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setYear(I)V

    .line 273
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setMonth(I)V

    .line 274
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setDay(I)V

    .line 275
    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 276
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setData(J)V

    .line 277
    invoke-virtual {v5, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->save(Ljava/lang/Object;)V

    goto :goto_108

    .line 279
    :cond_fb
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v0

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 280
    invoke-virtual {v5, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->update(Ljava/lang/Object;)V

    :goto_108
    const/16 v0, 0x3f1

    .line 282
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/16 v0, 0xc8

    .line 283
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->setResult(I)V

    .line 284
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->finish()V

    :goto_115
    return-void
.end method

.method private saveWaterDataBle()V
    .registers 12

    .line 290
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 291
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;-><init>()V

    const/4 v2, 0x1

    .line 292
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setYear(I)V

    const/4 v3, 0x2

    .line 293
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMonth(I)V

    const/4 v4, 0x5

    .line 294
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setDay(I)V

    const/16 v5, 0xb

    .line 295
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setHour(I)V

    const/16 v5, 0xc

    .line 296
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMinuter(I)V

    .line 297
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setData(J)V

    .line 298
    iget v5, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setWater(I)V

    .line 299
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v5

    .line 300
    invoke-virtual {v5, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->save(Ljava/lang/Object;)V

    .line 301
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v5

    .line 302
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getYear()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 303
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getMonth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    aput-object v1, v8, v2

    .line 302
    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-nez v1, :cond_cb

    .line 305
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 306
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setYear(I)V

    .line 307
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setMonth(I)V

    .line 308
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setDay(I)V

    .line 309
    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 310
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setData(J)V

    .line 311
    invoke-virtual {v5, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->save(Ljava/lang/Object;)V

    goto :goto_d8

    .line 313
    :cond_cb
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v0

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addDrinkWater:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 314
    invoke-virtual {v5, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->update(Ljava/lang/Object;)V

    :goto_d8
    const/16 v0, 0x3f1

    .line 316
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/16 v0, 0xc8

    .line 317
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->setResult(I)V

    .line 318
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->finish()V

    return-void
.end method

.method private setEtDrinkWaterGoal()V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addWater:Ljava/lang/String;

    const-string v1, ".*\\d.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 343
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addWater:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v1

    if-nez v1, :cond_51

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v2, v0, v1

    const v3, 0x7f1006c7

    if-gez v2, :cond_36

    .line 347
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_89

    :cond_36
    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_89

    .line 351
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_89

    :cond_51
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    const v3, 0x7f1006c8

    if-gez v2, :cond_6b

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_89

    :cond_6b
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_89

    .line 361
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_89

    .line 366
    :cond_82
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_89
    :goto_89
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->hideKeyboard()V

    return-void
.end method


# virtual methods
.method addWater1()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090505
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    if-nez v0, :cond_14

    .line 382
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 383
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 384
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const v1, 0x410ccccd    # 8.8f

    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 386
    :cond_2e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const v1, 0x41073333    # 8.45f

    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_3e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method addWater2()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090506
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    if-nez v0, :cond_14

    .line 394
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 395
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 396
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const v1, 0x418ccccd    # 17.6f

    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 398
    :cond_2e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const v1, 0x41873333    # 16.9f

    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :goto_3e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0046

    return v0
.end method

.method protected initView()V
    .registers 6

    .line 79
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 80
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 81
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->bgView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100276

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->rightText:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100508

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->rightText:Landroid/widget/Button;

    const v3, 0x7f080068

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->rightText:Landroid/widget/Button;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Lcom/keephealth/android/model/bean/DeviceModel;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V

    .line 182
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/text/InputFilter;

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_unit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_fast_add:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_left_box:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_right_box:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    if-nez v0, :cond_af

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_unit:Landroid/widget/TextView;

    const-string v1, "ml"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvCup:Landroid/widget/TextView;

    const-string v1, "(250ml)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvBottle:Landroid/widget/TextView;

    const-string v1, "(500ml)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14c

    .line 193
    :cond_af
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    const-string v1, "oz"

    const-string v2, "oz)"

    const-string v4, "("

    if-ne v0, v3, :cond_105

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_unit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvCup:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x410ccccd    # 8.8f

    invoke-static {v3}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvBottle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x418ccccd    # 17.6f

    invoke-static {v3}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14c

    .line 198
    :cond_105
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_unit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvCup:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x41073333    # 8.45f

    invoke-static {v3}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvBottle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x41873333    # 16.9f

    invoke-static {v3}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_14c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-DrinkWaterAddActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "initView: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " == "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    if-eq p2, p1, :cond_26

    if-nez p2, :cond_24

    goto :goto_26

    :cond_24
    const/4 p1, 0x0

    return p1

    .line 240
    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->setEtDrinkWaterGoal()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    .line 334
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->isTouchInsideView(Landroid/widget/EditText;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 335
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->setEtDrinkWaterGoal()V

    .line 338
    :cond_11
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
