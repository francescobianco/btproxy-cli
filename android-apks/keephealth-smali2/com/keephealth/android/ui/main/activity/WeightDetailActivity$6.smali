.class Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;
.super Ljava/lang/Object;
.source "WeightDetailActivity.java"

# interfaces
.implements Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initCustomCyclePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V
    .registers 2

    .line 765
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsSelect(IIILandroid/view/View;)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 768
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWeightTargerDataDao()Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    move-result-object v4

    # setter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;
    invoke-static {v3, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$102(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;)Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    .line 769
    new-instance v3, Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;-><init>()V

    .line 770
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initWeightTargeData()V
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$200(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    .line 772
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectType:I
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$300(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)I

    move-result v4

    const/4 v6, 0x5

    const-string v13, "-"

    const-string v14, " kg"

    const-string v15, " "

    const/high16 v16, 0x41200000    # 10.0f

    const/4 v8, 0x1

    const-string v11, ""

    if-nez v4, :cond_baf

    .line 773
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWeightDataDao()Lcom/keephealth/android/greendao/gen/WeightDataDao;

    move-result-object v4

    .line 774
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 775
    new-instance v12, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-direct {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;-><init>()V

    .line 776
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v12, v7}, Lcom/keephealth/android/ui/main/bean/WeightData;->setYear(I)V

    const/4 v7, 0x2

    .line 777
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v12, v7}, Lcom/keephealth/android/ui/main/bean/WeightData;->setMonth(I)V

    .line 778
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v12, v7}, Lcom/keephealth/android/ui/main/bean/WeightData;->setDay(I)V

    .line 779
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMonth()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%02d"

    invoke-static {v9, v8}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/keephealth/android/ui/main/bean/WeightData;->setMongthDay(Ljava/lang/String;)V

    const/16 v7, 0xb

    .line 780
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v12, v7}, Lcom/keephealth/android/ui/main/bean/WeightData;->setHour(I)V

    const/16 v7, 0xc

    .line 781
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v12, v7}, Lcom/keephealth/android/ui/main/bean/WeightData;->setMinuter(I)V

    .line 782
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMinuter()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/keephealth/android/ui/main/bean/WeightData;->setHoutMinter(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Lcom/keephealth/android/ui/main/bean/WeightData;->setData(J)V

    .line 786
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v5

    const/high16 v17, 0x42c80000    # 100.0f

    const-string v7, "BMI "

    if-eqz v5, :cond_3ce

    .line 787
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v1, v6

    int-to-double v9, v1

    int-to-double v1, v2

    const-wide v18, 0x3fb999999999999aL    # 0.1

    mul-double v1, v1, v18

    add-double/2addr v9, v1

    double-to-float v1, v9

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 788
    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    mul-float v2, v1, v17

    mul-float v2, v2, v17

    .line 789
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v5}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float v5, v2, v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v5

    .line 790
    invoke-virtual {v12, v5}, Lcom/keephealth/android/ui/main/bean/WeightData;->setBmi(Ljava/lang/String;)V

    .line 791
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " -- "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v5}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v5}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BMI\u6570\u636e"

    invoke-static {v5, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v8, 0x4032800000000000L    # 18.5

    cmpg-double v2, v5, v8

    if-gez v2, :cond_21e

    .line 793
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100754

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3bf

    .line 795
    :cond_21e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    cmpg-double v2, v5, v8

    if-gez v2, :cond_29a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v8, 0x4032800000000000L    # 18.5

    cmpl-double v2, v5, v8

    if-ltz v2, :cond_29a

    .line 796
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1005b7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3bf

    .line 798
    :cond_29a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v8, 0x403c000000000000L    # 28.0

    cmpg-double v2, v5, v8

    if-gez v2, :cond_316

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v8, 0x4037e66666666666L    # 23.9

    cmpl-double v2, v5, v8

    if-ltz v2, :cond_316

    .line 799
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100481

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3bf

    .line 801
    :cond_316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v8, 0x4040000000000000L    # 32.0

    cmpg-double v2, v5, v8

    if-gez v2, :cond_38e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v8, 0x403c000000000000L    # 28.0

    cmpl-double v2, v5, v8

    if-ltz v2, :cond_38e

    .line 802
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10046d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3bf

    .line 805
    :cond_38e
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1007a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    :goto_3bf
    invoke-virtual {v12, v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->setWeight(F)V

    .line 808
    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v2

    invoke-virtual {v12, v2}, Lcom/keephealth/android/ui/main/bean/WeightData;->setWeightLb(F)V

    .line 809
    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->setWeightLb(F)V

    goto/16 :goto_664

    .line 811
    :cond_3ce
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v8, v1

    const-wide/high16 v20, 0x4026000000000000L    # 11.0

    add-double v8, v8, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v20

    int-to-double v1, v2

    const-wide v18, 0x3fb999999999999aL    # 0.1

    mul-double v1, v1, v18

    add-double/2addr v8, v1

    double-to-float v1, v8

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 812
    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 826
    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kgfloat(F)F

    move-result v2

    mul-float v2, v2, v17

    mul-float v2, v2, v17

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v5}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    .line 827
    invoke-virtual {v12, v2}, Lcom/keephealth/android/ui/main/bean/WeightData;->setBmi(Ljava/lang/String;)V

    .line 828
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bmi:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "gfgf433"

    invoke-static {v5, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Float.valueOf(weightData.getBmi())-bang:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "   weightData.getBmi()-bang:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "gfgf433"

    invoke-static {v5, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v8, 0x4032800000000000L    # 18.5

    cmpg-double v2, v5, v8

    if-gez v2, :cond_4b6

    .line 831
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100754

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_657

    .line 833
    :cond_4b6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    cmpg-double v2, v5, v8

    if-gez v2, :cond_532

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v8, 0x4032800000000000L    # 18.5

    cmpl-double v2, v5, v8

    if-ltz v2, :cond_532

    .line 834
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1005b7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_657

    .line 836
    :cond_532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v8, 0x403c000000000000L    # 28.0

    cmpg-double v2, v5, v8

    if-gez v2, :cond_5ae

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v8, 0x4037e66666666666L    # 23.9

    cmpl-double v2, v5, v8

    if-ltz v2, :cond_5ae

    .line 837
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100481

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_657

    .line 839
    :cond_5ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v8, 0x4040000000000000L    # 32.0

    cmpg-double v2, v5, v8

    if-gez v2, :cond_626

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v8, 0x403c000000000000L    # 28.0

    cmpl-double v2, v5, v8

    if-ltz v2, :cond_626

    .line 840
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10046d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_657

    .line 843
    :cond_626
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1007a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    :goto_657
    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v2

    invoke-virtual {v12, v2}, Lcom/keephealth/android/ui/main/bean/WeightData;->setWeight(F)V

    .line 846
    invoke-virtual {v12, v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->setWeightLb(F)V

    .line 848
    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->setWeightLb(F)V

    :goto_664
    const/4 v1, 0x1

    .line 850
    new-array v2, v1, [Lcom/keephealth/android/ui/main/bean/WeightData;

    const/4 v1, 0x0

    aput-object v12, v2, v1

    invoke-virtual {v4, v2}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->insertInTx([Ljava/lang/Object;)V

    .line 851
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$500(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initWeightTargeData()V
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$200(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    .line 853
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v1

    if-eqz v1, :cond_6b3

    .line 854
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x12d

    if-le v1, v2, :cond_6a5

    .line 855
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v2

    div-float v2, v2, v16

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    goto/16 :goto_71f

    .line 857
    :cond_6a5
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v2

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    goto :goto_71f

    .line 860
    :cond_6b3
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v1

    const v2, 0x44264000    # 665.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6f6

    .line 861
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v3

    div-float v3, v3, v16

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    goto :goto_71f

    .line 863
    :cond_6f6
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    .line 866
    :goto_71f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 867
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 868
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_b86

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_757

    goto/16 :goto_b86

    .line 873
    :cond_757
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 875
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v1

    if-eqz v1, :cond_960

    .line 876
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v2, 0x43968000    # 301.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7b5

    .line 878
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    div-float v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    goto :goto_7d2

    .line 880
    :cond_7b5
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    .line 883
    :goto_7d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v1

    const v2, 0x43968000    # 301.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_805

    .line 884
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, v1, v16

    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    goto :goto_811

    .line 886
    :cond_805
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 888
    :goto_811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8af

    .line 889
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 890
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 891
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100447

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    sub-float/2addr v1, v2

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 894
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v14}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b9d

    .line 896
    :cond_8af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_8e1

    .line 897
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 898
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_b9d

    :cond_8e1
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 900
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 902
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100448

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    sub-float/2addr v1, v2

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 906
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v14}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b9d

    .line 909
    :cond_960
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v2, 0x44264000    # 665.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9ac

    .line 911
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    div-float v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    goto :goto_9c9

    .line 913
    :cond_9ac
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    .line 916
    :goto_9c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v1

    const v2, 0x44264000    # 665.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9fc

    .line 917
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, v1, v16

    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    goto :goto_a08

    .line 919
    :cond_9fc
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 921
    :goto_a08
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_abd

    .line 922
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 923
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 924
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100447

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 927
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100773

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b9d

    .line 929
    :cond_abd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_aef

    .line 930
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 931
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_b9d

    :cond_aef
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 933
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 934
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 935
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100448

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    sub-float/2addr v1, v2

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 939
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100773

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b9d

    .line 869
    :cond_b86
    :goto_b86
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 870
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 871
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 944
    :goto_b9d
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$700(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;->getWeightHistory()V

    const/16 v1, 0x3f3

    .line 945
    invoke-static {v1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto/16 :goto_1323

    .line 946
    :cond_baf
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectType:I
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$300(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1323

    .line 949
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v4

    if-eqz v4, :cond_c59

    .line 950
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v1, v6

    int-to-double v5, v1

    int-to-double v1, v2

    const-wide v7, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v7

    add-double/2addr v5, v1

    double-to-float v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 951
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeightTarger(F)V

    .line 952
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/model/bean/UserBean;->setWeightTargerLb(F)V

    const v2, 0x43968000    # 301.0f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_c07

    .line 954
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    div-float v4, v1, v16

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v2, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    goto :goto_c0c

    .line 956
    :cond_c07
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v2, v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    .line 958
    :goto_c0c
    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->setWeightLb(F)V

    .line 959
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->setDeviceName(Ljava/lang/String;)V

    .line 960
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initWeightTargeData()V
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$200(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    .line 961
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mWeightTargerData:Lcom/keephealth/android/ui/main/bean/WeightTargerData;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$800(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    move-result-object v1

    if-eqz v1, :cond_c48

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mWeightTargerData:Lcom/keephealth/android/ui/main/bean/WeightTargerData;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$800(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_c48

    .line 962
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$100(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mWeightTargerData:Lcom/keephealth/android/ui/main/bean/WeightTargerData;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$800(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;->deleteByKey(Ljava/lang/Object;)V

    .line 964
    :cond_c48
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$100(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    const/4 v2, 0x0

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;->insertInTx([Ljava/lang/Object;)V

    goto/16 :goto_cfd

    .line 966
    :cond_c59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v5, v1

    const-wide/high16 v7, 0x4026000000000000L    # 11.0

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    int-to-double v1, v2

    const-wide v7, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v7

    add-double/2addr v5, v1

    double-to-float v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 967
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/model/bean/UserBean;->setWeightTarger(F)V

    .line 968
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeightTargerLb(F)V

    float-to-int v2, v1

    int-to-float v2, v2

    .line 969
    invoke-static {v2}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v2

    const v4, 0x44264000    # 665.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_ca9

    .line 970
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    div-float v4, v1, v16

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v2, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    goto :goto_cae

    .line 972
    :cond_ca9
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v2, v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    .line 974
    :goto_cae
    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->setWeightLb(F)V

    .line 975
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->setDeviceName(Ljava/lang/String;)V

    .line 976
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initWeightTargeData()V
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$200(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    .line 977
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mWeightTargerData:Lcom/keephealth/android/ui/main/bean/WeightTargerData;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$800(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    move-result-object v1

    if-eqz v1, :cond_cee

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mWeightTargerData:Lcom/keephealth/android/ui/main/bean/WeightTargerData;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$800(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_cee

    .line 978
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$100(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mWeightTargerData:Lcom/keephealth/android/ui/main/bean/WeightTargerData;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$800(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;->deleteByKey(Ljava/lang/Object;)V

    .line 980
    :cond_cee
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$100(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    const/4 v2, 0x0

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;->insertInTx([Ljava/lang/Object;)V

    .line 983
    :goto_cfd
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 984
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 985
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1120

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_d35

    goto/16 :goto_1120

    .line 990
    :cond_d35
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 992
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v1

    if-eqz v1, :cond_f1c

    .line 993
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    .line 994
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    const v2, 0x43968000    # 301.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d82

    .line 995
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    div-float v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    goto :goto_da3

    .line 997
    :cond_d82
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    .line 1000
    :goto_da3
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v1

    const v2, 0x43968000    # 301.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_dc1

    .line 1001
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, v1, v16

    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    goto :goto_dcd

    .line 1003
    :cond_dc1
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 1005
    :goto_dcd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e6b

    .line 1006
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1008
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100447

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    sub-float/2addr v1, v2

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v14}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1137

    .line 1014
    :cond_e6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e9d

    .line 1015
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1016
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1137

    :cond_e9d
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 1018
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1019
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1020
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100448

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 1023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v14}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1137

    .line 1028
    :cond_f1c
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    .line 1029
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    const v2, 0x44264000    # 665.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f57

    .line 1030
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    div-float v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    goto :goto_f78

    .line 1032
    :cond_f57
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    .line 1035
    :goto_f78
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v1

    const v2, 0x44264000    # 665.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f96

    .line 1036
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, v1, v16

    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    goto :goto_fa2

    .line 1038
    :cond_f96
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 1040
    :goto_fa2
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1057

    .line 1041
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1042
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1043
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100447

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1047
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100773

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1137

    .line 1049
    :cond_1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weigetTar:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1089

    .line 1050
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1051
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1137

    :cond_1089
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 1053
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1054
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1055
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100448

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    sub-float/2addr v1, v2

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1058
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100773

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1137

    .line 986
    :cond_1120
    :goto_1120
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 987
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 988
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1062
    :goto_1137
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v1

    if-eqz v1, :cond_11ce

    .line 1063
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x12d

    if-le v1, v2, :cond_1192

    .line 1064
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v4

    div-float v4, v4, v16

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "kg"

    invoke-virtual {v2, v3, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v2

    div-float v2, v2, v16

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    goto/16 :goto_1311

    .line 1067
    :cond_1192
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v14}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v2

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    goto/16 :goto_1311

    .line 1073
    :cond_11ce
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v1

    const v2, 0x44264000    # 665.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12a0

    .line 1074
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v4

    div-float v4, v4, v16

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100773

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v3

    div-float v3, v3, v16

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    .line 1076
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 1077
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 1078
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v3

    div-float v3, v3, v16

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    goto :goto_1311

    .line 1080
    :cond_12a0
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100773

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V

    .line 1084
    :goto_1311
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$900(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;->getWeightHistory()V

    .line 1085
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 1087
    :cond_1323
    :goto_1323
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initWeightTargeData()V
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$200(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    .line 1088
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1344

    .line 1089
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1090
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_134c

    .line 1092
    :cond_1344
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_134c
    return-void
.end method
