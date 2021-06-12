.class public Luk/co/senab/photoview/scrollerproxy/GingerScroller;
.super Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field protected final a:Landroid/widget/OverScroller;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->b:Z

    .line 29
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->a:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public a(IIIIIIIIII)V
    .locals 12

    move-object v0, p0

    .line 46
    iget-object v1, v0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->a:Landroid/widget/OverScroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 51
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->b:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->b:Z

    .line 40
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 56
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 61
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 66
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method
