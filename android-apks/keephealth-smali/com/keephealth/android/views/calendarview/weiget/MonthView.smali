.class public Lcom/keephealth/android/views/calendarview/weiget/MonthView;
.super Landroid/view/ViewGroup;
.source "MonthView.java"


# static fields
.field private static final COLOR_RESET:I = 0x0

.field private static final COLOR_SET:I = 0x1

.field private static final COLUMN:I = 0x7

.field private static final ROW:I = 0x6


# instance fields
.field private calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

.field private chooseDays:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentMonth:I

.field private currentMonthDays:I

.field private item_layout:I

.field private lastClickDate:Lcom/keephealth/android/views/calendarview/bean/DateBean;

.field private lastClickedDay:I

.field private lastClickedView:Landroid/view/View;

.field private lastMonthDays:I

.field private mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

.field private mContext:Landroid/content/Context;

.field private mDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/DateBean;",
            ">;"
        }
    .end annotation
.end field

.field private nextMonthDays:I

.field womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 44
    iput p2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedDay:I

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->chooseDays:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mDates:Ljava/util/List;

    .line 66
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    .line 62
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setBackgroundColor(I)V

    return-void
.end method

.method private findDateBean(II)Lcom/keephealth/android/views/calendarview/bean/DateBean;
    .registers 7

    .line 551
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1d

    .line 553
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    if-ne v3, p2, :cond_7

    goto :goto_29

    .line 557
    :cond_1d
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    if-ne v3, p2, :cond_7

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v3

    if-ne v3, p1, :cond_7

    :goto_29
    move-object v1, v2

    goto :goto_7

    :cond_2b
    return-object v1
.end method

.method private findDestView(I)Landroid/view/View;
    .registers 5

    .line 573
    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastMonthDays:I

    :goto_2
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->nextMonthDays:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_24

    .line 574
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 575
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_25

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_24
    move-object p1, v2

    :goto_25
    if-nez p1, :cond_32

    .line 581
    iget p1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->currentMonthDays:I

    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastMonthDays:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 584
    :cond_32
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_40

    goto :goto_41

    :cond_40
    move-object v2, p1

    :goto_41
    return-object v2
.end method

.method private setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-nez p4, :cond_9

    return-void

    :cond_9
    const v3, 0x7f090581

    .line 272
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0903d4

    .line 273
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09020d

    .line 274
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f09021d

    .line 275
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 276
    iget-object v7, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSizeSolar()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    iget-object v7, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSizeLunar()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 279
    iget-object v4, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 280
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v9, v12

    .line 279
    invoke-virtual {v4, v7, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    .line 280
    invoke-virtual {v4, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const v7, 0x7f0800b4

    const v9, 0x7f0d00c7

    const/4 v10, -0x1

    const/16 v13, 0x8

    if-nez v2, :cond_189

    if-nez v4, :cond_bf

    .line 284
    new-instance v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    .line 285
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 286
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 287
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 288
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDate()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 289
    invoke-virtual {v4, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsClick(I)V

    .line 290
    iget-object v2, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->save(Ljava/lang/Object;)V

    goto :goto_c7

    .line 292
    :cond_bf
    invoke-virtual {v4, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsClick(I)V

    .line 293
    iget-object v2, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 296
    :goto_c7
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->isToday()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 297
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d7

    .line 300
    :cond_d4
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :goto_d7
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    const v6, 0x7f0800ac

    const v7, 0x7f060163

    if-ne v2, v12, :cond_111

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v2

    if-nez v2, :cond_fb

    const v2, 0x7f0800ad

    .line 306
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_fe

    .line 308
    :cond_fb
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 310
    :goto_fe
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v1

    if-eq v1, v10, :cond_10c

    .line 311
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2bf

    .line 314
    :cond_10c
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2bf

    .line 316
    :cond_111
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v8, :cond_138

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 320
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v1

    if-eq v1, v10, :cond_133

    .line 321
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2bf

    .line 324
    :cond_133
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2bf

    .line 326
    :cond_138
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v2

    if-ne v2, v12, :cond_162

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0800b1

    .line 328
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 329
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v1

    if-eq v1, v10, :cond_15d

    .line 330
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2bf

    .line 333
    :cond_15d
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2bf

    .line 336
    :cond_162
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f060151

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0800af

    .line 337
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 338
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v1

    if-eq v1, v10, :cond_184

    .line 339
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2bf

    .line 342
    :cond_184
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2bf

    :cond_189
    if-ne v2, v12, :cond_2bf

    if-eqz v4, :cond_298

    .line 347
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    const v14, 0x7f0800ab

    const v15, 0x7f06005b

    if-ne v2, v12, :cond_1e5

    .line 349
    :try_start_199
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v2

    if-nez v2, :cond_1b4

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f060055

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0800aa

    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1c2

    .line 353
    :cond_1b4
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 356
    :goto_1c2
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v1

    if-eq v1, v10, :cond_1cf

    .line 357
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d2

    .line 360
    :cond_1cf
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    :goto_1d2
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->isToday()Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 363
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2bf

    .line 366
    :cond_1e0
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1e3} :catch_2bf

    goto/16 :goto_2bf

    .line 371
    :cond_1e5
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v8, :cond_21c

    .line 373
    :try_start_1eb
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 375
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v1

    if-eq v1, v10, :cond_206

    .line 376
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_209

    .line 379
    :cond_206
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    :goto_209
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->isToday()Z

    move-result v1

    if-eqz v1, :cond_217

    .line 382
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2bf

    .line 385
    :cond_217
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_21a} :catch_2bf

    goto/16 :goto_2bf

    .line 390
    :cond_21c
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v2

    if-ne v2, v12, :cond_25d

    .line 392
    :try_start_222
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f06003f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0800b0

    .line 393
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 394
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v1

    if-eq v1, v10, :cond_246

    .line 395
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0d00c9

    .line 396
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_249

    .line 398
    :cond_246
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    :goto_249
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->isToday()Z

    move-result v1

    if-eqz v1, :cond_259

    .line 401
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0800b3

    .line 402
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2bf

    .line 404
    :cond_259
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2bf

    .line 412
    :cond_25d
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f06014f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0800ae

    .line 413
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 414
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v1

    if-eq v1, v10, :cond_281

    .line 415
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0d00c8

    .line 416
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_284

    .line 418
    :cond_281
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    :goto_284
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->isToday()Z

    move-result v1

    if-eqz v1, :cond_294

    .line 421
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0800b2

    .line 422
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2bf

    .line 424
    :cond_294
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_297
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_297} :catch_2bf

    goto :goto_2bf

    .line 432
    :cond_298
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f06014f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0800ae

    .line 433
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 434
    invoke-virtual/range {p4 .. p4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->isToday()Z

    move-result v1

    if-eqz v1, :cond_2bc

    .line 435
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0800b2

    .line 436
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2bf

    .line 438
    :cond_2bc
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :catch_2bf
    :cond_2bf
    :goto_2bf
    return-void
.end method

.method private setLunarText(Ljava/lang/String;Landroid/widget/TextView;I)V
    .registers 4

    .line 263
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_f

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorHoliday()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    :cond_f
    const-string p1, "holiday"

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setDateList$0$com-keephealth-android-views-calendarview-weiget-MonthView(Lcom/keephealth/android/views/calendarview/bean/DateBean;Landroid/view/View;)V
    .registers 11

    .line 203
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v0

    .line 204
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    if-eqz v1, :cond_bd

    .line 206
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleChooseListener()Lcom/keephealth/android/views/calendarview/listener/OnSingleChooseListener;

    move-result-object v2

    .line 207
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getMultiChooseListener()Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;

    move-result-object v3

    .line 208
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_89

    .line 209
    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getChooseType()I

    move-result v4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_72

    if-eqz v3, :cond_72

    .line 210
    iget v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedDay:I

    if-ne v2, v0, :cond_2f

    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    if-ne v2, p2, :cond_2f

    return-void

    .line 213
    :cond_2f
    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->chooseDays:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 214
    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->chooseDays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 215
    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->chooseDays:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_49
    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    if-eqz v2, :cond_5b

    .line 218
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v4

    iget v7, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedDay:I

    invoke-direct {p0, v4, v7}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDateBean(II)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v4

    const/4 v7, 0x4

    invoke-direct {p0, v7, v2, v5, v4}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 220
    :cond_5b
    iput v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedDay:I

    const/4 v2, 0x5

    .line 221
    invoke-direct {p0, v2, p2, v6, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 222
    iput-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    .line 223
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setChooseDate(IIZI)V

    .line 224
    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setLastClickDay(I)V

    .line 225
    invoke-interface {v3, p2, p1, v5}, Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;->onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V

    goto :goto_bd

    .line 227
    :cond_72
    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setLastClickDay(I)V

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    if-eqz v0, :cond_7d

    const/4 v1, 0x6

    .line 229
    invoke-direct {p0, v1, v0, v6, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    :cond_7d
    const/4 v0, 0x7

    .line 231
    invoke-direct {p0, v0, p2, v5, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 232
    iput-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    if-eqz v2, :cond_bd

    .line 235
    invoke-interface {v2, p2, p1}, Lcom/keephealth/android/views/calendarview/listener/OnSingleChooseListener;->onSingleChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    goto :goto_bd

    .line 238
    :cond_89
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getType()I

    move-result v3

    if-nez v3, :cond_a3

    .line 239
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->isSwitchChoose()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 240
    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setLastClickDay(I)V

    .line 242
    :cond_9a
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastMonth()V

    if-eqz v2, :cond_bd

    .line 244
    invoke-interface {v2, p2, p1}, Lcom/keephealth/android/views/calendarview/listener/OnSingleChooseListener;->onSingleChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    goto :goto_bd

    .line 246
    :cond_a3
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_bd

    .line 247
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->isSwitchChoose()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 248
    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setLastClickDay(I)V

    .line 250
    :cond_b5
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->nextMonth()V

    if-eqz v2, :cond_bd

    .line 252
    invoke-interface {v2, p2, p1}, Lcom/keephealth/android/views/calendarview/listener/OnSingleChooseListener;->onSingleChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    :cond_bd
    :goto_bd
    return-void
.end method

.method public multiChooseRefresh(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "[I>;)V"
        }
    .end annotation

    if-eqz p1, :cond_36

    .line 521
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 522
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    .line 523
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDestView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 524
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDestView(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    aget v0, v0, v1

    invoke-direct {p0, v3, v0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDateBean(II)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v0

    const/16 v3, 0xa

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    goto :goto_c

    .line 528
    :cond_36
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .line 472
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildCount()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 476
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 477
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 478
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 480
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getMeasuredWidth()I

    move-result p4

    mul-int/lit8 p5, p3, 0x7

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0xe

    .line 484
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildCount()I

    move-result p5

    const/16 v0, 0x23

    if-ne p5, v0, :cond_28

    .line 485
    div-int/lit8 p5, p2, 0x5

    goto :goto_34

    .line 486
    :cond_28
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildCount()I

    move-result p5

    const/16 v0, 0x2a

    if-ne p5, v0, :cond_33

    .line 487
    div-int/lit8 p5, p2, 0x6

    goto :goto_34

    :cond_33
    move p5, p1

    .line 489
    :goto_34
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_57

    .line 490
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 491
    rem-int/lit8 v1, p1, 0x7

    mul-int v2, v1, p3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, p4

    add-int/2addr v2, v1

    .line 492
    div-int/lit8 v1, p1, 0x7

    add-int v3, p2, p5

    mul-int/2addr v1, v3

    add-int v3, v2, p3

    add-int v4, v1, p2

    .line 495
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_34

    :cond_57
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 446
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 448
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 449
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    const/high16 p2, 0x41a00000    # 20.0f

    .line 451
    invoke-static {p2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x7

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x7

    const/high16 v0, 0x40a00000    # 5.0f

    .line 457
    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x6

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 458
    invoke-virtual {p0, p1, v1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setMeasuredDimension(II)V

    .line 460
    div-int/lit8 v1, v1, 0x6

    .line 462
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    .line 463
    :goto_2e
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_48

    .line 464
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 465
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 466
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 465
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    :cond_48
    return-void
.end method

.method public refresh(IZ)V
    .registers 7

    .line 500
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 501
    iget v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->currentMonth:I

    invoke-direct {p0, v2, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDateBean(II)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    :cond_10
    if-nez p2, :cond_13

    return-void

    .line 506
    :cond_13
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDestView(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1a

    return-void

    .line 510
    :cond_1a
    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->currentMonth:I

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDateBean(II)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object p1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 511
    iput-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    .line 512
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->invalidate()V

    return-void
.end method

.method public refreshClick(II)V
    .registers 7

    .line 535
    iget p1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->currentMonthDays:I

    if-le p2, p1, :cond_5

    move p2, p1

    .line 538
    :cond_5
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p1, :cond_17

    .line 539
    iget v1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->currentMonth:I

    iget v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedDay:I

    invoke-direct {p0, v1, v2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDateBean(II)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 541
    :cond_17
    iput p2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedDay:I

    .line 542
    invoke-direct {p0, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDestView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    .line 543
    invoke-direct {p0, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDestView(I)Landroid/view/View;

    move-result-object p1

    iget v1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->currentMonth:I

    invoke-direct {p0, v1, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDateBean(II)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3, v1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 544
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getMultiChooseListener()Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;

    move-result-object p1

    .line 545
    invoke-direct {p0, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDestView(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->currentMonth:I

    invoke-direct {p0, v2, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->findDateBean(II)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object p2

    invoke-interface {p1, v1, p2, v0}, Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;->onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V

    .line 546
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->invalidate()V

    return-void
.end method

.method public setAttrsBean(Lcom/keephealth/android/views/calendarview/bean/AttrsBean;)V
    .registers 2

    .line 591
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    return-void
.end method

.method public setDateList(Ljava/util/List;II)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/DateBean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->removeAllViews()V

    .line 77
    :cond_d
    iput-object v1, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mDates:Ljava/util/List;

    const/4 v2, 0x0

    .line 78
    iput v2, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastMonthDays:I

    .line 79
    iput v2, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->nextMonthDays:I

    .line 81
    iget-object v3, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->chooseDays:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    move/from16 v3, p2

    .line 83
    iput v3, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->currentMonthDays:I

    move/from16 v3, p3

    .line 84
    iput v3, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->currentMonth:I

    move v3, v2

    move v4, v3

    .line 85
    :goto_23
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_25b

    .line 86
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    .line 87
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4f

    .line 88
    iget v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastMonthDays:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastMonthDays:I

    .line 89
    iget-object v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->isShowLastNext()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 90
    new-instance v5, Landroid/view/View;

    iget-object v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v3}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->addView(Landroid/view/View;I)V

    goto/16 :goto_257

    .line 95
    :cond_4f
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getType()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6f

    .line 96
    iget v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->nextMonthDays:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->nextMonthDays:I

    .line 97
    iget-object v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->isShowLastNext()Z

    move-result v6

    if-nez v6, :cond_6f

    .line 98
    new-instance v5, Landroid/view/View;

    iget-object v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v3}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->addView(Landroid/view/View;I)V

    goto/16 :goto_257

    .line 106
    :cond_6f
    iget v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->item_layout:I

    const/4 v9, 0x0

    if-eqz v6, :cond_8f

    iget-object v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

    if-eqz v6, :cond_8f

    .line 107
    iget-object v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v10, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->item_layout:I

    invoke-virtual {v6, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 108
    iget-object v9, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

    invoke-interface {v9, v6, v5}, Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;->convertView(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;)[Landroid/widget/TextView;

    move-result-object v9

    .line 109
    aget-object v10, v9, v2

    .line 110
    aget-object v9, v9, v7

    goto :goto_af

    .line 112
    :cond_8f
    iget-object v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v10, 0x7f0c0129

    invoke-virtual {v6, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v9, 0x7f090581

    .line 113
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/widget/TextView;

    const v9, 0x7f0903d4

    .line 114
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 117
    :goto_af
    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorSolar()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSizeSolar()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorLunar()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSizeLunar()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getType()I

    move-result v11

    if-eqz v11, :cond_e1

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getType()I

    move-result v11

    if-ne v11, v8, :cond_ea

    .line 124
    :cond_e1
    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorLunar()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    :cond_ea
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->isShowLunar()Z

    move-result v11

    if-eqz v11, :cond_fe

    goto :goto_103

    :cond_fe
    const/16 v11, 0x8

    .line 153
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_103
    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getChooseType()I

    move-result v11

    if-nez v11, :cond_148

    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    .line 157
    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSingleDate()[I

    move-result-object v11

    if-eqz v11, :cond_148

    if-nez v4, :cond_148

    .line 159
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getType()I

    move-result v11

    if-ne v11, v7, :cond_148

    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    .line 160
    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSingleDate()[I

    move-result-object v11

    aget v11, v11, v2

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v12

    if-ne v11, v12, :cond_148

    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    .line 161
    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSingleDate()[I

    move-result-object v11

    aget v11, v11, v7

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v12

    if-ne v11, v12, :cond_148

    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    .line 162
    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSingleDate()[I

    move-result-object v11

    aget v11, v11, v8

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v12

    if-ne v11, v12, :cond_148

    .line 163
    iput-object v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    move v4, v7

    .line 167
    :cond_148
    invoke-direct {v0, v7, v6, v7, v5}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 169
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getType()I

    move-result v11

    if-ne v11, v7, :cond_1ec

    .line 170
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 171
    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getDisableStartDate()[I

    move-result-object v11

    const/4 v12, -0x1

    if-eqz v11, :cond_1a5

    iget-object v11, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    .line 172
    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getDisableStartDate()[I

    move-result-object v11

    invoke-static {v11}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v13

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v11

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v15

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v8

    filled-new-array {v11, v15, v8}, [I

    move-result-object v8

    invoke-static {v8}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v15

    cmp-long v8, v13, v15

    if-lez v8, :cond_1a5

    .line 173
    iget-object v5, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorLunar()I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v5, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorLunar()I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v0, v6, v3}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->addView(Landroid/view/View;I)V

    goto/16 :goto_257

    .line 180
    :cond_1a5
    iget-object v8, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getDisableEndDate()[I

    move-result-object v8

    if-eqz v8, :cond_1ec

    iget-object v8, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    .line 181
    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getDisableEndDate()[I

    move-result-object v8

    invoke-static {v8}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v13

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v8

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v11

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v15

    filled-new-array {v8, v11, v15}, [I

    move-result-object v8

    invoke-static {v8}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v15

    cmp-long v8, v13, v15

    if-gez v8, :cond_1ec

    .line 182
    iget-object v5, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorLunar()I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v5, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorLunar()I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v0, v6, v3}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->addView(Landroid/view/View;I)V

    goto :goto_257

    .line 190
    :cond_1ec
    invoke-static {}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getCurrentDate()[I

    move-result-object v8

    .line 191
    aget v9, v8, v2

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v10

    if-ne v9, v10, :cond_20f

    aget v9, v8, v7

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v10

    if-ne v9, v10, :cond_20f

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v10

    if-ne v8, v10, :cond_20f

    .line 192
    invoke-virtual {v5, v7}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setToday(Z)V

    .line 193
    invoke-direct {v0, v9, v6, v2, v5}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 196
    :cond_20f
    iget-object v7, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickDate:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v7

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v8

    if-ne v7, v8, :cond_24c

    iget-object v7, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickDate:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v7

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v8

    if-ne v7, v8, :cond_24c

    iget-object v7, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickDate:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v7

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v8

    if-ne v7, v8, :cond_24c

    .line 197
    iput-object v6, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedView:Landroid/view/View;

    .line 198
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v7

    iput v7, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickedDay:I

    .line 199
    iget-object v7, v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->chooseDays:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x3

    .line 200
    invoke-direct {v0, v7, v6, v2, v5}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDayColor(ILandroid/view/View;ILcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 202
    :cond_24c
    new-instance v7, Lcom/keephealth/android/views/calendarview/weiget/MonthView$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v5}, Lcom/keephealth/android/views/calendarview/weiget/MonthView$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/calendarview/weiget/MonthView;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {v0, v6, v3}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->addView(Landroid/view/View;I)V

    :goto_257
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_23

    .line 259
    :cond_25b
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->requestLayout()V

    return-void
.end method

.method public setLatClickDate(Lcom/keephealth/android/views/calendarview/bean/DateBean;)V
    .registers 2

    .line 596
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->lastClickDate:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    return-void
.end method

.method public setOnCalendarViewAdapter(ILcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;)V
    .registers 3

    .line 600
    iput p1, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->item_layout:I

    .line 601
    iput-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

    return-void
.end method
