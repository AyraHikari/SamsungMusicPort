.class public Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;
.super Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;-><init>()V

    .line 26
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;->a:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public a(IIIIIIIIII)V
    .locals 10

    move-object v0, p0

    .line 37
    iget-object v1, v0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;->a:Landroid/widget/Scroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;->a:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 31
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 46
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 51
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 56
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method
