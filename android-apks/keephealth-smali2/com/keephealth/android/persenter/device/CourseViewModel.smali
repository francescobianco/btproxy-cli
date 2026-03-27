.class public Lcom/keephealth/android/persenter/device/CourseViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "CourseViewModel.java"


# instance fields
.field private addNumber:I

.field public isEditViewModel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isHasCourse:Z

.field private isHasNullName:Z

.field private isSetCourseData:Z

.field mListAft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListAftFriday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListAftMonday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListAftSaturday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListAftSunday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListAftThurday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListAftTuesday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListAftWednesday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListMor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListMorFriday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListMorMonday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListMorSaturday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListMorSunday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListMorThurday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListMorTuesday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field public mListMorWednesday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mSendCourseBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean;",
            ">;"
        }
    .end annotation
.end field

.field saveDayCourse:I

.field sendCourseBean:Lcom/keephealth/android/childmodule/bean/SendCourseBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 44
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isEditViewModel:Landroidx/lifecycle/MutableLiveData;

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v0, 0x1

    .line 805
    iput-boolean v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isSetCourseData:Z

    const/4 v0, 0x0

    .line 898
    iput v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->saveDayCourse:I

    return-void
.end method

.method private saveSharePreferenceData(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    .line 702
    const-string v1, "sundayMor"

    move-object v2, p2

    invoke-static {p1, v1, v1, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 703
    const-string v1, "mondayMor"

    move-object v2, p3

    invoke-static {p1, v1, v1, p3}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 704
    const-string v1, "tuesdayMor"

    move-object v2, p4

    invoke-static {p1, v1, v1, p4}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 705
    const-string v1, "wednesdayMor"

    move-object v2, p5

    invoke-static {p1, v1, v1, p5}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 706
    const-string v1, "thursdayMor"

    move-object v2, p6

    invoke-static {p1, v1, v1, p6}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 707
    const-string v1, "fridayMor"

    move-object v2, p7

    invoke-static {p1, v1, v1, p7}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 708
    const-string v1, "saturdayMor"

    move-object v2, p8

    invoke-static {p1, v1, v1, p8}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 710
    const-string v1, "sundayAft"

    move-object v2, p9

    invoke-static {p1, v1, v1, p9}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 711
    const-string v1, "mondayAft"

    move-object v2, p10

    invoke-static {p1, v1, v1, p10}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 712
    const-string v1, "tuesdayAft"

    move-object v2, p11

    invoke-static {p1, v1, v1, p11}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 713
    const-string v1, "wednesdayAft"

    move-object v2, p12

    invoke-static {p1, v1, v1, p12}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 714
    const-string v1, "thursdayAft"

    move-object/from16 v2, p13

    invoke-static {p1, v1, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 715
    const-string v1, "fridayAft"

    move-object/from16 v2, p14

    invoke-static {p1, v1, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 716
    const-string v1, "saturdayAft"

    move-object/from16 v2, p15

    invoke-static {p1, v1, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private sendCourseData(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u53d1\u9001_bytes:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "courseviewmodel"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_77

    .line 779
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_77

    const/4 v0, 0x0

    .line 781
    :goto_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_77

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "characteristic_send:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_62

    .line 786
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v6, Lcom/keephealth/android/persenter/device/CourseViewModel$1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/persenter/device/CourseViewModel$1;-><init>(Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_74

    .line 798
    :cond_62
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_77
    return-void
.end method

.method private setCourseDayData(Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean;",
            ">;I)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_1ac

    goto/16 :goto_7b

    .line 842
    :pswitch_5
    const-string v0, "saturdayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 843
    const-string v0, "saturdayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    goto :goto_7b

    .line 837
    :pswitch_16
    const-string v0, "fridayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 838
    const-string v0, "fridayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    goto :goto_7b

    .line 832
    :pswitch_27
    const-string v0, "thursdayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 833
    const-string v0, "thursdayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    goto :goto_7b

    .line 827
    :pswitch_38
    const-string v0, "wednesdayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 828
    const-string v0, "wednesdayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    goto :goto_7b

    .line 822
    :pswitch_49
    const-string v0, "tuesdayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 823
    const-string v0, "tuesdayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    goto :goto_7b

    .line 817
    :pswitch_5a
    const-string v0, "mondayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 818
    const-string v0, "mondayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    goto :goto_7b

    .line 812
    :pswitch_6b
    const-string v0, "sundayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 813
    const-string v0, "sundayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    .line 846
    :goto_7b
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_86

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_90

    :cond_86
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    if-eqz v0, :cond_19d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19d

    .line 847
    :cond_90
    new-instance v0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;-><init>()V

    .line 848
    invoke-virtual {v0, p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setWeekSub(I)V

    .line 849
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 851
    iget-object v2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    const-string v3, "trtrg5"

    const/4 v4, 0x0

    if-eqz v2, :cond_d3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d3

    .line 852
    iget-object v2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 853
    iget-object v5, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 854
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentDayList_\u5468\u65e5_\u4e0a\u5348: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d4

    :cond_d3
    move v2, v4

    .line 856
    :goto_d4
    iget-object v5, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    if-eqz v5, :cond_107

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_107

    .line 857
    iget-object v5, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    .line 858
    iget-object v5, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 859
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentDayList_\u5468\u65e5_\u4e0b\u5348: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_107
    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setCurrentDayCourse(I)V

    .line 862
    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setUpdateCourseNumber(I)V

    .line 863
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 864
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 866
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_19a

    move v5, v4

    .line 867
    :goto_11c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_193

    .line 868
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currentDayList_\u5468\u65e5: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    new-instance v6, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-direct {v6}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;-><init>()V

    .line 870
    invoke-virtual {v6, v5}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCurrentDayCourseSub(I)V

    .line 871
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v7}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCourseZore(I)V

    .line 872
    invoke-virtual {v6, v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCourseStartTime(I)V

    .line 873
    invoke-virtual {v6, v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCourseTimeLength(I)V

    .line 874
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v7}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCourseName(Ljava/lang/String;)V

    .line 876
    :try_start_169
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v7}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCourseNameLength(I)V
    :try_end_17d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_169 .. :try_end_17d} :catch_18c

    .line 880
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ne v5, v6, :cond_189

    .line 882
    iput-boolean v1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isSetCourseData:Z

    :cond_189
    add-int/lit8 v5, v5, 0x1

    goto :goto_11c

    :catch_18c
    move-exception p1

    .line 878
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 885
    :cond_193
    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setSingleCourseList(Ljava/util/List;)V

    .line 886
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1aa

    .line 888
    :cond_19a
    iput-boolean v1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isSetCourseData:Z

    goto :goto_1aa

    .line 891
    :cond_19d
    new-instance v0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;-><init>()V

    .line 892
    invoke-virtual {v0, p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setWeekSub(I)V

    .line 893
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    iput-boolean v1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isSetCourseData:Z

    :goto_1aa
    return-void

    nop

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_5a
        :pswitch_49
        :pswitch_38
        :pswitch_27
        :pswitch_16
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addMorOrAftSingleCourse(IILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;)V"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;-><init>()V

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setWeekDay(I)V

    .line 107
    invoke-virtual {v0, p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCourseZore(I)V

    .line 108
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCourseName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setCurrentDayCourseSub(I)V

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->setEdit(Z)V

    .line 111
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "\u6dfb\u52a0\u4e00\u6b21zore:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "  type:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "courseviewmode68l"

    invoke-static {v1, p3}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x2

    packed-switch p1, :pswitch_data_140

    goto/16 :goto_13b

    :pswitch_3f
    if-nez p2, :cond_48

    .line 162
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :cond_48
    if-ne p2, p3, :cond_13b

    .line 164
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :pswitch_51
    if-nez p2, :cond_5a

    .line 155
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :cond_5a
    if-ne p2, p3, :cond_13b

    .line 157
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :pswitch_63
    if-nez p2, :cond_6c

    .line 148
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :cond_6c
    if-ne p2, p3, :cond_13b

    .line 150
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :pswitch_75
    if-nez p2, :cond_7e

    .line 141
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :cond_7e
    if-ne p2, p3, :cond_13b

    .line 143
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :pswitch_87
    if-nez p2, :cond_90

    .line 134
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :cond_90
    if-ne p2, p3, :cond_13b

    .line 136
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :pswitch_99
    if-nez p2, :cond_a2

    .line 127
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    :cond_a2
    if-ne p2, p3, :cond_13b

    .line 129
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    .line 115
    :pswitch_ab
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6dfb\u52a0\u4e4b\u524dmListMorSunday:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nmListAftSunday:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_e5

    .line 118
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    :cond_e5
    if-ne p2, p3, :cond_10b

    .line 120
    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u6dfb\u52a0\u4e0b\u5348:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "courseviewmode67l"

    invoke-static {v0, p3}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_10b
    :goto_10b
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u6dfb\u52a0\u4e4b\u540emListMorSunday---:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_13b
    :goto_13b
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/persenter/device/CourseViewModel;->saveDayCourseToAllList(II)V

    return-void

    nop

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_99
        :pswitch_87
        :pswitch_75
        :pswitch_63
        :pswitch_51
        :pswitch_3f
    .end packed-switch
.end method

.method public deleCurrentDayCourse(IILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;)V"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  zore:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   \u8981\u5220\u9664\u7684list\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  list.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "courseviewmode68l"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    if-nez v0, :cond_49

    .line 378
    const-string p1, "  ------------------"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_55

    .line 382
    const-string p1, "  ==========================="

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_55
    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_418

    goto/16 :goto_416

    :pswitch_5b
    const/4 p1, 0x6

    if-nez p2, :cond_99

    .line 483
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 484
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 485
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 486
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 487
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :cond_99
    if-ne p2, v0, :cond_416

    .line 489
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 490
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 492
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 493
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :pswitch_d6
    const/4 p1, 0x5

    if-nez p2, :cond_114

    .line 468
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 469
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 470
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 472
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :cond_114
    if-ne p2, v0, :cond_416

    .line 474
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 475
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 476
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 477
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 478
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :pswitch_151
    const/4 p1, 0x4

    if-nez p2, :cond_18f

    .line 453
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 454
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 456
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 457
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :cond_18f
    if-ne p2, v0, :cond_416

    .line 459
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 460
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 462
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 463
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :pswitch_1cc
    const/4 p1, 0x3

    if-nez p2, :cond_20a

    .line 438
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 439
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 440
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 441
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 442
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :cond_20a
    if-ne p2, v0, :cond_416

    .line 444
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 445
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 446
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 448
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :pswitch_247
    if-nez p2, :cond_284

    .line 423
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 424
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 426
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 427
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :cond_284
    if-ne p2, v0, :cond_416

    .line 429
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 430
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 431
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 432
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 433
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :pswitch_2c1
    const/4 p1, 0x1

    if-nez p2, :cond_2ff

    .line 408
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 409
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 412
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    :cond_2ff
    if-ne p2, v0, :cond_416

    .line 414
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 415
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 416
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 418
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_416

    .line 388
    :pswitch_33c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u5220\u9664\u4e4b\u524d\u7684mListMorSunday\uff1a"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n  mListAftSunday:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_3ab

    .line 391
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 392
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 395
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3e6

    :cond_3ab
    if-ne p2, v0, :cond_3e6

    .line 397
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 398
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 399
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 401
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    :cond_3e6
    :goto_3e6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u5220\u9664\u4e4b\u540e\u7684mListMorSunday\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_416
    :goto_416
    return-void

    nop

    :pswitch_data_418
    .packed-switch 0x0
        :pswitch_33c
        :pswitch_2c1
        :pswitch_247
        :pswitch_1cc
        :pswitch_151
        :pswitch_d6
        :pswitch_5b
    .end packed-switch
.end method

.method public initData(I)V
    .registers 4

    if-nez p1, :cond_4f

    .line 49
    const-string p1, "sundayMor"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 50
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " mListMorSunday.addAll(mListMor)---:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "courseviewmode68l"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    const-string p1, "sundayAft"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    .line 54
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 55
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseData(Z)I

    goto/16 :goto_159

    :cond_4f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7c

    .line 58
    const-string p1, "mondayMor"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 59
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 60
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    const-string p1, "mondayAft"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    .line 62
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 63
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_159

    :cond_7c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a9

    .line 65
    const-string p1, "tuesdayMor"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 66
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 67
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    const-string p1, "tuesdayAft"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 70
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_159

    :cond_a9
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d6

    .line 72
    const-string p1, "wednesdayMor"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    const-string p1, "wednesdayAft"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    .line 76
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_159

    :cond_d6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_102

    .line 79
    const-string p1, "thursdayMor"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 80
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 81
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    const-string p1, "thursdayAft"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_159

    :cond_102
    const/4 v0, 0x5

    if-ne p1, v0, :cond_12e

    .line 86
    const-string p1, "fridayMor"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 88
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    const-string p1, "fridayAft"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    .line 90
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 91
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_159

    :cond_12e
    const/4 v0, 0x6

    if-ne p1, v0, :cond_159

    .line 93
    const-string p1, "saturdayMor"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMor:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    const-string p1, "saturdayAft"

    invoke-static {p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    .line 97
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 98
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAft:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_159
    :goto_159
    return-void
.end method

.method public listToArray(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 910
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 911
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_6

    .line 915
    :cond_15
    new-array v0, v2, [B

    .line 919
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 920
    array-length v4, v3

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1c

    :cond_2f
    return-object v0
.end method

.method public savaAllCourse(Landroid/content/Context;Z)Z
    .registers 27

    move-object/from16 v15, p0

    move/from16 v0, p2

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSendCourseBeans != null:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   mSendCourseBeans:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "courseviewmode3l"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iput-boolean v3, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->isHasNullName:Z

    .line 522
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 523
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 524
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 525
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 526
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 527
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 528
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 530
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 531
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 532
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 533
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 534
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 535
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v11

    .line 536
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v4

    .line 537
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    if-eqz v4, :cond_6a8

    .line 538
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6a5

    move-object/from16 v20, v2

    const/4 v4, 0x0

    .line 539
    :goto_8e
    iget-object v2, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_11f

    .line 540
    iget-object v2, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_112

    iget-object v2, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_112

    move-object/from16 v21, v12

    const/4 v2, 0x0

    .line 541
    :goto_b9
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_10f

    .line 542
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_105

    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v5

    const-string v5, ""

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v12, 0x1

    if-eqz v5, :cond_10a

    goto :goto_108

    :cond_105
    move-object/from16 v22, v5

    const/4 v12, 0x1

    .line 543
    :goto_108
    iput-boolean v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->isHasNullName:Z

    :cond_10a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v22

    goto :goto_b9

    :cond_10f
    move-object/from16 v22, v5

    goto :goto_116

    :cond_112
    move-object/from16 v22, v5

    move-object/from16 v21, v12

    :goto_116
    const/4 v12, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, v21

    move-object/from16 v5, v22

    goto/16 :goto_8e

    :cond_11f
    move-object/from16 v22, v5

    move-object/from16 v21, v12

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 548
    :goto_125
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_63d

    .line 549
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getWeekSub()I

    move-result v4

    const/4 v5, 0x2

    packed-switch v4, :pswitch_data_6ce

    :cond_13d
    move-object/from16 v4, v19

    move-object/from16 v5, v22

    move-object/from16 v22, v1

    :goto_143
    move-object/from16 v19, v11

    move-object/from16 v11, v18

    move-object/from16 v23, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v23

    goto/16 :goto_626

    .line 659
    :pswitch_151
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_13d

    .line 660
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13d

    const/4 v4, 0x0

    .line 661
    :goto_172
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_13d

    .line 662
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v12

    if-nez v12, :cond_1b4

    if-nez v0, :cond_1e3

    .line 664
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e3

    .line 666
    :cond_1b4
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v12

    if-ne v12, v5, :cond_1e3

    if-nez v0, :cond_1e3

    .line 668
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e3
    :goto_1e3
    add-int/lit8 v4, v4, 0x1

    goto :goto_172

    .line 642
    :pswitch_1e6
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_13d

    .line 643
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13d

    const/4 v4, 0x0

    .line 644
    :goto_207
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_13d

    .line 645
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v12

    if-nez v12, :cond_249

    if-nez v0, :cond_278

    .line 647
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_278

    .line 649
    :cond_249
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v12

    if-ne v12, v5, :cond_278

    if-nez v0, :cond_278

    .line 651
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_278
    :goto_278
    add-int/lit8 v4, v4, 0x1

    goto :goto_207

    .line 621
    :pswitch_27b
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_13d

    .line 622
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13d

    const/4 v4, 0x0

    .line 623
    :goto_29c
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_13d

    .line 624
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v12

    if-nez v12, :cond_2de

    if-nez v0, :cond_32c

    .line 626
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32c

    .line 628
    :cond_2de
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v12

    if-ne v12, v5, :cond_32c

    .line 629
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_32a

    if-nez v0, :cond_32c

    .line 631
    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32c

    :cond_32a
    const/4 v12, 0x0

    return v12

    :cond_32c
    :goto_32c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_29c

    .line 604
    :pswitch_330
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_13d

    .line 605
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13d

    const/4 v12, 0x0

    .line 606
    :goto_351
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_13d

    .line 607
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v4

    if-nez v4, :cond_393

    if-nez v0, :cond_3c2

    .line 609
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c2

    .line 611
    :cond_393
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v4

    if-ne v4, v5, :cond_3c2

    if-nez v0, :cond_3c2

    .line 613
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c2
    :goto_3c2
    add-int/lit8 v12, v12, 0x1

    goto :goto_351

    .line 587
    :pswitch_3c5
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_13d

    .line 588
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13d

    const/4 v12, 0x0

    .line 589
    :goto_3e6
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_13d

    .line 590
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v4

    if-nez v4, :cond_428

    if-nez v0, :cond_457

    .line 592
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_457

    .line 594
    :cond_428
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v4

    if-ne v4, v5, :cond_457

    if-nez v0, :cond_457

    .line 596
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_457
    :goto_457
    add-int/lit8 v12, v12, 0x1

    goto :goto_3e6

    .line 570
    :pswitch_45a
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_508

    .line 571
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_508

    const/4 v12, 0x0

    .line 572
    :goto_47b
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_508

    .line 573
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v4

    if-nez v4, :cond_4c4

    if-nez v0, :cond_4bf

    .line 575
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    move-object/from16 v5, v22

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c1

    :cond_4bf
    move-object/from16 v5, v22

    :goto_4c1
    move-object/from16 v22, v1

    goto :goto_4fb

    :cond_4c4
    move-object/from16 v5, v22

    .line 577
    iget-object v4, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v4

    move-object/from16 v22, v1

    const/4 v1, 0x2

    if-ne v4, v1, :cond_4fb

    if-nez v0, :cond_4fb

    .line 579
    iget-object v1, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    move-object/from16 v4, v21

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4fd

    :cond_4fb
    :goto_4fb
    move-object/from16 v4, v21

    :goto_4fd
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v21, v4

    move-object/from16 v1, v22

    move-object/from16 v22, v5

    const/4 v5, 0x2

    goto/16 :goto_47b

    :cond_508
    move-object/from16 v5, v22

    move-object/from16 v22, v1

    move-object/from16 v4, v19

    goto/16 :goto_143

    :pswitch_510
    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v22, v1

    .line 551
    iget-object v1, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_61a

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "\u5468\u65e5\u2014\u2014size:"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "   course_list:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v21, v3

    iget-object v3, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    .line 553
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cancelSave:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    .line 552
    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_61e

    const/4 v12, 0x0

    .line 555
    :goto_586
    iget-object v1, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_61e

    .line 556
    iget-object v1, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v1

    if-nez v1, :cond_5d3

    if-nez v0, :cond_5cc

    .line 558
    iget-object v1, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d0

    :cond_5cc
    move-object/from16 v20, v4

    move-object/from16 v4, v19

    :goto_5d0
    move-object/from16 v19, v11

    goto :goto_60c

    :cond_5d3
    move-object/from16 v20, v4

    move-object/from16 v4, v19

    .line 560
    iget-object v1, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v1

    move-object/from16 v19, v11

    const/4 v11, 0x2

    if-ne v1, v11, :cond_60c

    if-nez v0, :cond_60c

    .line 562
    iget-object v1, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    move-object/from16 v11, v18

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60e

    :cond_60c
    :goto_60c
    move-object/from16 v11, v18

    :goto_60e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    goto/16 :goto_586

    :cond_61a
    move-object/from16 v21, v3

    move-object/from16 v3, v20

    :cond_61e
    move-object/from16 v20, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    :goto_626
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    move-object/from16 v1, v22

    const/4 v12, 0x1

    move-object/from16 v19, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v20

    move-object/from16 v20, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v23

    goto/16 :goto_125

    :cond_63d
    move-object/from16 v4, v19

    move-object/from16 v5, v22

    move-object/from16 v22, v1

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    move-object/from16 v23, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v23

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isHasNullName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->isHasNullName:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-boolean v1, v15, Lcom/keephealth/android/persenter/device/CourseViewModel;->isHasNullName:Z

    if-eqz v1, :cond_669

    const/4 v1, 0x0

    return v1

    :cond_669
    if-nez v0, :cond_6a5

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mListMorSunday:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v12, v22

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v16, v21

    move-object v3, v5

    move-object/from16 v18, v20

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v10, v18

    move-object v11, v13

    const/16 v17, 0x1

    move-object/from16 v13, v16

    move-object/from16 v15, v19

    .line 684
    invoke-direct/range {v0 .. v15}, Lcom/keephealth/android/persenter/device/CourseViewModel;->saveSharePreferenceData(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_6cd

    :cond_6a5
    const/16 v17, 0x1

    goto :goto_6cd

    :cond_6a8
    move-object/from16 v16, v3

    move-object/from16 v4, v19

    const/16 v17, 0x1

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v12

    move-object v12, v1

    if-nez v0, :cond_6cd

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v10, v18

    move-object v11, v13

    move-object/from16 v13, v16

    move-object/from16 v15, v19

    .line 691
    invoke-direct/range {v0 .. v15}, Lcom/keephealth/android/persenter/device/CourseViewModel;->saveSharePreferenceData(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_6cd
    :goto_6cd
    return v17

    :pswitch_data_6ce
    .packed-switch 0x0
        :pswitch_510
        :pswitch_45a
        :pswitch_3c5
        :pswitch_330
        :pswitch_27b
        :pswitch_1e6
        :pswitch_151
    .end packed-switch
.end method

.method public saveDayCourseToAllList(II)V
    .registers 5

    packed-switch p1, :pswitch_data_1a2

    goto/16 :goto_182

    .line 235
    :pswitch_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    if-eqz p2, :cond_19

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_19

    .line 237
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    :cond_19
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    if-eqz p2, :cond_28

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_28

    .line 240
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    :cond_28
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v0, 0x6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setSingleCourseList(Ljava/util/List;)V

    goto/16 :goto_182

    .line 225
    :pswitch_36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    if-eqz p2, :cond_4a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4a

    .line 227
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    :cond_4a
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    if-eqz p2, :cond_59

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_59

    .line 230
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    :cond_59
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setSingleCourseList(Ljava/util/List;)V

    goto/16 :goto_182

    .line 215
    :pswitch_67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    if-eqz p2, :cond_7b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7b

    .line 217
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    :cond_7b
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    if-eqz p2, :cond_8a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8a

    .line 220
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    :cond_8a
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setSingleCourseList(Ljava/util/List;)V

    goto/16 :goto_182

    .line 205
    :pswitch_98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    if-eqz p2, :cond_ac

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_ac

    .line 207
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_ac
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    if-eqz p2, :cond_bb

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_bb

    .line 210
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    :cond_bb
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setSingleCourseList(Ljava/util/List;)V

    goto/16 :goto_182

    .line 195
    :pswitch_c9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    if-eqz p2, :cond_dd

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_dd

    .line 197
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_dd
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    if-eqz p2, :cond_ec

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_ec

    .line 200
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    :cond_ec
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setSingleCourseList(Ljava/util/List;)V

    goto/16 :goto_182

    .line 185
    :pswitch_fa
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    if-eqz p2, :cond_10e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_10e

    .line 187
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    :cond_10e
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    if-eqz p2, :cond_11d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_11d

    .line 190
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    :cond_11d
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setSingleCourseList(Ljava/util/List;)V

    goto :goto_182

    .line 174
    :pswitch_12a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    if-eqz p2, :cond_13e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_13e

    .line 176
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_13e
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    if-eqz p2, :cond_14d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_14d

    .line 179
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    :cond_14d
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->setSingleCourseList(Ljava/util/List;)V

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6dfb\u52a0\u4e4b\u540e\u7684getSingleCourseList:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "courseviewmode68l"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6dfb\u52a0\u6216\u8005\u65b0\u589e\u8bfe\u7a0b\u540e\u7684\u603b\u4e34\u65f6\u6570\u636e: ---"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "courseviewmode67l"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_fa
        :pswitch_c9
        :pswitch_98
        :pswitch_67
        :pswitch_36
        :pswitch_5
    .end packed-switch
.end method

.method public setCourseData(Z)I
    .registers 7

    .line 724
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 725
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseDayData(Ljava/util/List;I)V

    .line 726
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseDayData(Ljava/util/List;I)V

    .line 727
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseDayData(Ljava/util/List;I)V

    .line 728
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseDayData(Ljava/util/List;I)V

    .line 729
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v3, 0x4

    invoke-direct {p0, v0, v3}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseDayData(Ljava/util/List;I)V

    .line 730
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v3, 0x5

    invoke-direct {p0, v0, v3}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseDayData(Ljava/util/List;I)V

    .line 731
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    const/4 v3, 0x6

    invoke-direct {p0, v0, v3}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseDayData(Ljava/util/List;I)V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mSendCourseBeans.size():"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "courseviewmode4l"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u521d\u59cb\u5316\u6570\u636e\u7684\u65f6\u5019_mSendCourseBeans:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "courseviewmode3l"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iput-boolean v1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isHasCourse:Z

    .line 736
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    if-eqz v0, :cond_96

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_96

    move v0, v1

    .line 737
    :goto_75
    iget-object v4, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_96

    .line 738
    iget-object v4, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_93

    .line 739
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_93

    .line 740
    iput-boolean v2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isHasCourse:Z

    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 749
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isHasCourse:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isHasCourse:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  isSave:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-boolean v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isHasCourse:Z

    if-eqz v0, :cond_e0

    .line 751
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lcom/keephealth/android/util/ble/CmdHelper;->setCourseTable(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "bytes: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_de

    .line 759
    invoke-direct {p0, v0}, Lcom/keephealth/android/persenter/device/CourseViewModel;->sendCourseData(Ljava/util/List;)V

    return v1

    :cond_de
    const/4 p1, -0x1

    return p1

    .line 766
    :cond_e0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->clearCourse()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_f1

    .line 769
    invoke-direct {p0, v0}, Lcom/keephealth/android/persenter/device/CourseViewModel;->sendCourseData(Ljava/util/List;)V

    .line 771
    :cond_f1
    iput v1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->saveDayCourse:I

    return v1
.end method

.method public subArray([BII)[B
    .registers 6

    sub-int/2addr p3, p2

    .line 902
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 903
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public updateCurrentCourse(IILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;)V"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   zore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9700\u8981\u66f4\u65b0\u6570\u636e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "courseviewmode68l"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    if-nez v0, :cond_3b

    .line 252
    const-string p1, "------------------------update-------------"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_47

    .line 256
    const-string p1, "----------------------0--update--------0-----"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_462

    goto/16 :goto_442

    :pswitch_4d
    const/4 p1, 0x6

    if-nez p2, :cond_8b

    .line 358
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 359
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 361
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :cond_8b
    if-ne p2, v0, :cond_442

    .line 364
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 365
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 367
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSaturday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 368
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSaturday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :pswitch_c8
    const/4 p1, 0x5

    if-nez p2, :cond_106

    .line 343
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 344
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 346
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :cond_106
    if-ne p2, v0, :cond_442

    .line 349
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 350
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 352
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftFriday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorFriday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :pswitch_143
    const/4 p1, 0x4

    if-nez p2, :cond_181

    .line 328
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 329
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 331
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :cond_181
    if-ne p2, v0, :cond_442

    .line 334
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 335
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 337
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftThurday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorThurday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :pswitch_1be
    const/4 p1, 0x3

    if-nez p2, :cond_1fc

    .line 313
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 314
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 315
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 316
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :cond_1fc
    if-ne p2, v0, :cond_442

    .line 319
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 320
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 322
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftWednesday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorWednesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :pswitch_239
    if-nez p2, :cond_276

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 299
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 301
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :cond_276
    if-ne p2, v0, :cond_442

    .line 304
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 305
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 307
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftTuesday:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorTuesday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :pswitch_2b3
    const/4 p1, 0x1

    if-nez p2, :cond_2f1

    .line 282
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 283
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 285
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    :cond_2f1
    if-ne p2, v0, :cond_442

    .line 289
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 290
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 292
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftMonday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorMonday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_442

    .line 262
    :pswitch_32e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u66f4\u65b0\u4e4b\u524d\u7684mListMorSunday---\uff1a"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n  mListAftSunday:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "\u66f4\u65b0\u4e4b\u524d\u7684\u603b\u6570\u636e:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_3ba

    .line 265
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 266
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 268
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f5

    :cond_3ba
    if-ne p2, v0, :cond_3f5

    .line 271
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 272
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 274
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_3f5
    :goto_3f5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u66f4\u65b0\u4e4b\u540e\u7684mListMorSunday---\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListMorSunday:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mListAftSunday:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u66f4\u65b0\u4e4b\u540e\u7684\u603b\u6570\u636e:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_442
    :goto_442
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u66f4\u65b0\u540e\u7684\u603b\u4e34\u65f6\u6570\u636e:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/persenter/device/CourseViewModel;->mSendCourseBeans:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "courseviewmode67l"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_462
    .packed-switch 0x0
        :pswitch_32e
        :pswitch_2b3
        :pswitch_239
        :pswitch_1be
        :pswitch_143
        :pswitch_c8
        :pswitch_4d
    .end packed-switch
.end method
