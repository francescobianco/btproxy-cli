.class public Lcom/orhanobut/logger/AndroidLogAdapter;
.super Ljava/lang/Object;
.source "AndroidLogAdapter.java"

# interfaces
.implements Lcom/orhanobut/logger/LogAdapter;


# instance fields
.field private final formatStrategy:Lcom/orhanobut/logger/FormatStrategy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lcom/orhanobut/logger/PrettyFormatStrategy;->newBuilder()Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->build()Lcom/orhanobut/logger/PrettyFormatStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/orhanobut/logger/AndroidLogAdapter;->formatStrategy:Lcom/orhanobut/logger/FormatStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/orhanobut/logger/FormatStrategy;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/orhanobut/logger/AndroidLogAdapter;->formatStrategy:Lcom/orhanobut/logger/FormatStrategy;

    return-void
.end method


# virtual methods
.method public isLoggable(ILjava/lang/String;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 20
    iget-object v0, p0, Lcom/orhanobut/logger/AndroidLogAdapter;->formatStrategy:Lcom/orhanobut/logger/FormatStrategy;

    invoke-interface {v0, p1, p2, p3}, Lcom/orhanobut/logger/FormatStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
