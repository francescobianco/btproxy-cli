.class public abstract Lfreemarker/core/_DelayedConversionToString;
.super Ljava/lang/Object;
.source "_DelayedConversionToString.java"


# static fields
.field private static final NOT_SET:Ljava/lang/String;


# instance fields
.field private object:Ljava/lang/Object;

.field private volatile stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lfreemarker/core/_DelayedConversionToString;->NOT_SET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lfreemarker/core/_DelayedConversionToString;->NOT_SET:Ljava/lang/String;

    iput-object v0, p0, Lfreemarker/core/_DelayedConversionToString;->stringValue:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lfreemarker/core/_DelayedConversionToString;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract doConversion(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 36
    iget-object v0, p0, Lfreemarker/core/_DelayedConversionToString;->stringValue:Ljava/lang/String;

    .line 37
    sget-object v1, Lfreemarker/core/_DelayedConversionToString;->NOT_SET:Ljava/lang/String;

    if-ne v0, v1, :cond_1b

    .line 38
    monitor-enter p0

    .line 39
    :try_start_7
    iget-object v0, p0, Lfreemarker/core/_DelayedConversionToString;->stringValue:Ljava/lang/String;

    if-ne v0, v1, :cond_16

    .line 41
    iget-object v0, p0, Lfreemarker/core/_DelayedConversionToString;->object:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lfreemarker/core/_DelayedConversionToString;->doConversion(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lfreemarker/core/_DelayedConversionToString;->stringValue:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lfreemarker/core/_DelayedConversionToString;->object:Ljava/lang/Object;

    .line 45
    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :goto_1b
    return-object v0
.end method
