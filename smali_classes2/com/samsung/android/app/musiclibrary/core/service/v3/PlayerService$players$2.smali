.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;->invoke()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 39
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    .line 40
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    .line 41
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    check-cast v2, Landroid/content/Context;

    const-string v3, "music"

    .line 42
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getServiceOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v4

    .line 40
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 45
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    .line 46
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    check-cast v2, Landroid/content/Context;

    const-string v3, "radio"

    .line 47
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getServiceOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v4

    .line 45
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 49
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    .line 50
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    check-cast v2, Landroid/content/Context;

    const-string v3, "spotify"

    .line 51
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getServiceOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v4

    .line 49
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 39
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
