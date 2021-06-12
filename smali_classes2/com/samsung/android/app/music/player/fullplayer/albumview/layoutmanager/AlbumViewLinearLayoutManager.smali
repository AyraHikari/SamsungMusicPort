.class public Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
.implements Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

.field private c:Landroid/support/v7/widget/OrientationHelper;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

.field private final m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

.field private final n:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;

.field private o:I

.field private final p:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

.field private final q:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

.field private final r:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

.field private final s:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

.field private t:I

.field private u:Landroid/animation/ValueAnimator;

.field private v:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

.field private w:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 210
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x1

    .line 60
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    const/high16 v0, -0x80000000

    .line 78
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    .line 84
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->n:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;

    const/4 v0, 0x2

    .line 88
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->o:I

    .line 93
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->p:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    .line 132
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->p:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->q:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    .line 135
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->r:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->r:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->s:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    .line 177
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->t:I

    .line 185
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;->DONE:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->v:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    .line 211
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(I)V

    .line 212
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 216
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    const/high16 v1, -0x80000000

    .line 78
    iput v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    .line 84
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    .line 86
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;

    invoke-direct {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->n:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;

    const/4 v1, 0x2

    .line 88
    iput v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->o:I

    .line 93
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->p:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    .line 132
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->p:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->q:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    .line 135
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->r:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    .line 174
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->r:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->s:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    .line 177
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->t:I

    .line 185
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;->DONE:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->v:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    .line 217
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 218
    iget p2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(I)V

    .line 219
    iget-boolean p2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c(Z)V

    .line 220
    iget-boolean p1, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(Z)V

    return-void
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 858
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 861
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    .line 863
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 8

    .line 1253
    iget v0, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    .line 1254
    iget v1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1255
    iget v1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    if-gez v1, :cond_0

    .line 1256
    iget v1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    iget v3, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    .line 1259
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;)V

    .line 1262
    :cond_1
    iget v1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    iget v3, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    add-int/2addr v1, v3

    .line 1263
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->n:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;

    const/4 v4, 0x0

    .line 1266
    :goto_0
    iget-boolean v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->l:Z

    if-nez v5, :cond_2

    if-lez v1, :cond_9

    .line 1267
    :cond_2
    invoke-virtual {p2, p3, v3, v4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1268
    invoke-virtual {v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a()V

    .line 1269
    invoke-direct {p0, p1, p3, p2, v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;)V

    .line 1270
    iget-boolean v5, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->b:Z

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1274
    :cond_3
    iget v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    iget v6, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    iget v7, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    iput v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 1275
    iget-boolean v5, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->c:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-object v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    if-nez v5, :cond_4

    .line 1276
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1277
    :cond_4
    iget v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    iget v6, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    sub-int/2addr v5, v6

    iput v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    .line 1278
    iget v5, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    sub-int/2addr v1, v5

    .line 1281
    :cond_5
    iget v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    if-eq v5, v2, :cond_7

    .line 1282
    iget v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    iget v6, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    add-int/2addr v5, v6

    iput v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    .line 1283
    iget v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    if-gez v5, :cond_6

    .line 1284
    iget v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    iget v6, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    add-int/2addr v5, v6

    iput v5, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    .line 1286
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;)V

    :cond_7
    if-eqz p4, :cond_8

    .line 1288
    iget-boolean v5, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->d:Z

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1297
    :cond_9
    :goto_1
    iget p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->t:I

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->t:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->u:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private a(IIZZ)Landroid/view/View;
    .locals 1

    .line 1545
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    const/16 p3, 0x140

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1561
    :goto_1
    iget p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->q:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    .line 1562
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->s:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    .line 1564
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a(IIII)Landroid/view/View;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1453
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1454
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->d(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2

    .line 1438
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1441
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;)Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->v:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    return-object p1
.end method

.method private a(FFLcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;)V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->u:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->u:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    .line 624
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->u:Landroid/animation/ValueAnimator;

    .line 625
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->u:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$3;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 639
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->u:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$4;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 663
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->u:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x32

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 664
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;->IN_ANIMATION:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->v:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    .line 665
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(IILandroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .line 899
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    .line 900
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    .line 903
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 904
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v2, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    .line 905
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput p2, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 906
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    const/high16 p2, -0x80000000

    iput p2, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    return-void
.end method

.method private a(IIZLandroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->l:Z

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1043
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v2, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 1045
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m()Landroid/view/View;

    move-result-object p1

    .line 1047
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    .line 1050
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 1051
    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 1053
    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1054
    invoke-virtual {p4}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    .line 1056
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l()Landroid/view/View;

    move-result-object p1

    .line 1057
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v3, v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 1058
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput v0, v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    .line 1060
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    .line 1061
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 1062
    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 1063
    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1064
    invoke-virtual {p4}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    .line 1067
    :goto_1
    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput p2, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    if-eqz p3, :cond_3

    .line 1069
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget p3, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    sub-int/2addr p3, p1

    iput p3, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    .line 1072
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5

    if-ltz p2, :cond_5

    .line 1188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1191
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    .line 1193
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1194
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1195
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1196
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 1202
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1203
    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_4

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1204
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1205
    :cond_4
    :goto_3
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_5
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 0

    if-eq p2, p3, :cond_1

    if-le p3, p2, :cond_0

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 1175
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le p2, p3, :cond_1

    .line 1179
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_7

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v3

    .line 684
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 685
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v4, :cond_4

    .line 688
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 689
    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v11, :cond_3

    .line 690
    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 691
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v11, :cond_3

    .line 692
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 693
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v6, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    .line 694
    :goto_1
    iget-boolean v13, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    const/4 v14, -0x1

    if-eq v11, v13, :cond_1

    const/4 v12, -0x1

    :cond_1
    if-ne v12, v14, :cond_2

    .line 697
    iget-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 698
    invoke-virtual {v11, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    .line 700
    :cond_2
    iget-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 701
    invoke-virtual {v11, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 707
    :cond_4
    iget-object v4, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput-object v3, v4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    if-lez v8, :cond_5

    .line 710
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l()Landroid/view/View;

    move-result-object v3

    .line 711
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {p0, v3, v4, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(IILandroid/support/v7/widget/RecyclerView$State;)V

    .line 712
    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v8, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 713
    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v5, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    .line 714
    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 715
    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-direct {p0, v1, v3, v2, v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    :cond_5
    if-lez v9, :cond_6

    .line 719
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m()Landroid/view/View;

    move-result-object v3

    .line 720
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {p0, v3, v4, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IILandroid/support/v7/widget/RecyclerView$State;)V

    .line 721
    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v9, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 722
    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v5, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    .line 723
    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 724
    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-direct {p0, v1, v3, v2, v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 727
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    :cond_7
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 732
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 734
    invoke-virtual {p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b()V

    .line 735
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b:I

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;)V
    .locals 7

    .line 1302
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1304
    iput-boolean p2, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->b:Z

    goto/16 :goto_7

    .line 1306
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1307
    iget-object v0, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    .line 1308
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    iget v3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    if-ne v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1311
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1313
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1315
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    iget v3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    if-ne v3, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1317
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1319
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1322
    :goto_2
    invoke-virtual {p0, p1, v1, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1325
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->t:I

    if-ne v0, v2, :cond_6

    .line 1326
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    .line 1338
    :cond_6
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-ne v0, p2, :cond_9

    .line 1339
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1340
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1341
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_3

    .line 1343
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPaddingLeft()I

    move-result v1

    .line 1344
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1347
    :goto_3
    iget v3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    if-ne v3, v2, :cond_8

    .line 1348
    iget v3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 1349
    iget p3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    iget v4, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    sub-int/2addr p3, v4

    move v4, v0

    move v5, v3

    move v3, p3

    :goto_4
    move p3, v1

    goto :goto_6

    .line 1351
    :cond_8
    iget v3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 1352
    iget p3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    iget v4, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    add-int/2addr p3, v4

    move v5, p3

    move v4, v0

    goto :goto_4

    .line 1355
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPaddingTop()I

    move-result v0

    .line 1356
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1357
    iget v3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    if-ne v3, v2, :cond_a

    .line 1358
    iget v3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 1359
    iget p3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    iget v4, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    sub-int/2addr p3, v4

    move v5, v1

    move v4, v3

    :goto_5
    move v3, v0

    goto :goto_6

    .line 1361
    :cond_a
    iget v3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 1362
    iget p3, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    iget v4, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    add-int/2addr p3, v4

    move v4, p3

    move v5, v1

    move p3, v3

    goto :goto_5

    .line 1367
    :goto_6
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->t:I

    if-eq v0, v2, :cond_b

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    .line 1371
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1372
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 1373
    :cond_c
    iput-boolean p2, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->c:Z

    .line 1376
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->d:Z

    :goto_7
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;)V
    .locals 2

    .line 1242
    iget-boolean v0, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->l:Z

    if-nez v0, :cond_1

    .line 1243
    iget v0, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1244
    iget p2, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1246
    :cond_0
    iget p2, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 895
    iget v0, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b:I

    iget p1, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IILandroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 778
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    .line 779
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_c

    .line 780
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b:I

    .line 781
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 782
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->c:Z

    iput-boolean p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    .line 783
    iget-boolean p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    if-eqz p1, :cond_0

    .line 784
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    iget v1, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->b:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    goto :goto_0

    .line 787
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    iget v1, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->b:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    :goto_0
    return v0

    .line 792
    :cond_1
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    if-ne p1, v3, :cond_a

    .line 793
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 796
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 797
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 798
    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b()V

    return v0

    .line 802
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 803
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 805
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    .line 806
    iput-boolean v1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    return v0

    .line 810
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 811
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_4

    .line 813
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    .line 814
    iput-boolean v0, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    return v0

    .line 818
    :cond_4
    iget-boolean v1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 819
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 820
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 821
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    goto :goto_3

    .line 823
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9

    .line 824
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 825
    iget v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    if-ge v2, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-ne p1, v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    .line 829
    :cond_9
    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b()V

    :goto_3
    return v0

    .line 833
    :cond_a
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    iput-boolean p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    .line 834
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz p1, :cond_b

    .line 835
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    goto :goto_4

    .line 838
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    :goto_4
    return v0

    .line 845
    :cond_c
    iput v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    .line 846
    iput v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    return v1

    :cond_d
    return v1
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 878
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 881
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    .line 883
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    return p2

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 7

    .line 991
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 994
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    .line 995
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 996
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    xor-int/2addr v0, v2

    .line 997
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    iget-boolean v6, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 995
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ScrollbarHelper;->a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result p1

    return p1
.end method

.method private b(II)Landroid/view/View;
    .locals 3

    .line 1569
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 1572
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1576
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1577
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    .line 1590
    :goto_1
    iget v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->q:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    .line 1591
    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->s:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;

    .line 1593
    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a(IIII)Landroid/view/View;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1458
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->d(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1459
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2

    .line 1446
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1447
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1448
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private b(IILandroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .line 914
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    .line 915
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    .line 917
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 918
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v2, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    .line 919
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput p2, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 920
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    const/high16 p2, -0x80000000

    iput p2, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 1214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    if-ltz p2, :cond_5

    .line 1216
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1219
    iget-boolean p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1221
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1222
    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1223
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1224
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_5

    .line 1230
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1231
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1232
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1233
    :cond_4
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_5
    return-void
.end method

.method private b(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 910
    iget v0, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b:I

    iget p1, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(IILandroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 742
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a(Landroid/view/View;I)V

    return v2

    .line 749
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->d:Z

    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g:Z

    if-eq v0, v3, :cond_2

    return v1

    .line 752
    :cond_2
    iget-boolean v0, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    if-eqz v0, :cond_3

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 754
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    return v1

    .line 758
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b(Landroid/view/View;I)V

    .line 759
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 760
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 761
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    if-ge p2, v0, :cond_5

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 762
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 763
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p2

    if-ge p1, p2, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_8

    .line 765
    iget-boolean p1, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 766
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 767
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    :goto_1
    iput p1, p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    :cond_8
    return v2
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .line 1003
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1006
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    .line 1007
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1008
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    xor-int/2addr v0, v2

    .line 1009
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1007
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ScrollbarHelper;->a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .line 1463
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .line 1015
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1018
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    .line 1019
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1020
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    xor-int/2addr v0, v2

    .line 1021
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1019
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ScrollbarHelper;->b(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private d(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 7

    .line 1467
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1504
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    .line 1505
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1506
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1511
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1512
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private f()V
    .locals 2

    .line 361
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->e:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    goto :goto_0

    .line 364
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->e:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    :goto_0
    return-void
.end method

.method private g(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 1516
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private g()Z
    .locals 4

    .line 579
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$5;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->v:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    return v3

    .line 584
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;->DONE:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(FFLcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;)V

    return v3

    .line 581
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;->WAIT_SCROLL_COMPLETE:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(FFLcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 1520
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private h()V
    .locals 2

    .line 599
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$5;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->v:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;->START_FADE_IN:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->v:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    :goto_0
    return-void
.end method

.method private i()Z
    .locals 2

    .line 924
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private j()V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->k()Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    :cond_0
    return-void
.end method

.method private k()Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;
    .locals 1

    .line 934
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method private l()Landroid/view/View;
    .locals 1

    .line 1429
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private m()Landroid/view/View;
    .locals 1

    .line 1433
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 192
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$5;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->v:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$CrossFadeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .line 1136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1137
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a:Z

    .line 1138
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1141
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1144
    invoke-direct {p0, v0, v3, v2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1145
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    .line 1146
    invoke-direct {p0, p2, v4, p3, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v2, p2

    if-gez v2, :cond_1

    return v1

    :cond_1
    if-le v3, v2, :cond_2

    mul-int p1, v0, v2

    .line 1151
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1152
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->j:I

    return p1

    :cond_3
    return v1
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 399
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 5

    .line 1471
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    .line 1474
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 1475
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_4

    .line 1479
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1480
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    if-ge v4, p5, :cond_3

    .line 1482
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    .line 1487
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1488
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_2

    return-object v3

    :cond_2
    if-nez v1, :cond_3

    move-object v1, v3

    :cond_3
    :goto_2
    add-int/2addr p3, v0

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    return-object v1
.end method

.method public a(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 351
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    if-nez v0, :cond_3

    .line 352
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    iput-object v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    .line 354
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->requestLayout()V

    :cond_3
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 947
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    .line 948
    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    .line 949
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 950
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->b()V

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->requestLayout()V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    .line 1082
    iget v0, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    if-ltz v0, :cond_0

    .line 1083
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1084
    iget p2, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->w:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput-boolean p1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->m:Z

    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1166
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1116
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->o:I

    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 332
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g:Z

    if-eq v0, p1, :cond_0

    .line 333
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g:Z

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->m:Z

    return v0
.end method

.method c(I)I
    .locals 4

    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_a

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    return v2

    .line 1402
    :pswitch_0
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-ne p1, v3, :cond_0

    return v3

    .line 1405
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v3

    .line 1392
    :pswitch_1
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-ne p1, v3, :cond_2

    return v1

    .line 1395
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v1

    .line 1421
    :cond_4
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-ne p1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    .line 1418
    :cond_6
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-nez p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    .line 1415
    :cond_8
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-ne p1, v3, :cond_9

    goto :goto_0

    :cond_9
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    .line 1412
    :cond_a
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    const/high16 v1, -0x80000000

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 374
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->e:Z

    if-eq p1, v0, :cond_0

    .line 375
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->e:Z

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1077
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollHorizontally()Z
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->w:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 318
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 320
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->w:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public canScrollVertically()Z
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->w:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 325
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 327
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->w:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    .line 1125
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 1126
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1127
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    const/4 p2, 0x1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 1129
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1130
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1131
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, p1, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    :cond_2
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .line 1092
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->c:Z

    .line 1094
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    iget v3, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 1096
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f()V

    .line 1097
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    .line 1098
    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1101
    :cond_2
    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x0

    .line 1109
    :goto_2
    iget v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->o:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 1110
    invoke-interface {p2, v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 975
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 967
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 983
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->d(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    .line 414
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    .line 415
    :cond_2
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object p1
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 979
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 971
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 987
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->d(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 3

    .line 1524
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1525
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 4

    .line 1534
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1535
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 2

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 385
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 388
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 389
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    .line 394
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 253
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 265
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 266
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->k:Z

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 268
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 3

    .line 1599
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f()V

    .line 1600
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1603
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    .line 1607
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    const v1, 0x3eaaaaab

    .line 1608
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1609
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 1610
    invoke-direct {p0, p1, v1, v2, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1611
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput p2, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->g:I

    .line 1612
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput-boolean v2, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a:Z

    .line 1613
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    const/4 v1, 0x1

    invoke-direct {p0, p3, p2, p4, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 1617
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 1620
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->e(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_3

    .line 1625
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 1627
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m()Landroid/view/View;

    move-result-object p1

    .line 1630
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    move-object p1, v0

    :cond_4
    return-object p1

    :cond_5
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 273
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g()Z

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    if-eq v0, v1, :cond_1

    .line 430
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 431
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto/16 :goto_7

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    iget v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->a:I

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    .line 437
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a:Z

    .line 439
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f()V

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 441
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->e:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    .line 442
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 443
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 444
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 445
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-gt v3, v5, :cond_5

    .line 446
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 449
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a()V

    .line 450
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    iget-boolean v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    iput-boolean v4, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->e:Z

    .line 455
    :cond_5
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 458
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->j:I

    if-ltz v3, :cond_6

    move v3, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 466
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v0, v5

    .line 467
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v5

    add-int/2addr v3, v5

    .line 470
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    if-eq v5, v1, :cond_9

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_9

    .line 472
    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 474
    iget-boolean v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v5, :cond_7

    .line 475
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 476
    invoke-virtual {v6, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v5, v1

    .line 477
    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    sub-int/2addr v5, v1

    goto :goto_2

    .line 479
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 480
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v1, v5

    .line 481
    iget v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    sub-int/2addr v5, v1

    :goto_2
    if-lez v5, :cond_8

    add-int/2addr v0, v5

    goto :goto_3

    :cond_8
    sub-int/2addr v3, v5

    .line 492
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 493
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c()Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->l:Z

    .line 494
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->i:Z

    .line 497
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    if-eqz v1, :cond_b

    .line 498
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 499
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v0, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 501
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 502
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    .line 503
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    if-lez v5, :cond_a

    .line 504
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    add-int/2addr v3, v5

    .line 507
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 508
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v3, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 509
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    iget-object v6, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v5, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 511
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-direct {p0, p1, v3, p2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 512
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 513
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    if-lez v5, :cond_d

    .line 514
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    .line 515
    invoke-direct {p0, v1, v0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(IILandroid/support/v7/widget/RecyclerView$State;)V

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v5, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    goto :goto_4

    .line 521
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 522
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v3, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 523
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 524
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v3, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 525
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    .line 526
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    if-lez v5, :cond_c

    .line 527
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    add-int/2addr v0, v5

    .line 530
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 531
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v0, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 532
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    iget-object v6, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v5, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 534
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 536
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    if-lez v5, :cond_d

    .line 537
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->c:I

    .line 538
    invoke-direct {p0, v1, v3, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(IILandroid/support/v7/widget/RecyclerView$State;)V

    .line 539
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iput v5, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 540
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 541
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;

    iget v3, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b:I

    .line 545
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_f

    .line 546
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    iget-boolean v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g:Z

    xor-int/2addr v1, v5

    if-eqz v1, :cond_e

    .line 547
    invoke-direct {p0, v3, p1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 550
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    goto :goto_5

    .line 554
    :cond_e
    invoke-direct {p0, v0, p1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 557
    invoke-direct {p0, v3, p1, p2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 563
    :cond_f
    :goto_5
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 564
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_10

    .line 565
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->onLayoutComplete()V

    goto :goto_6

    .line 567
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a()V

    .line 570
    :goto_6
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->g:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->d:Z

    .line 572
    :goto_7
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->h()V

    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 669
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 670
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 671
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    const/high16 p1, -0x80000000

    .line 672
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    .line 673
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 310
    instance-of v0, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 311
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;)V

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;-><init>()V

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    .line 287
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->d:Z

    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    xor-int/2addr v1, v2

    .line 288
    iput-boolean v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->c:Z

    if-eqz v1, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->m()Landroid/view/View;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 293
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->b:I

    .line 294
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 296
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l()Landroid/view/View;

    move-result-object v1

    .line 297
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->a:I

    .line 298
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 299
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->b()V

    :goto_0
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string p3, "Cannot drop a view during a scroll or layout calculation"

    .line 1701
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1702
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j()V

    .line 1703
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f()V

    .line 1704
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    .line 1705
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    .line 1707
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->f:Z

    if-eqz v2, :cond_2

    if-ne p3, v1, :cond_1

    .line 1709
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1710
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1711
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    .line 1709
    invoke-virtual {p0, p4, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(II)V

    goto :goto_1

    .line 1713
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1714
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 1713
    invoke-virtual {p0, p4, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(II)V

    goto :goto_1

    :cond_2
    if-ne p3, v0, :cond_3

    .line 1717
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p4, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(II)V

    goto :goto_1

    .line 1719
    :cond_3
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->c:Landroid/support/v7/widget/OrientationHelper;

    .line 1720
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    .line 1719
    invoke-virtual {p0, p4, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(II)V

    :goto_1
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .line 959
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 938
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->i:I

    const/high16 p1, -0x80000000

    .line 939
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->j:I

    .line 940
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 941
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->l:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$SavedState;->b()V

    .line 943
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 963
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 403
    new-instance p2, Landroid/support/v7/widget/LinearSmoothScroller;

    .line 404
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 406
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
