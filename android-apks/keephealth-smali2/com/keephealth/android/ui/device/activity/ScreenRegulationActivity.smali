.class public Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "ScreenRegulationActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

.field private dalayTtime:I

.field private dalayTtimePosition:I

.field private delayTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/CardBean;",
            ">;"
        }
    .end annotation
.end field

.field deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

.field deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field private endHour:I

.field private endHour2:I

.field private endHour3:I

.field private endMin:I

.field private endMin2:I

.field private endMin3:I

.field endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field endTimePickerDialog2:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field endTimePickerDialog3:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field private fristCmd:Z

.field private fristCmd2:Z

.field private isDoNotDisturb:Z

.field private isNightShift:Z

.field private pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private screenDuration:I

.field private startHour:I

.field private startHour2:I

.field private startHour3:I

.field private startMin:I

.field private startMin2:I

.field private startMin3:I

.field startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field startTimePickerDialog2:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field startTimePickerDialog3:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field private upHander:Lcom/keephealth/android/model/bean/UpHander;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->isDoNotDisturb:Z

    .line 70
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->isNightShift:Z

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->delayTime:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->isDoNotDisturb:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Z)Z
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->isDoNotDisturb:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I

    return p0
.end method

.method static synthetic access$1002(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I

    return p1
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I

    return p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I

    return p0
.end method

.method static synthetic access$1102(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I

    return p1
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd2:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Z)Z
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd2:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;[B)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->handlerScreenData([B)V

    return-void
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Lcom/keephealth/android/model/bean/UpHander;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setScreen()V

    return-void
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;ZZ)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setDeviceInit(ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour:I

    return p0
.end method

.method static synthetic access$1902(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I

    return p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin:I

    return p0
.end method

.method static synthetic access$2002(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin:I

    return p1
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I

    return p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour:I

    return p0
.end method

.method static synthetic access$2102(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour:I

    return p1
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin:I

    return p0
.end method

.method static synthetic access$2202(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin:I

    return p1
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Lcom/bigkoo/pickerview/view/OptionsPickerView;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setDisturbMode()V

    return-void
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setNight()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I

    return p1
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->screenDuration:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getDoNotDisturb()V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd:Z

    return p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Z)Z
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd:Z

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I

    return p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin2:I

    return p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin2:I

    return p1
.end method

.method private getDoNotDisturb()V
    .registers 5

    .line 204
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_SLEEP:[B

    new-instance v3, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private handlerScreenData([B)V
    .registers 7

    const/4 v0, 0x3

    .line 336
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_14

    move v2, v3

    :cond_14
    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveOnOff(Z)V

    .line 338
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveStartHour(I)V

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveStartMinute(I)V

    .line 340
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveEndHour(I)V

    .line 341
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveEndMinute(I)V

    .line 342
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/16 v1, 0x8

    aget-byte p1, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/UpHander;->setLightTime(I)V

    .line 344
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour:I

    .line 345
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin:I

    .line 346
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour:I

    .line 347
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin:I

    .line 348
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UpHander;->isEffectiveOnOff()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 349
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->canDissDilalog()V

    .line 351
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 352
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvBrightScreenStartTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndHour()I

    move-result v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndMinute()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 354
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour:I

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour:I

    if-lt p1, v0, :cond_12a

    if-ne p1, v0, :cond_f1

    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin:I

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin:I

    if-ge p1, v0, :cond_f1

    goto :goto_12a

    .line 357
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvBrightScreenEndTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_177

    .line 355
    :cond_12a
    :goto_12a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvBrightScreenEndTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10044e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_177
    return-void
.end method

.method private initCustomPerimeterPicker()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_18

    .line 546
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->delayTime:Ljava/util/ArrayList;

    new-instance v2, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v4, v3, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_1

    .line 548
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->delayTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/CardBean;

    .line 549
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/CardBean;->getCardName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->dalayTtime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 550
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/CardBean;->getId()I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->dalayTtimePosition:I

    goto :goto_1e

    .line 555
    :cond_50
    new-instance v0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    const v2, 0x7f0c0188

    .line 562
    invoke-virtual {v0, v2, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 570
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    .line 571
    invoke-virtual {v0, v2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 572
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->dalayTtimePosition:I

    .line 573
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setSelectOptions(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const v1, -0x333334

    .line 574
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 576
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->delayTime:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    return-void
.end method

.method private initDatePicker()V
    .registers 3

    .line 582
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 583
    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$16;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$16;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 604
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 605
    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    return-void
.end method

.method private initDatePicker2()V
    .registers 3

    .line 630
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startTimePickerDialog2:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 631
    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 654
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog2:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 655
    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$19;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$19;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    return-void
.end method

.method static synthetic lambda$setDeviceInit$0([BLandroid/view/View;)V
    .registers 2

    .line 288
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method private setDeviceInit(ZZ)V
    .registers 18

    move-object v0, p0

    .line 268
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v5, v1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 269
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v2, v1, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 270
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v3, v1, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 271
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, v1, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 272
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v6, v1, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    .line 273
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v14, 0x1

    xor-int/lit8 v7, v1, 0x1

    .line 275
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v9, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 276
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v10, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 277
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v11, v1, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 278
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v12

    .line 280
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v13

    move/from16 v8, p1

    .line 279
    invoke-static/range {v2 .. v13}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object v1

    if-eqz p1, :cond_95

    .line 282
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iput v14, v2, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 283
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    invoke-static {v2}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    if-eqz p2, :cond_6b

    .line 285
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    goto :goto_aa

    .line 287
    :cond_6b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100747

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100791

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100257

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda2;-><init>([B)V

    .line 287
    invoke-static {p0, v2, v3, v4, v5}, Lcom/keephealth/android/util/DialogHelperNew;->showTipsDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto :goto_aa

    .line 291
    :cond_95
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    const/4 v3, 0x0

    iput v3, v2, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 292
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    invoke-static {v2}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 293
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_aa
    return-void
.end method

.method private setDisturbMode()V
    .registers 9

    const/16 v0, 0x14

    .line 306
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 307
    aput-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    .line 308
    aput-byte v4, v0, v3

    const/4 v5, 0x2

    .line 309
    aput-byte v1, v0, v5

    .line 310
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v5}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result v5

    const/16 v6, 0xff

    if-eqz v5, :cond_1f

    move v5, v6

    goto :goto_20

    :cond_1f
    move v5, v1

    :goto_20
    int-to-byte v5, v5

    const/4 v7, 0x3

    aput-byte v5, v0, v7

    .line 311
    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I

    int-to-byte v5, v5

    const/4 v7, 0x4

    aput-byte v5, v0, v7

    .line 312
    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin2:I

    int-to-byte v5, v5

    const/4 v7, 0x5

    aput-byte v5, v0, v7

    .line 313
    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I

    int-to-byte v5, v5

    const/4 v7, 0x6

    aput-byte v5, v0, v7

    .line 314
    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I

    int-to-byte v5, v5

    const/4 v7, 0x7

    aput-byte v5, v0, v7

    .line 315
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDoNotDisturbAllDay:Lcom/keephealth/android/views/ItemToggleLayout2;

    invoke-virtual {v5}, Lcom/keephealth/android/views/ItemToggleLayout2;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_47

    goto :goto_48

    :cond_47
    move v6, v1

    :goto_48
    int-to-byte v5, v6

    aput-byte v5, v0, v2

    const/16 v2, 0x9

    .line 316
    aput-byte v1, v0, v2

    const/16 v2, 0xa

    .line 317
    aput-byte v1, v0, v2

    const/16 v2, 0xb

    .line 318
    aput-byte v1, v0, v2

    const/16 v2, 0xc

    .line 319
    aput-byte v1, v0, v2

    const/16 v2, 0xd

    .line 320
    aput-byte v1, v0, v2

    const/16 v2, 0xe

    .line 321
    aput-byte v1, v0, v2

    const/16 v2, 0xf

    .line 322
    aput-byte v1, v0, v2

    .line 323
    aput-byte v1, v0, v4

    const/16 v2, 0x11

    .line 324
    aput-byte v1, v0, v2

    const/16 v2, 0x12

    .line 325
    aput-byte v3, v0, v2

    const/16 v2, 0x13

    .line 326
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v3

    aput-byte v3, v0, v2

    .line 327
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd:Z

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v2}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8bbe\u7f6e\u52ff\u6270\u6570\u636e"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method private setNight()V
    .registers 10

    .line 530
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itNightShift:Lcom/keephealth/android/views/ItemToggleLayout2;

    invoke-virtual {v1}, Lcom/keephealth/android/views/ItemToggleLayout2;->isOpen()Z

    move-result v2

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I

    iget v6, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->mNightShiftSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    iget v8, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->screenDuration:I

    invoke-static/range {v2 .. v8}, Lcom/keephealth/android/util/ble/CmdHelper;->setNightViewDescription(IIIIIII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method private setScreen()V
    .registers 3

    .line 300
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setScreenLight(Lcom/keephealth/android/model/bean/UpHander;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 1

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    return-object v0
.end method

.method public initDatePicker3()V
    .registers 3

    .line 680
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startTimePickerDialog3:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 681
    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 704
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog3:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 705
    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    return-void
.end method

.method public initListener()V
    .registers 3

    .line 383
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 385
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlBrightScreenStartTime:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlBrightScreenEndTime:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlBreathingPlateTime:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 444
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 456
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlDisturbModeStartTime:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlDisturbModeEndTime:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itNightShift:Lcom/keephealth/android/views/ItemToggleLayout2;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout2;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout2$OnToggleListener;)V

    .line 484
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftStartTime:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$12;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftEndTime:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$13;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$13;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDoNotDisturbAllDay:Lcom/keephealth/android/views/ItemToggleLayout2;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$14;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$14;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout2;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout2$OnToggleListener;)V

    .line 511
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->mNightShiftSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$15;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$15;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected initView()V
    .registers 11

    .line 74
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initDatePicker()V

    .line 75
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initDatePicker2()V

    .line 76
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initDatePicker3()V

    const/16 v0, 0xc

    const/4 v1, 0x1

    .line 77
    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 78
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->toBack()V

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100512

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bgView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd:Z

    .line 82
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd2:Z

    const/16 v0, 0x24

    .line 83
    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 84
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleTextSize(I)V

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleTextSize(I)V

    .line 87
    new-instance v0, Lcom/keephealth/android/model/bean/UpHander;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/UpHander;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v3, v3, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v3, v3, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvProgress:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v4, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, v4, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvBreathingPlateTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v4, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, v4, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100776

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v0, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->dalayTtime:I

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-nez v0, :cond_c6

    .line 94
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->finish()V

    goto/16 :goto_2e7

    .line 96
    :cond_c6
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWristScreen()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_fd

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v5, v5, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v5, v5, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    if-ne v5, v1, :cond_dc

    move v5, v1

    goto :goto_dd

    :cond_dc
    move v5, v2

    :goto_dd
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlViewBrightScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlBrightScreenStartTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlBrightScreenEndTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_13f

    .line 102
    :cond_fd
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWristScreenB()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 104
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v5, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_SCREENLIGHT:[B

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlViewBrightScreen:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v5}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_11e

    move v5, v2

    goto :goto_11f

    :cond_11e
    move v5, v3

    :goto_11f
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_13f

    .line 107
    :cond_123
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlViewBrightScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlBrightScreenStartTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlBrightScreenEndTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 113
    :goto_13f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isScreenBrightness()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlSeekbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_156

    .line 116
    :cond_14f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlSeekbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    :goto_156
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isScreenShutdownTime()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlBreathingPlateTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_16d

    .line 122
    :cond_166
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlBreathingPlateTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    :goto_16d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isAllDayNotDisturbMode()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDoNotDisturbAllDay:Lcom/keephealth/android/views/ItemToggleLayout2;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout2;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDoNotDisturbAllDay:Lcom/keephealth/android/views/ItemToggleLayout2;

    const v5, 0x7f100615

    invoke-virtual {p0, v5}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/keephealth/android/views/ItemToggleLayout2;->setDescribe(Ljava/lang/String;Z)V

    goto :goto_192

    .line 129
    :cond_18b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDoNotDisturbAllDay:Lcom/keephealth/android/views/ItemToggleLayout2;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout2;->setVisibility(I)V

    .line 132
    :goto_192
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isNotDisturbMode()Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlDisturbModeStartTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlDisturbModeEndTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1c5

    .line 137
    :cond_1b0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlDisturbModeStartTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->rlDisturbModeEndTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    :goto_1c5
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isNightView()Z

    move-result v0

    if-eqz v0, :cond_2e4

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itNightShift:Lcom/keephealth/android/views/ItemToggleLayout2;

    const v5, 0x7f100698

    invoke-virtual {p0, v5}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/keephealth/android/views/ItemToggleLayout2;->setDescribe(Ljava/lang/String;Z)V

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itNightShift:Lcom/keephealth/android/views/ItemToggleLayout2;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout2;->setVisibility(I)V

    const/16 v0, 0x16

    .line 145
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I

    .line 146
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I

    const/4 v0, 0x7

    .line 147
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I

    .line 148
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftStartTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02d"

    invoke-static {v7, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I

    if-lt v0, v5, :cond_271

    if-ne v0, v5, :cond_238

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I

    if-ge v0, v5, :cond_238

    goto :goto_271

    .line 153
    :cond_238
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftEndTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2bc

    .line 151
    :cond_271
    :goto_271
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftEndTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10044e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_2bc
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->llViewNightShift:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itNightShift:Lcom/keephealth/android/views/ItemToggleLayout2;

    invoke-virtual {v4}, Lcom/keephealth/android/views/ItemToggleLayout2;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2cb

    goto :goto_2cc

    :cond_2cb
    move v2, v3

    :goto_2cc
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->isDoNotDisturb:Z

    .line 157
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getNightViewDescription()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    const-string v3, "\u591c\u89c8"

    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_2e7

    .line 196
    :cond_2e4
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getDoNotDisturb()V

    .line 199
    :goto_2e7
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initCustomPerimeterPicker()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$1$com-keephealth-android-ui-device-activity-ScreenRegulationActivity(IIILandroid/view/View;)V
    .registers 5

    .line 557
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->delayTime:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/model/bean/CardBean;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/CardBean;->getCardName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->dalayTtime:I

    .line 558
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->dalayTtimePosition:I

    .line 559
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->dalayTtime:I

    iput p2, p1, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 560
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvBreathingPlateTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->dalayTtime:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f100776

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setDeviceInit(ZZ)V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$2$com-keephealth-android-ui-device-activity-ScreenRegulationActivity(Landroid/view/View;)V
    .registers 2

    .line 566
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 567
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$3$com-keephealth-android-ui-device-activity-ScreenRegulationActivity(Landroid/view/View;)V
    .registers 2

    .line 569
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$4$com-keephealth-android-ui-device-activity-ScreenRegulationActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 563
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 564
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 565
    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 731
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    .line 732
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(I)V

    .line 733
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 734
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public setIsVisible(ZLandroid/widget/TextView;)V
    .registers 4

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_16

    if-eq p1, v0, :cond_7

    goto :goto_24

    .line 374
    :cond_7
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060137

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_24

    .line 371
    :cond_16
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060113

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_24
    return-void
.end method
