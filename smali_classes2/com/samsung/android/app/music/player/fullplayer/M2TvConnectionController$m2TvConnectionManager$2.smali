.class final Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$m2TvConnectionManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$m2TvConnectionManager$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
    .locals 3

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$m2TvConnectionManager$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->d(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$m2TvConnectionManager$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    return-object v0
.end method
