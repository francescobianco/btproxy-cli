.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;
.super Ljava/lang/Object;
.source "WomenHealthOldActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V
    .registers 11

    .line 407
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 p3, 0xb

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p1, p3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xc

    .line 409
    invoke-virtual {p1, p3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xd

    .line 410
    invoke-virtual {p1, p3, v0}, Ljava/util/Calendar;->set(II)V

    .line 411
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result p3

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 412
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result p3

    sub-int/2addr p3, v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 413
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result p3

    const/4 v3, 0x5

    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 414
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v4

    invoke-static {p3, v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getMonthRows(II)I

    move-result p3

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nowRows:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  currentRows:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "5tr5tr"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I

    move-result v4

    if-eq p3, v4, :cond_9c

    .line 418
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I
    invoke-static {v4, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$502(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I

    .line 419
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I

    move-result p3

    if-ne p3, v3, :cond_83

    .line 420
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->objectAnimatorTranslate:Landroid/animation/ObjectAnimator;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$600(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    .line 421
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->rlTips:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->clearAnimation()V

    goto :goto_9c

    .line 422
    :cond_83
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I

    move-result p3

    const/4 v3, 0x6

    if-ne p3, v3, :cond_9c

    .line 423
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->objectAnimatorTranslateDown:Landroid/animation/ObjectAnimator;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    .line 424
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->rlTips:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 427
    :cond_9c
    :goto_9c
    invoke-static {p1}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p3, 0xb4

    if-gt p1, p3, :cond_1e5

    .line 428
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$802(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Z)Z

    .line 429
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$1;

    invoke-direct {p3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "date.getSolarYear():"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "trtr55"

    invoke-static {v3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "preMunalDayBetween:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "   nextMunalDayBetween:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ttt55tt"

    invoke-static {v3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDate()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_132

    .line 447
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$2;

    invoke-direct {p3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$2;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 455
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto/16 :goto_1bf

    .line 457
    :cond_132
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$3;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$3;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;)V

    invoke-virtual {p1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "date.getSolarYear(): "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "6t6tyg"

    invoke-static {p3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object p3, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v2, v0

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 467
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v2, v1

    .line 466
    invoke-virtual {p3, v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    .line 467
    invoke-virtual {p3, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 466
    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$102(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 468
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 490
    :goto_1bf
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result p3

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1202(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I

    .line 491
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result p3

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1302(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I

    .line 492
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result p3

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I

    .line 493
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$5;

    invoke-direct {p3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$5;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1f4

    .line 500
    :cond_1e5
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$802(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Z)Z

    .line 501
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$6;

    invoke-direct {p3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$6;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 517
    :goto_1f4
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$7;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$7;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
