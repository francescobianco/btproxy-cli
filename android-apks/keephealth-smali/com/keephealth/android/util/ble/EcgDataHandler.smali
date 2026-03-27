.class public Lcom/keephealth/android/util/ble/EcgDataHandler;
.super Ljava/lang/Object;
.source "EcgDataHandler.java"


# instance fields
.field private currentIndex:I

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hr:I

.field private final hrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final measureCalendar:Ljava/util/Calendar;

.field result:I

.field private final resultList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field saveItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/ECGItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->currentIndex:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->saveItem:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hrList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->resultList:Ljava/util/Set;

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->data:Ljava/util/List;

    return-void
.end method

.method private saveData()V
    .registers 10

    .line 159
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getECGItemInfoDao()Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->saveItem:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->saveInTx(Ljava/lang/Iterable;)V

    .line 161
    new-instance v0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDate(J)V

    .line 163
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setYear(I)V

    .line 164
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setMonth(I)V

    .line 165
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDay(I)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iget-object v3, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->resultList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const-string v4, "22"

    const/4 v5, 0x0

    if-nez v3, :cond_56

    .line 168
    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDesc(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setState(I)V

    goto/16 :goto_cf

    .line 171
    :cond_56
    iget-object v3, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->resultList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5c
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 172
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_a5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_a5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_a5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_a5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_a5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_a5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_a5

    .line 173
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5c

    .line 174
    :cond_a5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 177
    :cond_af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_bc

    .line 178
    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setState(I)V

    .line 179
    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDesc(Ljava/lang/String;)V

    goto :goto_cf

    .line 181
    :cond_bc
    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setState(I)V

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDesc(Ljava/lang/String;)V

    .line 185
    :goto_cf
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f9

    .line 187
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_dd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v5, v2

    goto :goto_dd

    .line 190
    :cond_ef
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v5, v1

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setAvgHeart(I)V

    .line 192
    :cond_f9
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getEcgRecordInfoDao()Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->insert(Ljava/lang/Object;)J

    return-void
.end method


# virtual methods
.method public handler([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 15

    .line 41
    new-instance v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    const/4 v1, 0x0

    .line 42
    aget-byte v2, p1, v1

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, -0x5e

    if-ne v2, v8, :cond_bf

    aget-byte v9, p1, v6

    if-nez v9, :cond_bf

    aget-byte v9, p1, v5

    if-nez v9, :cond_bf

    .line 43
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 44
    iget-object v2, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->saveItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 45
    iget-object v2, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->resultList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 46
    iget-object v2, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hrList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 47
    iput v4, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->currentIndex:I

    const/4 v2, 0x7

    .line 48
    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v4

    .line 49
    aget-byte v2, p1, v2

    const/16 v5, 0x8

    .line 50
    aget-byte v5, p1, v5

    const/16 v8, 0x9

    .line 51
    aget-byte v8, p1, v8

    const/16 v9, 0xa

    .line 52
    aget-byte v9, p1, v9

    const/16 v10, 0xb

    .line 53
    aget-byte p1, p1, v10

    .line 54
    iget-object v11, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v11, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 55
    iget-object v11, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v11, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 56
    iget-object v6, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 57
    iget-object v3, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 58
    iget-object v3, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 59
    iget-object v3, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    const/16 v6, 0xd

    invoke-virtual {v3, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\u5fc3\u7535\u5f00\u59cb\u5934:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 61
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 62
    new-instance p1, Lcom/keephealth/android/model/bean/BaseMessage;

    const/16 v2, 0x321

    iget-object v3, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    invoke-direct {p1, v2, v3}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(ILjava/lang/Object;)V

    .line 63
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 64
    iput-boolean v1, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 65
    iput-boolean v7, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    goto/16 :goto_235

    :cond_bf
    const/4 v9, 0x3

    if-ne v2, v8, :cond_e8

    .line 66
    aget-byte v10, p1, v5

    if-ne v10, v7, :cond_e8

    .line 68
    const-string v2, "\u5fc3\u7535\u7ed3\u675f"

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 69
    iput v4, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->currentIndex:I

    .line 70
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 71
    iput-boolean v7, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 72
    iput-boolean v7, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    .line 73
    aget-byte p1, p1, v9

    if-nez p1, :cond_de

    const/16 p1, 0x322

    .line 74
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto/16 :goto_235

    .line 76
    :cond_de
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/EcgDataHandler;->saveData()V

    .line 77
    const-string p1, "\u5fc3\u7535\u7ed3\u675f:saveData()"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_235

    :cond_e8
    if-ne v2, v8, :cond_10c

    .line 79
    aget-byte v10, p1, v5

    if-ne v10, v9, :cond_10c

    .line 81
    iput v4, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->currentIndex:I

    .line 82
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->saveItem:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->resultList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 85
    iget-object p1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hrList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/16 p1, 0x325

    .line 86
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 87
    iput-boolean v7, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 88
    iput-boolean v1, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    goto/16 :goto_235

    :cond_10c
    if-ne v2, v8, :cond_12e

    .line 89
    aget-byte v9, p1, v5

    if-ne v9, v5, :cond_12e

    .line 91
    iget-object p1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->saveItem:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 92
    iget-object p1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->resultList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 93
    iget-object p1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hrList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 94
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 95
    const-string p1, "\u6ca1\u6709\u5386\u53f2\u6570\u636e\u4e86.."

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 96
    iput-boolean v7, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 97
    iput-boolean v1, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    goto/16 :goto_235

    :cond_12e
    if-ne v2, v8, :cond_138

    .line 98
    aget-byte v2, p1, v5

    if-ne v2, v3, :cond_138

    .line 100
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    goto/16 :goto_235

    .line 103
    :cond_138
    invoke-static {p1, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    .line 104
    iget v2, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->currentIndex:I

    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_22a

    const/16 v2, 0xf

    if-ne v1, v2, :cond_208

    .line 108
    iput v4, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->currentIndex:I

    move v1, v6

    :goto_14d
    const/16 v2, 0xe

    if-ge v1, v2, :cond_166

    add-int/lit8 v2, v1, 0x2

    .line 110
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    .line 111
    iget-object v4, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->data:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_14d

    :cond_166
    const/16 v1, 0x10

    .line 113
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hr:I

    const/16 v2, 0x12

    .line 114
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->result:I

    .line 115
    new-instance p1, Lcom/keephealth/android/ui/ecg/bean/EcgData;

    invoke-direct {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->data:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->setData(Ljava/util/List;)V

    .line 117
    iget v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hr:I

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->setHr(I)V

    .line 118
    iget v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->result:I

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->setResult(I)V

    .line 119
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_198
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v4, v2

    .line 120
    new-instance v2, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;-><init>()V

    .line 121
    iget-object v8, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setDate(J)V

    .line 122
    iget-object v8, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setYear(I)V

    .line 123
    iget-object v8, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v2, v8}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setMonth(I)V

    .line 124
    iget-object v8, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->measureCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setDay(I)V

    double-to-float v4, v4

    .line 125
    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setHr(F)V

    .line 126
    iget-object v4, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->saveItem:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_198

    .line 129
    :cond_1dd
    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->getHr()I

    move-result v1

    if-eqz v1, :cond_1f0

    .line 130
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->hrList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->getHr()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1f0
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->resultList:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/bean/EcgData;->getResult()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/keephealth/android/model/bean/BaseMessage;

    const/16 v2, 0x324

    invoke-direct {v1, v2, p1}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(ILjava/lang/Object;)V

    .line 134
    invoke-static {v1}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    goto :goto_235

    .line 136
    :cond_208
    iput v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->currentIndex:I

    if-nez v1, :cond_211

    .line 139
    iget-object v1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_211
    :goto_211
    const/16 v1, 0x14

    if-ge v6, v1, :cond_235

    add-int/lit8 v1, v6, 0x2

    .line 142
    invoke-static {p1, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v2

    .line 143
    iget-object v3, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->data:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v1

    goto :goto_211

    :cond_22a
    if-ne v2, v1, :cond_22e

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_22e
    iget-object p1, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->data:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 152
    iput v4, p0, Lcom/keephealth/android/util/ble/EcgDataHandler;->currentIndex:I

    :cond_235
    :goto_235
    return-object v0
.end method

.method public receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/EcgDataHandler;->handler([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    move-result-object p1

    return-object p1
.end method
