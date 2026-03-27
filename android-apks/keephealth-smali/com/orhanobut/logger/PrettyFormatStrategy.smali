.class public Lcom/orhanobut/logger/PrettyFormatStrategy;
.super Ljava/lang/Object;
.source "PrettyFormatStrategy.java"

# interfaces
.implements Lcom/orhanobut/logger/FormatStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    }
.end annotation


# static fields
.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final BOTTOM_LEFT_CORNER:C = '\u2514'

.field private static final CHUNK_SIZE:I = 0xfa0

.field private static final DOUBLE_DIVIDER:Ljava/lang/String; = "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final HORIZONTAL_LINE:C = '\u2502'

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final MIDDLE_CORNER:C = '\u251c'

.field private static final MIN_STACK_OFFSET:I = 0x5

.field private static final SINGLE_DIVIDER:Ljava/lang/String; = "\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final TOP_BORDER:Ljava/lang/String; = "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final TOP_LEFT_CORNER:C = '\u250c'


# instance fields
.field private final logStrategy:Lcom/orhanobut/logger/LogStrategy;

.field private final methodCount:I

.field private final methodOffset:I

.field private final showThreadInfo:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodCount:I

    iput v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodCount:I

    .line 38
    iget v0, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodOffset:I

    iput v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodOffset:I

    .line 39
    iget-boolean v0, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->showThreadInfo:Z

    iput-boolean v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->showThreadInfo:Z

    .line 40
    iget-object v0, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    iput-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    .line 41
    iget-object p1, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->tag:Ljava/lang/String;

    iput-object p1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;Lcom/orhanobut/logger/PrettyFormatStrategy$1;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/orhanobut/logger/PrettyFormatStrategy;-><init>(Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;)V

    return-void
.end method

.method private formatTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 161
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/orhanobut/logger/Utils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_28
    iget-object p1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    return-object p1
.end method

.method private getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 139
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStackOffset([Ljava/lang/StackTraceElement;)I
    .registers 6

    const/4 v0, 0x5

    .line 150
    :goto_1
    array-length v1, p1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_28

    .line 151
    aget-object v1, p1, v0

    .line 152
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-class v3, Lcom/orhanobut/logger/LoggerPrinter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-class v3, Lcom/orhanobut/logger/Logger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    add-int/2addr v0, v2

    return v0

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return v2
.end method

.method private logBottomBorder(ILjava/lang/String;)V
    .registers 4

    .line 120
    const-string v0, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logChunk(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    invoke-interface {v0, p1, p2, p3}, Lcom/orhanobut/logger/LogStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logContent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 128
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 129
    array-length v0, p3

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_25

    aget-object v2, p3, v1

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u2502 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_25
    return-void
.end method

.method private logDivider(ILjava/lang/String;)V
    .registers 4

    .line 124
    const-string v0, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logHeaderContent(ILjava/lang/String;I)V
    .registers 11

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 83
    iget-boolean v1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->showThreadInfo:Z

    if-eqz v1, :cond_29

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u2502 Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logDivider(ILjava/lang/String;)V

    .line 89
    :cond_29
    invoke-direct {p0, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->getStackOffset([Ljava/lang/StackTraceElement;)I

    move-result v1

    iget v2, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodOffset:I

    add-int/2addr v1, v2

    add-int v2, p3, v1

    .line 92
    array-length v3, v0

    if-le v2, v3, :cond_39

    .line 93
    array-length p3, v0

    sub-int/2addr p3, v1

    add-int/lit8 p3, p3, -0x1

    .line 96
    :cond_39
    const-string v2, ""

    :goto_3b
    if-lez p3, :cond_ae

    add-int v3, p3, v1

    .line 98
    array-length v4, v0

    if-lt v3, v4, :cond_43

    goto :goto_ab

    .line 101
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u2502 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    .line 105
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/orhanobut/logger/PrettyFormatStrategy;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    .line 107
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ("

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 109
    aget-object v6, v0, v3

    .line 110
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v0, v3

    .line 112
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    .line 113
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    :goto_ab
    add-int/lit8 p3, p3, -0x1

    goto :goto_3b

    :cond_ae
    return-void
.end method

.method private logTopBorder(ILjava/lang/String;)V
    .registers 4

    .line 77
    const-string v0, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newBuilder()Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    .registers 2

    .line 45
    new-instance v0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;-><init>(Lcom/orhanobut/logger/PrettyFormatStrategy$1;)V

    return-object v0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 49
    invoke-direct {p0, p2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logTopBorder(ILjava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodCount:I

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logHeaderContent(ILjava/lang/String;I)V

    .line 55
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 56
    array-length v1, v0

    const/16 v2, 0xfa0

    if-gt v1, v2, :cond_23

    .line 58
    iget v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodCount:I

    if-lez v0, :cond_1c

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logDivider(ILjava/lang/String;)V

    .line 61
    :cond_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logBottomBorder(ILjava/lang/String;)V

    return-void

    .line 65
    :cond_23
    iget p3, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodCount:I

    if-lez p3, :cond_2a

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logDivider(ILjava/lang/String;)V

    :cond_2a
    const/4 p3, 0x0

    :goto_2b
    if-ge p3, v1, :cond_3e

    sub-int v3, v1, p3

    .line 69
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 71
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, p3, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, p1, p2, v4}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit16 p3, p3, 0xfa0

    goto :goto_2b

    .line 73
    :cond_3e
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logBottomBorder(ILjava/lang/String;)V

    return-void
.end method
