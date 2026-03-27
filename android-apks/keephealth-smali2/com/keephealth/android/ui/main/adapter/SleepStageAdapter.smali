.class public Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SleepStageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/keephealth/android/ui/main/bean/SleepStageBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILjava/util/List;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/SleepStageBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 36
    iput-object p3, p0, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSleepRelatively(IIII)Ljava/lang/String;
    .registers 5

    mul-int/lit8 p2, p2, 0x64

    .line 118
    div-int/2addr p2, p1

    if-ge p2, p4, :cond_f

    .line 119
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f10067d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    if-le p2, p3, :cond_1b

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f100690

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :cond_1b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f10045d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/ui/main/bean/SleepStageBean;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getIndex()I

    move-result v2

    const v3, 0x7f0907b4

    const v4, 0x7f0907b3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_19

    .line 47
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 48
    invoke-virtual {v1, v3, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_31

    .line 49
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getIndex()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v6

    if-ne v2, v7, :cond_2b

    .line 50
    invoke-virtual {v1, v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 51
    invoke-virtual {v1, v3, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_31

    .line 53
    :cond_2b
    invoke-virtual {v1, v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 54
    invoke-virtual {v1, v3, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 56
    :goto_31
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getItemCount()I

    move-result v2

    const v7, 0x7f0902a4

    if-ne v2, v6, :cond_43

    .line 57
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 58
    invoke-virtual {v1, v3, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 59
    invoke-virtual {v1, v7, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 61
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "convert: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getIndex()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " -- "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getItemCount()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "\u6570\u636e "

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->isOnlyOne()Z

    move-result v2

    const v8, 0x7f09039f

    const-string v9, "-"

    const-string v10, " ("

    const v11, 0x7f1006e6

    const v12, 0x7f0906cf

    const v13, 0x7f0906cc

    const-string v14, ")"

    const v15, 0x7f100387

    const v7, 0x7f10076d

    const/16 v3, 0x3c

    if-eqz v2, :cond_128

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getIndex()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getEndTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v5

    div-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v9, "%02d"

    invoke-static {v4, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v5

    rem-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02d"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 65
    invoke-virtual {v1, v8, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v12, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto/16 :goto_401

    .line 68
    :cond_128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getIndex()I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getEndTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v4

    div-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v4

    rem-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepDeepDuration()I

    move-result v4

    div-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepDeepDuration()I

    move-result v4

    rem-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepDeepDuration()I

    move-result v9

    const/16 v10, 0x14

    const/16 v11, 0x28

    invoke-direct {v0, v5, v9, v11, v10}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getSleepRelatively(IIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0906c6

    invoke-virtual {v1, v5, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepLightDuration()I

    move-result v5

    div-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepLightDuration()I

    move-result v5

    rem-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepLightDuration()I

    move-result v9

    invoke-direct {v0, v5, v9, v3, v11}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getSleepRelatively(IIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0906c9

    invoke-virtual {v1, v5, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepRemDuration()I

    move-result v5

    div-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepRemDuration()I

    move-result v5

    rem-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepRemDuration()I

    move-result v9

    const/16 v10, 0x1e

    const/16 v11, 0xa

    invoke-direct {v0, v5, v9, v10, v11}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getSleepRelatively(IIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0906cb

    invoke-virtual {v1, v5, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepAwakeDuration()I

    move-result v5

    div-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepAwakeDuration()I

    move-result v5

    rem-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepAwakeDuration()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v11, v5}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getSleepRelatively(IIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0906c4

    invoke-virtual {v1, v3, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 73
    invoke-virtual {v1, v8, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 74
    invoke-virtual {v1, v12, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v2, 0x7f09054a

    .line 75
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/StripeColumnView;

    .line 76
    const-string v3, "#9459FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setColumnColor(I)V

    .line 77
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StripeColumnView;->setRectColor(I)V

    .line 78
    const-string v3, "#623AAA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StripeColumnView;->setStripeColor(I)V

    .line 79
    const-string v3, "#00EEEEEE"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setBackgroundColorCustom(I)V

    const v4, -0x41666666    # -0.3f

    .line 80
    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setStripeStartOffsetPercent(F)V

    const v4, 0x3e4ccccd    # 0.2f

    .line 81
    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setColumnSpacingPercent(F)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepDeepDuration()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v5, v7

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setRectWidthPercent(F)V

    const v2, 0x7f09054b

    .line 83
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/StripeColumnView;

    .line 84
    const-string v5, "#B182E5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setColumnColor(I)V

    .line 85
    const-string v5, "#B182E5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setRectColor(I)V

    .line 86
    const-string v5, "#7349A2"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setStripeColor(I)V

    .line 87
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setBackgroundColorCustom(I)V

    const v5, -0x42333333    # -0.1f

    .line 88
    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setStripeStartOffsetPercent(F)V

    .line 89
    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setColumnSpacingPercent(F)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepLightDuration()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setRectWidthPercent(F)V

    const v2, 0x7f09054c

    .line 91
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/StripeColumnView;

    .line 92
    const-string v5, "#66D4FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setColumnColor(I)V

    .line 93
    const-string v5, "#66D4FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setRectColor(I)V

    .line 94
    const-string v5, "#4496B6"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setStripeColor(I)V

    .line 95
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setBackgroundColorCustom(I)V

    const v5, -0x41333333    # -0.4f

    .line 96
    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/StripeColumnView;->setStripeStartOffsetPercent(F)V

    .line 97
    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setColumnSpacingPercent(F)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepRemDuration()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setRectWidthPercent(F)V

    const v2, 0x7f090549

    .line 99
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/StripeColumnView;

    .line 100
    const-string v4, "#E9CD45"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setColumnColor(I)V

    .line 101
    const-string v4, "#E9CD45"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setRectColor(I)V

    .line 102
    const-string v4, "#A18D2F"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/StripeColumnView;->setStripeColor(I)V

    .line 103
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StripeColumnView;->setBackgroundColorCustom(I)V

    const/high16 v3, -0x41000000    # -0.5f

    .line 104
    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StripeColumnView;->setStripeStartOffsetPercent(F)V

    const v3, 0x3d4ccccd    # 0.05f

    .line 105
    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StripeColumnView;->setColumnSpacingPercent(F)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepAwakeDuration()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StripeColumnView;->setRectWidthPercent(F)V

    .line 108
    :goto_401
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->getItemCount()I

    move-result v2

    if-ne v2, v6, :cond_425

    const v2, 0x7f0907b3

    .line 109
    invoke-virtual {v1, v2, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v2, 0x7f0907b4

    .line 110
    invoke-virtual {v1, v2, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v2, 0x7f0902a4

    .line 111
    invoke-virtual {v1, v2, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 112
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f1006e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_425
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .registers 3

    .line 31
    check-cast p2, Lcom/keephealth/android/ui/main/bean/SleepStageBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/ui/main/bean/SleepStageBean;)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 41
    invoke-super {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    return v0
.end method
