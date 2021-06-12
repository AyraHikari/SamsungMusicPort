.class public Luk/co/senab/photoview/scrollerproxy/IcsScroller;
.super Luk/co/senab/photoview/scrollerproxy/GingerScroller;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Luk/co/senab/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 30
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/IcsScroller;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method
