.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;
.super Ljava/lang/Object;
.source "DrinkWaterHistoryActivityNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->reBackDayData(Ljava/util/List;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

.field final synthetic val$dayItem:Ljava/util/List;

.field final synthetic val$totalWater:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 611
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$totalWater:I

    iput-object p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$dayItem:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 615
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    .line 616
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTimeMin:I

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u662f\u5426\u5f00\u542f: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u559d\u6c34\u63d0\u9192\u5f00\u5173reBackDayData"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    const-string v2, "--"

    const-string v3, " -- "

    if-eqz v0, :cond_262

    .line 619
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 620
    sget-boolean v4, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    if-eqz v4, :cond_25a

    .line 621
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v4, 0x0

    move v6, v1

    move-object v5, v4

    .line 624
    :goto_40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, ":"

    if-ge v6, v7, :cond_151

    .line 625
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v9}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v9

    add-int/2addr v7, v9

    .line 626
    iget-object v9, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$600(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "reBackDayData:11 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0xc

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v8

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-le v8, v9, :cond_ea

    .line 628
    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v8, v8, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    if-nez v8, :cond_d9

    .line 629
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput v7, v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    .line 630
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    goto/16 :goto_14d

    .line 632
    :cond_d9
    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v8, v8, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    if-le v8, v7, :cond_14d

    .line 633
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput v7, v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    .line 634
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    goto :goto_14d

    .line 637
    :cond_ea
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v8

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_12c

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v8

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-lt v8, v9, :cond_12c

    .line 638
    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v8, v8, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    if-nez v8, :cond_11b

    .line 639
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput v7, v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    .line 640
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    goto :goto_14d

    .line 642
    :cond_11b
    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v8, v8, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    if-le v8, v7, :cond_14d

    .line 643
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput v7, v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    .line 644
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    goto :goto_14d

    .line 648
    :cond_12c
    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v8, v8, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTimeMin:I

    if-nez v8, :cond_13d

    .line 649
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput v7, v5, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTimeMin:I

    .line 650
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    goto :goto_14d

    .line 652
    :cond_13d
    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v8, v8, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTimeMin:I

    if-le v8, v7, :cond_14d

    .line 653
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput v7, v5, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTimeMin:I

    .line 654
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    :cond_14d
    :goto_14d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_40

    .line 660
    :cond_151
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    const-string v2, ":0"

    const/16 v6, 0xa

    if-lez v0, :cond_1c1

    if-eqz v4, :cond_1c1

    .line 661
    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v0

    if-ge v0, v6, :cond_177

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17f

    .line 664
    :cond_177
    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    :goto_17f
    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v5

    if-ge v5, v6, :cond_19f

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b8

    .line 669
    :cond_19f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    :goto_1b8
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvNextTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_269

    .line 673
    :cond_1c1
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTimeMin:I

    if-ltz v0, :cond_269

    if-eqz v5, :cond_269

    .line 674
    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v0

    const v4, 0x7f100705

    if-ge v0, v6, :cond_1f4

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-virtual {v7, v4}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " 0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_219

    .line 677
    :cond_1f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-virtual {v7, v4}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 679
    :goto_219
    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v4

    if-ge v4, v6, :cond_239

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_252

    .line 682
    :cond_239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    :goto_252
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvNextTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_269

    .line 688
    :cond_25a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvNextTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_269

    .line 691
    :cond_262
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvNextTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    :cond_269
    :goto_269
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # invokes: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->changeDateUpdateUI()V
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$700(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    .line 695
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$totalWater:I

    int-to-float v2, v2

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$802(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;F)F

    .line 696
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTag:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100277

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTotal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$totalWater:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mL"

    invoke-virtual {v2, v4, v5}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 698
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rlAvg:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    const-string v4, "ml"

    const-string v5, "oz"

    if-nez v0, :cond_2ea

    .line 700
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->sineWave:Lcom/keephealth/android/views/SineWaveView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v7}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/keephealth/android/views/SineWaveView;->setCenterText3(Ljava/lang/String;)V

    goto :goto_352

    .line 701
    :cond_2ea
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_324

    .line 702
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$totalWater:I

    int-to-float v6, v6

    const v7, 0x3d102de0    # 0.0352f

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v6

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v0, v6}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$802(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;F)F

    .line 703
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->sineWave:Lcom/keephealth/android/views/SineWaveView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v7}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/keephealth/android/views/SineWaveView;->setCenterText3(Ljava/lang/String;)V

    goto :goto_352

    .line 705
    :cond_324
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$totalWater:I

    int-to-float v6, v6

    const v7, 0x3d0a71de    # 0.0338f

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v6

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v0, v6}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$802(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;F)F

    .line 706
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->sineWave:Lcom/keephealth/android/views/SineWaveView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v7}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/keephealth/android/views/SineWaveView;->setCenterText3(Ljava/lang/String;)V

    .line 708
    :goto_352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v6}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  -- "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F
    invoke-static {v7}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$900(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "\u559d\u6c34\u6570\u636e"

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->sineWave:Lcom/keephealth/android/views/SineWaveView;

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v7}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F
    invoke-static {v8}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$900(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/SineWaveView;->setProgress(F)V

    .line 710
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->sineWave:Lcom/keephealth/android/views/SineWaveView;

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v7}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F
    invoke-static {v8}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$900(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/SineWaveView;->setCenterText(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$900(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v0

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v7}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v0

    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_418

    .line 713
    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v7, v7, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvResidue:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    const v9, 0x7f100619

    invoke-virtual {v8, v9}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v7, v7, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v7

    if-nez v7, :cond_3fb

    .line 715
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v5, v5, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDrinkResidue:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_467

    .line 717
    :cond_3fb
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDrinkResidue:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_467

    .line 720
    :cond_418
    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v7, v7, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvResidue:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    const v9, 0x7f10061a

    invoke-virtual {v8, v9}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v7, v7, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v7

    if-nez v7, :cond_44f

    .line 722
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v5, v5, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDrinkResidue:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_467

    .line 724
    :cond_44f
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDrinkResidue:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    :goto_467
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$1000(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "reBackDayData: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$totalWater:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F
    invoke-static {v5}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$900(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$1100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    move-result-object v0

    if-nez v0, :cond_4d4

    .line 731
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    new-instance v3, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$dayItem:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
    invoke-static {v0, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$1102(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    .line 732
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$1100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;)V

    .line 733
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$1100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4df

    .line 735
    :cond_4d4
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$1100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$dayItem:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->setList(Ljava/util/List;)V

    .line 737
    :goto_4df
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->val$dayItem:Ljava/util/List;

    if-eqz v0, :cond_4f8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f8

    .line 738
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rlTodayDrink:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_506

    .line 741
    :cond_4f8
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rlTodayDrink:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 744
    :goto_506
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$1100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->closeOpenMenu()V

    return-void
.end method
