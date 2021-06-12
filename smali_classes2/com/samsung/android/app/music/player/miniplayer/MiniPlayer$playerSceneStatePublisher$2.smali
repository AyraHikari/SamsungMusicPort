.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$playerSceneStatePublisher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$playerSceneStatePublisher$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$playerSceneStatePublisher$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$playerSceneStatePublisher$2;->invoke()Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    move-result-object v0

    return-object v0
.end method
