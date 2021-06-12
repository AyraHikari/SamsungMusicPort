.class final Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$lockGestureDetector$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$lockGestureDetector$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;
    .locals 4

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$lockGestureDetector$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->d(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$lockGestureDetector$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->b(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "albumView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$lockGestureDetector$2;->invoke()Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    move-result-object v0

    return-object v0
.end method
