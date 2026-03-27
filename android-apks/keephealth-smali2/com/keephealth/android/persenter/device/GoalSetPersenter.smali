.class public Lcom/keephealth/android/persenter/device/GoalSetPersenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "GoalSetPersenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/GoalSetContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/device/GoalSetContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/device/GoalSetContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method public static splitByteArray([BI)[[B
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-lez p1, :cond_27

    .line 89
    array-length v0, p0

    if-ge p1, v0, :cond_27

    const/4 v0, 0x2

    .line 93
    new-array v1, v0, [I

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 94
    aget-object v1, v0, v3

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    aget-object v1, v0, v2

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 90
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be greater than 0 and less than the length of the original array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public saveGold(ILcom/keephealth/android/model/bean/Goal;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppApplication.getInstance().exerciseDurationGoal:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    iget-boolean v4, v4, Lcom/keephealth/android/app/AppApplication;->exerciseDurationGoal:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    iget-boolean v4, v4, Lcom/keephealth/android/app/AppApplication;->standingDurationGoal:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gtr7"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "goal:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/keephealth/android/app/AppApplication;->exerciseDurationGoal:Z

    if-eqz v3, :cond_ed

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/keephealth/android/app/AppApplication;->standingDurationGoal:Z

    if-eqz v3, :cond_ed

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "send_characteristic:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/keephealth/android/model/bean/Goal;->sleepstate:I

    iget v7, v2, Lcom/keephealth/android/model/bean/Goal;->goalSleep:I

    iget v8, v2, Lcom/keephealth/android/model/bean/Goal;->stepstate:I

    iget v9, v2, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    iget v10, v2, Lcom/keephealth/android/model/bean/Goal;->calstate:I

    iget v11, v2, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    iget v12, v2, Lcom/keephealth/android/model/bean/Goal;->distancestate:I

    iget v13, v2, Lcom/keephealth/android/model/bean/Goal;->goalDistanceKm:I

    iget v14, v2, Lcom/keephealth/android/model/bean/Goal;->exercisestate:I

    iget v15, v2, Lcom/keephealth/android/model/bean/Goal;->goalExervice:I

    iget v5, v2, Lcom/keephealth/android/model/bean/Goal;->standstate:I

    iget v0, v2, Lcom/keephealth/android/model/bean/Goal;->goalStand:I

    move/from16 v16, v5

    move/from16 v17, v0

    invoke-static/range {v6 .. v17}, Lcom/keephealth/android/util/ble/CmdHelper;->setTarget(IIIIIIIIIIII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget v5, v2, Lcom/keephealth/android/model/bean/Goal;->sleepstate:I

    iget v6, v2, Lcom/keephealth/android/model/bean/Goal;->goalSleep:I

    iget v7, v2, Lcom/keephealth/android/model/bean/Goal;->stepstate:I

    iget v8, v2, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    iget v9, v2, Lcom/keephealth/android/model/bean/Goal;->calstate:I

    iget v10, v2, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    iget v11, v2, Lcom/keephealth/android/model/bean/Goal;->distancestate:I

    iget v12, v2, Lcom/keephealth/android/model/bean/Goal;->goalDistanceKm:I

    iget v13, v2, Lcom/keephealth/android/model/bean/Goal;->exercisestate:I

    iget v14, v2, Lcom/keephealth/android/model/bean/Goal;->goalExervice:I

    iget v15, v2, Lcom/keephealth/android/model/bean/Goal;->standstate:I

    iget v0, v2, Lcom/keephealth/android/model/bean/Goal;->goalStand:I

    move/from16 v16, v0

    invoke-static/range {v5 .. v16}, Lcom/keephealth/android/util/ble/CmdHelper;->setTarget(IIIIIIIIIIII)[B

    move-result-object v0

    const/16 v3, 0x14

    .line 32
    invoke-static {v0, v3}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->splitByteArray([BI)[[B

    move-result-object v0

    if-eqz v0, :cond_ea

    .line 33
    array-length v3, v0

    if-lez v3, :cond_ea

    const/4 v3, 0x0

    .line 34
    :goto_c3
    array-length v4, v0

    if-ge v3, v4, :cond_ea

    .line 35
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_dc

    .line 36
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    aget-object v5, v0, v3

    new-instance v6, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;

    move-object/from16 v7, p0

    invoke-direct {v6, v7, v2, v1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;-><init>(Lcom/keephealth/android/persenter/device/GoalSetPersenter;Lcom/keephealth/android/model/bean/Goal;I)V

    invoke-virtual {v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_e7

    :cond_dc
    move-object/from16 v7, p0

    .line 58
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_e7
    add-int/lit8 v3, v3, 0x1

    goto :goto_c3

    :cond_ea
    move-object/from16 v7, p0

    goto :goto_10e

    :cond_ed
    move-object v7, v0

    .line 63
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget v8, v2, Lcom/keephealth/android/model/bean/Goal;->sleepstate:I

    iget v9, v2, Lcom/keephealth/android/model/bean/Goal;->goalSleep:I

    iget v10, v2, Lcom/keephealth/android/model/bean/Goal;->stepstate:I

    iget v11, v2, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    iget v12, v2, Lcom/keephealth/android/model/bean/Goal;->calstate:I

    iget v13, v2, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    iget v14, v2, Lcom/keephealth/android/model/bean/Goal;->distancestate:I

    iget v15, v2, Lcom/keephealth/android/model/bean/Goal;->goalDistanceKm:I

    invoke-static/range {v8 .. v15}, Lcom/keephealth/android/util/ble/CmdHelper;->setTargetShort(IIIIIIII)[B

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;

    invoke-direct {v4, v7, v2, v1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;-><init>(Lcom/keephealth/android/persenter/device/GoalSetPersenter;Lcom/keephealth/android/model/bean/Goal;I)V

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :goto_10e
    return-void
.end method
