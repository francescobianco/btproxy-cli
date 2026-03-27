.class final Lfreemarker/debug/impl/RmiDebuggerService$TemplateReference;
.super Ljava/lang/ref/WeakReference;
.source "RmiDebuggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/RmiDebuggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TemplateReference"
.end annotation


# instance fields
.field final templateName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4

    .line 361
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 362
    iput-object p1, p0, Lfreemarker/debug/impl/RmiDebuggerService$TemplateReference;->templateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getTemplate()Lfreemarker/template/Template;
    .registers 2

    .line 366
    invoke-virtual {p0}, Lfreemarker/debug/impl/RmiDebuggerService$TemplateReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/Template;

    return-object v0
.end method
