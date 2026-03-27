.class public Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "WomenHealthNewViewModel.java"


# instance fields
.field public final FERTILE_PERIOD_START:J

.field private final FIVE_DAY:J

.field public final ONE_DAY:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const-wide/32 v0, 0x5265c00

    .line 40
    iput-wide v0, p0, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->ONE_DAY:J

    const-wide/32 v0, 0x19bfcc00

    .line 41
    iput-wide v0, p0, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->FIVE_DAY:J

    const-wide/32 v0, 0x61d8d400

    .line 42
    iput-wide v0, p0, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->FERTILE_PERIOD_START:J

    return-void
.end method

.method static synthetic lambda$sendData$0(Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;)Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;
    .registers 1

    return-object p0
.end method

.method static synthetic lambda$sendData$1(Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;)Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;
    .registers 2

    return-object p0
.end method

.method static synthetic lambda$sendData$2(Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 2

    .line 1827
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private sendToDevice(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1839
    invoke-static {v0, p1, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setWomenTargetNew(ILjava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 1840
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 1841
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne v1, v2, :cond_2a

    .line 1842
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    .line 1843
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v6, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$2;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$2;-><init>(Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;)V

    .line 1842
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_3b

    .line 1858
    :cond_2a
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    invoke-virtual {v2, v3, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;)V

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3e
    return-void
.end method


# virtual methods
.method public cancelPeriodEnd(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 13

    .line 1131
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    const/4 v1, 0x0

    .line 1132
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1133
    invoke-virtual {v0, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1135
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    const-wide/32 v7, 0x5265c00

    add-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    .line 1136
    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 1137
    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 1138
    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 1139
    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 1140
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1142
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    div-long/2addr v9, v5

    mul-long/2addr v9, v5

    add-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v7, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 1141
    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1144
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v4, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_90

    .line 1146
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1147
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1148
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 1149
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 1150
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 1151
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    div-long/2addr v7, v5

    mul-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 1152
    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1153
    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_c0

    .line 1155
    :cond_90
    new-instance v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    .line 1156
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1157
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1158
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 1159
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 1160
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 1161
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    div-long/2addr v7, v5

    mul-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 1162
    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1163
    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 1166
    :goto_c0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelPeriodEnd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u4fee\u6539\u7ecf\u671f\u7ed3\u675f\u65f6\u95f4"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelPeriodStart(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 15

    .line 1089
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodEnd(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    .line 1090
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    .line 1091
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    .line 1092
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v4

    if-nez v0, :cond_25

    const-wide/16 v5, 0x0

    goto :goto_2b

    .line 1094
    :cond_25
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v5

    div-long/2addr v5, v2

    mul-long/2addr v5, v2

    :goto_2b
    if-nez p1, :cond_33

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_39

    .line 1095
    :cond_33
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v7

    div-long/2addr v7, v2

    mul-long/2addr v7, v2

    :goto_39
    if-eqz v1, :cond_55

    const-wide/32 v9, 0x61d8d400

    sub-long v9, v7, v9

    .line 1097
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v11

    div-long/2addr v11, v2

    mul-long/2addr v11, v2

    cmp-long p1, v9, v11

    if-gez p1, :cond_4e

    const-wide/16 v0, 0x13

    sub-long/2addr v7, v0

    goto :goto_55

    .line 1100
    :cond_4e
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    div-long/2addr v0, v2

    mul-long v7, v0, v2

    .line 1104
    :cond_55
    :goto_55
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1106
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1107
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v2, v9

    .line 1105
    invoke-virtual {p1, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1109
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 1110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1113
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    if-ne v3, v1, :cond_9d

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v3

    if-nez v3, :cond_9d

    .line 1114
    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 1115
    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 1117
    :cond_9d
    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1118
    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1119
    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1120
    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    goto :goto_7f

    .line 1123
    :cond_aa
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPeriodEditEnd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7, v8}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u7ecf\u671f\u5f00\u59cb\u4fee\u6539\u6570\u636e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-virtual {v4, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public generateCycles(IIIIIII)Ljava/util/List;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII)",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;"
        }
    .end annotation

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x1

    add-int/lit8 v6, p2, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v4, v11

    move/from16 v5, p1

    move/from16 v7, p3

    .line 66
    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v4, 0xe

    const/4 v5, 0x0

    .line 67
    invoke-virtual {v11, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 68
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 70
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "======== \u5468\u671f\u751f\u6210\u5f00\u59cb ========"

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u57fa\u7840\u7ecf\u671f\u5f00\u59cb\u65e5\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5468\u671f\u957f\u5ea6\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5929\uff0c\u7ecf\u671f\u957f\u5ea6\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5929"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    neg-int v4, v2

    const-wide/16 v8, 0x0

    move/from16 v10, p7

    move v13, v4

    :goto_71
    if-gt v13, v10, :cond_26b

    int-to-long v14, v13

    move/from16 p1, v13

    int-to-long v12, v0

    mul-long/2addr v14, v12

    const-wide/32 v12, 0x5265c00

    mul-long/2addr v14, v12

    add-long/2addr v14, v6

    move-wide/from16 v17, v6

    int-to-long v5, v1

    const-wide/16 v19, 0x1

    sub-long v5, v5, v19

    mul-long/2addr v5, v12

    add-long/2addr v5, v14

    const-wide/32 v19, 0x61d8d400

    sub-long v12, v14, v19

    const-wide/32 v19, 0x337f9800

    sub-long v0, v14, v19

    move-object v7, v3

    move/from16 p3, v4

    const-wide/32 v19, 0x5265c00

    add-long v3, v8, v19

    .line 85
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 87
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v10, "\n\ud83e\ude78 \u7b2c "

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v10, p1, v2

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " \u4e2a\u5468\u671f\uff1a"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u7ecf\u671f\u5f00\u59cb\uff1a"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u7ecf\u671f\u7ed3\u675f\uff1a"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u6613\u5b55\u671f\uff1a"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \uff5e "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-wide v12, v3

    :goto_117
    cmp-long v10, v12, v5

    if-gtz v10, :cond_24e

    .line 95
    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-wide/from16 v19, v5

    .line 96
    new-instance v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    move-object/from16 v21, v7

    const/4 v6, 0x1

    .line 97
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    const/4 v7, 0x2

    .line 98
    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    const/4 v7, 0x5

    .line 99
    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 100
    invoke-virtual {v5, v12, v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    const/4 v7, -0x1

    if-ne v2, v7, :cond_151

    .line 103
    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    move/from16 v7, p3

    move-object/from16 v22, v11

    move v11, v6

    move/from16 v6, p1

    goto :goto_165

    :cond_151
    move/from16 v6, p1

    move/from16 v7, p3

    if-ne v6, v7, :cond_15f

    move-object/from16 v22, v11

    const/4 v11, 0x0

    .line 106
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    const/4 v11, 0x1

    goto :goto_165

    :cond_15f
    move-object/from16 v22, v11

    const/4 v11, 0x1

    .line 108
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    :goto_165
    cmp-long v16, v12, v14

    if-ltz v16, :cond_18e

    if-gtz v10, :cond_18e

    .line 115
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    const/4 v11, -0x1

    if-ne v2, v11, :cond_179

    const/4 v11, 0x0

    .line 118
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 119
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    goto :goto_183

    :cond_179
    cmp-long v11, v12, v17

    if-nez v11, :cond_17f

    const/4 v11, 0x1

    goto :goto_180

    :cond_17f
    const/4 v11, 0x0

    .line 121
    :goto_180
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    :goto_183
    if-ne v6, v7, :cond_198

    if-nez v10, :cond_189

    const/4 v10, 0x1

    goto :goto_18a

    :cond_189
    const/4 v10, 0x0

    .line 124
    :goto_18a
    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_198

    :cond_18e
    const/4 v10, 0x0

    .line 127
    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 128
    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 129
    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    :cond_198
    :goto_198
    cmp-long v10, v12, v3

    if-ltz v10, :cond_1bc

    cmp-long v10, v12, v0

    if-gtz v10, :cond_1bc

    if-le v6, v2, :cond_1b6

    const/4 v10, -0x1

    if-ne v2, v10, :cond_1b6

    cmp-long v10, v12, v8

    if-lez v10, :cond_1b0

    const/4 v10, 0x1

    .line 136
    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    const/4 v10, -0x1

    const/4 v11, 0x0

    goto :goto_1c2

    :cond_1b0
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 138
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    goto :goto_1c1

    :cond_1b6
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 141
    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    goto :goto_1c1

    :cond_1bc
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 144
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    :goto_1c1
    const/4 v10, -0x1

    .line 148
    :goto_1c2
    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMakeLove(I)V

    .line 149
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 150
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 151
    const-string v10, ""

    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSymptom(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMood(I)V

    .line 153
    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsClick(I)V

    .line 154
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-wide/from16 v23, v0

    const-string v0, "\u8ba1\u7b97\u7ecf\u671f\u5faa\u73af\uff1a"

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--\u7ecf\u671f\u5f00\u59cb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- \u7ecf\u671f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- \u6613\u5b55\u671f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-- \u7ecf\u671f\u7ed3\u675f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " --\u65f6\u95f4\u6233: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, v21

    .line 155
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v1, 0x5265c00

    add-long/2addr v12, v1

    move/from16 v2, p6

    move/from16 p1, v6

    move/from16 p3, v7

    move-wide/from16 v5, v19

    move-object/from16 v11, v22

    move-object v7, v0

    move-wide/from16 v0, v23

    goto/16 :goto_117

    :cond_24e
    move-wide/from16 v19, v5

    move-object v0, v7

    move-object/from16 v22, v11

    move/from16 v6, p1

    move/from16 v7, p3

    add-int/lit8 v13, v6, 0x1

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v10, p7

    move-object v3, v0

    move v4, v7

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    const/4 v5, 0x0

    const/4 v12, 0x1

    move/from16 v0, p4

    goto/16 :goto_71

    :cond_26b
    move-object v0, v3

    .line 160
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "======== \u5468\u671f\u751f\u6210\u7ed3\u675f\uff0c\u5171 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5929 ========"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDataListChange()V
    .registers 17

    .line 175
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12b

    .line 181
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_12b

    .line 186
    :cond_1e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 189
    new-instance v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    const/4 v5, 0x0

    .line 190
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 193
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_4b

    .line 194
    invoke-virtual {v4, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 195
    invoke-virtual {v4, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    goto :goto_52

    .line 197
    :cond_4b
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 200
    :goto_52
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 201
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 202
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 203
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 204
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 205
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 206
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMakeLove(I)V

    .line 207
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 208
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSymptom(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMood()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMood(I)V

    .line 210
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 214
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v10

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v9, v3

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v6, 0xe

    .line 215
    invoke-virtual {v3, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 216
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    mul-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 223
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 226
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-ne v5, v8, :cond_107

    goto/16 :goto_27

    .line 229
    :cond_107
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-ne v5, v8, :cond_112

    .line 231
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 234
    :cond_112
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 238
    :cond_117
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 243
    :cond_11c
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 246
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->deleteAll()V

    .line 249
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insertInTx(Ljava/lang/Iterable;)V

    :cond_12b
    :goto_12b
    return-void
.end method

.method public getDataListIsEmpty()Z
    .registers 5

    .line 167
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public getDataOnMonth(Ljava/util/List;I)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;I)",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1755
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1756
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    if-ne v1, p2, :cond_1a

    .line 1757
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDateWomenHealthBean(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 9

    .line 1603
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1604
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xb

    const/4 p2, 0x0

    .line 1605
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 1606
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 1607
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 1608
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 1609
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    .line 1610
    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    .line 1611
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object p1

    .line 1612
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x1

    .line 1613
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1614
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v4, p2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x5

    .line 1615
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v4, v2

    .line 1613
    invoke-virtual {p1, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, p2

    .line 1616
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1617
    invoke-virtual {p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1618
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method public getIsPeriodEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1215
    :cond_4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 1216
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v2

    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_6e

    .line 1218
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1220
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    div-long/2addr v8, v4

    mul-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v2, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    .line 1221
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1222
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1219
    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v6

    .line 1224
    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1225
    invoke-virtual {p1, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1226
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 1227
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 1228
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 1229
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1

    .line 1231
    :cond_6e
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v7, :cond_d4

    .line 1232
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1234
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    div-long/2addr v8, v4

    mul-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1235
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    div-long/2addr v9, v4

    mul-long/2addr v9, v4

    const-wide v4, 0x39ef8b000L

    sub-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v6

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    .line 1236
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v7

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1237
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v3

    .line 1233
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, v6

    .line 1239
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1240
    invoke-virtual {p1, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1241
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1

    .line 1245
    :cond_d4
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1247
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    div-long/2addr v8, v4

    mul-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v2, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    .line 1248
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1249
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1246
    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v6

    .line 1251
    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1252
    invoke-virtual {p1, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1253
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 1254
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 1255
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 1256
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method public getIsPeriodEndTimeChange(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 10

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1268
    :cond_4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1270
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1272
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1273
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    div-long/2addr v6, v4

    mul-long/2addr v6, v4

    const-wide v4, 0x9a7ec800L

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x1

    .line 1274
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v4

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1275
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v5, 0x2

    aput-object p1, v2, v5

    .line 1271
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, v3

    .line 1277
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1278
    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1279
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method public getIsPeriodEndTimeNextOne(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1290
    :cond_4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 1292
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1294
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x1

    .line 1295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1296
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1293
    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v5

    .line 1298
    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/16 v1, 0xb4

    .line 1299
    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1300
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 1301
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 1302
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 1303
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method public getIsPeriodNextEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1389
    :cond_4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 1390
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1392
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1393
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v7

    div-long/2addr v7, v5

    mul-long/2addr v7, v5

    const-wide v5, 0x39ef8b000L

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x1

    .line 1394
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v3, v5

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1395
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v6, 0x2

    aput-object p1, v3, v6

    .line 1391
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v4

    .line 1397
    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/16 v1, 0xb4

    .line 1398
    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1399
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 1400
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 1401
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 1402
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method public getIsPeriodNextStartTime(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1336
    :cond_8
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1337
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide/16 v3, 0x3e8

    div-long v5, p1, v3

    mul-long/2addr v5, v3

    .line 1339
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide v7, 0x39ef8b000L

    add-long/2addr v5, v7

    .line 1340
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    .line 1341
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1342
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 1338
    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v5

    .line 1344
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1345
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 1346
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 1347
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 1348
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " -- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u4e0b\u4e00\u4e2a\u7ecf\u671f\u5f00\u59cb\u5bf9\u8c61"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1313
    :cond_4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 1314
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1316
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1317
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v7

    div-long/2addr v7, v5

    mul-long/2addr v7, v5

    const-wide v5, 0x39ef8b000L

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    .line 1318
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 1315
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v2, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v5

    .line 1321
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1322
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 1323
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 1324
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 1325
    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u4e0b\u4e00\u4e2a\u7ecf\u671f\u5f00\u59cb\u5bf9\u8c61"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIsPeriodNextStartTime5(J)Z
    .registers 9

    .line 1408
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1409
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1411
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide/32 v4, 0x19bfcc00

    add-long/2addr p1, v4

    .line 1412
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x1

    .line 1413
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v3

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1414
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v2, v4

    .line 1410
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, p2

    .line 1416
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1417
    invoke-virtual {p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1418
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 1419
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 1420
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 1421
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getIsPeriodNextStartTime5: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6211\u4e0d\u4fe1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_8d

    move p2, v3

    :cond_8d
    return p2
.end method

.method public getIsPeriodPreviousStartTime(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1360
    :cond_8
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    .line 1361
    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    .line 1362
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1364
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide/16 v3, 0x3e8

    div-long v5, p1, v3

    mul-long/2addr v5, v3

    .line 1366
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide v7, 0x39ef8b000L

    sub-long/2addr v5, v7

    .line 1367
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    .line 1368
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1369
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 1365
    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v5

    .line 1371
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1372
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 1373
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 1374
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 1375
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1378
    invoke-static {p1, p2}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " -- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1377
    const-string p2, "\u4e0a\u4e00\u4e2a\u7ecf\u671f\u5f00\u59cb\u5bf9\u8c61"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIsPeriodTime()Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 9

    .line 1429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x4d3f64000L

    sub-long v2, v0, v2

    .line 1433
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    .line 1434
    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    .line 1435
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v4

    .line 1438
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1439
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x1

    new-array v6, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1440
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 1439
    invoke-virtual {v5, v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v5, v2, v1

    .line 1441
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1442
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 1446
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1447
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v5

    if-ne v5, v3, :cond_4b

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v5

    if-nez v5, :cond_4b

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    if-nez v2, :cond_9f

    .line 1455
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 1456
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_73
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1458
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 1459
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 1461
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1462
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1463
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1464
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1465
    invoke-virtual {v6, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    goto :goto_73

    .line 1467
    :cond_95
    invoke-virtual {v4, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 1468
    const-string v0, "\u5220\u9664\u6240\u6709\u6570\u636e"

    const-string v1, "getIsPeriodTime: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    return-object v2
.end method

.method public getIsPeriodTimeStart180()Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 10

    .line 1573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide v4, 0x39ef8b000L

    sub-long v4, v0, v4

    .line 1578
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    .line 1579
    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    .line 1580
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v6

    .line 1584
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1585
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1586
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    const/4 v7, 0x1

    .line 1587
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v1, v7

    .line 1585
    invoke-virtual {v6, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v4, v1, v5

    .line 1588
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1589
    invoke-virtual {v0, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1590
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_8e

    .line 1594
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v2

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "period_date"

    invoke-static {v1, v5, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u627e\u5230\u5f80\u524d\u6700\u8fd1\u7684\u7ecf\u671f\u5f00\u59cb\u65e5\uff1a"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v2

    mul-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8986\u76d62\u5468\u671f\u67e5\u627e"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_8e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsPeriodTimeStart180(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 18

    .line 1475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    .line 1476
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v2

    mul-long/2addr v4, v2

    const-wide v6, 0x39ef8b000L

    add-long v8, v4, v6

    .line 1478
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v6, v4, v6

    .line 1481
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v8

    .line 1482
    invoke-virtual {v8}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v8

    .line 1483
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v8

    .line 1486
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v9

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1487
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v11, 0x2

    new-array v12, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1488
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    const/4 v15, 0x1

    .line 1489
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v12, v15

    .line 1487
    invoke-virtual {v9, v10, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v9, v15, [Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v10, v9, v14

    .line 1490
    invoke-virtual {v3, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1491
    invoke-virtual {v3, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1492
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez v3, :cond_a9

    .line 1497
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1498
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    new-array v11, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1499
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v13, v9}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v11, v14

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    .line 1500
    invoke-virtual {v9, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    aput-object v2, v11, v15

    .line 1498
    invoke-virtual {v10, v12, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v9, v15, [Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v10, v9, v14

    .line 1501
    invoke-virtual {v2, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1502
    invoke-virtual {v2, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1503
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    goto :goto_aa

    :cond_a9
    const/4 v2, 0x0

    .line 1505
    :goto_aa
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getIsPeriodTimeStart180: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u67e5\u627e\u7684\u65e5\u671f"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const-string v0, "period_date"

    if-eqz v3, :cond_10e

    .line 1508
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u627e\u5230\u5f80\u540e\u6700\u8fd1\u7684\u7ecf\u671f\u5f00\u59cb\u65e5\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v1

    div-long/2addr v1, v6

    mul-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1\u5468\u671f\u67e5\u627e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_10e
    const-wide/16 v6, 0x3e8

    if-eqz v2, :cond_13e

    .line 1512
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    div-long/2addr v3, v6

    mul-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u627e\u5230\u5f80\u524d\u6700\u8fd1\u7684\u7ecf\u671f\u5f00\u59cb\u65e5\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    div-long/2addr v3, v6

    mul-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2\u5468\u671f\u67e5\u627e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1516
    :cond_13e
    const-string v1, "3\u5468\u671f\u67e5\u627e"

    const-string v2, "\u524d\u540e180\u5929\u5185\u90fd\u6ca1\u6709\u7ecf\u671f\u5f00\u59cb\u8bb0\u5f55\uff0c\u5220\u9664\u6570\u636e... Log.d(\"\u5220\u9664\u6240\u6709\u6570\u636e\", \"getIsPeriodTime: \" );"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1523
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 1524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_180

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1526
    invoke-virtual {v2, v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 1527
    invoke-virtual {v2, v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 1529
    invoke-virtual {v2, v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1530
    invoke-virtual {v2, v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1531
    invoke-virtual {v2, v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1532
    invoke-virtual {v2, v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1533
    invoke-virtual {v2, v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    goto :goto_15e

    .line 1535
    :cond_180
    invoke-virtual {v8, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsPeriodTimeStart1801(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 12

    .line 1542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    .line 1543
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v2

    mul-long/2addr v4, v2

    .line 1544
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTimeChange(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    if-nez p1, :cond_1a

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_1e

    .line 1545
    :cond_1a
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    :goto_1e
    const-wide v8, 0x39ef8b000L

    add-long/2addr v4, v8

    .line 1546
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1548
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    .line 1549
    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    .line 1550
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object p1

    .line 1553
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1554
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1555
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    .line 1556
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v5, v6

    .line 1554
    invoke-virtual {p1, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v4, v0, v1

    .line 1557
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1558
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1559
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p1, :cond_a7

    .line 1563
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v2

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "period_date"

    invoke-static {v0, v4, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5224\u65ad\u540e\u9762\u662f\u5426\u6709\u7ecf\u671f  \uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v2

    mul-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5468\u671f\u67e5\u627e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_a7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMonthList(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;"
        }
    .end annotation

    .line 1743
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1744
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1745
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1746
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1744
    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1746
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_39

    return-object p1

    .line 1750
    :cond_39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getPeriodEnd(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 9

    .line 1195
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1198
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide v4, 0x39ef8b000L

    sub-long/2addr p1, v4

    .line 1199
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x1

    .line 1200
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v3

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v2, v4

    .line 1197
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, p2

    .line 1203
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1204
    invoke-virtual {p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1205
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1206
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getPeriodEnd: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u5f80\u524d\u7ecf\u671f\u7ed3\u675f\u65e5"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getPeriodStartGetEnd(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 14

    .line 1677
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "perimeter"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1678
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dura"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1679
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v2

    .line 1680
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1681
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1682
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    div-long/2addr v8, v6

    mul-long/2addr v8, v6

    int-to-long v6, v0

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v6, v10

    add-long/2addr v8, v6

    int-to-long v0, v1

    mul-long/2addr v0, v10

    add-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v4, v0

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    const/4 v1, 0x1

    .line 1683
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v4, v1

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1684
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v5, 0x2

    aput-object p1, v4, v5

    .line 1681
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v0

    .line 1686
    invoke-virtual {p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1687
    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1688
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method public getPeriodStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 13

    .line 1694
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "perimeter"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1695
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 1696
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1697
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1698
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v7

    div-long/2addr v7, v5

    mul-long/2addr v7, v5

    int-to-long v5, v0

    const-wide/32 v9, 0xa4cb800

    mul-long/2addr v5, v9

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v3, v0

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x1

    .line 1699
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v3, v4

    .line 1697
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v0

    .line 1701
    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1702
    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1703
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method public isAboveSelectPerimeter(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z
    .registers 9

    .line 1709
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "perimeter"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1710
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodStartGetEnd(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1712
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    mul-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v5

    div-long/2addr v5, v3

    mul-long/2addr v5, v3

    sub-long/2addr v1, v5

    int-to-long v3, v0

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    cmp-long p1, v1, v3

    if-ltz p1, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method public isAboveSelectPerimeterAfter(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z
    .registers 10

    .line 1720
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "perimeter"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1721
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    .line 1722
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAboveSelectPerimeter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7ecf\u671f\u5f00\u59cb\u524d"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_63

    .line 1723
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    div-long/2addr v6, v4

    mul-long/2addr v6, v4

    sub-long/2addr v2, v6

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_63

    return p1

    :cond_63
    const/4 p1, 0x0

    return p1
.end method

.method public isAboveSelectPerimeterAfter2(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z
    .registers 10

    .line 1731
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "perimeter"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1732
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAboveSelectPerimeter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7ecf\u671f\u5f00\u59cb\u524d"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_62

    .line 1734
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    div-long/2addr v6, v4

    mul-long/2addr v6, v4

    sub-long/2addr v2, v6

    int-to-long v0, v0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v0, v4

    cmp-long p1, v2, v0

    if-ltz p1, :cond_62

    const/4 p1, 0x1

    return p1

    :cond_62
    const/4 p1, 0x0

    return p1
.end method

.method public isEndMenstrualDate5(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z
    .registers 16

    .line 1628
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1630
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1631
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1632
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    div-long/2addr v8, v5

    mul-long/2addr v8, v5

    const-wide/32 v10, 0x19bfcc00

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 1631
    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v2, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v4, v2, v8

    .line 1634
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1635
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 1636
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isEndMenstrualDate5: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "--  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " -- "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7ecf\u671f\u7ed3\u675f\u540e\u65f6\u95f4\u5dee"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1638
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v12

    div-long/2addr v12, v5

    mul-long/2addr v12, v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1639
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v12

    div-long/2addr v12, v5

    mul-long/2addr v12, v5

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v7, p1}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v8

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    .line 1640
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v3

    sget-object p1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1641
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v5, 0x2

    aput-object p1, v2, v5

    .line 1638
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, v8

    .line 1643
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1644
    invoke-virtual {p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1645
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 1646
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 1647
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 1648
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f00\u542f\u7ecf\u671f\u540e\u6570\u636e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_122

    goto :goto_123

    :cond_122
    move v3, v8

    :goto_123
    return v3
.end method

.method public isPeriodTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z
    .registers 4

    .line 1623
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result p1

    if-nez p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isStartPeriod10(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z
    .registers 15

    .line 1655
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dura"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1656
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 1657
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1658
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1659
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v7

    div-long/2addr v7, v5

    mul-long/2addr v7, v5

    const-wide/32 v9, 0x19bfcc00

    add-long/2addr v7, v9

    int-to-long v9, v0

    const-wide/32 v11, 0x5265c00

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    const/4 v7, 0x1

    .line 1660
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v3, v7

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 1661
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v8, 0x2

    aput-object v0, v3, v8

    .line 1658
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v4

    .line 1663
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1664
    invoke-virtual {v0, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1665
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_95

    .line 1668
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    div-long/2addr v0, v5

    mul-long/2addr v0, v5

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    div-long/2addr v2, v5

    mul-long/2addr v2, v5

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x337f9800

    cmp-long p1, v0, v2

    if-gtz p1, :cond_95

    return v7

    :cond_95
    return v4
.end method

.method public saveDataNow(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 3

    .line 1765
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1766
    invoke-virtual {v0, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public sendClearData()V
    .registers 8

    .line 1868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    new-instance v1, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;-><init>()V

    const-wide/16 v2, 0xff

    .line 1871
    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartYear(J)V

    const/16 v4, 0xff

    .line 1872
    invoke-virtual {v1, v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartMonth(I)V

    .line 1873
    invoke-virtual {v1, v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartDay(I)V

    .line 1874
    const-string v5, "255"

    invoke-virtual {v1, v5}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setDate(Ljava/lang/String;)V

    .line 1875
    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndYear(J)V

    .line 1876
    invoke-virtual {v1, v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndMonth(I)V

    .line 1877
    invoke-virtual {v1, v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndDay(I)V

    .line 1878
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 1879
    invoke-static {v1, v0, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setWomenTargetNew(ILjava/util/List;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1880
    :goto_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 1881
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v6, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$3;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$3;-><init>(Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_4d
    return-void
.end method

.method public sendData()V
    .registers 12

    .line 1774
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 1776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1777
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xa

    if-eqz v0, :cond_1ac

    .line 1779
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1ac

    const/4 v4, 0x0

    move v5, v4

    .line 1780
    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_124

    .line 1781
    new-instance v6, Lcom/keephealth/android/model/WomenHealthlistBean;

    invoke-direct {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;-><init>()V

    .line 1782
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/model/WomenHealthlistBean;->setYear(I)V

    .line 1783
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/model/WomenHealthlistBean;->setMonth(I)V

    .line 1784
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/model/WomenHealthlistBean;->setDay(I)V

    .line 1785
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/model/WomenHealthlistBean;->setIsMenstrual(I)V

    .line 1786
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/model/WomenHealthlistBean;->setIsStartData(I)V

    .line 1787
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/model/WomenHealthlistBean;->setIsEndMenstrualDate(I)V

    .line 1788
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/model/WomenHealthlistBean;->setIsPregnancy(I)V

    .line 1789
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    const-string v8, ""

    if-ge v7, v3, :cond_df

    .line 1790
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/model/WomenHealthlistBean;->setDate(Ljava/lang/String;)V

    goto :goto_11d

    .line 1792
    :cond_df
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/model/WomenHealthlistBean;->setDate(Ljava/lang/String;)V

    .line 1794
    :goto_11d
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2a

    .line 1796
    :cond_124
    new-instance v0, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$1;-><init>(Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move-object v5, v0

    .line 1802
    :goto_12e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1ac

    .line 1803
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/WomenHealthlistBean;

    .line 1804
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getIsMenstrual()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1a9

    .line 1805
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getIsStartData()I

    move-result v7

    if-ne v7, v8, :cond_187

    .line 1806
    new-instance v5, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-direct {v5}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;-><init>()V

    .line 1807
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getYear()I

    move-result v7

    int-to-long v9, v7

    invoke-virtual {v5, v9, v10}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartYear(J)V

    .line 1808
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getMonth()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartMonth(I)V

    .line 1809
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDay()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartDay(I)V

    .line 1811
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getYear()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v7, v9, v10}, [Ljava/lang/Object;

    move-result-object v7

    .line 1810
    const-string v9, "%04d%02d%02d"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setDate(Ljava/lang/String;)V

    .line 1813
    :cond_187
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getIsEndMenstrualDate()I

    move-result v7

    if-ne v7, v8, :cond_1a9

    if-eqz v5, :cond_1a9

    .line 1814
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getYear()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndYear(J)V

    .line 1815
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getMonth()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndMonth(I)V

    .line 1816
    invoke-virtual {v6}, Lcom/keephealth/android/model/WomenHealthlistBean;->getDay()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setEndDay(I)V

    .line 1817
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v0

    :cond_1a9
    add-int/lit8 v4, v4, 0x1

    goto :goto_12e

    .line 1823
    :cond_1ac
    new-instance v0, Lcom/keephealth/android/util/MyBeanTwoComparator;

    invoke-direct {v0}, Lcom/keephealth/android/util/MyBeanTwoComparator;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1824
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda3;-><init>()V

    .line 1826
    invoke-static {v1, v2, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda4;-><init>()V

    .line 1825
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1831
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1f3

    .line 1832
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 1835
    :cond_1f3
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->sendToDevice(Ljava/util/List;)V

    return-void
.end method

.method public setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 4

    .line 1180
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1181
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1182
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1183
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1184
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    return-object p1
.end method

.method public setBeanNoData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 3

    const/4 v0, 0x0

    .line 1171
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1172
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1173
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1174
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    const/4 v0, 0x1

    .line 1175
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    return-object p1
.end method

.method public setPeriodEditEnd(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 15

    .line 919
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dura"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    if-nez v0, :cond_15

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_19

    .line 921
    :cond_15
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    .line 922
    :goto_19
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v2

    .line 923
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 924
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 925
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    div-long/2addr v9, v7

    mul-long/2addr v9, v7

    const-wide v11, 0x134fd9000L

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x1

    .line 926
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v5, v10

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 927
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v11, 0x2

    aput-object v6, v5, v11

    .line 924
    invoke-virtual {v3, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v9

    .line 929
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 930
    invoke-virtual {v3, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 931
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_107

    .line 933
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v7

    mul-long/2addr v4, v7

    .line 934
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v11

    div-long/2addr v11, v7

    mul-long/2addr v11, v7

    .line 936
    invoke-virtual {p1, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 937
    invoke-virtual {v2, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 939
    invoke-virtual {v3, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 940
    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 943
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 945
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 946
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v9

    .line 944
    invoke-virtual {p1, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 948
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 950
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_cb
    :goto_cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 952
    invoke-virtual {v4, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    const-wide/32 v5, 0x61d8d400

    sub-long v5, v0, v5

    cmp-long v5, v5, v11

    if-lez v5, :cond_cb

    .line 954
    invoke-virtual {v4, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    goto :goto_cb

    .line 958
    :cond_e7
    invoke-virtual {v2, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4fee\u6539\u7ed3\u675f\u7ecf\u671f\u65e5\u671f, \u65e5\u671f\u5728\u7ecf\u671f\u4e2d\u95f4: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6570\u636e\u5e93\u6570\u636e"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    return-void
.end method

.method public setPeriodEditEnd5(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 18

    move-object/from16 v0, p1

    .line 965
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dura"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    .line 966
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    .line 967
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 968
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 969
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    div-long/2addr v8, v6

    mul-long/2addr v8, v6

    const-wide/32 v10, 0x19bfcc00

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v4, v8

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsEndMenstrualDate:Lorg/greenrobot/greendao/Property;

    const/4 v9, 0x1

    .line 970
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v9

    .line 971
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 972
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsSystem:Lorg/greenrobot/greendao/Property;

    .line 973
    invoke-virtual {v11}, Lorg/greenrobot/greendao/Property;->isNull()Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    new-array v12, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 971
    invoke-virtual {v5, v10, v11, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v4, v10

    .line 968
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v3, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v8

    .line 976
    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 977
    invoke-virtual {v2, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 978
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 979
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 981
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 982
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v5, v8

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 983
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v5, v9

    .line 980
    invoke-virtual {v3, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v8

    .line 985
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 986
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    .line 987
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_2b3

    .line 990
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v6

    mul-long/2addr v4, v6

    .line 991
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v11

    div-long/2addr v11, v6

    mul-long/2addr v11, v6

    if-eqz v3, :cond_f5

    .line 994
    invoke-virtual {v3, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 995
    invoke-virtual {v3, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 996
    invoke-virtual {v3, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 997
    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 998
    invoke-virtual {v1, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_104

    .line 1000
    :cond_f5
    invoke-virtual {v0, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1001
    invoke-virtual {v0, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1002
    invoke-virtual {v0, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1003
    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 1004
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 1007
    :goto_104
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "setPeriodEditEnd5: "

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v13, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u7ecf\u671f\u7ed3\u675f\u540e\u6dfb\u52a0\u7ecf\u671f\u7684\u6570\u636e"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1010
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1013
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1015
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1016
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v3, v8

    .line 1014
    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 1020
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1021
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_154
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1022
    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v14

    div-long/2addr v14, v6

    mul-long/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v2, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_154

    .line 1025
    :cond_16e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/32 v6, 0x5265c00

    add-long v13, v11, v6

    :goto_178
    cmp-long v15, v13, v4

    if-gtz v15, :cond_1d7

    .line 1029
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez v15, :cond_197

    .line 1032
    new-instance v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    .line 1033
    invoke-virtual {v15, v13, v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 1034
    invoke-virtual {v15, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1035
    invoke-virtual {v15, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_19d

    .line 1038
    :cond_197
    invoke-virtual {v15, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1039
    invoke-virtual {v15, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1043
    :goto_19d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1044
    invoke-virtual {v6, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, 0xb

    .line 1045
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 1046
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 1047
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    .line 1048
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1049
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v15, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 1050
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v9

    invoke-virtual {v15, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    const/4 v7, 0x5

    .line 1051
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v15, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 1056
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v6, 0x5265c00

    add-long/2addr v13, v6

    goto :goto_178

    .line 1058
    :cond_1d7
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1060
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    add-long/2addr v4, v6

    .line 1061
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v6}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v14, v8

    .line 1059
    invoke-virtual {v10, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 1063
    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v6

    .line 1064
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "setPeriodEditEnd: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v13, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u6570\u636e\u5e93\u6570\u636e"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21d
    :goto_21d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_241

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1067
    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v14, :cond_21d

    .line 1069
    invoke-virtual {v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getId()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setId(Ljava/lang/Long;)V

    goto :goto_21d

    .line 1072
    :cond_241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-virtual {v1, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 1076
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1078
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    new-array v2, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 1079
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v2, v8

    .line 1077
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1081
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b3
    return-void
.end method

.method public setWomenHealthData(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;)V"
        }
    .end annotation

    .line 261
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 262
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_115

    .line 263
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 264
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 265
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 266
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v1

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 267
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 264
    invoke-virtual {v4, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    .line 267
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v4, :cond_68

    .line 269
    invoke-virtual {p0, v4, v3}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_6b

    .line 271
    :cond_68
    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 273
    :goto_6b
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0000\u7cfb\u7edf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 274
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7ecf\u671f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u6613\u5b55\u671f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 276
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 278
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_115
    return-void
.end method

.method public setWomenHealthData(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 344
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    .line 345
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    .line 346
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v4

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_25

    .line 347
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    div-long/2addr v9, v7

    mul-long/2addr v9, v7

    goto :goto_27

    :cond_25
    const-wide/16 v9, 0x0

    :goto_27
    if-eqz v2, :cond_30

    .line 348
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    div-long/2addr v2, v7

    mul-long/2addr v2, v7

    goto :goto_35

    :cond_30
    const-wide v2, 0x7fffffffffffffffL

    .line 349
    :goto_35
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v3}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "setWomenHealthData \u4e09\u4e2a\u6708\u4fee\u6539\u6570\u636e\u4fdd\u5b58\u5230\u6570\u636e\u5e93\u65e5\u671f"

    invoke-static {v12, v11}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 352
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide/32 v16, 0x61d8d400

    sub-long v16, v2, v16

    .line 353
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v5}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v14, v6

    .line 352
    invoke-virtual {v11, v12, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 354
    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v5

    .line 356
    const-string v11, "\u66f4\u65b0"

    if-eqz v5, :cond_da

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_da

    .line 357
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_96
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 358
    invoke-virtual {v14, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 359
    invoke-virtual {v14, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 360
    invoke-virtual {v14, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 361
    invoke-virtual {v14, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 362
    invoke-virtual {v14, v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    goto :goto_96

    .line 364
    :cond_b2
    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 365
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "\u5171\u5220\u9664 "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " \u6761\u6570\u636e\uff0c\u65f6\u95f4 > "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v9, v10}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_df

    .line 367
    :cond_da
    const-string v5, "\u6ca1\u6709\u627e\u5230\u9700\u8981\u5220\u9664\u7684\u6570\u636e"

    invoke-static {v11, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_df
    move v5, v6

    .line 370
    :goto_e0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x2

    if-ge v5, v12, :cond_238

    .line 371
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 373
    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v15

    div-long/2addr v15, v7

    mul-long/2addr v15, v7

    cmp-long v15, v15, v9

    if-lez v15, :cond_231

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v15

    div-long/2addr v15, v7

    mul-long/2addr v15, v7

    cmp-long v15, v15, v2

    if-gez v15, :cond_231

    const-wide/16 v15, 0x0

    cmp-long v17, v9, v15

    if-lez v17, :cond_126

    .line 375
    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v17

    div-long v17, v17, v7

    mul-long v17, v17, v7

    sub-long v17, v17, v9

    const-wide/32 v19, 0x19bfcc00

    cmp-long v17, v17, v19

    if-gez v17, :cond_126

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v13, :cond_126

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v7

    if-nez v7, :cond_126

    goto/16 :goto_231

    .line 378
    :cond_126
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 379
    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v14, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 380
    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v14, v6

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 381
    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v14, v15

    .line 378
    invoke-virtual {v7, v8, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 381
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v7, :cond_17c

    .line 384
    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-ne v8, v15, :cond_173

    goto/16 :goto_231

    .line 388
    :cond_173
    invoke-virtual {v0, v7, v12}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    move-object v7, v11

    goto :goto_181

    .line 391
    :cond_17c
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    const-string v7, "\u63d2\u5165"

    .line 393
    :goto_181
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " 1\u7cfb\u7edf="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 394
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u7ecf\u671f="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 395
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u6613\u5b55\u671f="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 396
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 397
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 398
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u72b6\u6001="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_231
    :goto_231
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v7, 0x3e8

    const/4 v13, 0x1

    goto/16 :goto_e0

    .line 403
    :cond_238
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x7e9

    .line 404
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x4

    .line 405
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/16 v5, 0x1b

    .line 406
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 404
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setWomenHealthData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7ecf\u671f\u5f00\u59cb\u65f6\u95f4\u6d4b\u8bd5"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWomenHealthDataChangeCycle(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide/16 v1, 0x3e8

    if-eqz p2, :cond_d

    .line 415
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    div-long/2addr v3, v1

    mul-long/2addr v3, v1

    goto :goto_f

    :cond_d
    const-wide/16 v3, 0x0

    .line 416
    :goto_f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v5

    .line 418
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 419
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 420
    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_87

    .line 422
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_87

    .line 423
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_41
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 424
    invoke-virtual {v10, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 425
    invoke-virtual {v10, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 426
    invoke-virtual {v10, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 427
    invoke-virtual {v10, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 428
    invoke-virtual {v10, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    goto :goto_41

    .line 430
    :cond_5d
    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 431
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setWomenHealthDataChangeCycle\u5171\u5220\u9664 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " \u6761\u6570\u636e\uff0c\u65f6\u95f4 > "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v4}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "\u5220\u9664"

    invoke-static {v9, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 433
    :cond_87
    const-string v6, "\u66f4\u65b0"

    const-string v9, "\u6ca1\u6709\u627e\u5230\u9700\u8981\u5220\u9664\u7684\u6570\u636e"

    invoke-static {v6, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8e
    move v6, v8

    .line 436
    :goto_8f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_2cb

    .line 437
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 438
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "setWomenHealthDataChangeCycle: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v11, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u5f53\u524d\u6570\u636e\u65f6\u95f4? "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " - "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " -- "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v10

    div-long/2addr v10, v1

    mul-long/2addr v10, v1

    cmp-long v10, v10, v3

    if-lez v10, :cond_2c5

    .line 442
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "\u5927\u4e8e\u7ecf\u671f\u7ed3\u675f\u65f6\u95f4\u6570\u636e? "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v10

    div-long/2addr v10, v1

    mul-long/2addr v10, v1

    const-wide/32 v13, 0x19bfcc00

    add-long/2addr v13, v3

    cmp-long v10, v10, v13

    if-gez v10, :cond_1c4

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v10

    if-ne v10, v7, :cond_1c4

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v10

    if-nez v10, :cond_1c4

    .line 444
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u8df3\u8fc7\u65f6\u95f4\u6570\u636e? "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2c5

    .line 448
    :cond_1c4
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 449
    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v13, 0x2

    new-array v13, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 450
    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v8

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 451
    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v7

    .line 448
    invoke-virtual {v10, v11, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    .line 451
    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v10

    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v10, :cond_21b

    .line 453
    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v11

    if-ne v11, v7, :cond_211

    goto/16 :goto_2c5

    :cond_211
    move-object/from16 v11, p0

    .line 456
    invoke-virtual {v11, v10, v9}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_220

    :cond_21b
    move-object/from16 v11, p0

    .line 458
    invoke-virtual {v5, v9}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 460
    :goto_220
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " 1\u7cfb\u7edf="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 461
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " \u7ecf\u671f="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 462
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " \u6613\u5b55\u671f="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 463
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 464
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 465
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 460
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2c7

    :cond_2c5
    :goto_2c5
    move-object/from16 v11, p0

    :goto_2c7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8f

    :cond_2cb
    move-object/from16 v11, p0

    return-void
.end method

.method public setWomenHealthDataEdit(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 287
    :cond_3
    invoke-virtual {p0, p2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    .line 289
    invoke-virtual {p0, p2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    .line 290
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_22

    .line 291
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v2

    mul-long/2addr v4, v2

    goto :goto_24

    :cond_22
    const-wide/16 v4, 0x0

    :goto_24
    if-eqz p2, :cond_2d

    .line 292
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    div-long/2addr v6, v2

    mul-long/2addr v6, v2

    goto :goto_32

    :cond_2d
    const-wide v6, 0x7fffffffffffffffL

    .line 294
    :goto_32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " -- "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Edit\u4e09\u4e2a\u6708\u4fee\u6539\u6570\u636e\u4fdd\u5b58\u5230\u6570\u636e\u5e93\u65e5\u671f"

    invoke-static {v0, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 297
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v8, 0x1

    new-array v9, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide/32 v11, 0x61d8d400

    sub-long v11, v6, v11

    .line 298
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 297
    invoke-virtual {p2, v0, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 299
    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p2

    .line 301
    const-string v0, "\u66f4\u65b0"

    if-eqz p2, :cond_d7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d7

    .line 302
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_93
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_af

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 303
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 304
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 305
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 306
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 307
    invoke-virtual {v10, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    goto :goto_93

    .line 309
    :cond_af
    invoke-virtual {v1, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 310
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u5171\u5220\u9664 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v9, " \u6761\u6570\u636e\uff0c\u65f6\u95f4 > "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    .line 312
    :cond_d7
    const-string p2, "\u6ca1\u6709\u627e\u5230\u9700\u8981\u5220\u9664\u7684\u6570\u636e"

    invoke-static {v0, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_dc
    move p2, v11

    .line 315
    :goto_dd
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1f5

    .line 316
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 318
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v2

    mul-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_1f1

    .line 319
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 320
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 321
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v11

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 322
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v8

    .line 319
    invoke-virtual {v4, v5, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    .line 322
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v4, :cond_148

    .line 324
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-ne v5, v8, :cond_140

    goto/16 :goto_1f1

    .line 327
    :cond_140
    invoke-virtual {p0, v4, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_14b

    .line 329
    :cond_148
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 331
    :goto_14b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 1\u7cfb\u7edf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 332
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7ecf\u671f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 333
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u6613\u5b55\u671f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 334
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 335
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1f1
    :goto_1f1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_dd

    :cond_1f5
    return-void
.end method

.method public setWomenHealthDataEditEnd(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 664
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dura"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 665
    invoke-virtual/range {p0 .. p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    .line 666
    invoke-virtual/range {p0 .. p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    .line 667
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v4

    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v9, 0x3e8

    if-eqz v2, :cond_34

    .line 669
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v11

    div-long/2addr v11, v9

    mul-long/2addr v11, v9

    goto :goto_35

    :cond_34
    move-wide v11, v7

    :goto_35
    if-eqz v3, :cond_3e

    .line 670
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    div-long/2addr v2, v9

    mul-long v7, v2, v9

    .line 671
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11, v12}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7, v8}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5f80\u524d\u4fee\u6539\u7ed3\u675f\u65f6\u95f4 \u5b58\u5230\u6570\u636e\u5e93\u65e5\u671f"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 673
    :goto_73
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_1ee

    .line 674
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 676
    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v14

    div-long/2addr v14, v9

    mul-long/2addr v14, v9

    cmp-long v14, v14, v5

    if-lez v14, :cond_93

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v14

    div-long/2addr v14, v9

    mul-long/2addr v14, v9

    cmp-long v14, v14, v11

    if-ltz v14, :cond_9d

    :cond_93
    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v14

    div-long/2addr v14, v9

    mul-long/2addr v14, v9

    cmp-long v14, v14, v7

    if-lez v14, :cond_1e4

    :cond_9d
    const-wide/16 v14, 0x0

    cmp-long v14, v5, v14

    const/4 v15, 0x1

    if-lez v14, :cond_cd

    .line 678
    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v16

    div-long v16, v16, v9

    mul-long v16, v16, v9

    sub-long v16, v16, v5

    int-to-long v9, v1

    const-wide/32 v18, 0x5265c00

    mul-long v9, v9, v18

    move v14, v3

    const-wide/32 v2, 0x19bfcc00

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-gez v2, :cond_ce

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v15, :cond_ce

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v2

    if-nez v2, :cond_ce

    goto :goto_da

    :cond_cd
    move v14, v3

    .line 681
    :cond_ce
    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v15, :cond_df

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v2

    if-nez v2, :cond_df

    :goto_da
    move-object/from16 v3, p0

    move v10, v14

    goto/16 :goto_1e7

    .line 684
    :cond_df
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 685
    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 686
    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v15, 0x0

    aput-object v10, v9, v15

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 687
    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v9, v15

    .line 684
    invoke-virtual {v2, v3, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 687
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_137

    .line 689
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    if-ne v3, v15, :cond_12d

    goto :goto_da

    :cond_12d
    move-object/from16 v3, p0

    .line 692
    invoke-virtual {v3, v2, v13}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_13c

    :cond_137
    move-object/from16 v3, p0

    .line 694
    invoke-virtual {v4, v13}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 696
    :goto_13c
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v14

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "-"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " 1\u7cfb\u7edf="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 697
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " \u7ecf\u671f="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 698
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " \u6613\u5b55\u671f="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 699
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 700
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 701
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 696
    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1e7

    :cond_1e4
    move v10, v3

    move-object/from16 v3, p0

    :goto_1e7
    add-int/lit8 v2, v10, 0x1

    move v3, v2

    const-wide/16 v9, 0x3e8

    goto/16 :goto_73

    :cond_1ee
    move-object/from16 v3, p0

    return-void
.end method

.method public setWomenHealthDataIsStart(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 475
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "dura"

    invoke-static {v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 476
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v4

    .line 477
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v5

    .line 478
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v6

    const-wide/16 v9, 0x3e8

    if-eqz v4, :cond_2f

    .line 479
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v11

    div-long/2addr v11, v9

    mul-long/2addr v11, v9

    goto :goto_31

    :cond_2f
    const-wide/16 v11, 0x0

    :goto_31
    if-eqz v5, :cond_3a

    .line 480
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v9

    mul-long/2addr v4, v9

    goto :goto_3f

    :cond_3a
    const-wide v4, 0x7fffffffffffffffL

    .line 481
    :goto_3f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v15

    const-wide/32 v17, 0x61d8d400

    sub-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "\u4e09\u4e2a\u6708\u4fee\u6539\u6570\u636e\u4fdd\u5b58\u5230\u6570\u636e\u5e93\u65e5\u671f"

    invoke-static {v15, v13}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v13

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 484
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x1

    new-array v15, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    move v10, v3

    sub-long v2, v4, v17

    .line 485
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v15, v9

    .line 484
    invoke-virtual {v13, v7, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 486
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    .line 488
    const-string v8, "\u6279\u91cf\u66f4\u65b0"

    if-eqz v7, :cond_117

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_117

    .line 489
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 490
    invoke-virtual {v15, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 491
    invoke-virtual {v15, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 492
    invoke-virtual {v15, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 493
    invoke-virtual {v15, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    const/4 v9, 0x1

    .line 494
    invoke-virtual {v15, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    const/4 v9, 0x0

    goto :goto_b3

    .line 496
    :cond_d1
    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 497
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "\u5171\u5220\u9664 "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u6761\u6570\u636e\uff0c\u65f6\u95f4 > "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v11, v12}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v19

    sub-long v19, v19, v17

    invoke-static/range {v19 .. v20}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11c

    .line 499
    :cond_117
    const-string v4, "\u6ca1\u6709\u627e\u5230\u9700\u8981\u5220\u9664\u7684\u6570\u636e"

    invoke-static {v8, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11c
    const/4 v4, 0x0

    .line 501
    :goto_11d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_288

    .line 502
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 504
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v7

    const-wide/16 v13, 0x3e8

    div-long/2addr v7, v13

    mul-long/2addr v7, v13

    cmp-long v7, v7, v11

    if-lez v7, :cond_27f

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v7

    div-long/2addr v7, v13

    mul-long/2addr v7, v13

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v13

    int-to-long v0, v10

    const-wide/32 v17, 0x5265c00

    mul-long v0, v0, v17

    add-long/2addr v13, v0

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-gez v0, :cond_278

    const-wide/16 v0, 0x0

    cmp-long v7, v11, v0

    if-lez v7, :cond_177

    .line 506
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v7

    const-wide/16 v13, 0x3e8

    div-long/2addr v7, v13

    mul-long/2addr v7, v13

    sub-long/2addr v7, v11

    const-wide/32 v17, 0x19bfcc00

    cmp-long v7, v7, v17

    if-gez v7, :cond_179

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_179

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v7

    if-nez v7, :cond_179

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    goto/16 :goto_281

    :cond_177
    const-wide/16 v13, 0x3e8

    .line 509
    :cond_179
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 510
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 511
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v9, v1

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 512
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v15, 0x1

    aput-object v0, v9, v15

    .line 509
    invoke-virtual {v7, v8, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_1ca

    move-object/from16 v7, p0

    .line 514
    invoke-virtual {v7, v0, v5}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_1cf

    :cond_1ca
    move-object/from16 v7, p0

    .line 516
    invoke-virtual {v6, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 518
    :goto_1cf
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p1

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " 1\u7cfb\u7edf="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u7ecf\u671f="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u6613\u5b55\u671f="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 521
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_282

    :cond_278
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-wide/16 v13, 0x3e8

    goto :goto_281

    :cond_27f
    move-object v7, v0

    move-object v8, v1

    :goto_281
    const/4 v15, 0x1

    :goto_282
    add-int/lit8 v4, v4, 0x1

    move-object v0, v7

    move-object v1, v8

    goto/16 :goto_11d

    :cond_288
    move-object v7, v0

    return-void
.end method

.method public setWomenHealthDataNextOne(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 531
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dura"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 532
    invoke-virtual/range {p0 .. p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodPreviousStartTime(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v4

    .line 534
    invoke-virtual/range {p0 .. p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v5

    .line 535
    invoke-virtual/range {p0 .. p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v6

    .line 536
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v7

    const-wide/16 v10, 0x3e8

    if-eqz v3, :cond_39

    .line 537
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v12

    div-long/2addr v12, v10

    mul-long/2addr v12, v10

    goto :goto_3b

    :cond_39
    const-wide/16 v12, 0x0

    :goto_3b
    if-eqz v4, :cond_42

    .line 538
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    div-long/2addr v3, v10

    :cond_42
    const-wide v3, 0x7fffffffffffffffL

    if-eqz v5, :cond_50

    .line 539
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v14

    div-long/2addr v14, v10

    mul-long/2addr v14, v10

    goto :goto_51

    :cond_50
    move-wide v14, v3

    :goto_51
    if-eqz v6, :cond_59

    .line 540
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    div-long/2addr v3, v10

    mul-long/2addr v3, v10

    .line 541
    :cond_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14, v15}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v4}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1 One\u4e09\u4e2a\u6708\u4fee\u6539\u6570\u636e\u4fdd\u5b58\u5230\u6570\u636e\u5e93\u65e5\u671f"

    invoke-static {v6, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 544
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x1

    new-array v9, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide/32 v20, 0x61d8d400

    sub-long v20, v14, v20

    .line 545
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 544
    invoke-virtual {v5, v6, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 546
    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v5

    .line 548
    const-string v6, "\u66f4\u65b0"

    if-eqz v5, :cond_120

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_120

    .line 549
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 550
    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v11

    if-ne v11, v8, :cond_e6

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v11

    if-nez v11, :cond_e6

    const/4 v11, 0x0

    .line 551
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 552
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    goto :goto_e7

    :cond_e6
    const/4 v11, 0x0

    .line 554
    :goto_e7
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 555
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 556
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 557
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 558
    invoke-virtual {v10, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    const/4 v11, 0x0

    goto :goto_c6

    .line 560
    :cond_f8
    invoke-virtual {v7, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 561
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u5171\u5220\u9664 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " \u6761\u6570\u636e\uff0c\u65f6\u95f4 > "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_125

    .line 563
    :cond_120
    const-string v5, "\u6ca1\u6709\u627e\u5230\u9700\u8981\u5220\u9664\u7684\u6570\u636e"

    invoke-static {v6, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_125
    const/4 v11, 0x0

    .line 565
    :goto_126
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_2ac

    .line 566
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 568
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    mul-long v9, v9, v18

    cmp-long v6, v9, v12

    if-lez v6, :cond_14c

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    div-long v9, v9, v18

    mul-long v9, v9, v18

    cmp-long v6, v9, v14

    if-ltz v6, :cond_158

    :cond_14c
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    div-long v9, v9, v18

    mul-long v9, v9, v18

    cmp-long v6, v9, v3

    if-lez v6, :cond_29f

    :cond_158
    const-wide/16 v9, 0x0

    cmp-long v6, v12, v9

    if-lez v6, :cond_18b

    .line 570
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v16

    div-long v16, v16, v18

    mul-long v16, v16, v18

    sub-long v16, v16, v12

    int-to-long v9, v2

    const-wide/32 v22, 0x5265c00

    mul-long v9, v9, v22

    move/from16 p3, v2

    move-wide/from16 v22, v3

    const-wide/32 v2, 0x19bfcc00

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-gez v2, :cond_18f

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v8, :cond_18f

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v2

    if-nez v2, :cond_18f

    goto/16 :goto_2a3

    :cond_18b
    move/from16 p3, v2

    move-wide/from16 v22, v3

    .line 573
    :cond_18f
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 574
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 575
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v4, v9

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 576
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v4, v8

    .line 573
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 576
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_1dd

    .line 578
    invoke-virtual {v0, v2, v5}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_1e0

    .line 580
    :cond_1dd
    invoke-virtual {v7, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 582
    :goto_1e0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 1\u7cfb\u7edf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 583
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7ecf\u671f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 584
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6613\u5b55\u671f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 585
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 586
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 587
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u65f6\u95f4\u6233\u8f6c\u65e5\u671f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 588
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2a4

    :cond_29f
    move/from16 p3, v2

    move-wide/from16 v22, v3

    :goto_2a3
    const/4 v9, 0x0

    :goto_2a4
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p3

    move-wide/from16 v3, v22

    goto/16 :goto_126

    :cond_2ac
    return-void
.end method

.method public setWomenHealthDataNextOneAfter(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 597
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dura"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 598
    invoke-virtual/range {p0 .. p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    .line 599
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodPreviousStartTime(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v4

    .line 600
    invoke-virtual/range {p0 .. p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v5

    .line 601
    invoke-virtual/range {p0 .. p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v6

    .line 602
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v7

    const-wide/16 v10, 0x3e8

    if-eqz v3, :cond_39

    .line 603
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v12

    div-long/2addr v12, v10

    mul-long/2addr v12, v10

    goto :goto_3b

    :cond_39
    const-wide/16 v12, 0x0

    :goto_3b
    if-eqz v4, :cond_42

    .line 604
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    div-long/2addr v3, v10

    :cond_42
    const-wide v3, 0x7fffffffffffffffL

    if-eqz v5, :cond_50

    .line 605
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v14

    div-long/2addr v14, v10

    mul-long/2addr v14, v10

    goto :goto_51

    :cond_50
    move-wide v14, v3

    :goto_51
    if-eqz v6, :cond_59

    .line 606
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    div-long/2addr v3, v10

    mul-long/2addr v3, v10

    .line 607
    :cond_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14, v15}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v4}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "One\u4e09\u4e2a\u6708\u4fee\u6539\u6570\u636e\u4fdd\u5b58\u5230\u6570\u636e\u5e93\u65e5\u671f"

    invoke-static {v6, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 610
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x1

    new-array v9, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide/32 v20, 0x61d8d400

    sub-long v20, v14, v20

    .line 611
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 610
    invoke-virtual {v5, v6, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 612
    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v5

    .line 614
    const-string v6, "\u66f4\u65b0"

    if-eqz v5, :cond_120

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_120

    .line 615
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 616
    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v11

    if-ne v11, v8, :cond_e6

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v11

    if-nez v11, :cond_e6

    const/4 v11, 0x0

    .line 617
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 618
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    goto :goto_e7

    :cond_e6
    const/4 v11, 0x0

    .line 620
    :goto_e7
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 621
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 622
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 623
    invoke-virtual {v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 624
    invoke-virtual {v10, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    const/4 v11, 0x0

    goto :goto_c6

    .line 626
    :cond_f8
    invoke-virtual {v7, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 627
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u5171\u5220\u9664 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " \u6761\u6570\u636e\uff0c\u65f6\u95f4 > "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_125

    .line 629
    :cond_120
    const-string v5, "\u6ca1\u6709\u627e\u5230\u9700\u8981\u5220\u9664\u7684\u6570\u636e"

    invoke-static {v6, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_125
    const/4 v11, 0x0

    .line 631
    :goto_126
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_2a1

    .line 632
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 634
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    mul-long v9, v9, v18

    cmp-long v6, v9, v12

    if-lez v6, :cond_14c

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    div-long v9, v9, v18

    mul-long v9, v9, v18

    cmp-long v6, v9, v14

    if-ltz v6, :cond_158

    :cond_14c
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    div-long v9, v9, v18

    mul-long v9, v9, v18

    cmp-long v6, v9, v3

    if-lez v6, :cond_294

    :cond_158
    const-wide/16 v9, 0x0

    cmp-long v6, v12, v9

    if-lez v6, :cond_18a

    .line 636
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v16

    div-long v16, v16, v18

    mul-long v16, v16, v18

    sub-long v16, v16, v12

    int-to-long v9, v2

    const-wide/32 v22, 0x5265c00

    mul-long v9, v9, v22

    move/from16 p3, v2

    move-wide/from16 v22, v3

    const-wide/32 v2, 0x19bfcc00

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-gez v2, :cond_18e

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v8, :cond_18e

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v2

    if-nez v2, :cond_18e

    goto :goto_19a

    :cond_18a
    move/from16 p3, v2

    move-wide/from16 v22, v3

    .line 639
    :cond_18e
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v8, :cond_19c

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v2

    if-nez v2, :cond_19c

    :goto_19a
    goto/16 :goto_298

    .line 642
    :cond_19c
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 643
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 644
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v4, v9

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 645
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v4, v8

    .line 642
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 645
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_1ea

    .line 647
    invoke-virtual {v0, v2, v5}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_1ed

    .line 649
    :cond_1ea
    invoke-virtual {v7, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 651
    :goto_1ed
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 1\u7cfb\u7edf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 652
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7ecf\u671f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 653
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6613\u5b55\u671f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 654
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 655
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 656
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_299

    :cond_294
    move/from16 p3, v2

    move-wide/from16 v22, v3

    :goto_298
    const/4 v9, 0x0

    :goto_299
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p3

    move-wide/from16 v3, v22

    goto/16 :goto_126

    :cond_2a1
    return-void
.end method

.method public setWomenHealthDataStart(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 710
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "dura"

    invoke-static {v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 711
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v4

    .line 712
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v5

    .line 713
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v6

    const-wide/16 v9, 0x3e8

    if-eqz v4, :cond_2f

    .line 714
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v11

    div-long/2addr v11, v9

    mul-long/2addr v11, v9

    goto :goto_31

    :cond_2f
    const-wide/16 v11, 0x0

    :goto_31
    if-eqz v5, :cond_3a

    .line 715
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v4

    div-long/2addr v4, v9

    mul-long/2addr v4, v9

    goto :goto_3f

    :cond_3a
    const-wide v4, 0x7fffffffffffffffL

    .line 716
    :goto_3f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\u672c\u6708\u4fee\u6539\u6570\u636e\u4fdd\u5b58\u5230\u6570\u636e\u5e93, \u8fc7\u53bb\u7684\u65e5\u671f\u5f00\u59cb\u65e5\u671f"

    invoke-static {v14, v13}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v13

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 719
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    const/4 v15, 0x1

    new-array v7, v15, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 720
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v18

    div-long v18, v18, v9

    mul-long v18, v18, v9

    int-to-long v9, v3

    const-wide/32 v21, 0x5265c00

    mul-long v9, v9, v21

    add-long v18, v18, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v7, v8

    .line 719
    invoke-virtual {v13, v14, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 721
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v3

    .line 723
    const-string v7, "\u66f4\u65b0 "

    if-eqz v3, :cond_118

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_118

    .line 724
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_ab
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_dd

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 725
    invoke-virtual {v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-ne v8, v15, :cond_cb

    invoke-virtual {v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v8

    if-nez v8, :cond_cb

    const/4 v8, 0x0

    .line 726
    invoke-virtual {v14, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 727
    invoke-virtual {v14, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    goto :goto_cc

    :cond_cb
    const/4 v8, 0x0

    .line 729
    :goto_cc
    invoke-virtual {v14, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 730
    invoke-virtual {v14, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 731
    invoke-virtual {v14, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 732
    invoke-virtual {v14, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 733
    invoke-virtual {v14, v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    const/4 v8, 0x0

    goto :goto_ab

    .line 735
    :cond_dd
    invoke-virtual {v6, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 736
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "\u5171\u5220\u9664 "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " \u6761\u6570\u636e\uff0c\u65f6\u95f4 > "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11, v12}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  \u65f6\u95f4 < "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v13

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11d

    .line 738
    :cond_118
    const-string v3, "\u6ca1\u6709\u627e\u5230\u9700\u8981\u5220\u9664\u7684\u6570\u636e"

    invoke-static {v7, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11d
    const/4 v8, 0x0

    .line 740
    :goto_11e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v8, v3, :cond_292

    .line 741
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 743
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    const-wide/16 v13, 0x3e8

    div-long/2addr v9, v13

    mul-long/2addr v9, v13

    cmp-long v7, v9, v11

    if-lez v7, :cond_28c

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    div-long/2addr v9, v13

    mul-long/2addr v9, v13

    cmp-long v7, v9, v4

    if-gez v7, :cond_28c

    const-wide/16 v9, 0x0

    cmp-long v7, v11, v9

    const-wide/32 v16, 0x19bfcc00

    if-lez v7, :cond_168

    .line 745
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v19

    div-long v19, v19, v13

    mul-long v21, v19, v13

    sub-long v21, v21, v11

    cmp-long v7, v21, v16

    if-gez v7, :cond_168

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v15, :cond_168

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v7

    if-eqz v7, :cond_164

    goto :goto_168

    :cond_164
    const-wide/16 v19, 0x3e8

    goto/16 :goto_28e

    .line 746
    :cond_168
    :goto_168
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v13

    const-wide/16 v19, 0x3e8

    div-long v13, v13, v19

    mul-long v13, v13, v19

    sub-long v13, v4, v13

    cmp-long v7, v13, v16

    if-ltz v7, :cond_28e

    .line 747
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v13

    div-long v13, v13, v19

    mul-long v13, v13, v19

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v16

    div-long v16, v16, v19

    mul-long v16, v16, v19

    cmp-long v7, v13, v16

    if-lez v7, :cond_194

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-eq v7, v15, :cond_194

    goto/16 :goto_28e

    .line 750
    :cond_194
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 751
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 752
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v14, v10

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 753
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v14, v15

    .line 750
    invoke-virtual {v7, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 753
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v7, :cond_1e2

    .line 755
    invoke-virtual {v0, v7, v3}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_1e5

    .line 757
    :cond_1e2
    invoke-virtual {v6, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 759
    :goto_1e5
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " 2\u7cfb\u7edf="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 760
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u7ecf\u671f="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 761
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u6613\u5b55\u671f="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 762
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 763
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 764
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 759
    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_28e

    :cond_28c
    move-wide/from16 v19, v13

    :cond_28e
    :goto_28e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_11e

    :cond_292
    return-void
.end method

.method public setWomenHealthDataStartAdd2(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_7

    return-void

    .line 775
    :cond_7
    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    .line 776
    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v6, 0x3e8

    if-eqz v3, :cond_1f

    .line 777
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    div-long/2addr v8, v6

    mul-long/2addr v8, v6

    goto :goto_20

    :cond_1f
    move-wide v8, v4

    :goto_20
    const-wide/32 v10, 0x5265c00

    if-eqz v3, :cond_38

    .line 779
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    add-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 780
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    div-long/2addr v8, v6

    mul-long/2addr v8, v6

    goto :goto_38

    :cond_37
    move-wide v8, v4

    .line 783
    :cond_38
    :goto_38
    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextEndTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    .line 784
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v12

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v12

    if-eqz v2, :cond_51

    .line 785
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v15

    div-long/2addr v15, v6

    mul-long/2addr v15, v6

    goto :goto_53

    :cond_51
    const-wide/16 v15, 0x0

    :goto_53
    if-eqz v3, :cond_5c

    .line 787
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    div-long/2addr v2, v6

    mul-long v4, v2, v6

    .line 788
    :cond_5c
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6f

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v2

    if-ne v2, v3, :cond_6f

    .line 789
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    div-long/2addr v8, v6

    mul-long/2addr v8, v6

    .line 792
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v15 .. v16}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " -- "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "NextOne\u4e09\u4e2a\u6708\u4fee\u6539\u6570\u636e\u4fdd\u5b58\u5230\u6570\u636e\u5e93\u65e5\u671f"

    invoke-static {v13, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 795
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 796
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v20

    div-long v20, v20, v6

    mul-long v20, v20, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v14, v11

    .line 795
    invoke-virtual {v2, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 797
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 799
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    .line 800
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v10, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    const-wide/32 v20, 0x61d8d400

    sub-long v8, v8, v20

    .line 801
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v10, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    .line 802
    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v10

    .line 804
    const-string v13, "\u66f4\u65b0"

    if-eqz v2, :cond_165

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_165

    .line 805
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_10b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v6, v20

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 806
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v3, :cond_12b

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v7

    if-nez v7, :cond_12b

    .line 807
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 808
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 810
    :cond_12b
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 811
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 812
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 813
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 814
    invoke-virtual {v6, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    const-wide/16 v6, 0x3e8

    goto :goto_10b

    .line 816
    :cond_13d
    invoke-virtual {v12, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 817
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5171\u5220\u9664 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " \u6761\u6570\u636e\uff0c\u65f6\u95f4 > "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v15 .. v16}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16a

    .line 819
    :cond_165
    const-string v2, "\u6ca1\u6709\u627e\u5230\u9700\u8981\u5220\u9664\u7684\u6570\u636e"

    invoke-static {v13, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16a
    if-eqz v10, :cond_1a7

    .line 822
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a7

    .line 823
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_176
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 824
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v3, :cond_194

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v7

    if-nez v7, :cond_194

    .line 825
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 826
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 828
    :cond_194
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 829
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 830
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 831
    invoke-virtual {v6, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 832
    invoke-virtual {v6, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    goto :goto_176

    .line 834
    :cond_1a4
    invoke-virtual {v12, v10}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 836
    :cond_1a7
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    const-wide/16 v13, 0x3e8

    div-long/2addr v6, v13

    mul-long/2addr v6, v13

    .line 839
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 840
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1b8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1d9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v11, v20

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 841
    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v20

    div-long v20, v20, v13

    mul-long v22, v20, v13

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v2, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v13, 0x3e8

    goto :goto_1b8

    .line 844
    :cond_1d9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-wide v13, v6

    :goto_1df
    cmp-long v11, v13, v4

    if-gtz v11, :cond_255

    .line 846
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez v3, :cond_21a

    .line 849
    new-instance v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    .line 850
    invoke-virtual {v3, v13, v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 853
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 854
    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v23, v12

    const/4 v0, 0x1

    .line 855
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v3, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    const/4 v12, 0x2

    .line 856
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v12, v0

    invoke-virtual {v3, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    const/4 v12, 0x5

    .line 857
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    goto :goto_21d

    :cond_21a
    move-object/from16 v23, v12

    const/4 v0, 0x1

    .line 861
    :goto_21d
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    const/4 v0, 0x0

    .line 862
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 863
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 864
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 865
    invoke-interface {v2, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_237

    .line 866
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_237
    cmp-long v0, v13, v6

    if-nez v0, :cond_240

    const/4 v0, 0x1

    .line 869
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    goto :goto_241

    :cond_240
    const/4 v0, 0x1

    :goto_241
    if-nez v11, :cond_246

    .line 872
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 875
    :cond_246
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v0, 0x5265c00

    add-long/2addr v13, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v12, v23

    const/4 v3, 0x1

    goto :goto_1df

    :cond_255
    move-object/from16 v23, v12

    .line 877
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 878
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 879
    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel$$ExternalSyntheticLambda0;-><init>()V

    .line 880
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 881
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 883
    :goto_27e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c6

    .line 884
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 885
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    mul-long/2addr v6, v10

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v12

    div-long/2addr v12, v10

    mul-long/2addr v12, v10

    cmp-long v3, v6, v12

    if-lez v3, :cond_2b1

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    div-long/2addr v6, v10

    mul-long/2addr v6, v10

    cmp-long v3, v6, v4

    if-gtz v3, :cond_2b1

    const/4 v3, 0x1

    .line 886
    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    const/4 v3, 0x0

    .line 887
    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 888
    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 891
    :cond_2b1
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    div-long/2addr v6, v10

    mul-long/2addr v6, v10

    cmp-long v3, v6, v15

    if-lez v3, :cond_3bb

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    cmp-long v3, v6, v12

    if-gez v3, :cond_3bb

    const-wide/16 v6, 0x0

    cmp-long v3, v15, v6

    if-lez v3, :cond_2ea

    .line 893
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v12

    div-long/2addr v12, v10

    mul-long/2addr v12, v10

    sub-long/2addr v12, v15

    const-wide/32 v17, 0x19bfcc00

    cmp-long v3, v12, v17

    if-gez v3, :cond_2ea

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_2ea

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v3

    if-nez v3, :cond_2ea

    goto/16 :goto_3bb

    .line 897
    :cond_2ea
    invoke-virtual/range {v23 .. v23}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 898
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 899
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v14, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 900
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v14, v7

    .line 897
    invoke-virtual {v3, v12, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 900
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_33d

    move-object/from16 v6, p0

    .line 902
    invoke-virtual {v6, v3, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setBeanData(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    move-object/from16 v12, v23

    invoke-virtual {v12, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_344

    :cond_33d
    move-object/from16 v6, p0

    move-object/from16 v12, v23

    .line 904
    invoke-virtual {v12, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->insert(Ljava/lang/Object;)J

    .line 906
    :goto_344
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "-"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " 1111\u7cfb\u7edf="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 907
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " \u7ecf\u671f="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 908
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " \u6613\u5b55\u671f="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 909
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " \u7ecf\u671f\u5f00\u59cb="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 910
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " \u7ecf\u671f\u7ed3\u675f="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 911
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 906
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3c0

    :cond_3bb
    :goto_3bb
    move-object/from16 v6, p0

    move-object/from16 v12, v23

    const/4 v13, 0x2

    :goto_3c0
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v23, v12

    goto/16 :goto_27e

    :cond_3c6
    move-object/from16 v6, p0

    return-void
.end method
