.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private final mFocusedViewBinders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<",
            "TVH;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<",
            "TVH;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;->mFocusedViewBinders:Ljava/util/Set;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;->mFocusedViewBinders:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
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

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;->mFocusedViewBinders:Ljava/util/Set;

    return-object v0
.end method

.method public onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;->mFocusedViewBinders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    .line 27
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;->onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;",
            "TVH;I)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;->mFocusedViewBinders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    .line 46
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;->mFocusedViewBinders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    .line 34
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;->onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFocusChanged(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;->mFocusedViewBinders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    .line 53
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;->onFocusChanged(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
