.class public interface abstract Lcom/keephealth/android/GuardAidl;
.super Ljava/lang/Object;
.source "GuardAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/GuardAidl$Stub;,
        Lcom/keephealth/android/GuardAidl$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.keephealth.android.GuardAidl"


# virtual methods
.method public abstract wakeUp(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
