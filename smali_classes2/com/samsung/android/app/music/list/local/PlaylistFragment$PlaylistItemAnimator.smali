.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;
.super Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaylistItemAnimator"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;",
            ")V"
        }
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 775
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 778
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    return-void
.end method


# virtual methods
.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, -0x3f1

    if-ne v0, v1, :cond_0

    .line 785
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p3, "holder.itemView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 786
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    .line 789
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method
