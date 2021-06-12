.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$uiManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;I)V
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
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$uiManager$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;
    .locals 4

    .line 104
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$uiManager$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FullPlayer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$uiManager$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 104
    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;-><init>(Landroid/support/v4/app/FragmentActivity;ZLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$uiManager$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    return-object v0
.end method
