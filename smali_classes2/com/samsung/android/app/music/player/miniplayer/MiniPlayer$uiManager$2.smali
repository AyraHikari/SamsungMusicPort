.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$uiManager$2;
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
        "Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$uiManager$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;
    .locals 7

    .line 37
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$uiManager$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiniPlayer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$uiManager$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;-><init>(Landroid/support/v4/app/FragmentActivity;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$uiManager$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    return-object v0
.end method
