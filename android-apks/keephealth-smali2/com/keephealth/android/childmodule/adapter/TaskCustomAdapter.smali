.class public Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TaskCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public isFuture:Z


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->isFuture:Z

    const p1, 0x7f0902e2

    .line 25
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->addChildClickViewIds([I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V
    .registers 11

    const v0, 0x7f0905f4

    .line 35
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 36
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090746

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 37
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->isFuture:Z

    const v1, 0x7f0d0100

    const v2, 0x7f0902e2

    const/4 v3, 0x1

    if-eqz v0, :cond_27

    .line 38
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_37

    .line 40
    :cond_27
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getStatus()I

    move-result v0

    if-ne v0, v3, :cond_34

    const v0, 0x7f0d0102

    .line 41
    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_37

    .line 43
    :cond_34
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 47
    :goto_37
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskStatus()I

    move-result v0

    const v1, 0x7f0903c1

    if-nez v0, :cond_47

    const v0, 0x7f080072

    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_4d

    :cond_47
    const v0, 0x7f080083

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 52
    :goto_4d
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v0

    if-eqz v0, :cond_15d

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v4, v3

    .line 55
    :goto_5b
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_119

    .line 56
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v5

    aget v5, v5, v2

    if-ne v5, v3, :cond_114

    .line 57
    const-string v5, " "

    packed-switch v2, :pswitch_data_15e

    goto/16 :goto_115

    .line 77
    :pswitch_71
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100130

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_115

    .line 74
    :pswitch_89
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10012f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_115

    .line 71
    :pswitch_a1
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10012e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_115

    .line 68
    :pswitch_b8
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10012d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_115

    .line 65
    :pswitch_cf
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10012c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_115

    .line 62
    :pswitch_e6
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10012b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_115

    .line 59
    :pswitch_fd
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100131

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_115

    :cond_114
    move v4, v1

    :goto_115
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5b

    :cond_119
    if-eqz v4, :cond_132

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_132
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090784

    if-eqz v1, :cond_15a

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_15d

    .line 91
    :cond_15a
    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_15d
    :goto_15d
    return-void

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_e6
        :pswitch_cf
        :pswitch_b8
        :pswitch_a1
        :pswitch_89
        :pswitch_71
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .registers 3

    .line 22
    check-cast p2, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V

    return-void
.end method

.method public setFuture(Z)V
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskCustomAdapter;->isFuture:Z

    return-void
.end method
