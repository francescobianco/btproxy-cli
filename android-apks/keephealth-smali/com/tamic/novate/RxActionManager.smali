.class public interface abstract Lcom/tamic/novate/RxActionManager;
.super Ljava/lang/Object;
.source "RxActionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Ljava/lang/Object;Lrx/Subscription;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/Subscription;",
            ")V"
        }
    .end annotation
.end method

.method public abstract cancel(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract cancelAll()V
.end method

.method public abstract remove(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
