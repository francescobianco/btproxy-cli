.class public Lcom/keephealth/android/util/log/DiskLogStrategy;
.super Ljava/lang/Object;
.source "DiskLogStrategy.java"

# interfaces
.implements Lcom/orhanobut/logger/LogStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/util/log/DiskLogStrategy;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 33
    iget-object p2, p0, Lcom/keephealth/android/util/log/DiskLogStrategy;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
