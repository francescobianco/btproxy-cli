.class final Lfreemarker/ext/util/ModelCache$ModelReference;
.super Ljava/lang/ref/SoftReference;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/util/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModelReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Lfreemarker/template/TemplateModel;",
        ">;"
    }
.end annotation


# instance fields
.field object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateModel;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lfreemarker/template/TemplateModel;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 135
    iput-object p2, p0, Lfreemarker/ext/util/ModelCache$ModelReference;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getModel()Lfreemarker/template/TemplateModel;
    .registers 2

    .line 139
    invoke-virtual {p0}, Lfreemarker/ext/util/ModelCache$ModelReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    return-object v0
.end method
