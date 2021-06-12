.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniRootView$2;
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
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniRootView$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniRootView$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniRootView$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
