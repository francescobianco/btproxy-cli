.class Lcom/keephealth/android/views/WeekDayCheck$1;
.super Ljava/lang/Object;
.source "WeekDayCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/WeekDayCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/WeekDayCheck;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/WeekDayCheck;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/keephealth/android/views/ValueStateTextView;

    .line 111
    invoke-virtual {v0}, Lcom/keephealth/android/views/ValueStateTextView;->isOpen()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 112
    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/keephealth/android/views/ValueStateTextView;->isOpen()Z

    move-result v0

    aput-boolean v0, v1, p1

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$100(Lcom/keephealth/android/views/WeekDayCheck;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/ValueStateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    invoke-virtual {v1}, Lcom/keephealth/android/views/WeekDayCheck;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100131

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz p1, :cond_e5

    .line 114
    const-string p1, "\u95f9\u949f\u4fe1\u606f:\u8d77\u59cb\u661f\u671f\u5929"

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    new-array v1, v1, [Z

    # setter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1, v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$202(Lcom/keephealth/android/views/WeekDayCheck;[Z)[Z

    .line 116
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v2

    aput-boolean v1, p1, v0

    .line 117
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v7

    aput-boolean v1, p1, v2

    .line 118
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    aput-boolean v1, p1, v7

    .line 119
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v5

    aput-boolean v1, p1, v6

    .line 120
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    aput-boolean v1, p1, v5

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    aput-boolean v1, p1, v4

    .line 122
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v0, v1, v0

    aput-boolean v0, p1, v3

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->onChange:Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$300(Lcom/keephealth/android/views/WeekDayCheck;)Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;

    move-result-object p1

    if-eqz p1, :cond_2b5

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->onChange:Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$300(Lcom/keephealth/android/views/WeekDayCheck;)Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;->onChange([Z)V

    goto/16 :goto_2b5

    .line 126
    :cond_e5
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$100(Lcom/keephealth/android/views/WeekDayCheck;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/ValueStateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v8, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    invoke-virtual {v8}, Lcom/keephealth/android/views/WeekDayCheck;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100130

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29e

    .line 127
    const-string p1, "\u95f9\u949f\u4fe1\u606f:\u8d77\u59cb\u661f\u671f\u516d"

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    new-array v1, v1, [Z

    # setter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1, v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$202(Lcom/keephealth/android/views/WeekDayCheck;[Z)[Z

    .line 129
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v7

    aput-boolean v1, p1, v0

    .line 130
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    aput-boolean v1, p1, v2

    .line 131
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v5

    aput-boolean v1, p1, v7

    .line 132
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    aput-boolean v1, p1, v6

    .line 133
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    aput-boolean v1, p1, v5

    .line 134
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    aput-boolean v1, p1, v4

    .line 135
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v2

    aput-boolean v1, p1, v3

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u95f9\u949f\u4fe1\u606f1:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {v1}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "   "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v8, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {v8}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v8

    aget-boolean v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v8, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {v8}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v8

    aget-boolean v8, v8, v7

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v8, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {v8}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v8

    aget-boolean v8, v8, v6

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v8, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {v8}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v8

    aget-boolean v8, v8, v5

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v8, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {v8}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v8

    aget-boolean v8, v8, v4

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v8, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {v8}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v8, "\u95f9\u949f\u4fe1\u606f2:"

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v8}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v8

    aget-boolean v0, v8, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v0

    aget-boolean v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v0

    aget-boolean v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v0

    aget-boolean v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->onChange:Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$300(Lcom/keephealth/android/views/WeekDayCheck;)Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;

    move-result-object p1

    if-eqz p1, :cond_2b5

    .line 140
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->onChange:Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$300(Lcom/keephealth/android/views/WeekDayCheck;)Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheck;->access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;->onChange([Z)V

    goto :goto_2b5

    .line 144
    :cond_29e
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->onChange:Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$300(Lcom/keephealth/android/views/WeekDayCheck;)Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;

    move-result-object p1

    if-eqz p1, :cond_2b5

    .line 145
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->onChange:Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;
    invoke-static {p1}, Lcom/keephealth/android/views/WeekDayCheck;->access$300(Lcom/keephealth/android/views/WeekDayCheck;)Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck$1;->this$0:Lcom/keephealth/android/views/WeekDayCheck;

    # getter for: Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z
    invoke-static {v0}, Lcom/keephealth/android/views/WeekDayCheck;->access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;->onChange([Z)V

    :cond_2b5
    :goto_2b5
    return-void
.end method
