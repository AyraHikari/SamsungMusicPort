.class public abstract Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 26
    new-instance v0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 27
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 28
    new-instance v0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Luk/co/senab/photoview/scrollerproxy/IcsScroller;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/scrollerproxy/IcsScroller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(IIIIIIIIII)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method
