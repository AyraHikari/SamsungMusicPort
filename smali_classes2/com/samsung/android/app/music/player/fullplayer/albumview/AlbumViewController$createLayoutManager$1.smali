.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;
.super Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->o()Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Landroid/content/Context;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)V"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    .line 393
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 399
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 400
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->f()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->g()Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    move-object v0, v1

    .line 401
    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Landroid/view/View;)V

    return-void
.end method
