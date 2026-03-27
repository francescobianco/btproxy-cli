.class public Lcom/keephealth/android/childmodule/fragment/TaskFragment;
.super Lcom/keephealth/android/base/BaseMvvMNewFragment;
.source "TaskFragment.java"


# instance fields
.field binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

.field customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dialogView:Lcom/keephealth/android/childmodule/DialogView;

.field futureCustomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;"
        }
    .end annotation
.end field

.field futureDailyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;"
        }
    .end annotation
.end field

.field private goldComplete:I

.field private goldCount:I

.field isFirst:Z

.field isSendGolds:Z

.field private mSearchDate:Ljava/util/Date;

.field private positionTarget:I

.field selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field private taskComplete:I

.field private taskCount:I

.field taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

.field private taskDate:Ljava/lang/String;

.field taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

.field timeDay:J

.field timestamp:J

.field timestampToday:J

.field private viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 62
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCount:I

    .line 67
    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    .line 68
    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    .line 69
    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dataList:Ljava/util/List;

    .line 76
    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    const-wide/32 v1, 0x5265c00

    .line 79
    iput-wide v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timeDay:J

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isFirst:Z

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureDailyList:Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureCustomList:Ljava/util/List;

    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    .line 151
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isSendGolds:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->setNextData()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->showDateChose()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Lcom/keephealth/android/childmodule/DialogView;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/childmodule/fragment/TaskFragment;Lcom/keephealth/android/childmodule/DialogView;)Lcom/keephealth/android/childmodule/DialogView;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Ljava/util/List;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/childmodule/fragment/TaskFragment;I)I
    .registers 2

    .line 62
    iput p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Ljava/util/Date;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/childmodule/fragment/TaskFragment;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private refreshAdapter(Lcom/keephealth/android/childmodule/bean/MarkBean;)V
    .registers 5

    .line 499
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_55

    .line 500
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_a2

    .line 501
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_29

    .line 502
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    invoke-virtual {v1, v2}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    goto :goto_3c

    .line 504
    :cond_29
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    invoke-virtual {v1, v2}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    .line 506
    :goto_3c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    iget v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setStatus(I)V

    .line 507
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->notifyItemChanged(I)V

    goto :goto_a2

    .line 510
    :cond_55
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_a2

    .line 511
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setStatus(I)V

    .line 512
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->notifyItemChanged(I)V

    .line 513
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getStatus()I

    move-result p1

    if-ne p1, v1, :cond_8f

    .line 514
    iget p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    iget v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    goto :goto_a2

    .line 516
    :cond_8f
    iget p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    iget v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    :cond_a2
    :goto_a2
    return-void
.end method

.method private refreshProgress()V
    .registers 5

    .line 525
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    .line 526
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    .line 527
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvTaskProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvGoldProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCount:I

    if-lez v0, :cond_65

    .line 530
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ringViewTask:Lcom/keephealth/android/views/RingView;

    iget v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCount:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RingView;->setProgress(I)V

    .line 532
    :cond_65
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    if-lez v0, :cond_77

    .line 533
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ringViewGold:Lcom/keephealth/android/views/RingView;

    iget v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RingView;->setProgress(I)V

    .line 535
    :cond_77
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4efb\u52a1 refreshProgress: taskComplete"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- taskCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setNextData()V
    .registers 9

    .line 441
    iget-wide v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    invoke-static {v0, v1}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskDate:Ljava/lang/String;

    .line 442
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    .line 443
    iget-wide v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_13d

    .line 444
    iput v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    .line 445
    iput v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    .line 446
    iput v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    .line 447
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->setFuture(Z)V

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    iget-object v3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureDailyList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->setList(Ljava/util/Collection;)V

    .line 449
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureDailyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_4c

    .line 450
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvTaskTarget:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivTargetShow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_77

    .line 453
    :cond_4c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvTaskTarget:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivTargetShow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    .line 455
    :goto_5b
    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureDailyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_77

    .line 456
    iget v4, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureDailyList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v5}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 459
    :cond_77
    :goto_77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureCustomList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ff

    move v4, v1

    .line 461
    :goto_85
    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureCustomList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c4

    .line 462
    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureCustomList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v5}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v5

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getWeekIndex(Ljava/util/Date;)I

    move-result v6

    aget v5, v5, v6

    if-ne v5, v2, :cond_c1

    .line 463
    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureCustomList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget v5, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureCustomList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v6}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    :cond_c1
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 467
    :cond_c4
    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    invoke-virtual {v4, v2}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->setFuture(Z)V

    .line 468
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    invoke-virtual {v2, v0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->setList(Ljava/util/Collection;)V

    .line 469
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 470
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvTaskCustom:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivCustomShow:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->customInstruction:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ff

    .line 474
    :cond_ea
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvTaskCustom:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivCustomShow:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->customInstruction:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_ff
    :goto_ff
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureDailyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCount:I

    if-nez v2, :cond_124

    .line 481
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->llViewTask:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->llViewGold:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvNoTask:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14e

    .line 485
    :cond_124
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->llViewTask:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->llViewGold:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvNoTask:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->refreshProgress()V

    goto :goto_14e

    .line 491
    :cond_13d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->setFuture(Z)V

    .line 492
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->setFuture(Z)V

    .line 493
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getQueryTask(Ljava/util/Date;)V

    .line 495
    :goto_14e
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-static {v2}, Lcom/keephealth/android/util/TimeUtil;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/TimeUtil;->getDayOfWeekString(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDateChose()V
    .registers 8

    const/4 v0, 0x2

    .line 539
    new-array v1, v0, [I

    .line 541
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rlTitleDate:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 542
    new-instance v2, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    .line 543
    iget-object v3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskDate:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_40

    .line 544
    array-length v5, v3

    if-le v5, v0, :cond_40

    .line 545
    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 546
    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 547
    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 549
    :cond_40
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    aget v1, v1, v4

    invoke-virtual {v2, v0, v4, v1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;ZI)V

    .line 550
    new-instance v0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$12;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$12;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    iput-object v0, v2, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivNextDate:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$1;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivPreDate:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$2;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvDate:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$3;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivCalendar:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$4;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->btnAddTask:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->taskListAllBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->taskListBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->syncTask:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$6;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$7;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->markBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 402
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTask:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 410
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivTargetShow:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivCustomShow:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initData()V
    .registers 5

    .line 118
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->initData()V

    .line 119
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    .line 122
    iput-wide v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestampToday:J

    .line 123
    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 124
    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 125
    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, v1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dataList:Ljava/util/List;

    const v1, 0x7f10060c

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dataList:Ljava/util/List;

    const v1, 0x7f1006ec

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dataList:Ljava/util/List;

    const v1, 0x7f1006f9

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v0, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, v1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v2, v2, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "taskDate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/keephealth/android/util/TimeUtil;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskDate:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "taskDate: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-static {v2}, Lcom/keephealth/android/util/TimeUtil;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/TimeUtil;->getDayOfWeekString(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initView()V
    .registers 6

    .line 93
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    .line 94
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "USER_TOKEN"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 95
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getHeaderUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d002e

    if-eqz v1, :cond_54

    .line 97
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivHeader:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getHeaderUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortrait(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_5b

    .line 99
    :cond_54
    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivHeader:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :goto_5b
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 102
    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_6c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskTarget:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    const v1, 0x7f0c013d

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskTarget:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskCustom:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    const v1, 0x7f0c0139

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskCustom:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    return-void
.end method

.method synthetic lambda$createObserver$0$com-keephealth-android-childmodule-fragment-TaskFragment(Ljava/util/List;)V
    .registers 5

    .line 0
    if-eqz p1, :cond_47

    .line 210
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isFirst:Z

    if-eqz v0, :cond_b

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getSucceedTask()V

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureCustomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureDailyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 216
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 217
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 218
    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureCustomList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 220
    :cond_35
    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->futureDailyList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 223
    :cond_43
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->setNextData()V

    goto :goto_51

    :cond_47
    const p1, 0x7f1005b9

    .line 225
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_51
    return-void
.end method

.method synthetic lambda$createObserver$1$com-keephealth-android-childmodule-fragment-TaskFragment(Lcom/keephealth/android/childmodule/bean/TaskListBean;)V
    .registers 9

    .line 0
    if-eqz p1, :cond_11f

    .line 231
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getFamilyTaskList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_129

    .line 233
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getDateTaskTotalSize()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCount:I

    .line 234
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getDateTaskCompletedSize()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    .line 235
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getDateCoinTotalSize()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldCount:I

    .line 236
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getDateCoinCompletedSize()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->goldComplete:I

    .line 237
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getCoinTotalSize()I

    move-result v0

    sput v0, Lcom/keephealth/android/app/AppApplication;->golds:I

    const/16 v0, 0x3fe

    .line 238
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 240
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isFirst:Z

    if-eqz v0, :cond_4f

    .line 241
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getCoinTotalSize()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setGold(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 242
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getCoinTotalSize()I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setGold(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u91d1\u5e01\u6570\u636e1:"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_4f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 247
    :goto_5b
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getFamilyTaskList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8a

    .line 248
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getFamilyTaskList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    .line 250
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/TaskListBean;->getFamilyTaskList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v5}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_84

    .line 251
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 253
    :cond_84
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 256
    :cond_8a
    iget p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCount:I

    const/16 v3, 0x8

    if-nez p1, :cond_a6

    .line 257
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->llViewTask:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->llViewGold:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvNoTask:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_be

    .line 261
    :cond_a6
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->llViewTask:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->llViewGold:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvNoTask:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->refreshProgress()V

    .line 266
    :goto_be
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskTargetAdapter:Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/adapter/TaskTargetAdapter;->setList(Ljava/util/Collection;)V

    .line 267
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskCustomAdapter:Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->setList(Ljava/util/Collection;)V

    .line 269
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_dd

    .line 270
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvTaskTarget:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivTargetShow:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_eb

    .line 273
    :cond_dd
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvTaskTarget:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivTargetShow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :goto_eb
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_107

    .line 277
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvTaskCustom:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivCustomShow:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->customInstruction:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11c

    .line 281
    :cond_107
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->tvTaskCustom:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivCustomShow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->customInstruction:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :goto_11c
    iput-boolean v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isFirst:Z

    goto :goto_129

    :cond_11f
    const p1, 0x7f1005b9

    .line 288
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 290
    :cond_129
    :goto_129
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    return-void
.end method

.method synthetic lambda$createObserver$2$com-keephealth-android-childmodule-fragment-TaskFragment(Ljava/lang/String;)V
    .registers 3

    .line 294
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 295
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const p1, 0x7f1006ef

    .line 296
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_28

    .line 297
    :cond_16
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const p1, 0x7f100727

    .line 298
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method synthetic lambda$createObserver$3$com-keephealth-android-childmodule-fragment-TaskFragment(Lcom/keephealth/android/childmodule/bean/MarkBean;)V
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTask:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getQueryTaskAll()V

    if-eqz p1, :cond_61

    .line 366
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getCoinTotalSize()I

    move-result v0

    sput v0, Lcom/keephealth/android/app/AppApplication;->golds:I

    const/16 v0, 0x3fe

    .line 367
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isSendGolds:Z

    .line 369
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getCoinTotalSize()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setGold(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u53d1\u9001\u91d1\u5e01\u6570\u636e:"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getCoinTotalSize()I

    move-result v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->setGold(I)[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;

    invoke-direct {v3, p0, p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;Lcom/keephealth/android/childmodule/bean/MarkBean;)V

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 390
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getStatus()I

    move-result v1

    if-ne v1, v0, :cond_4f

    .line 391
    iget v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    goto :goto_5a

    .line 392
    :cond_4f
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getStatus()I

    move-result v1

    if-nez v1, :cond_5a

    .line 393
    iget v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->taskComplete:I

    .line 395
    :cond_5a
    :goto_5a
    invoke-direct {p0, p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->refreshAdapter(Lcom/keephealth/android/childmodule/bean/MarkBean;)V

    .line 396
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->refreshProgress()V

    goto :goto_6b

    :cond_61
    const p1, 0x7f1005b9

    .line 398
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_6b
    return-void
.end method

.method synthetic lambda$createObserver$4$com-keephealth-android-childmodule-fragment-TaskFragment(Ljava/lang/String;)V
    .registers 3

    .line 403
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 404
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 405
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getQueryTask(Ljava/util/Date;)V

    :cond_16
    return-void
.end method

.method protected onCreateViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .registers 4

    const/4 v0, 0x0

    .line 87
    invoke-static {p1, p2, v0}, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    return-object p1
.end method

.method public onResume()V
    .registers 5

    .line 138
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->onResume()V

    .line 139
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isFirst:Z

    if-nez v0, :cond_3f

    .line 140
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestampToday:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4efb\u52a1\u6570\u636e\u65f6\u95f4"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-wide v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    iget-wide v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestampToday:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3f

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getQueryTask(Ljava/util/Date;)V

    .line 146
    :cond_3f
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getQueryTaskAll()V

    return-void
.end method

.method public sendDeviceTask()V
    .registers 2

    .line 566
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 567
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendTaskDevice()V

    return-void
.end method
