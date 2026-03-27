.class public Lcom/keephealth/android/util/WomenHealthUtil;
.super Ljava/lang/Object;
.source "WomenHealthUtil.java"


# static fields
.field public static cal_pro_day:Ljava/lang/String; = null

.field public static cal_pro_month:Ljava/lang/String; = null

.field private static calendar:Ljava/util/Calendar; = null

.field private static day_cal_next:Ljava/lang/String; = null

.field private static firstMenuralData:I = 0x0

.field private static firstPregnancyData:I = 0x0

.field static isCanSetPregnancy:Z = true

.field static isPreCanSetPregnancy:Z = true

.field private static menstrual:I

.field private static month_cal_next:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calFiftyProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I
    .registers 14

    .line 289
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    if-eqz v0, :cond_3f0

    .line 292
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3f0

    move v3, v2

    .line 293
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "0"

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-string v8, ""

    const/4 v9, 0x1

    if-ge v3, v4, :cond_13c

    .line 294
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    .line 297
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-eq v4, v9, :cond_55

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v7, :cond_138

    .line 299
    :cond_55
    new-instance v4, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-direct {v4}, Lcom/keephealth/android/model/bean/WomenHealthPre;-><init>()V

    .line 300
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    if-ge v7, v6, :cond_80

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    goto :goto_9d

    .line 303
    :cond_80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    .line 305
    :goto_9d
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    if-ge v7, v6, :cond_c3

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    goto :goto_e0

    .line 308
    :cond_c3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    .line 310
    :goto_e0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setDate(Ljava/lang/String;)V

    .line 311
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setYear(I)V

    .line 312
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setMonth(I)V

    .line 313
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setDay(I)V

    .line 314
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_138
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_26

    .line 317
    :cond_13c
    new-instance v0, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/WomenHealthPre;-><init>()V

    .line 318
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setYear(I)V

    .line 319
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setMonth(I)V

    .line 320
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setDay(I)V

    .line 321
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v3

    if-ge v3, v6, :cond_170

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    goto :goto_187

    .line 324
    :cond_170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    .line 326
    :goto_187
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    if-ge v3, v6, :cond_1a1

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    goto :goto_1b8

    .line 329
    :cond_1a1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    .line 331
    :goto_1b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setDate(Ljava/lang/String;)V

    .line 332
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Lcom/keephealth/android/util/MyWomenBeanComparator;

    invoke-direct {v0}, Lcom/keephealth/android/util/MyWomenBeanComparator;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, v2

    .line 336
    :goto_1ec
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "45er456"

    if-ge v0, v3, :cond_216

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "list1.get(i):"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ec

    .line 339
    :cond_216
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_21e

    goto/16 :goto_3ce

    :cond_21e
    move v0, v2

    move v3, v0

    .line 342
    :goto_220
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3cd

    .line 343
    const-string v5, "   calendarCurrent:"

    const/4 v6, 0x5

    if-lez v0, :cond_2fb

    .line 344
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getYear()I

    move-result v8

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v10

    if-ne v8, v10, :cond_3c9

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getMonth()I

    move-result v8

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v10

    if-ne v8, v10, :cond_3c9

    .line 345
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getDay()I

    move-result v8

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v10

    if-ne v8, v10, :cond_3c9

    .line 346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    add-int/lit8 v8, v0, -0x1

    .line 347
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getYear()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 348
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getMonth()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v3, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 349
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getDay()I

    move-result v8

    invoke-virtual {v3, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 352
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 353
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v8, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 354
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v10

    invoke-virtual {v8, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "1---:"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1---:   DateUtil.getDaysBetween(calendar, calendarCurrent):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v8}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {v3, v8}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v5

    if-ltz v5, :cond_3c8

    .line 358
    invoke-static {v3, v8}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto/16 :goto_3c9

    .line 364
    :cond_2fb
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getYear()I

    move-result v8

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v10

    if-ne v8, v10, :cond_3c9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getMonth()I

    move-result v8

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v10

    if-ne v8, v10, :cond_3c9

    .line 365
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getDay()I

    move-result v8

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v10

    if-ne v8, v10, :cond_3c9

    .line 366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 367
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getYear()I

    move-result v8

    invoke-virtual {v3, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 368
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getMonth()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 369
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getDay()I

    move-result v8

    invoke-virtual {v3, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 372
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 373
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v8, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 374
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v10

    invoke-virtual {v8, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "2---:"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "2---:   DateUtil.getDaysBetween(calendar, calendarCurrent):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v8}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v3, v8}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v5

    if-ltz v5, :cond_3c8

    .line 378
    invoke-static {v3, v8}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_3c9

    :cond_3c8
    move v3, v2

    :cond_3c9
    :goto_3c9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_220

    :cond_3cd
    move v2, v3

    .line 386
    :goto_3ce
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pre:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  a:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "45er455"

    invoke-static {p1, p0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f0
    return v2
.end method

.method public static calLastMunal()Ljava/util/Calendar;
    .registers 11

    .line 626
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 627
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 629
    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_17e

    .line 630
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17e

    const/4 v3, 0x0

    move v4, v3

    .line 631
    :goto_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_136

    .line 632
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-ne v5, v6, :cond_132

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v5

    if-ne v5, v6, :cond_132

    .line 633
    new-instance v5, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-direct {v5}, Lcom/keephealth/android/model/bean/WomenHealthNext;-><init>()V

    .line 634
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    const-string v7, "0"

    const/16 v8, 0xa

    const-string v9, ""

    if-ge v6, v8, :cond_7a

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    goto :goto_97

    .line 637
    :cond_7a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    .line 639
    :goto_97
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    if-ge v6, v8, :cond_bd

    .line 640
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    goto :goto_da

    .line 642
    :cond_bd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    .line 644
    :goto_da
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setDate(Ljava/lang/String;)V

    .line 645
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setYear(I)V

    .line 646
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setMonth(I)V

    .line 647
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setDay(I)V

    .line 648
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_132
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2a

    .line 652
    :cond_136
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17e

    .line 653
    new-instance v1, Lcom/keephealth/android/util/MyWomenBeanNextComparator;

    invoke-direct {v1}, Lcom/keephealth/android/util/MyWomenBeanNextComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 654
    :goto_144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_17e

    .line 656
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    if-ne v3, v1, :cond_17b

    .line 657
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getYear()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 658
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getMonth()I

    move-result v1

    sub-int/2addr v1, v6

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 659
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getDay()I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    :cond_17b
    add-int/lit8 v3, v3, 0x1

    goto :goto_144

    :cond_17e
    return-object v0
.end method

.method public static calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I
    .registers 12

    .line 396
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    if-eqz p0, :cond_363

    .line 399
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_363

    move v2, v1

    .line 400
    :goto_26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "0"

    const/16 v5, 0xa

    const-string v6, ""

    const/4 v7, 0x1

    if-ge v2, v3, :cond_132

    .line 401
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    if-ne v3, v7, :cond_12e

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v3

    if-ne v3, v7, :cond_12e

    .line 402
    new-instance v3, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-direct {v3}, Lcom/keephealth/android/model/bean/WomenHealthNext;-><init>()V

    .line 403
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    if-ge v7, v5, :cond_76

    .line 404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    goto :goto_93

    .line 406
    :cond_76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    .line 408
    :goto_93
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    if-ge v7, v5, :cond_b9

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    goto :goto_d6

    .line 411
    :cond_b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    .line 413
    :goto_d6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setDate(Ljava/lang/String;)V

    .line 414
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setYear(I)V

    .line 415
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setMonth(I)V

    .line 416
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setDay(I)V

    .line 417
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_26

    .line 421
    :cond_132
    new-instance p0, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-direct {p0}, Lcom/keephealth/android/model/bean/WomenHealthNext;-><init>()V

    .line 422
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setYear(I)V

    .line 423
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setMonth(I)V

    .line 424
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setDay(I)V

    .line 425
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v2

    if-ge v2, v5, :cond_166

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    goto :goto_17d

    .line 428
    :cond_166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    .line 430
    :goto_17d
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v2

    if-ge v2, v5, :cond_197

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    goto :goto_1ae

    .line 433
    :cond_197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    .line 435
    :goto_1ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setDate(Ljava/lang/String;)V

    .line 436
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance p0, Lcom/keephealth/android/util/MyWomenBeanNextComparator;

    invoke-direct {p0}, Lcom/keephealth/android/util/MyWomenBeanNextComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move p0, v1

    .line 439
    :goto_1e2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "6t6t6tg"

    if-ge p0, v2, :cond_20c

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "list2.get(i):"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1e2

    .line 442
    :cond_20c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v7, :cond_214

    goto/16 :goto_351

    :cond_214
    move p0, v1

    .line 445
    :goto_215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_350

    .line 446
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v4

    if-ne v2, v4, :cond_34c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v4

    if-ne v2, v4, :cond_34c

    .line 447
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getDay()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v4

    if-ne v2, v4, :cond_34c

    .line 448
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v7

    const/4 v2, 0x5

    const/4 v4, 0x2

    if-ge v1, p0, :cond_2a6

    .line 449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    add-int/lit8 v5, v1, 0x1

    .line 450
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getYear()I

    move-result v6

    invoke-virtual {p0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 451
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getMonth()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {p0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 452
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getDay()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 454
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 455
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 456
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 457
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v4

    invoke-virtual {v5, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 458
    invoke-static {p0, v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    goto/16 :goto_34c

    .line 462
    :cond_2a6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 463
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getYear()I

    move-result v5

    invoke-virtual {p0, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 464
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getMonth()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {p0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 465
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getDay()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 467
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 468
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 469
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 470
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v4

    invoke-virtual {v5, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 471
    invoke-static {p0, v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "--AAAAAA-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "next\u2014\u2014DateUtil.getDaysBetween(calendar, calendarCurrent):"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v2

    :cond_34c
    :goto_34c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_215

    :cond_350
    move v1, p0

    .line 480
    :goto_351
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "next:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_363
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static calNextMuntralAndOldEnd(IIII)Ljava/util/Calendar;
    .registers 21

    move/from16 v0, p0

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "year:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  month:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  day:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "6t6ty6g"

    invoke-static {v5, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1201
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v6

    .line 1202
    invoke-static/range {p1 .. p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v2

    .line 1203
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v8, 0x2

    new-array v9, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x1

    aget v12, v2, v11

    .line 1204
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v7

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v12, v2, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v11

    .line 1203
    invoke-virtual {v3, v4, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1204
    invoke-virtual {v3, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-ne v0, v11, :cond_99

    .line 1209
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-ne v9, v11, :cond_8f

    move v9, v7

    move v12, v9

    move v10, v8

    goto :goto_ab

    .line 1211
    :cond_8f
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-nez v9, :cond_a8

    move v9, v7

    move v12, v9

    const/4 v10, 0x3

    goto :goto_ab

    :cond_99
    if-le v0, v11, :cond_a8

    .line 1215
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-nez v9, :cond_a5

    move v9, v7

    move v10, v9

    move v12, v11

    goto :goto_ab

    .line 1224
    :cond_a5
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    :cond_a8
    move v9, v7

    move v10, v9

    move v12, v10

    :goto_ab
    if-eqz v3, :cond_1c4

    .line 1234
    aget v3, v2, v7

    aget v13, v2, v11

    aget v2, v2, v8

    invoke-static {v3, v13, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v2

    .line 1235
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v14, v2, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v16, v2, v11

    .line 1236
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v14, v7

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v15, v2, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v14, v11

    .line 1235
    invoke-virtual {v3, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1236
    invoke-virtual {v3, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1237
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "nextMunalDayBetween----:"

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "womenHealthBean----:"

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v13, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1a3

    if-ne v0, v11, :cond_134

    .line 1241
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v11, :cond_12c

    :goto_12a
    move v10, v8

    goto :goto_151

    .line 1243
    :cond_12c
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-nez v4, :cond_151

    :goto_132
    const/4 v10, 0x3

    goto :goto_151

    :cond_134
    if-le v0, v11, :cond_151

    .line 1247
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-nez v4, :cond_148

    if-nez v10, :cond_13f

    move v12, v11

    :cond_13f
    if-ne v10, v8, :cond_151

    .line 1251
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-nez v4, :cond_151

    goto :goto_132

    .line 1256
    :cond_148
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v11, :cond_151

    if-ne v12, v11, :cond_151

    goto :goto_12a

    .line 1264
    :cond_151
    :goto_151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "muntralMaxTwo:"

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "   muntralMax:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    if-ne v10, v4, :cond_1b6

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "muntralMax == 3----:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    invoke-virtual {v1, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 1268
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-virtual {v1, v8, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 1269
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1c4

    :cond_1a3
    const/4 v4, 0x3

    .line 1273
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "womenHealthBean == null_length:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b6
    const/16 v13, 0x96

    if-le v9, v13, :cond_1c0

    .line 1276
    const-string v0, "length > 150   break"

    invoke-static {v5, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c4

    :cond_1c0
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_ab

    :cond_1c4
    :goto_1c4
    return-object v1
.end method

.method public static calNextMuntralEnd(III)Ljava/util/Calendar;
    .registers 12

    .line 1142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1143
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 1144
    invoke-static {p0, p1, p2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p0

    .line 1145
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    aget v7, p0, v6

    .line 1146
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v7, p0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1145
    invoke-virtual {p1, p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1146
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p2, v2

    :goto_54
    if-eqz p1, :cond_e8

    .line 1148
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result p1

    if-eq p1, v6, :cond_e8

    .line 1149
    aget p1, p0, v2

    aget v4, p0, v6

    aget p0, p0, v3

    invoke-static {p1, v4, p0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p0

    .line 1150
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v5, p0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v8, p0, v6

    .line 1151
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v2

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v8, p0, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1150
    invoke-virtual {p1, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1151
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1152
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "womenHealthBean----:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6t6tyg"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_df

    .line 1153
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v4

    if-ne v4, v6, :cond_df

    .line 1154
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p0

    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 1155
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p0

    sub-int/2addr p0, v6

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 1156
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_e8

    :cond_df
    const/16 v4, 0x96

    if-le p2, v4, :cond_e4

    goto :goto_e8

    :cond_e4
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_54

    :cond_e8
    :goto_e8
    return-object v0
.end method

.method public static calNextMuntralStartTime(III)Ljava/util/Calendar;
    .registers 12

    .line 1171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1172
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 1173
    invoke-static {p0, p1, p2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p0

    .line 1174
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    aget v7, p0, v6

    .line 1175
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v7, p0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1174
    invoke-virtual {p1, p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1175
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p2, v2

    :goto_54
    if-eqz p1, :cond_e8

    .line 1178
    aget p1, p0, v2

    aget v4, p0, v6

    aget p0, p0, v3

    invoke-static {p1, v4, p0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p0

    .line 1179
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v5, p0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v8, p0, v6

    .line 1180
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v2

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v8, p0, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1179
    invoke-virtual {p1, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1180
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "womenHealthBean----:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6t6tyg"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_df

    .line 1182
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v6, :cond_df

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v4

    if-ne v4, v6, :cond_df

    .line 1183
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p0

    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 1184
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p0

    sub-int/2addr p0, v6

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 1185
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_e8

    :cond_df
    const/16 v4, 0x96

    if-le p2, v4, :cond_e4

    goto :goto_e8

    :cond_e4
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_54

    :cond_e8
    :goto_e8
    return-object v0
.end method

.method public static calNextWillMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)Ljava/util/Calendar;
    .registers 12

    .line 487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 488
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 489
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    aget v7, p1, v6

    .line 490
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v7, p1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    .line 489
    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 490
    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move v1, v2

    move v4, v1

    :goto_61
    if-eqz v0, :cond_65

    if-eqz v0, :cond_e6

    :cond_65
    if-eqz v0, :cond_87

    .line 494
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-ne v5, v3, :cond_87

    if-eqz v1, :cond_d9

    .line 496
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    invoke-virtual {p0, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 497
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-virtual {p0, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 498
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_e6

    .line 502
    :cond_87
    aget v0, p1, v2

    aget v5, p1, v6

    aget p1, p1, v3

    invoke-static {v0, v5, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 503
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v7, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v9, p1, v6

    .line 504
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v2

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v9, p1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v6

    .line 503
    invoke-virtual {v0, v5, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 504
    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    :cond_d9
    if-eqz v0, :cond_e2

    .line 506
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-ne v5, v3, :cond_e2

    move v1, v6

    :cond_e2
    const/16 v5, 0x78

    if-le v4, v5, :cond_e7

    :cond_e6
    :goto_e6
    return-object p0

    :cond_e7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_61
.end method

.method public static calPreMuntralStart(III)Ljava/util/Calendar;
    .registers 12

    .line 1287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1288
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 1289
    invoke-static {p0, p1, p2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p0

    .line 1290
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    aget v7, p0, v6

    .line 1291
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v7, p0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1290
    invoke-virtual {p1, p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1291
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p2, v2

    :goto_54
    if-eqz p1, :cond_eb

    .line 1293
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result p1

    if-eq p1, v6, :cond_eb

    .line 1294
    aget p1, p0, v2

    aget v4, p0, v6

    aget p0, p0, v3

    invoke-static {p1, v4, p0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p0

    .line 1295
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v5, p0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v8, p0, v6

    .line 1296
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v2

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v8, p0, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1295
    invoke-virtual {p1, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1296
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p1, :cond_e2

    .line 1297
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v4

    if-ne v4, v6, :cond_e2

    .line 1298
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p0

    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 1299
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p0

    sub-int/2addr p0, v6

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 1300
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1301
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "calendar1-----:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "6t6tyg"

    invoke-static {p1, p0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    :cond_e2
    const/16 v4, 0x96

    if-le p2, v4, :cond_e7

    goto :goto_eb

    :cond_e7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_54

    :cond_eb
    :goto_eb
    return-object v0
.end method

.method public static calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I
    .registers 14

    .line 185
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    if-eqz v0, :cond_3e2

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3e2

    move v3, v2

    .line 189
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "0"

    const/16 v6, 0xa

    const-string v7, ""

    const/4 v8, 0x1

    if-ge v3, v4, :cond_12f

    .line 190
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    .line 194
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v8, :cond_12b

    .line 195
    new-instance v4, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-direct {v4}, Lcom/keephealth/android/model/bean/WomenHealthPre;-><init>()V

    .line 196
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    if-ge v8, v6, :cond_73

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    goto :goto_90

    .line 199
    :cond_73
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    .line 201
    :goto_90
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v8

    if-ge v8, v6, :cond_b6

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    goto :goto_d3

    .line 204
    :cond_b6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    .line 206
    :goto_d3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setDate(Ljava/lang/String;)V

    .line 207
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setYear(I)V

    .line 208
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setMonth(I)V

    .line 209
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setDay(I)V

    .line 210
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_26

    .line 213
    :cond_12f
    new-instance v0, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/WomenHealthPre;-><init>()V

    .line 214
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setYear(I)V

    .line 215
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setMonth(I)V

    .line 216
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setDay(I)V

    .line 217
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v3

    if-ge v3, v6, :cond_163

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    goto :goto_17a

    .line 220
    :cond_163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    .line 222
    :goto_17a
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    if-ge v3, v6, :cond_194

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    goto :goto_1ab

    .line 225
    :cond_194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    .line 227
    :goto_1ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_month:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/util/WomenHealthUtil;->cal_pro_day:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/WomenHealthPre;->setDate(Ljava/lang/String;)V

    .line 228
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Lcom/keephealth/android/util/MyWomenBeanComparator;

    invoke-direct {v0}, Lcom/keephealth/android/util/MyWomenBeanComparator;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, v2

    .line 232
    :goto_1df
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "45er455"

    if-ge v0, v3, :cond_209

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "list1.get(i):"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1df

    .line 235
    :cond_209
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_211

    goto/16 :goto_3c2

    :cond_211
    move v0, v2

    move v3, v0

    .line 238
    :goto_213
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3c1

    .line 239
    const-string v5, "   calendarCurrent:"

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-lez v0, :cond_2ef

    .line 240
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getYear()I

    move-result v9

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v10

    if-ne v9, v10, :cond_3bd

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getMonth()I

    move-result v9

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v10

    if-ne v9, v10, :cond_3bd

    .line 241
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getDay()I

    move-result v9

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v10

    if-ne v9, v10, :cond_3bd

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    add-int/lit8 v9, v0, -0x1

    .line 243
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getYear()I

    move-result v10

    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 244
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getMonth()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v3, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 245
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getDay()I

    move-result v9

    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 248
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 249
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v9, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 250
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v7

    invoke-virtual {v9, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "1---:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1---:   DateUtil.getDaysBetween(calendar, calendarCurrent):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {v3, v9}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v5

    if-ltz v5, :cond_3bc

    .line 254
    invoke-static {v3, v9}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto/16 :goto_3bd

    .line 260
    :cond_2ef
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getYear()I

    move-result v9

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v10

    if-ne v9, v10, :cond_3bd

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getMonth()I

    move-result v9

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v10

    if-ne v9, v10, :cond_3bd

    .line 261
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getDay()I

    move-result v9

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v10

    if-ne v9, v10, :cond_3bd

    .line 262
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 263
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getYear()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 264
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getMonth()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v3, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 265
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthPre;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthPre;->getDay()I

    move-result v9

    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 268
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 269
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v9, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 270
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v7

    invoke-virtual {v9, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "2---:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "2---:   DateUtil.getDaysBetween(calendar, calendarCurrent):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {v3, v9}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v5

    if-ltz v5, :cond_3bc

    .line 274
    invoke-static {v3, v9}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_3bd

    :cond_3bc
    move v3, v2

    :cond_3bd
    :goto_3bd
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_213

    :cond_3c1
    move v2, v3

    .line 282
    :goto_3c2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pre:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  a:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e2
    return v2
.end method

.method public static clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V
    .registers 14

    .line 672
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0x7e3

    if-ge p2, v0, :cond_a

    const/16 p2, 0x7e4

    :cond_a
    const/4 v0, 0x1

    .line 676
    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p3, v0

    const/4 p2, 0x2

    .line 677
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p3, 0x5

    .line 678
    invoke-virtual {p0, p3, p4}, Ljava/util/Calendar;->set(II)V

    .line 679
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    .line 680
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v1

    invoke-virtual {p4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 681
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p4, p2, v1}, Ljava/util/Calendar;->set(II)V

    .line 682
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/WomenHealthUtil;->getDaysInMonth(II)I

    move-result p1

    invoke-virtual {p4, p3, p1}, Ljava/util/Calendar;->set(II)V

    .line 684
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object p1

    .line 685
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, p2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 686
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v0

    .line 685
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 686
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v1, :cond_a0

    .line 688
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 689
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 690
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 691
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 692
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 693
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 694
    invoke-virtual {p1, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 696
    :cond_a0
    invoke-static {p0, p4}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calendarStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v2, "frfr6r"

    invoke-static {v2, p4}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v3, "length:"

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v4, "6t6tyg"

    invoke-static {v4, p4}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_194

    move p4, v5

    :goto_101
    if-ge p4, v1, :cond_194

    .line 702
    invoke-virtual {p0, p3, v0}, Ljava/util/Calendar;->add(II)V

    .line 703
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v6, p2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 704
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v5

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v0

    .line 703
    invoke-virtual {v3, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 704
    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_190

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "womenHealthBean:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v3, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 708
    invoke-virtual {v3, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 709
    invoke-virtual {v3, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 710
    invoke-virtual {v3, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 711
    invoke-virtual {v3, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 712
    invoke-virtual {v3, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 713
    invoke-virtual {p1, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_190
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_101

    :cond_194
    return-void
.end method

.method public static clearNowDayAfterMuntral(Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V
    .registers 21

    .line 1315
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    move/from16 v1, p1

    .line 1316
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    move/from16 v1, p2

    .line 1317
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    move/from16 v1, p3

    .line 1318
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 1321
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 1323
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    const/16 v4, 0xf

    .line 1324
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    const/16 v6, 0x1e

    .line 1325
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    const/4 v8, 0x0

    .line 1326
    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xe

    .line 1327
    invoke-virtual {v2, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 1328
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3aa

    .line 1329
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3aa

    move v11, v8

    .line 1330
    :goto_53
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v11, v12, :cond_1b6

    .line 1331
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "\u539f\u59cb\u9884\u6d4b\u7ecf\u671f:"

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/google/gson/Gson;

    invoke-direct {v15}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1332
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-eq v9, v14, :cond_9e

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v9

    if-eq v9, v14, :cond_9e

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-ne v9, v13, :cond_1ae

    .line 1333
    :cond_9e
    new-instance v9, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-direct {v9}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;-><init>()V

    .line 1334
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setYear(I)V

    .line 1335
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setMonth(I)V

    .line 1336
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setDay(I)V

    .line 1337
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setIsMenstrual(I)V

    .line 1338
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setIsPregnancy(I)V

    .line 1339
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setIsStartData(I)V

    .line 1340
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v12

    const-string v13, "0"

    const/16 v14, 0xa

    const-string v15, ""

    if-ge v12, v14, :cond_11d

    .line 1341
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    goto :goto_13a

    .line 1343
    :cond_11d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    .line 1345
    :goto_13a
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    if-ge v7, v14, :cond_160

    .line 1346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    goto :goto_17d

    .line 1348
    :cond_160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    .line 1350
    :goto_17d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v12, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v12, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setDate(Ljava/lang/String;)V

    .line 1351
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1ae
    add-int/lit8 v11, v11, 0x1

    const/16 v7, 0xd

    const/16 v9, 0xe

    goto/16 :goto_53

    .line 1354
    :cond_1b6
    new-instance v1, Lcom/keephealth/android/util/MyWomenBeanAllNextComparator;

    invoke-direct {v1}, Lcom/keephealth/android/util/MyWomenBeanAllNextComparator;-><init>()V

    invoke-static {v10, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1355
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1356
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3aa

    move v9, v8

    .line 1358
    :goto_1ce
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x5

    if-ge v9, v11, :cond_225

    .line 1359
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getYear()I

    move-result v11

    invoke-virtual {v1, v14, v11}, Ljava/util/Calendar;->set(II)V

    .line 1360
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getMonth()I

    move-result v11

    sub-int/2addr v11, v14

    invoke-virtual {v1, v13, v11}, Ljava/util/Calendar;->set(II)V

    .line 1361
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getDay()I

    move-result v11

    invoke-virtual {v1, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 1362
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1363
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xd

    .line 1364
    invoke-virtual {v1, v11, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xe

    .line 1365
    invoke-virtual {v1, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 1367
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v11, v11, v15

    if-gez v11, :cond_222

    .line 1368
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_222
    add-int/lit8 v9, v9, 0x1

    goto :goto_1ce

    .line 1372
    :cond_225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_283

    move v2, v8

    move v4, v2

    .line 1374
    :goto_232
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_283

    .line 1375
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getIsMenstrual()I

    move-result v6

    if-ne v6, v14, :cond_250

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getIsStartData()I

    move-result v6

    if-eq v6, v14, :cond_274

    :cond_250
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getIsPregnancy()I

    move-result v6

    if-eq v6, v14, :cond_274

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getIsMenstrual()I

    move-result v6

    if-ne v6, v13, :cond_275

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getIsStartData()I

    move-result v6

    if-ne v6, v14, :cond_275

    :cond_274
    move v4, v14

    :cond_275
    if-eqz v4, :cond_280

    .line 1379
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_280
    add-int/lit8 v2, v2, 0x1

    goto :goto_232

    .line 1384
    :cond_283
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3aa

    .line 1385
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->getLastMuntralStartDate()Ljava/util/Calendar;

    move-result-object v2

    .line 1386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1388
    invoke-virtual {v2, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 1389
    invoke-virtual {v2, v5, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 1390
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 1391
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 1392
    new-instance v6, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v6}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 1393
    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 1394
    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v14

    invoke-virtual {v6, v7}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 1395
    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v7, 0x3

    .line 1396
    invoke-static {v7, v6}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v6

    .line 1397
    invoke-virtual {v2, v12, v6}, Ljava/util/Calendar;->add(II)V

    move v6, v8

    .line 1398
    :goto_2c5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3aa

    .line 1399
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getYear()I

    move-result v7

    invoke-virtual {v4, v14, v7}, Ljava/util/Calendar;->set(II)V

    .line 1400
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getMonth()I

    move-result v7

    sub-int/2addr v7, v14

    invoke-virtual {v4, v13, v7}, Ljava/util/Calendar;->set(II)V

    .line 1401
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getDay()I

    move-result v7

    invoke-virtual {v4, v12, v7}, Ljava/util/Calendar;->set(II)V

    .line 1402
    invoke-virtual {v4, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 1403
    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 1404
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xe

    .line 1405
    invoke-virtual {v4, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 1406
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v10, v10, v15

    if-ltz v10, :cond_3a2

    .line 1407
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v15}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getYear()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    new-array v15, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1408
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v15, v8

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v15, v14

    .line 1407
    invoke-virtual {v10, v11, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1408
    invoke-virtual {v3, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_3a2

    .line 1410
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1411
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1412
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1413
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1414
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 1415
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    const/4 v5, -0x1

    .line 1416
    invoke-virtual {v3, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMakeLove(I)V

    .line 1417
    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1418
    const-string v3, "\u6e05\u9664\u6570\u636e:------------------------------------------------------"

    invoke-static {v8, v3}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1419
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u6e05\u9664\u6570\u636e:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :cond_3a2
    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0xb

    const/16 v5, 0xc

    goto/16 :goto_2c5

    :cond_3aa
    return-void
.end method

.method public static createAllWomenHealth(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 13

    .line 732
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    const/16 v1, -0xb4

    const/4 v2, 0x5

    .line 733
    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 734
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x1

    .line 735
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    .line 736
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 737
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 738
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 739
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 740
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 741
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {v5, p1}, Lcom/keephealth/android/util/WomenHealthUtil;->getDaysInMonth(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 743
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 744
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v3

    .line 743
    invoke-virtual {p1, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 744
    invoke-virtual {p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez p1, :cond_c1

    .line 746
    new-instance p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    .line 747
    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 748
    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 749
    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 750
    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 751
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 752
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 753
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 754
    invoke-virtual {p1, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 755
    invoke-virtual {v0, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->save(Ljava/lang/Object;)V

    .line 757
    :cond_c1
    invoke-static {v1, p0}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    if-lez p0, :cond_147

    move p1, v8

    :goto_c8
    if-ge p1, p0, :cond_146

    .line 760
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 761
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 762
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v7, v8

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v7, v3

    .line 761
    invoke-virtual {v5, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 762
    invoke-virtual {v5, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez v5, :cond_140

    .line 764
    new-instance v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    .line 765
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 766
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 767
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 768
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 769
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 770
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 771
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 772
    invoke-virtual {v5, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 773
    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->save(Ljava/lang/Object;)V

    goto :goto_143

    .line 776
    :cond_140
    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :goto_143
    add-int/lit8 p1, p1, 0x1

    goto :goto_c8

    :cond_146
    return v3

    :cond_147
    return v8
.end method

.method public static firstMeasuData(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;II)V
    .registers 22

    move-object/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 840
    sput v2, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    .line 841
    sput v2, Lcom/keephealth/android/util/WomenHealthUtil;->firstPregnancyData:I

    .line 843
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v3

    .line 844
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v5

    const/16 v6, 0x1f

    filled-new-array {v4, v5, v6}, [I

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v4

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x1

    move/from16 v13, p0

    if-ne v13, v12, :cond_6b

    .line 847
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    sput-object v14, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    .line 848
    invoke-virtual {v14, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 849
    sget-object v14, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v14, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 850
    sget-object v14, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v14, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 851
    sget-object v14, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v14, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 852
    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v14

    invoke-virtual {v6, v12, v14}, Ljava/util/Calendar;->set(II)V

    .line 853
    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualMonth()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-virtual {v6, v11, v14}, Ljava/util/Calendar;->set(II)V

    .line 854
    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualDay()I

    move-result v14

    invoke-virtual {v6, v10, v14}, Ljava/util/Calendar;->set(II)V

    goto :goto_b4

    .line 856
    :cond_6b
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->isHasNoMuntral()Z

    move-result v14

    if-eqz v14, :cond_a7

    .line 858
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    sput-object v13, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    .line 859
    invoke-virtual {v13, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 860
    sget-object v13, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 861
    sget-object v13, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 862
    sget-object v13, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 863
    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 864
    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualMonth()I

    move-result v13

    sub-int/2addr v13, v12

    invoke-virtual {v6, v11, v13}, Ljava/util/Calendar;->set(II)V

    .line 865
    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualDay()I

    move-result v13

    invoke-virtual {v6, v10, v13}, Ljava/util/Calendar;->set(II)V

    move v13, v12

    goto :goto_b4

    .line 868
    :cond_a7
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->calLastMunal()Ljava/util/Calendar;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    .line 869
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v14

    invoke-virtual {v6, v10, v14}, Ljava/util/Calendar;->add(II)V

    .line 873
    :goto_b4
    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 874
    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sget-object v14, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v14, v11}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v12

    sget-object v15, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v15, v10}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v12, v0, v6, v14, v15}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    .line 876
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    sget-object v15, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v15, v12}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    new-array v15, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    .line 877
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v15, v2

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v15, v12

    .line 876
    invoke-virtual {v6, v14, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 877
    invoke-virtual {v6, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eqz v6, :cond_14b

    if-ne v13, v12, :cond_13b

    .line 880
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 881
    sget v14, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    if-nez v14, :cond_12d

    .line 882
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_130

    .line 884
    :cond_12d
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 886
    :goto_130
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 887
    sget v14, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    if-ge v14, v7, :cond_14b

    .line 888
    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_14b

    .line 891
    :cond_13b
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 892
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 893
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 894
    sget v14, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    if-ge v14, v8, :cond_14b

    .line 895
    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 900
    :cond_14b
    :goto_14b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 901
    invoke-virtual {v6, v9, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xc

    .line 902
    invoke-virtual {v6, v9, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xd

    .line 903
    invoke-virtual {v6, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 904
    sget-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v6, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 905
    sget-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v6, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 906
    sget-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v6, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 908
    sput-boolean v12, Lcom/keephealth/android/util/WomenHealthUtil;->isPreCanSetPregnancy:Z

    const/4 v9, -0x1

    if-ne v13, v12, :cond_218

    move v14, v2

    :goto_17d
    const/16 v15, 0x13

    if-ge v14, v15, :cond_218

    .line 911
    invoke-virtual {v6, v10, v9}, Ljava/util/Calendar;->add(II)V

    const/16 v15, 0x9

    if-lt v14, v15, :cond_210

    .line 913
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v15

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v9, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 914
    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v9, v2

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v9, v12

    .line 913
    invoke-virtual {v15, v8, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 914
    invoke-virtual {v7, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v7, :cond_210

    .line 916
    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-eq v8, v12, :cond_1dc

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1df

    goto :goto_1dd

    :cond_1dc
    const/4 v9, 0x2

    .line 917
    :goto_1dd
    sput-boolean v2, Lcom/keephealth/android/util/WomenHealthUtil;->isPreCanSetPregnancy:Z

    .line 920
    :cond_1df
    sget-boolean v8, Lcom/keephealth/android/util/WomenHealthUtil;->isPreCanSetPregnancy:Z

    if-eqz v8, :cond_210

    .line 921
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 922
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v12

    invoke-virtual {v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 923
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 924
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 925
    invoke-virtual {v7, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 926
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 927
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 928
    invoke-virtual {v3, v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_210
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v11, 0x2

    goto/16 :goto_17d

    .line 934
    :cond_218
    sget-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_5a1

    .line 937
    sput v1, Lcom/keephealth/android/util/WomenHealthUtil;->menstrual:I

    move v6, v12

    .line 939
    :goto_229
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v7

    if-ge v6, v7, :cond_34d

    if-ne v13, v12, :cond_2ac

    .line 941
    sget v7, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    const/4 v8, 0x4

    if-ge v7, v8, :cond_349

    .line 942
    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v10, v12}, Ljava/util/Calendar;->add(II)V

    .line 943
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x2

    new-array v11, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    sget-object v15, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    .line 944
    invoke-virtual {v15, v9}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v14, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v11, v2

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    sget-object v14, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v14, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v11, v12

    .line 943
    invoke-virtual {v7, v8, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 944
    invoke-virtual {v7, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v7, :cond_349

    .line 947
    invoke-virtual {v7, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 948
    sget v8, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    if-nez v8, :cond_292

    .line 949
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_296

    :cond_292
    const/4 v8, 0x2

    .line 951
    invoke-virtual {v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 953
    :goto_296
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 954
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v8

    sub-int/2addr v8, v12

    if-ne v6, v8, :cond_2a4

    .line 955
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_2a7

    .line 957
    :cond_2a4
    invoke-virtual {v7, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 959
    :goto_2a7
    invoke-virtual {v3, v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto/16 :goto_349

    .line 963
    :cond_2ac
    sget v7, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_349

    .line 964
    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v10, v12}, Ljava/util/Calendar;->add(II)V

    .line 965
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x2

    new-array v11, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    sget-object v15, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    .line 966
    invoke-virtual {v15, v9}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v14, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v11, v2

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    sget-object v14, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v14, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v11, v12

    .line 965
    invoke-virtual {v7, v8, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 966
    invoke-virtual {v7, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v7, :cond_349

    if-ne v13, v12, :cond_32b

    .line 970
    invoke-virtual {v7, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 971
    sget v8, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    if-nez v8, :cond_30f

    .line 972
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_319

    .line 974
    :cond_30f
    invoke-virtual/range {p1 .. p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 975
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    const/4 v8, 0x2

    .line 976
    invoke-virtual {v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 978
    :goto_319
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 979
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v8

    sub-int/2addr v8, v12

    if-ne v6, v8, :cond_327

    .line 980
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_346

    .line 982
    :cond_327
    invoke-virtual {v7, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_346

    .line 985
    :cond_32b
    invoke-virtual/range {p1 .. p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 986
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    const/4 v8, 0x2

    .line 987
    invoke-virtual {v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 988
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 989
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v8

    sub-int/2addr v8, v12

    if-ne v6, v8, :cond_343

    .line 990
    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_346

    .line 992
    :cond_343
    invoke-virtual {v7, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 995
    :goto_346
    invoke-virtual {v3, v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_349
    :goto_349
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_229

    .line 1000
    :cond_34d
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object v6

    .line 1001
    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v8, v12

    invoke-virtual {v7, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 1003
    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v7, v7, v14

    if-gez v7, :cond_399

    .line 1004
    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 1005
    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v12

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 1006
    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 1007
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 1008
    invoke-virtual {v6, v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 1010
    :cond_399
    sget v6, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    add-int/2addr v6, v12

    sput v6, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    .line 1011
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    sget-object v14, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    .line 1012
    invoke-virtual {v14, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v9, v2

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v9, v12

    .line 1011
    invoke-virtual {v6, v7, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 1012
    invoke-virtual {v6, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-ne v13, v12, :cond_40d

    .line 1014
    sget v7, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    const/4 v8, 0x4

    if-ge v7, v8, :cond_432

    if-eqz v6, :cond_432

    if-ne v13, v12, :cond_402

    if-nez v7, :cond_3fa

    .line 1018
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    const/4 v7, 0x2

    goto :goto_3fe

    :cond_3fa
    const/4 v7, 0x2

    .line 1020
    invoke-virtual {v6, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1022
    :goto_3fe
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    goto :goto_409

    :cond_402
    const/4 v7, 0x2

    .line 1024
    invoke-virtual {v6, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1025
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1027
    :goto_409
    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_432

    .line 1031
    :cond_40d
    sget v7, Lcom/keephealth/android/util/WomenHealthUtil;->firstMenuralData:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_432

    if-eqz v6, :cond_432

    if-ne v13, v12, :cond_428

    if-nez v7, :cond_41d

    .line 1035
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    const/4 v7, 0x2

    goto :goto_421

    :cond_41d
    const/4 v7, 0x2

    .line 1037
    invoke-virtual {v6, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1039
    :goto_421
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1040
    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_432

    :cond_428
    const/4 v7, 0x2

    .line 1042
    invoke-virtual {v6, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1043
    invoke-virtual {v6, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1044
    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1051
    :cond_432
    :goto_432
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1052
    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, -0x9

    .line 1058
    invoke-virtual {v6, v10, v7}, Ljava/util/Calendar;->add(II)V

    .line 1059
    sput-boolean v12, Lcom/keephealth/android/util/WomenHealthUtil;->isCanSetPregnancy:Z

    move v7, v2

    :goto_447
    const/16 v8, 0xa

    if-ge v7, v8, :cond_598

    if-ne v13, v12, :cond_4f0

    .line 1062
    sget v8, Lcom/keephealth/android/util/WomenHealthUtil;->firstPregnancyData:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_593

    const/4 v8, -0x1

    .line 1063
    invoke-virtual {v6, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 1064
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v11, 0x2

    new-array v14, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1065
    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v14, v2

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v14, v12

    .line 1064
    invoke-virtual {v8, v9, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 1065
    invoke-virtual {v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez v8, :cond_4d2

    .line 1067
    new-instance v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    .line 1068
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    const/4 v9, 0x2

    .line 1069
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v12

    invoke-virtual {v8, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 1070
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 1071
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 1072
    invoke-virtual {v8, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1073
    invoke-virtual {v8, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1074
    invoke-virtual {v8, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1075
    invoke-virtual {v3, v8}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->save(Ljava/lang/Object;)V

    goto/16 :goto_593

    .line 1077
    :cond_4d2
    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-eq v9, v12, :cond_4df

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_4e1

    .line 1078
    :cond_4df
    sput-boolean v2, Lcom/keephealth/android/util/WomenHealthUtil;->isCanSetPregnancy:Z

    .line 1080
    :cond_4e1
    sget-boolean v9, Lcom/keephealth/android/util/WomenHealthUtil;->isCanSetPregnancy:Z

    if-eqz v9, :cond_593

    .line 1081
    invoke-virtual {v8, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1082
    invoke-virtual {v8, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1083
    invoke-virtual {v3, v8}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto/16 :goto_593

    .line 1089
    :cond_4f0
    sget v8, Lcom/keephealth/android/util/WomenHealthUtil;->firstPregnancyData:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_593

    const/4 v8, -0x1

    .line 1090
    invoke-virtual {v6, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 1091
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    const/4 v15, 0x2

    new-array v8, v15, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1092
    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v2

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v12

    .line 1091
    invoke-virtual {v11, v14, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 1092
    invoke-virtual {v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez v8, :cond_574

    .line 1094
    new-instance v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    .line 1095
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    const/4 v9, 0x2

    .line 1096
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v12

    invoke-virtual {v8, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 1097
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 1098
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 1099
    invoke-virtual {v8, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1100
    invoke-virtual {v8, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1101
    invoke-virtual {v8, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1102
    invoke-virtual {v3, v8}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->save(Ljava/lang/Object;)V

    goto :goto_593

    .line 1104
    :cond_574
    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-eq v9, v12, :cond_582

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_585

    goto :goto_583

    :cond_582
    const/4 v11, 0x2

    .line 1105
    :goto_583
    sput-boolean v2, Lcom/keephealth/android/util/WomenHealthUtil;->isCanSetPregnancy:Z

    .line 1107
    :cond_585
    sget-boolean v9, Lcom/keephealth/android/util/WomenHealthUtil;->isCanSetPregnancy:Z

    if-eqz v9, :cond_594

    .line 1108
    invoke-virtual {v8, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1109
    invoke-virtual {v8, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1110
    invoke-virtual {v3, v8}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_594

    :cond_593
    :goto_593
    const/4 v11, 0x2

    :cond_594
    :goto_594
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_447

    :cond_598
    const/4 v11, 0x2

    .line 1118
    sget v6, Lcom/keephealth/android/util/WomenHealthUtil;->firstPregnancyData:I

    add-int/2addr v6, v12

    sput v6, Lcom/keephealth/android/util/WomenHealthUtil;->firstPregnancyData:I

    const/4 v7, 0x4

    if-le v6, v7, :cond_218

    :cond_5a1
    return-void
.end method

.method public static getDaysInMonth(II)I
    .registers 4

    .line 722
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 723
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    sub-int/2addr p1, v1

    .line 724
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 725
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method public static getLastCalendar()Ljava/util/Calendar;
    .registers 11

    .line 787
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 788
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 789
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 790
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 791
    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_18a

    .line 792
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18a

    const/4 v3, 0x0

    move v4, v3

    .line 793
    :goto_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_136

    .line 794
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-ne v5, v6, :cond_132

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v5

    if-ne v5, v6, :cond_132

    .line 795
    new-instance v5, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-direct {v5}, Lcom/keephealth/android/model/bean/WomenHealthNext;-><init>()V

    .line 796
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    const-string v7, "0"

    const/16 v8, 0xa

    const-string v9, ""

    if-ge v6, v8, :cond_7a

    .line 797
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    goto :goto_97

    .line 799
    :cond_7a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    .line 801
    :goto_97
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    if-ge v6, v8, :cond_bd

    .line 802
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    goto :goto_da

    .line 804
    :cond_bd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    .line 806
    :goto_da
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setDate(Ljava/lang/String;)V

    .line 807
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setYear(I)V

    .line 808
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setMonth(I)V

    .line 809
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/WomenHealthNext;->setDay(I)V

    .line 810
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_132
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2a

    .line 813
    :cond_136
    new-instance v1, Lcom/keephealth/android/util/MyWomenBeanNextComparator;

    invoke-direct {v1}, Lcom/keephealth/android/util/MyWomenBeanNextComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 814
    :goto_13e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_147

    add-int/lit8 v3, v3, 0x1

    goto :goto_13e

    .line 817
    :cond_147
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18a

    .line 818
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 819
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getYear()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 820
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getMonth()I

    move-result v1

    sub-int/2addr v1, v6

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 821
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/WomenHealthNext;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/WomenHealthNext;->getDay()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    :cond_18a
    return-object v0
.end method

.method public static getLastMuntralStartDate()Ljava/util/Calendar;
    .registers 17

    .line 1458
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1459
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1460
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v2

    .line 1461
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsMenstrual:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v7, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v2, v3, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 1462
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 1463
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_248

    .line 1464
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_248

    move v5, v7

    .line 1465
    :goto_47
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const-string v8, "frfr5r"

    if-ge v5, v6, :cond_182

    .line 1466
    new-instance v6, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-direct {v6}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;-><init>()V

    .line 1467
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setYear(I)V

    .line 1468
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setMonth(I)V

    .line 1469
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setDay(I)V

    .line 1470
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setIsMenstrual(I)V

    .line 1471
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setIsPregnancy(I)V

    .line 1472
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setIsStartData(I)V

    .line 1473
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    const-string v10, "0"

    const/16 v11, 0xa

    const-string v12, ""

    if-ge v9, v11, :cond_ce

    .line 1474
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    goto :goto_eb

    .line 1476
    :cond_ce
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    .line 1478
    :goto_eb
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v9

    if-ge v9, v11, :cond_111

    .line 1479
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    goto :goto_12e

    .line 1481
    :cond_111
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    .line 1483
    :goto_12e
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "list.get(i):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->month_cal_next:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/keephealth/android/util/WomenHealthUtil;->day_cal_next:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->setDate(Ljava/lang/String;)V

    .line 1485
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_47

    .line 1487
    :cond_182
    new-instance v2, Lcom/keephealth/android/util/MyWomenBeanAllNextComparator;

    invoke-direct {v2}, Lcom/keephealth/android/util/MyWomenBeanAllNextComparator;-><init>()V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v2, 0xb

    .line 1488
    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 1489
    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 1490
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xe

    .line 1491
    invoke-virtual {v1, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 1493
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_248

    move v10, v7

    .line 1494
    :goto_1a5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_248

    .line 1495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1496
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v12}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getYear()I

    move-result v12

    invoke-virtual {v11, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 1497
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v12}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getMonth()I

    move-result v12

    sub-int/2addr v12, v4

    const/4 v13, 0x2

    invoke-virtual {v11, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 1498
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v12}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getDay()I

    move-result v12

    const/4 v14, 0x5

    invoke-virtual {v11, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 1499
    invoke-virtual {v11, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 1500
    invoke-virtual {v11, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 1501
    invoke-virtual {v11, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 1502
    invoke-virtual {v11, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 1504
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v11, v15, v11

    if-ltz v11, :cond_244

    .line 1505
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "list1.get(i):"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getYear()I

    move-result v11

    invoke-virtual {v0, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 1507
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getMonth()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v0, v13, v11}, Ljava/util/Calendar;->set(II)V

    .line 1508
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthAllNext;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/WomenHealthAllNext;->getDay()I

    move-result v11

    invoke-virtual {v0, v14, v11}, Ljava/util/Calendar;->set(II)V

    .line 1509
    invoke-virtual {v0, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 1510
    invoke-virtual {v0, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 1511
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 1512
    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    :cond_244
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1a5

    :cond_248
    return-object v0
.end method

.method public static isBackLastMunal(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z
    .registers 19

    .line 583
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const/16 v5, 0xf

    .line 587
    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    const/16 v7, 0x1e

    .line 588
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    const/4 v9, 0x0

    .line 589
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xe

    .line 590
    invoke-virtual {v0, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 593
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v11

    .line 595
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_e1

    move v13, v9

    .line 597
    :goto_52
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_e1

    .line 598
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v14

    if-ne v14, v2, :cond_db

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v14

    if-ne v14, v2, :cond_db

    .line 600
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 601
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v15

    invoke-virtual {v14, v2, v15}, Ljava/util/Calendar;->set(II)V

    .line 602
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v15

    sub-int/2addr v15, v2

    invoke-virtual {v14, v3, v15}, Ljava/util/Calendar;->set(II)V

    .line 603
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v15

    invoke-virtual {v14, v4, v15}, Ljava/util/Calendar;->set(II)V

    .line 604
    invoke-virtual {v14, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 605
    invoke-virtual {v14, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 606
    invoke-virtual {v14, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 607
    invoke-virtual {v14, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 608
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "calendarList-------:"

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v15, "6t6tyg"

    invoke-static {v15, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v1, v14, v16

    if-lez v1, :cond_db

    .line 610
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_db
    add-int/lit8 v13, v13, 0x1

    const/16 v1, 0xb

    goto/16 :goto_52

    .line 616
    :cond_e1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_ef

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_ee

    goto :goto_ef

    :cond_ee
    return v9

    :cond_ef
    :goto_ef
    return v2
.end method

.method public static isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z
    .registers 14

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isBiggerMunarlCycle_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6t6tyg"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v0

    .line 521
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aget v5, v0, v4

    .line 522
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x1

    aget v9, v0, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v4

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v9, v0, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v8

    .line 521
    invoke-virtual {v2, v3, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 522
    invoke-virtual {v2, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_78

    .line 523
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    if-ne v3, v5, :cond_78

    return v8

    :cond_78
    if-eqz v2, :cond_285

    .line 527
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v2

    if-nez v2, :cond_285

    .line 534
    aget v2, v0, v4

    aget v3, v0, v8

    aget v0, v0, v5

    invoke-static {v2, v3, v0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v0

    .line 535
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v6, v0, v4

    .line 536
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v6, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v9, v0, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v4

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v9, v0, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v8

    .line 535
    invoke-virtual {v2, v3, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 536
    invoke-virtual {v2, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "womenHealthBean-while:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_78

    .line 538
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v3

    if-ne v3, v8, :cond_78

    .line 539
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 540
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v6

    invoke-virtual {v3, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 541
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 542
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 543
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 544
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 545
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v6, v5, v9}, Ljava/util/Calendar;->set(II)V

    .line 546
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "    --------------------"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Math.abs(DateUtil.getDaysBetween(calendarCurrent,calendar):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "6t6tyfg"

    invoke-static {v10, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "\u5468\u671f:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " a:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p0, v8, :cond_205

    .line 552
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p0

    invoke-static {v3, v6}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p1, v8

    if-le p0, p1, :cond_204

    return v4

    :cond_204
    return v8

    :cond_205
    if-ne p0, v5, :cond_22e

    .line 558
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p0

    invoke-static {v3, v6}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p1, v8

    if-le p0, p1, :cond_22d

    return v4

    :cond_22d
    return v8

    :cond_22e
    const/4 v9, 0x4

    if-eq p0, v9, :cond_25e

    const/4 v9, 0x3

    if-ne p0, v9, :cond_235

    goto :goto_25e

    :cond_235
    if-ne p0, v7, :cond_78

    .line 570
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p0

    invoke-static {v3, v6}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p1, v8

    if-lt p0, p1, :cond_25d

    return v4

    :cond_25d
    return v8

    .line 564
    :cond_25e
    :goto_25e
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p0

    invoke-static {v3, v6}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p1, v5

    if-le p0, p1, :cond_284

    return v4

    :cond_284
    return v8

    :cond_285
    return v4
.end method

.method public static isHasNoMuntral()Z
    .registers 5

    .line 1126
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    .line 1128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_35

    const/4 v2, 0x0

    move v3, v2

    .line 1129
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 1130
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v1, :cond_32

    return v2

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_35
    return v1
.end method

.method private static onlyOneMunalData()Z
    .registers 6

    .line 1431
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    .line 1433
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 1434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v3, 0x1

    if-eqz v0, :cond_5c

    .line 1436
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5c

    move v4, v1

    .line 1437
    :goto_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5c

    .line 1439
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    .line 1441
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-ne v5, v3, :cond_59

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v5

    if-ne v5, v3, :cond_59

    .line 1443
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 1447
    :cond_5c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_63

    return v3

    :cond_63
    return v1
.end method

.method public static sendClearData()V
    .registers 7

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v1, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;-><init>()V

    const-wide/16 v2, 0xff

    .line 155
    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartYear(J)V

    const/16 v4, 0xff

    .line 156
    invoke-virtual {v1, v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartMonth(I)V

    .line 157
    invoke-virtual {v1, v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartDay(I)V

    .line 158
    const-string v5, "255"

    invoke-virtual {v1, v5}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setDate(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndYear(J)V

    .line 160
    invoke-virtual {v1, v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndMonth(I)V

    .line 161
    invoke-virtual {v1, v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndDay(I)V

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, v2}, Lcom/keephealth/android/util/ble/CmdHelper;->setWomenTarget(ILjava/util/List;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 164
    :goto_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 165
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v6, Lcom/keephealth/android/util/WomenHealthUtil$4;

    invoke-direct {v6}, Lcom/keephealth/android/util/WomenHealthUtil$4;-><init>()V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_63
    return-void
.end method

.method public static sendData()V
    .registers 14

    .line 45
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    const-string v3, "drer4re"

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_273

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_273

    move v7, v5

    .line 51
    :goto_2d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "0"

    const-string v10, ""

    if-ge v7, v8, :cond_127

    .line 52
    new-instance v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-direct {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;-><init>()V

    .line 53
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->setYear(I)V

    .line 54
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->setMonth(I)V

    .line 55
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->setDay(I)V

    .line 56
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->setIsMenstrual(I)V

    .line 57
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->setIsStartData(I)V

    .line 58
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->setIsEndMenstrualDate(I)V

    .line 59
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->setIsPregnancy(I)V

    .line 60
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v11

    if-ge v11, v4, :cond_e2

    .line 61
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/keephealth/android/model/WomenHealthlistBean;->setDate(Ljava/lang/String;)V

    goto :goto_120

    .line 63
    :cond_e2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/keephealth/android/model/WomenHealthlistBean;->setDate(Ljava/lang/String;)V

    .line 65
    :goto_120
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2d

    .line 67
    :cond_127
    new-instance v0, Lcom/keephealth/android/util/WomenHealthUtil$1;

    invoke-direct {v0}, Lcom/keephealth/android/util/WomenHealthUtil$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "beanListTwo\u2014\u2014size:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v7, v5

    .line 75
    :goto_147
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_273

    .line 76
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getIsMenstrual()I

    move-result v8

    if-ne v8, v6, :cond_26f

    .line 77
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getIsStartData()I

    move-result v8

    if-ne v8, v6, :cond_236

    .line 78
    new-instance v0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;-><init>()V

    .line 79
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getYear()I

    move-result v8

    int-to-long v11, v8

    invoke-virtual {v0, v11, v12}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartYear(J)V

    .line 80
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getMonth()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartMonth(I)V

    .line 81
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDay()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartDay(I)V

    .line 82
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getMonth()I

    move-result v8

    if-ge v8, v4, :cond_1b6

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->getMonth()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1d1

    .line 85
    :cond_1b6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->getMonth()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 87
    :goto_1d1
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v11}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDay()I

    move-result v11

    if-ge v11, v4, :cond_1f5

    .line 88
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v12}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDay()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_210

    .line 90
    :cond_1f5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v12}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDay()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 92
    :goto_210
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v13}, Lcom/keephealth/android/model/WomenHealthlistBean;->getYear()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setDate(Ljava/lang/String;)V

    .line 94
    :cond_236
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getIsEndMenstrualDate()I

    move-result v8

    if-ne v8, v6, :cond_26f

    if-eqz v0, :cond_26f

    .line 96
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getYear()I

    move-result v8

    int-to-long v11, v8

    invoke-virtual {v0, v11, v12}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndYear(J)V

    .line 97
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getMonth()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndMonth(I)V

    .line 98
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDay()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndDay(I)V

    .line 99
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_147

    .line 105
    :cond_273
    new-instance v0, Lcom/keephealth/android/util/MyBeanTwoComparator;

    invoke-direct {v0}, Lcom/keephealth/android/util/MyBeanTwoComparator;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beanList2\u2014\u2014size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_2f9

    move v0, v5

    .line 108
    :goto_298
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "beanList2.get(i):"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_298

    .line 111
    :cond_2c0
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v6, v2, v0, v5}, Lcom/keephealth/android/util/ble/CmdHelper;->setWomenTarget(ILjava/util/List;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;Z)Ljava/util/List;

    move-result-object v0

    .line 112
    :goto_2da
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_35a

    .line 113
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v6, Lcom/keephealth/android/util/WomenHealthUtil$2;

    invoke-direct {v6}, Lcom/keephealth/android/util/WomenHealthUtil$2;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2da

    .line 126
    :cond_2f9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beanList3\u2014\u2014size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v6, v0, v1, v5}, Lcom/keephealth/android/util/ble/CmdHelper;->setWomenTarget(ILjava/util/List;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;Z)Ljava/util/List;

    move-result-object v0

    .line 130
    :goto_33b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_35a

    .line 131
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v6, Lcom/keephealth/android/util/WomenHealthUtil$3;

    invoke-direct {v6}, Lcom/keephealth/android/util/WomenHealthUtil$3;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_33b

    :cond_35a
    return-void
.end method
