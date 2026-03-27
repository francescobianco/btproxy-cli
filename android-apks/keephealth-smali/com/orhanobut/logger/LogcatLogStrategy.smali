.class public Lcom/orhanobut/logger/LogcatLogStrategy;
.super Ljava/lang/Object;
.source "LogcatLogStrategy.java"

# interfaces
.implements Lcom/orhanobut/logger/LogStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 8
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
