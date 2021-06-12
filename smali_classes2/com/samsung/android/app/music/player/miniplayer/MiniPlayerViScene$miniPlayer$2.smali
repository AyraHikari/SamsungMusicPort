.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniPlayer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;-><init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $miniPlayerFactory:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerFactory;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniPlayer$2;->$miniPlayerFactory:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerFactory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;
    .locals 1

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniPlayer$2;->$miniPlayerFactory:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerFactory;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerFactory;->a()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniPlayer$2;->invoke()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v0

    return-object v0
.end method
