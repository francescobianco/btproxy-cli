.class public Lcom/keephealth/android/childmodule/bean/TaskListBean;
.super Ljava/lang/Object;
.source "TaskListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private coinTotalSize:I

.field private dateCoinCompletedSize:I

.field private dateCoinTotalSize:I

.field private dateTaskCompletedSize:I

.field private dateTaskTotalSize:I

.field private familyTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;"
        }
    .end annotation
.end field

.field private taskDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoinTotalSize()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->coinTotalSize:I

    return v0
.end method

.method public getDateCoinCompletedSize()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->dateCoinCompletedSize:I

    return v0
.end method

.method public getDateCoinTotalSize()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->dateCoinTotalSize:I

    return v0
.end method

.method public getDateTaskCompletedSize()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->dateTaskCompletedSize:I

    return v0
.end method

.method public getDateTaskTotalSize()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->dateTaskTotalSize:I

    return v0
.end method

.method public getFamilyTaskList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->familyTaskList:Ljava/util/List;

    return-object v0
.end method

.method public getTaskDate()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->taskDate:Ljava/lang/String;

    return-object v0
.end method

.method public setCoinTotalSize(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->coinTotalSize:I

    return-void
.end method

.method public setDateCoinCompletedSize(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->dateCoinCompletedSize:I

    return-void
.end method

.method public setDateCoinTotalSize(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->dateCoinTotalSize:I

    return-void
.end method

.method public setDateTaskCompletedSize(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->dateTaskCompletedSize:I

    return-void
.end method

.method public setDateTaskTotalSize(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->dateTaskTotalSize:I

    return-void
.end method

.method public setFamilyTaskList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->familyTaskList:Ljava/util/List;

    return-void
.end method

.method public setTaskDate(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/TaskListBean;->taskDate:Ljava/lang/String;

    return-void
.end method
