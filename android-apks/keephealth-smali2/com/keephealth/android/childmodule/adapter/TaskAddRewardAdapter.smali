.class public Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TaskAddRewardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f09076b

    .line 34
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 35
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$1;-><init>(Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;

    return-void
.end method
