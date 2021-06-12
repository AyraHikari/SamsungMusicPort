.class final Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$playerMenu$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/menu/PlayerMenuGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$playerMenu$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/menu/PlayerMenuGroup;
    .locals 4

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$playerMenu$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$playerMenu$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->d(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object v2

    const v3, 0x7f140017

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;ILjava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$playerMenu$2;->invoke()Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    move-result-object v0

    return-object v0
.end method
