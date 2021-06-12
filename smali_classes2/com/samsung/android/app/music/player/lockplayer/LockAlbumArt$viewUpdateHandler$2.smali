.class final Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$viewUpdateHandler$2;
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
        "Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$viewUpdateHandler$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;
    .locals 3

    .line 52
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "Looper.getMainLooper()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$viewUpdateHandler$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$viewUpdateHandler$2;->invoke()Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;

    move-result-object v0

    return-object v0
.end method
