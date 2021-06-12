.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 882
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-AlbumViewController"

    const-string v1, "onSamsungMultiWindowChanged"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->o(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1$onSamsungMultiWindowChanged$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1$onSamsungMultiWindowChanged$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 852
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-AlbumViewController"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->m(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 188
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->o(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    return-void
.end method

.method public b(II)V
    .locals 3

    .line 867
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-AlbumViewController"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewSizeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isMW:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->o(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1$onViewSizeChanged$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1$onViewSizeChanged$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
