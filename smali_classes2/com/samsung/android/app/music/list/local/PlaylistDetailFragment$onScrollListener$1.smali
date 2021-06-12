.class public final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 198
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    const/16 p2, 0x3e8

    .line 199
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)I

    move-result p3

    const/4 v0, 0x1

    if-le v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-lt p2, p3, :cond_b

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->e(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    goto/16 :goto_3

    .line 200
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 202
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getHeaderViewCount()I

    move-result p3

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_6

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(Z)V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->F()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->g(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 205
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g()V

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    .line 208
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(Z)V

    .line 209
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->F()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->g(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    .line 210
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f()V

    :goto_1
    return-void

    :cond_a
    :goto_2
    return-void

    :cond_b
    :goto_3
    return-void

    .line 198
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.widget.MusicLinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
