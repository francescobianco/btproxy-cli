.class public Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "TaskViewModel.java"


# instance fields
.field public createTask:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dataAll:[B

.field dataLength:I

.field dataLengthCount:I

.field public deleteTask:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public editTask:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field gson:Lcom/google/gson/Gson;

.field private indexSuccess:I

.field isDelete:Z

.field isDeleteTask:Z

.field isReceiveTask:Z

.field isSendTarget:Z

.field isSendTask:Z

.field listTargetCustom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public markBean:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/keephealth/android/childmodule/bean/MarkBean;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/keephealth/android/childmodule/repository/TaskRepository;

.field public successTask:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field successTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/BatchMarkBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public syncTask:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public taskListAllBean:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;>;"
        }
    .end annotation
.end field

.field public taskListBean:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/keephealth/android/childmodule/bean/TaskListBean;",
            ">;"
        }
    .end annotation
.end field

.field timeDay:J

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 51
    new-instance v0, Lcom/keephealth/android/childmodule/repository/TaskRepository;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/repository/TaskRepository;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->repository:Lcom/keephealth/android/childmodule/repository/TaskRepository;

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->createTask:Landroidx/lifecycle/MutableLiveData;

    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->editTask:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->deleteTask:Landroidx/lifecycle/MutableLiveData;

    .line 55
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->syncTask:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->markBean:Landroidx/lifecycle/MutableLiveData;

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTask:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->gson:Lcom/google/gson/Gson;

    .line 60
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->taskListBean:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->taskListAllBean:Landroidx/lifecycle/MutableLiveData;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->timestamp:J

    const-wide/32 v0, 0x5265c00

    .line 64
    iput-wide v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->timeDay:J

    const/4 v0, 0x0

    .line 514
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isReceiveTask:Z

    .line 516
    iput v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    .line 517
    iput v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    .line 568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTaskList:Ljava/util/List;

    .line 570
    iput v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I

    .line 636
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isDelete:Z

    .line 662
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->listTargetCustom:Ljava/util/List;

    .line 683
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isSendTarget:Z

    .line 716
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isSendTask:Z

    .line 771
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isDeleteTask:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I

    return p0
.end method

.method static synthetic access$008(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)I
    .registers 3

    .line 49
    iget v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I

    return v0
.end method


# virtual methods
.method public createTask(Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V
    .registers 4

    .line 68
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->repository:Lcom/keephealth/android/childmodule/repository/TaskRepository;

    new-instance v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$1;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/childmodule/repository/TaskRepository;->getCreateTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public deleteAllTask()V
    .registers 5

    const/4 v0, 0x1

    .line 640
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isDelete:Z

    .line 641
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->deleteAllTask()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$9;

    invoke-direct {v2, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$9;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    const-string v3, ""

    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method public deleteTask(IIJ)V
    .registers 6

    const/4 v0, 0x1

    .line 781
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isDeleteTask:Z

    .line 782
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/keephealth/android/util/ble/CmdHelper;->deleteTask(IIJ)[B

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$12;

    invoke-direct {p2, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$12;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    const-string p3, ""

    invoke-virtual {v0, p3, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method public getBatchMarkTask(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/BatchMarkBean;",
            ">;)V"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 254
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 255
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 256
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "status"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->getDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, "date"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 262
    :cond_4c
    const-string p1, "application/json; charset=utf-8"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->repository:Lcom/keephealth/android/childmodule/repository/TaskRepository;

    new-instance v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/childmodule/repository/TaskRepository;->getBatchMarkTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public getDeleteTask(J)V
    .registers 5

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    const-string v1, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string p1, "application/json; charset=utf-8"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 153
    iget-object p2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->repository:Lcom/keephealth/android/childmodule/repository/TaskRepository;

    new-instance v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$4;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    invoke-virtual {p2, p1, v0}, Lcom/keephealth/android/childmodule/repository/TaskRepository;->getDeleteTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public getGoalValue(III)I
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_13

    if-eqz p2, :cond_f

    if-eq p2, v1, :cond_f

    if-eq p2, v0, :cond_2e

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2a

    goto :goto_31

    :cond_f
    add-int/2addr p3, v1

    mul-int/lit16 v2, p3, 0x3e8

    goto :goto_31

    :cond_13
    if-ne p1, v1, :cond_25

    if-eqz p2, :cond_20

    if-eq p2, v1, :cond_1c

    if-eq p2, v0, :cond_20

    goto :goto_31

    :cond_1c
    add-int/2addr p3, v1

    mul-int/lit8 p3, p3, 0x5

    goto :goto_23

    :cond_20
    add-int/2addr p3, v1

    mul-int/lit8 p3, p3, 0x64

    :goto_23
    move v2, p3

    goto :goto_31

    :cond_25
    if-eqz p2, :cond_2e

    if-eq p2, v1, :cond_2a

    goto :goto_31

    :cond_2a
    add-int/2addr p3, v1

    mul-int/lit8 v2, p3, 0x64

    goto :goto_31

    :cond_2e
    add-int/2addr p3, v1

    mul-int/lit8 v2, p3, 0x5

    :goto_31
    return v2
.end method

.method public getGoalValueUnit(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_40

    const/4 v0, 0x2

    if-eq p1, v0, :cond_38

    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_12

    .line 462
    const-string p1, ""

    goto :goto_47

    :cond_12
    const p1, 0x7f1005c3

    .line 476
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_47

    :cond_1a
    const p1, 0x7f100387

    .line 473
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_47

    .line 470
    :cond_22
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result p1

    if-eqz p1, :cond_30

    const p1, 0x7f100771

    goto :goto_33

    :cond_30
    const p1, 0x7f100774

    :goto_33
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_47

    :cond_38
    const p1, 0x7f100769

    .line 467
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_47

    :cond_40
    const p1, 0x7f10077a

    .line 464
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_47
    return-object p1
.end method

.method public getMarkTaskTask(JILjava/util/Date;I)V
    .registers 8

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    const-string v1, "taskId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string p1, "status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string p1, "taskDate"

    invoke-static {p4}, Lcom/keephealth/android/util/TimeUtil;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string p1, "application/json; charset=utf-8"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 221
    iget-object p2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->repository:Lcom/keephealth/android/childmodule/repository/TaskRepository;

    new-instance p4, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;

    invoke-direct {p4, p0, p3, p5}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;II)V

    invoke-virtual {p2, p1, p4}, Lcom/keephealth/android/childmodule/repository/TaskRepository;->getMarkTaskTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public getQueryTask(Ljava/util/Date;)V
    .registers 4

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v1, "taskDate"

    invoke-static {p1}, Lcom/keephealth/android/util/TimeUtil;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string p1, "application/json; charset=utf-8"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->repository:Lcom/keephealth/android/childmodule/repository/TaskRepository;

    new-instance v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$2;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/childmodule/repository/TaskRepository;->getQueryTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public getQueryTaskAll()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->repository:Lcom/keephealth/android/childmodule/repository/TaskRepository;

    new-instance v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$3;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/repository/TaskRepository;->getQueryTaskAll(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public getSucceedTask()V
    .registers 5

    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isReceiveTask:Z

    .line 521
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getSucceedTask()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u624b\u73af\u5b8c\u6210\u4efb\u52a1\u6570\u636e:"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getSucceedTask()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;

    invoke-direct {v2, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    const-string v3, ""

    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method public getTimes([ILandroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 299
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_9d

    .line 300
    aget v2, p1, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_99

    .line 301
    const-string v2, " "

    packed-switch v1, :pswitch_data_a2

    goto/16 :goto_99

    .line 321
    :pswitch_15
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 318
    :pswitch_28
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 315
    :pswitch_3b
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 312
    :pswitch_4e
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 309
    :pswitch_61
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 306
    :pswitch_74
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 303
    :pswitch_87
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100131

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    :goto_99
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 326
    :cond_9d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_87
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_3b
        :pswitch_28
        :pswitch_15
    .end packed-switch
.end method

.method public getUpdateTask(Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V
    .registers 4

    .line 180
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->repository:Lcom/keephealth/android/childmodule/repository/TaskRepository;

    new-instance v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$5;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/childmodule/repository/TaskRepository;->getUpdateTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public getWeekIndex(Ljava/util/Date;)I
    .registers 3

    .line 485
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 486
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x7

    .line 488
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1e

    goto :goto_1c

    :pswitch_11
    const/4 v0, 0x6

    goto :goto_1c

    :pswitch_13
    const/4 v0, 0x5

    goto :goto_1c

    :pswitch_15
    const/4 v0, 0x4

    goto :goto_1c

    :pswitch_17
    const/4 v0, 0x3

    goto :goto_1c

    :pswitch_19
    const/4 v0, 0x2

    goto :goto_1c

    :pswitch_1b
    const/4 v0, 0x1

    :goto_1c
    :pswitch_1c
    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
    .end packed-switch
.end method

.method public sendAllTask()V
    .registers 7

    const/4 v0, 0x1

    .line 687
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isSendTarget:Z

    const/4 v1, 0x0

    .line 688
    :goto_4
    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->listTargetCustom:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5e

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createObserver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->listTargetCustom:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u76ee\u6807\u4efb\u52a1\u6570\u636e"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->listTargetCustom:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne v1, v2, :cond_4c

    .line 691
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->listTargetCustom:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$10;

    invoke-direct {v4, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$10;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V

    const-string v5, ""

    invoke-virtual {v2, v5, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_5b

    .line 711
    :cond_4c
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->listTargetCustom:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5e
    return-void
.end method

.method public sendTask(Ljava/lang/String;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;II)V
    .registers 9

    const/4 v0, 0x1

    if-ne p3, v0, :cond_13

    .line 728
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setTaskId(J)V

    .line 729
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setId(J)V

    .line 731
    :cond_13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 732
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 733
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p4, v0, :cond_27

    .line 735
    invoke-static {v0, p3, p1}, Lcom/keephealth/android/util/ble/CmdHelper;->setCustomTask(IILjava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_2b

    .line 737
    :cond_27
    invoke-static {v0, p3, p1}, Lcom/keephealth/android/util/ble/CmdHelper;->setSportTargetTask(IILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 739
    :goto_2b
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isSendTask:Z

    const/4 p2, 0x0

    .line 740
    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_7e

    .line 741
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "createObserver: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "\u53d1\u9001\u5355\u4e2a\u4efb\u52a1\u6570\u636e"

    invoke-static {v1, p4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, v0

    if-ne p2, p4, :cond_6e

    .line 743
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$11;

    invoke-direct {v2, p0, p3}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$11;-><init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;I)V

    const-string v3, ""

    invoke-virtual {p4, v3, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_7b

    .line 766
    :cond_6e
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p4, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_7b
    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    :cond_7e
    return-void
.end method

.method public sendTaskDevice()V
    .registers 8

    .line 665
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->taskListAllBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 666
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->taskListBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/TaskListBean;

    .line 667
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->taskListAllBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 668
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 669
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 670
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_46

    .line 671
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    .line 672
    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskType()I

    move-result v6

    if-ne v6, v5, :cond_40

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskStatus()I

    move-result v6

    if-ne v6, v5, :cond_40

    .line 673
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 675
    :cond_40
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 678
    :cond_46
    invoke-static {v5, v2, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setSportTargetCustomTask(ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->listTargetCustom:Ljava/util/List;

    .line 679
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendAllTask()V

    :cond_4f
    return-void
.end method

.method public setSleepStepData(I)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    const/16 p1, 0x14

    .line 333
    new-array v1, p1, [Ljava/lang/String;

    :goto_8
    if-ge v0, p1, :cond_3c

    mul-int/lit16 v2, v0, 0x3e8

    add-int/lit16 v2, v2, 0x3e8

    .line 335
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    const/4 p1, 0x7

    .line 338
    new-array p1, p1, [Ljava/lang/String;

    const-string v2, "6"

    aput-object v2, p1, v0

    const-string v0, "7"

    aput-object v0, p1, v1

    const/4 v0, 0x2

    const-string v1, "8"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "9"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "10"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "11"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "12"

    aput-object v1, p1, v0

    move-object v1, p1

    :cond_3c
    return-object v1
.end method

.method public setSportTargetValueList(ILandroid/content/Context;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f100769

    const v2, 0x7f100387

    const/16 v3, 0xa

    const/16 v4, 0x3c

    const/4 v5, 0x0

    if-nez p1, :cond_c0

    const/16 p1, 0x63

    .line 349
    new-array v6, p1, [Ljava/lang/String;

    move v7, v5

    :goto_17
    if-ge v7, p1, :cond_45

    .line 351
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v10

    if-eqz v10, :cond_32

    const v10, 0x7f100771

    goto :goto_35

    :cond_32
    const v10, 0x7f100774

    :goto_35
    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move v7, v9

    goto :goto_17

    .line 353
    :cond_45
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x14

    .line 355
    new-array v6, p1, [Ljava/lang/String;

    move v7, v5

    :goto_4d
    if-ge v7, p1, :cond_70

    .line 357
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 v9, v7, 0x3e8

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f10077a

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 359
    :cond_70
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-array p1, v4, [Ljava/lang/String;

    move v6, v5

    :goto_76
    if-ge v6, v4, :cond_96

    .line 363
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v8, v6, 0x5

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 365
    :cond_96
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-array p1, v3, [Ljava/lang/String;

    :goto_9b
    if-ge v5, v3, :cond_bb

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v5, 0x64

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    .line 371
    :cond_bb
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_185

    :cond_c0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_13a

    const/16 p1, 0x1e

    .line 374
    new-array v6, p1, [Ljava/lang/String;

    move v7, v5

    :goto_c8
    if-ge v7, p1, :cond_eb

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v9, v7, 0x64

    add-int/lit8 v9, v9, 0x64

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f1005c3

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c8

    .line 378
    :cond_eb
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-array p1, v4, [Ljava/lang/String;

    move v6, v5

    :goto_f1
    if-ge v6, v4, :cond_111

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v8, v6, 0x5

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f1

    .line 384
    :cond_111
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-array p1, v3, [Ljava/lang/String;

    :goto_116
    if-ge v5, v3, :cond_136

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v5, 0x64

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_116

    .line 390
    :cond_136
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_185

    .line 392
    :cond_13a
    new-array p1, v4, [Ljava/lang/String;

    move v6, v5

    :goto_13d
    if-ge v6, v4, :cond_15d

    .line 394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v8, v6, 0x5

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_13d

    .line 396
    :cond_15d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    new-array p1, v3, [Ljava/lang/String;

    :goto_162
    if-ge v5, v3, :cond_182

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v5, 0x64

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_162

    .line 402
    :cond_182
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_185
    return-object v0
.end method

.method public setSuccessTask([BI)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 572
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x1

    move/from16 v6, p2

    if-ge v4, v6, :cond_98

    mul-int/lit8 v7, v4, 0x7

    add-int/lit8 v8, v7, 0x2

    add-int/lit8 v9, v7, 0x6

    .line 574
    invoke-static {v1, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 576
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    const/4 v10, 0x2

    if-eq v7, v10, :cond_22

    goto/16 :goto_92

    .line 579
    :cond_22
    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToLong([B)J

    move-result-wide v7

    .line 580
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    .line 581
    iget-object v10, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->taskListAllBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_92

    .line 582
    iget-object v10, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->taskListAllBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_92

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    .line 583
    invoke-virtual {v11}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getId()J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-nez v11, :cond_8a

    if-lez v9, :cond_8a

    const/4 v11, 0x7

    .line 585
    invoke-static {v9, v11}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToBinaryArray(II)[I

    move-result-object v11

    const/4 v12, 0x0

    .line 586
    :goto_5a
    array-length v13, v11

    if-ge v12, v13, :cond_8a

    .line 587
    aget v13, v11, v12

    if-ne v13, v5, :cond_80

    .line 588
    new-instance v13, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;

    invoke-direct {v13}, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;-><init>()V

    .line 589
    invoke-virtual {v13, v7, v8}, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->setId(J)V

    .line 590
    invoke-virtual {v13, v5}, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->setStatus(I)V

    .line 591
    iget-wide v14, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->timestamp:J

    iget-wide v5, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->timeDay:J

    move/from16 v16, v4

    int-to-long v3, v12

    mul-long/2addr v5, v3

    sub-long/2addr v14, v5

    invoke-static {v14, v15}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-virtual {v13, v3}, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->setDate(Ljava/lang/String;)V

    .line 593
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_80
    move/from16 v16, v4

    :goto_82
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, p2

    move/from16 v4, v16

    const/4 v5, 0x1

    goto :goto_5a

    :cond_8a
    move/from16 v16, v4

    move/from16 v6, p2

    move/from16 v4, v16

    const/4 v5, 0x1

    goto :goto_3e

    :cond_92
    :goto_92
    move/from16 v16, v4

    add-int/lit8 v4, v16, 0x1

    goto/16 :goto_a

    .line 601
    :cond_98
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_120

    .line 602
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x14

    if-le v1, v3, :cond_11c

    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTaskList:Ljava/util/List;

    const/4 v1, 0x0

    .line 604
    iput v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I

    .line 606
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v4, v3

    if-nez v4, :cond_bd

    .line 607
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v3

    goto :goto_c4

    .line 609
    :cond_bd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    :goto_c4
    move v5, v1

    :goto_c5
    if-ge v5, v4, :cond_100

    .line 612
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    :goto_cd
    if-ge v7, v3, :cond_f8

    add-int/lit8 v8, v4, -0x1

    if-ne v5, v8, :cond_e9

    mul-int/lit8 v8, v4, 0x14

    .line 615
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_f5

    mul-int/lit8 v8, v5, 0x14

    add-int/2addr v8, v7

    .line 616
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    :cond_e9
    mul-int/lit8 v8, v5, 0x14

    add-int/2addr v8, v7

    .line 619
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f5
    :goto_f5
    add-int/lit8 v7, v7, 0x1

    goto :goto_cd

    .line 622
    :cond_f8
    iget-object v7, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTaskList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_c5

    .line 624
    :cond_100
    iget-object v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_127

    .line 625
    iget-object v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTaskList:Ljava/util/List;

    iget v2, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getBatchMarkTask(Ljava/util/List;)V

    .line 626
    iget v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I

    goto :goto_127

    .line 629
    :cond_11c
    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getBatchMarkTask(Ljava/util/List;)V

    goto :goto_127

    .line 632
    :cond_120
    iget-object v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTask:Landroidx/lifecycle/MutableLiveData;

    const-string v2, "success"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ThreadUtil;->setMainLooper(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    :cond_127
    :goto_127
    return-void
.end method
