.class public Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private final d:Lcom/samsung/android/app/music/list/common/GridItemDecorator;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;)V
    .locals 2

    .line 32
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a(Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 33
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a(Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->a:Landroid/app/Activity;

    .line 34
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->b(Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;)Lcom/samsung/android/app/music/list/common/GridItemDecorator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->d:Lcom/samsung/android/app/music/list/common/GridItemDecorator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;-><init>(Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;
    .locals 1

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->a:Landroid/app/Activity;

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->d:Lcom/samsung/android/app/music/list/common/GridItemDecorator;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/common/GridItemDecorator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    const-string p1, "AutoColumnGridLayoutManager"

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow. decoration - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    const-string p1, "AutoColumnGridLayoutManager"

    const-string p2, "onDetachedFromWindow"

    .line 58
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
