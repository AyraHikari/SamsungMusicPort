.class final Lcom/samsung/android/app/music/player/SlidePlayer$notifyPlayerSceneStateChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sceneState:I

.field final synthetic this$0:Lcom/samsung/android/app/music/player/SlidePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SlidePlayer;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$notifyPlayerSceneStateChanged$1;->this$0:Lcom/samsung/android/app/music/player/SlidePlayer;

    iput p2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$notifyPlayerSceneStateChanged$1;->$sceneState:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SlidePlayer$notifyPlayerSceneStateChanged$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$notifyPlayerSceneStateChanged$1;->this$0:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lcom/samsung/android/app/music/player/SlidePlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 697
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    .line 234
    iget v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$notifyPlayerSceneStateChanged$1;->$sceneState:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
