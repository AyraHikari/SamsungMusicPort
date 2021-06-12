.class final Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$state$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->setState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$state$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$state$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->b(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "albumView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    const-wide/16 v4, 0x190

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;IJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$state$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)Landroid/view/View;

    move-result-object v1

    const-string v0, "albumViewStroke"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x190

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;IJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    return-void
.end method
