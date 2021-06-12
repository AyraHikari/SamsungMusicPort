.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewTreeObserver;

.field final synthetic c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/view/View;

    move-result-object v0

    const-string v1, "favoriteView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 176
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/view/View;

    move-result-object v1

    const-string v2, "artistView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->d(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/view/View;

    move-result-object v2

    const-string v3, "titleView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 177
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->e(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->f()I

    move-result v2

    add-int/2addr v2, v1

    .line 178
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v1, v4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->g(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 182
    :try_start_0
    instance-of v4, v1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v4, :cond_3

    .line 183
    new-instance v4, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v4}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 184
    move-object v5, v1

    check-cast v5, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v4, v5}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 186
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->f(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v6, 0x7f130070

    const/4 v7, 0x3

    const v8, 0x7f130292

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v4

    .line 187
    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_1

    :cond_1
    const v6, 0x7f130070

    const/4 v7, 0x3

    const v8, 0x7f130292

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v4

    .line 189
    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 191
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const v6, 0x7f130070

    invoke-virtual {v4, v6, v5}, Landroid/support/constraint/ConstraintSet;->setVerticalBias(IF)V

    const/4 v5, 0x3

    .line 193
    iget-object v7, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v7}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->e(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v8}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->c(Z)I

    move-result v7

    .line 192
    invoke-virtual {v4, v6, v5, v7}, Landroid/support/constraint/ConstraintSet;->setMargin(III)V

    .line 196
    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v4, v1}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_3

    .line 199
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    const-string v4, "Ui"

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Constraints not applied to view : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 215
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "Ui"

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exceptional case with constraints function "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, "SMUSIC-AlbumViewController"

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateAlbumViewVisibilityPortrait: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->f(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", albumRealSpace="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", albumAvailableSpace="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    const-string v1, "vto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_5

    .line 70
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_5
    return v3
.end method
