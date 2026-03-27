.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V
    .registers 2

    .line 420
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V
    .registers 11

    if-nez p2, :cond_3

    return-void

    .line 424
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 p3, 0xb

    const/4 v0, 0x0

    .line 425
    invoke-virtual {p1, p3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xc

    .line 426
    invoke-virtual {p1, p3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xd

    .line 427
    invoke-virtual {p1, p3, v0}, Ljava/util/Calendar;->set(II)V

    .line 428
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result p3

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 429
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result p3

    sub-int/2addr p3, v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 430
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result p3

    const/4 v3, 0x5

    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 431
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v4

    invoke-static {p3, v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getMonthRows(II)I

    move-result p3

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nowRows:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  currentRows:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "5tr5tr"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v4

    if-eq p3, v4, :cond_9f

    .line 435
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I
    invoke-static {v4, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$502(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I

    .line 436
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result p3

    if-ne p3, v3, :cond_86

    .line 437
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->objectAnimatorTranslate:Landroid/animation/ObjectAnimator;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$600(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    .line 438
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->rlTips:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->clearAnimation()V

    goto :goto_9f

    .line 439
    :cond_86
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result p3

    const/4 v3, 0x6

    if-ne p3, v3, :cond_9f

    .line 440
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->objectAnimatorTranslateDown:Landroid/animation/ObjectAnimator;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    .line 441
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->rlTips:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 444
    :cond_9f
    :goto_9f
    invoke-static {p1}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p3, 0xb4

    if-gt p1, p3, :cond_1e8

    .line 445
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$802(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Z)Z

    .line 446
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$1;

    invoke-direct {p3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
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

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "preMunalDayBetween:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "   nextMunalDayBetween:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ttt55tt"

    invoke-static {v3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDate()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_135

    .line 463
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$2;

    invoke-direct {p3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$2;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 471
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto/16 :goto_1c2

    .line 473
    :cond_135
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$3;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$3;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;)V

    invoke-virtual {p1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
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

    .line 482
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object p3, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 483
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v2, v1

    .line 482
    invoke-virtual {p3, v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    .line 483
    invoke-virtual {p3, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 482
    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$202(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 484
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$4;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$4;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 506
    :goto_1c2
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result p3

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1202(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I

    .line 507
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result p3

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1302(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I

    .line 508
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result p3

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I

    .line 509
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$5;

    invoke-direct {p3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$5;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1f7

    .line 518
    :cond_1e8
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$802(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Z)Z

    .line 519
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 529
    :goto_1f7
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
