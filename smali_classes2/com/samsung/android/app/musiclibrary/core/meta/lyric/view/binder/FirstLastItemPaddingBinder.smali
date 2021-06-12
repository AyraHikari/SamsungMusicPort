.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapterView:Landroid/support/v7/widget/RecyclerView;

.field private mFirstItemPosition:I

.field private final mOriginTopBottomPadding:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LyricsUx-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mOriginTopBottomPadding:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mFirstItemPosition:I

    return-void
.end method

.method private applyDynamicPaddingInternal(ILandroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V
    .locals 4

    if-eqz p2, :cond_4

    .line 58
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mOriginTopBottomPadding:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mOriginTopBottomPadding:Landroid/util/SparseArray;

    invoke-virtual {v1, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getPaddingStart()I

    move-result p4

    .line 68
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    invoke-virtual {p3}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 70
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mFirstItemPosition:I

    if-ne p1, v3, :cond_2

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->calculateFirstItemTopPaddingInternal(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 75
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->calculateLastItemBottomPaddingInternal(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 77
    :cond_3
    :goto_0
    invoke-virtual {p3, p4, v1, v2, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private calculateFirstItemTopPaddingInternal(Landroid/view/View;Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int p2, v1, v2

    .line 84
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculate first item padding top, parent height : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item view height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calculated padding top : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private calculateLastItemBottomPaddingInternal(Landroid/view/View;Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr v1, p2

    sub-int p2, v0, v1

    .line 98
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculate last item padding bottom, parent height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", item view height : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", calculated padding bottom : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method


# virtual methods
.method public getChild()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 0

    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 52
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->getItemViewType()I

    move-result p2

    .line 51
    invoke-direct {p0, p3, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->applyDynamicPaddingInternal(ILandroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
