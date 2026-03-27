.class public Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TaskRewardRecordYearAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;)V
    .registers 5

    const v0, 0x7f090771

    .line 35
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;->getYear_month()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f090494

    .line 36
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$1;-><init>(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .registers 3

    .line 19
    check-cast p2, Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;

    return-void
.end method
