.class public Lcom/keephealth/android/views/InnerGuideView$BorderType;
.super Ljava/lang/Object;
.source "InnerGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/InnerGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BorderType"
.end annotation


# static fields
.field public static final RECT:I = 0x0

.field public static final ROUNDRECT:I = 0x2

.field public static final oval:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/InnerGuideView;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/InnerGuideView;)V
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView$BorderType;->this$0:Lcom/keephealth/android/views/InnerGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
