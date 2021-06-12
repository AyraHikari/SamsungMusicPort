.class final Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$showAnimation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/support/v4/app/FragmentManager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/animation/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$showAnimation$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/animation/Animation;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$showAnimation$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->b(Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$showAnimation$2;->invoke()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method
