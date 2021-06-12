.class final Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackAlbumTopMargin$2;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackAlbumTopMargin$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()F
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackAlbumTopMargin$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->d(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "appContext.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f10020a

    const/4 v3, 0x1

    .line 247
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 248
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackAlbumTopMargin$2;->invoke()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
