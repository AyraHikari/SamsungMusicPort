.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$viewTypeController$2;
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
        "Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$viewTypeController$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;
    .locals 3

    .line 113
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$viewTypeController$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$viewTypeController$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$viewTypeController$2;->invoke()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    return-object v0
.end method
