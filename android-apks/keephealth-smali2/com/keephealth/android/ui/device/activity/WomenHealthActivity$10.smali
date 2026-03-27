.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->caulStart_End(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

.field final synthetic val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2421
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 2424
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 2425
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 2426
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 2427
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 2428
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v3

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->prePosition:I
    invoke-static {v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1602(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I

    .line 2429
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-static {v2, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v0

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextPosition:I
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1702(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I

    .line 2430
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v1, 0x5

    const v3, 0x7f100686

    const v4, 0x7f100687

    if-eqz v0, :cond_138

    .line 2431
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_73

    .line 2432
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-ne v0, v5, :cond_64

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-nez v0, :cond_64

    .line 2433
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto/16 :goto_15b

    .line 2435
    :cond_64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto/16 :goto_15b

    .line 2438
    :cond_73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->onlyOneMunalData()Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextPosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v0

    if-nez v0, :cond_10c

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->prePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v0

    if-nez v0, :cond_10c

    .line 2440
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->val$womenHealthBean:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-static {v0, v1, v6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v0

    .line 2441
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v7, 0x0

    aget v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v8, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v10, v0, v5

    .line 2442
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v7

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v8, v5

    .line 2441
    invoke-virtual {v1, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2442
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_fe

    .line 2443
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v1

    if-ne v1, v5, :cond_fe

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-ne v0, v5, :cond_fe

    .line 2444
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto :goto_15b

    .line 2446
    :cond_fe
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto :goto_15b

    .line 2449
    :cond_10c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->prePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v0

    if-gt v0, v1, :cond_12a

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->prePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v0

    if-lez v0, :cond_12a

    .line 2450
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto :goto_15b

    .line 2452
    :cond_12a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto :goto_15b

    .line 2458
    :cond_138
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->prePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v0

    if-gt v0, v1, :cond_14e

    .line 2459
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto :goto_15b

    .line 2461
    :cond_14e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    :goto_15b
    return-void
.end method
