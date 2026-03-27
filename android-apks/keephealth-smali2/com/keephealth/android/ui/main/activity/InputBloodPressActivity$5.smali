.class Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "InputBloodPressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 16

    .line 159
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->valueFz:I

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->valueSs:I

    if-ge p1, v0, :cond_17

    .line 160
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    const v0, 0x7f100664

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-ne v0, v3, :cond_91

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    if-ne v0, v3, :cond_91

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v0, v3, :cond_91

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v0, v3, :cond_84

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v0, v3, :cond_91

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-le v0, p1, :cond_91

    .line 166
    :cond_84
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    const v0, 0x7f100666

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_91
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    .line 171
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v8, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v10, p1, -0x1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {v8 .. v13}, Ljava/util/Calendar;->set(IIIII)V

    .line 172
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->healthBloodItemDao:Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    .line 173
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v9, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v9, v9, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v3, v1

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v9, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v9, v9, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    .line 174
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v3, v2

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    iget-object v9, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v9, v9, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v3, v7

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Minute:Lorg/greenrobot/greendao/Property;

    iget-object v9, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v9, v9, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    .line 175
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v3, v9

    .line 173
    invoke-virtual {p1, v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    if-nez p1, :cond_154

    .line 177
    new-instance p1, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-direct {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;-><init>()V

    .line 179
    :cond_154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDate(J)V

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->valueSs:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setFzValue(I)V

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->valueFz:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setSsValue(I)V

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setYear(I)V

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMonth(I)V

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDay(I)V

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setHour(I)V

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMinute(I)V

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    const-string v3, "BLOOD_DATA"

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v0

    if-nez v0, :cond_1b8

    .line 190
    new-instance v0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 192
    :cond_1b8
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->access$100(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "\u8840\u538bonClickL: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " -- "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-gez v4, :cond_21c

    .line 194
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 195
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setHighDataValue(I)V

    .line 196
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 197
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_21c
    new-instance v0, Lcom/keephealth/android/model/bean/BaseMessage;

    const/16 v3, 0x40c

    invoke-direct {v0, v3, p1}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(ILjava/lang/Object;)V

    .line 201
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->healthBloodItemDao:Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->save(Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->showLoading()V

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->viewModel:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0, v3, v2, v1}, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;->setBloodPress(IIIZ)V

    return-void
.end method
