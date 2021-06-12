.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$4;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->ensureAnchorView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Landroid/content/Context;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->stopSelf()V

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->setTargetPosition(I)V

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$4;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    :goto_0
    return-void
.end method
