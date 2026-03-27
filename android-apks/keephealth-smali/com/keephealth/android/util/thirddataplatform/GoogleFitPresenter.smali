.class public Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;
.super Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;
.source "GoogleFitPresenter.java"

# interfaces
.implements Lcom/keephealth/android/app/Constants;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final GOOGLE_FIT_PERMISSIONS_REQUEST_CODE:I = 0xa

.field public static final GOOGLE_SIGN_IN:I = 0x3

.field public static final TAG:Ljava/lang/String; = "GoogleFitPresenter"

.field public static modle:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;


# instance fields
.field account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private activity:Landroid/app/Activity;

.field calorieDataSet:Lcom/google/android/gms/fitness/data/DataSet;

.field distanceDataSet:Lcom/google/android/gms/fitness/data/DataSet;

.field private fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

.field private isSubscrib:Z

.field private oneLoadCount:I

.field rateDataSet:Lcom/google/android/gms/fitness/data/DataSet;

.field stepDataSet:Lcom/google/android/gms/fitness/data/DataSet;

.field private final timeDis:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitDataHelper;-><init>()V

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->isSubscrib:Z

    const-wide/32 v0, 0x1b7740

    .line 243
    iput-wide v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->timeDis:J

    const/4 v0, 0x3

    .line 244
    iput v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->oneLoadCount:I

    .line 83
    iput-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    .line 84
    invoke-static {}, Lcom/google/android/gms/fitness/FitnessOptions;->builder()Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->build()Lcom/google/android/gms/fitness/FitnessOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    return-void
.end method

.method private createDataForRequest(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;Ljava/lang/Object;JJ)Lcom/google/android/gms/fitness/data/DataSet;
    .registers 16

    .line 495
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    .line 497
    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 498
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    const-string v1, "VeryFitPro - step count"

    .line 499
    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 500
    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 502
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    .line 505
    :try_start_22
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, p4

    move-wide v5, p6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object p4

    .line 506
    sget-object p5, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    if-eq p1, p5, :cond_59

    sget-object p5, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    if-ne p1, p5, :cond_37

    goto :goto_59

    .line 509
    :cond_37
    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_49

    .line 510
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->setIntValues([I)Lcom/google/android/gms/fitness/data/DataPoint;

    goto :goto_66

    .line 512
    :cond_49
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p2, 0x1

    new-array p2, p2, [F

    aput p1, p2, v1

    invoke-virtual {p4, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->setFloatValues([F)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object p4

    goto :goto_66

    .line 507
    :cond_59
    :goto_59
    invoke-virtual {p4, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object p1

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V

    .line 515
    :goto_66
    invoke-virtual {v0, p4}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_69} :catch_69

    :catch_69
    return-object v0
.end method

.method public static getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;
    .registers 1

    .line 102
    sget-object v0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->modle:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;
    .registers 2

    .line 96
    sget-object v0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->modle:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->modle:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    .line 99
    :cond_b
    sget-object p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->modle:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    return-object p0
.end method

.method private handleError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoogleFit"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$subscribe$1(Ljava/lang/Exception;)V
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hhr4"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$uploadStep$9(Ljava/lang/Exception;)V
    .registers 3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google Fit \u5ba2\u6237\u7aef\u8fde\u63a5\u5931\u8d25\u6216\u672a\u6388\u6743: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GoogleFit"

    invoke-static {v0, p0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private signIn()V
    .registers 4

    .line 163
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "googlefit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 164
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/NetworkUtil;->checkNetworkConnect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 165
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3b
    return-void
.end method

.method private subscribe(Lcom/google/android/gms/fitness/data/DataType;)V
    .registers 6

    .line 217
    const-string v0, "hhr4"

    .line 0
    const-string v1, "account:"

    .line 217
    :try_start_4
    iget-object v2, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    if-nez v2, :cond_12

    .line 219
    const-string p1, "account  is null"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 222
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_4b

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/Fitness;->getRecordingClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/RecordingClient;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/RecordingClient;->subscribe(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;Lcom/google/android/gms/fitness/data/DataType;)V

    .line 231
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda7;-><init>()V

    .line 240
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catch_4b
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "account_e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private subscriptionData()V
    .registers 2

    .line 205
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->subscribe(Lcom/google/android/gms/fitness/data/DataType;)V

    .line 206
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->subscribe(Lcom/google/android/gms/fitness/data/DataType;)V

    .line 208
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->subscribe(Lcom/google/android/gms/fitness/data/DataType;)V

    .line 210
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->subscribe(Lcom/google/android/gms/fitness/data/DataType;)V

    return-void
.end method

.method private sunbscrerib()V
    .registers 5

    .line 178
    const-string v0, "fr33re"

    .line 0
    const-string v1, "account:"

    .line 178
    :try_start_4
    iget-object v2, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_28

    .line 181
    const-string v1, "account  is null"

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_58

    return-void

    .line 190
    :cond_28
    iget-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v2, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    const/16 v3, 0xa

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->requestPermissions(Landroid/app/Activity;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)V

    goto :goto_57

    .line 197
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u662f\u5426\u8ba2\u9605\u4e86.....isSubscrib:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->isSubscrib:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 198
    iget-boolean v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->isSubscrib:Z

    if-nez v0, :cond_57

    .line 199
    invoke-direct {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->subscriptionData()V

    :cond_57
    :goto_57
    return-void

    :catch_58
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sunbscrerib_e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private uploadStep(IFFJJ)V
    .registers 21

    move-object v10, p0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    const/4 v0, 0x0

    .line 378
    const-string v1, "GoogleFit"

    if-gtz p1, :cond_15

    .line 379
    const-string v2, "\u6b65\u6570\u4e3a0\uff0c\u4e0d\u4e0a\u4f20"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "\u5f53\u524d\u9875\u9762:GoogleFit  \u6b65\u6570\u4e3a0\uff0c\u4e0d\u4e0a\u4f20"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    return-void

    .line 385
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v2, v3, v5

    if-gez v2, :cond_6e

    cmp-long v2, v5, v7

    if-gtz v2, :cond_6e

    sub-long v7, v5, v3

    const-wide/16 v11, 0x3e8

    cmp-long v2, v7, v11

    if-gez v2, :cond_2a

    goto :goto_6e

    .line 392
    :cond_2a
    iget-object v2, v10, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    iget-object v7, v10, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v2, v7}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v9

    if-eqz v9, :cond_63

    .line 393
    iget-object v2, v10, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v9, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_63

    .line 400
    :cond_3d
    iget-object v0, v10, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    invoke-static {v0, v9}, Lcom/google/android/gms/fitness/Fitness;->getRecordingClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/RecordingClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/RecordingClient;->listSubscriptions()Lcom/google/android/gms/tasks/Task;

    move-result-object v11

    new-instance v12, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move v7, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;IJJFFLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 401
    invoke-virtual {v11, v12}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda1;-><init>()V

    .line 437
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 394
    :cond_63
    :goto_63
    const-string v2, "\u672a\u83b7\u53d6\u5230\u6709\u6548\u7684 GoogleFit \u6388\u6743\u8d26\u53f7"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "\u5f53\u524d\u9875\u9762:GoogleFit  \u672a\u83b7\u53d6\u5230\u6709\u6548\u7684 GoogleFit \u6388\u6743\u8d26\u53f7"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    return-void

    .line 387
    :cond_6e
    :goto_6e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "\u65f6\u95f4\u6233\u4e0d\u5408\u6cd5\uff0cstartTime="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", endTime="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762:GoogleFit  \u65f6\u95f4\u6233\u4e0d\u5408\u6cd5\uff0cstartTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 522
    iput-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    return-void
.end method

.method public connectGoogle(I)V
    .registers 5

    .line 133
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "googlefit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "googleFit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fff33"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq v0, p1, :cond_35

    .line 136
    const-string p1, "googleFit.....\u5f00\u5173\u672a\u5f00"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 137
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_35
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/NetUtils;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 141
    const-string p1, "!NetUtils.isConnected"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_45
    :try_start_45
    iget-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p1, :cond_5d

    .line 147
    const-string p1, "account is null,go to signIn"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 148
    const-string p1, "account==null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->signIn()V

    goto :goto_84

    .line 151
    :cond_5d
    const-string p1, "account!=null    sunbscrerib"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string p1, "account is exist,go to sunbscrerib"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->sunbscrerib()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6a} :catch_6b

    goto :goto_84

    :catch_6b
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    invoke-direct {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->signIn()V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "e:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_84
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public handleSignInResult(ILandroid/content/Intent;)V
    .registers 6

    const-string v0, "\u767b\u5f55\u5931\u8d25\uff1a"

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    return-void

    .line 117
    :cond_6
    :try_start_6
    invoke-static {p2}, Lcom/google/android/gms/auth/api/signin/internal/zzi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v1
    :try_end_e
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_6 .. :try_end_e} :catch_42

    const-string v2, "fff33"

    if-eqz v1, :cond_29

    .line 120
    :try_start_12
    invoke-static {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 121
    const-string p1, "google fit \u767b\u5f55\u6210\u529f"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->sunbscrerib()V

    goto :goto_42

    .line 124
    :cond_29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 125
    const-string p1, "google fit \u767b\u5f55\u5931\u8d25"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_12 .. :try_end_42} :catch_42

    :catch_42
    :goto_42
    return-void
.end method

.method synthetic lambda$subscribe$0$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Lcom/google/android/gms/fitness/data/DataType;Ljava/lang/Void;)V
    .registers 4

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Successfully subscribed! "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->isSubscrib:Z

    .line 234
    const-string p1, "hhr4"

    const-string p2, "\u8ba2\u9605\u5b8c\u6210"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object p1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method synthetic lambda$uploadStep$2$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Ljava/lang/Void;)V
    .registers 3

    .line 427
    const-string p1, "GoogleFit"

    const-string v0, "\u5361\u8def\u91cc\u4e0a\u4f20\u6210\u529f"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->uploadSuccess()V

    return-void
.end method

.method synthetic lambda$uploadStep$3$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Ljava/lang/Exception;)V
    .registers 3

    .line 430
    const-string v0, "\u5361\u8def\u91cc\u4e0a\u4f20\u5931\u8d25"

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$uploadStep$4$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Lcom/google/android/gms/fitness/HistoryClient;Lcom/google/android/gms/fitness/data/DataSet;Ljava/lang/Void;)V
    .registers 5

    .line 424
    const-string p3, "GoogleFit"

    const-string v0, "\u8ddd\u79bb\u4e0a\u4f20\u6210\u529f"

    invoke-static {p3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/HistoryClient;->insertData(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;)V

    .line 426
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;)V

    .line 430
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method synthetic lambda$uploadStep$5$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Ljava/lang/Exception;)V
    .registers 3

    .line 432
    const-string v0, "\u8ddd\u79bb\u4e0a\u4f20\u5931\u8d25"

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$uploadStep$6$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Lcom/google/android/gms/fitness/HistoryClient;Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSet;Ljava/lang/Void;)V
    .registers 6

    .line 421
    const-string p4, "GoogleFit"

    const-string v0, "\u6b65\u6570\u4e0a\u4f20\u6210\u529f"

    invoke-static {p4, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/HistoryClient;->insertData(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p4, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda8;

    invoke-direct {p4, p0, p1, p3}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;Lcom/google/android/gms/fitness/HistoryClient;Lcom/google/android/gms/fitness/data/DataSet;)V

    .line 423
    invoke-virtual {p2, p4}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;)V

    .line 432
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method synthetic lambda$uploadStep$7$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Ljava/lang/Exception;)V
    .registers 3

    .line 434
    const-string v0, "\u6b65\u6570\u4e0a\u4f20\u5931\u8d25"

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$uploadStep$8$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(IJJFFLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/util/List;)V
    .registers 21

    .line 0
    move-object v8, p0

    .line 403
    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->createDataForRequest(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;Ljava/lang/Object;JJ)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v9

    .line 404
    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->createDataForRequest(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;Ljava/lang/Object;JJ)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v10

    .line 405
    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->createDataForRequest(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;Ljava/lang/Object;JJ)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    .line 407
    const-string v1, "GoogleFit"

    if-eqz v9, :cond_8c

    invoke-virtual {v9}, Lcom/google/android/gms/fitness/data/DataSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8c

    if-eqz v10, :cond_8c

    .line 408
    invoke-virtual {v10}, Lcom/google/android/gms/fitness/data/DataSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8c

    if-eqz v0, :cond_8c

    .line 409
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_8c

    .line 415
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u51c6\u5907\u4e0a\u4f20\u6570\u636e\uff0c\u6b65\u6570="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c\u8ddd\u79bb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c\u5361\u8def\u91cc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v1, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    move-object/from16 v2, p8

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/Fitness;->getHistoryClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/HistoryClient;

    move-result-object v1

    .line 419
    invoke-virtual {v1, v9}, Lcom/google/android/gms/fitness/HistoryClient;->insertData(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v10, v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;Lcom/google/android/gms/fitness/HistoryClient;Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSet;)V

    .line 420
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;)V

    .line 434
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_8c
    :goto_8c
    const/4 v0, 0x0

    .line 410
    const-string v2, "\u5f53\u524d\u9875\u9762:GoogleFit  \u6784\u5efa\u7684\u6570\u636e\u4e3a\u7a7a\uff0c\u53d6\u6d88\u4e0a\u4f20"

    invoke-static {v0, v2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 411
    const-string v0, "\u6784\u5efa\u7684\u6570\u636e\u4e3a\u7a7a\uff0c\u53d6\u6d88\u4e0a\u4f20"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveData()V
    .registers 18

    move-object/from16 v8, p0

    const/4 v0, 0x3

    .line 247
    iput v0, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->oneLoadCount:I

    .line 248
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "googlefit"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    .line 250
    const-string v0, "googleFit.....\u5f00\u5173\u672a\u5f00"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 254
    :cond_23
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/NetUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 257
    :cond_2e
    iget-object v0, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_33

    return-void

    .line 260
    :cond_33
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-nez v0, :cond_3a

    return-void

    .line 263
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->sunbscrerib()V

    .line 264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 265
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 266
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 267
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->currentUploadTime:J

    const/16 v2, 0xb

    .line 268
    invoke-virtual {v0, v2, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 269
    invoke-virtual {v0, v2, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 270
    invoke-virtual {v0, v2, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 271
    invoke-virtual {v0, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 272
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 273
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "LAST_SYS_TIME"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0, v4, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lastUploadTime:J

    .line 274
    iput-wide v5, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lastUploadTime:J

    .line 276
    iget-wide v4, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lastUploadTime:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_83

    .line 277
    iput-wide v2, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lastUploadTime:J

    .line 280
    :cond_83
    iget-wide v2, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->currentUploadTime:J

    iget-wide v4, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lastUploadTime:J

    sub-long/2addr v2, v4

    const-wide/32 v10, 0x1b7740

    div-long/2addr v2, v10

    long-to-int v12, v2

    add-int/lit8 v13, v12, 0x1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0a\u4f20\u6b21\u6570"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportItemDao()Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-wide v3, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lastUploadTime:J

    .line 285
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->currentUploadTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v9

    .line 286
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v14

    .line 287
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-wide v3, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lastUploadTime:J

    .line 289
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->currentUploadTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v9

    .line 290
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    if-eqz v14, :cond_1bc

    .line 292
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1bc

    move v15, v9

    :goto_11d
    if-ge v15, v13, :cond_1c6

    .line 297
    iget-wide v0, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lastUploadTime:J

    int-to-long v2, v15

    mul-long/2addr v2, v10

    add-long v4, v0, v2

    if-ne v15, v12, :cond_168

    .line 300
    iget-wide v6, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->currentUploadTime:J

    .line 302
    :try_start_129
    iget v0, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->oneLoadCount:I
    :try_end_12b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_129 .. :try_end_12b} :catch_15d

    mul-int/2addr v0, v15

    move v1, v9

    move v2, v1

    move v3, v2

    :goto_12f
    :try_start_12f
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_160

    .line 303
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v9

    add-int/2addr v1, v9

    int-to-float v9, v2

    .line 304
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v2

    add-float/2addr v9, v2

    float-to-int v2, v9

    int-to-float v9, v3

    .line 305
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v3
    :try_end_158
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12f .. :try_end_158} :catch_160

    add-float/2addr v9, v3

    float-to-int v3, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_12f

    :catch_15d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :catch_160
    :cond_160
    int-to-float v2, v2

    int-to-float v3, v3

    move-object/from16 v0, p0

    .line 310
    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->uploadStep(IFFJJ)V

    goto :goto_1b4

    .line 312
    :cond_168
    iget-wide v0, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lastUploadTime:J

    add-int/lit8 v2, v15, 0x1

    int-to-long v6, v2

    mul-long/2addr v6, v10

    add-long/2addr v6, v0

    .line 314
    :try_start_16f
    iget v0, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->oneLoadCount:I
    :try_end_171
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16f .. :try_end_171} :catch_1aa

    mul-int/2addr v0, v15

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_175
    :try_start_175
    iget v10, v8, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->oneLoadCount:I

    mul-int/2addr v10, v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v0, v10, :cond_1ad

    .line 315
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v10

    add-int/2addr v1, v10

    int-to-float v10, v3

    .line 316
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v3

    add-float/2addr v10, v3

    float-to-int v3, v10

    int-to-float v10, v9

    .line 317
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v9
    :try_end_1a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_175 .. :try_end_1a5} :catch_1ad

    add-float/2addr v10, v9

    float-to-int v9, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_175

    :catch_1aa
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    :catch_1ad
    :cond_1ad
    int-to-float v2, v3

    int-to-float v3, v9

    move-object/from16 v0, p0

    .line 322
    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->uploadStep(IFFJJ)V

    :goto_1b4
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    const-wide/32 v10, 0x1b7740

    goto/16 :goto_11d

    .line 326
    :cond_1bc
    const-string v0, "\u65e0\u6570\u636e\u4e0d\u4e0a\u4f20"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 327
    const-string v1, "hhr4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c6
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->activity:Landroid/app/Activity;

    return-void
.end method
