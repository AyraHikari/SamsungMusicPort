.class final Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$removeController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $controller:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$removeController$1;->$controller:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$removeController$1;->invoke(Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;->a()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$removeController$1;->$controller:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
