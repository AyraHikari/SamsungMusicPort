.class public abstract Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

.field private d:Landroid/support/v7/widget/RecyclerView$ItemDecoration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->a:Z

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->b:Z

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper$1;-><init>(Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper$2;-><init>(Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->d:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->b:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->d:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 65
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 66
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEventListener(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;)V

    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/support/v7/widget/RecyclerView;I)V
.end method

.method protected abstract a(Landroid/view/View;I)V
.end method

.method protected a()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->d:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 74
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEventListener(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;)V

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->b:Z

    return v0
.end method

.method protected c()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->a:Z

    return v0
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .line 49
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    const-string p1, "AbsItemAnimationHelper"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged. state changed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 51
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->a:Z

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->a()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->a(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method
