.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$changeViewType$2;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$changeViewType$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    .line 596
    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "nowPlayingController"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getNowPlayingController()Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$changeViewType$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    .line 596
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;)V

    return-void
.end method
