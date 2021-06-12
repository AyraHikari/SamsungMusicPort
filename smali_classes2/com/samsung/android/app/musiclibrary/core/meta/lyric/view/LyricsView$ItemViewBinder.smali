.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemViewBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewBinder<",
        "TVH;>;"
    }
.end annotation


# virtual methods
.method public abstract getChild()Ljava/util/Set;
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
.end method

.method public abstract onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
.end method

.method public abstract onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
.end method
