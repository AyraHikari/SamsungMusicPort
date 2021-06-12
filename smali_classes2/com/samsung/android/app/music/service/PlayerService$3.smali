.class Lcom/samsung/android/app/music/service/PlayerService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$OnUserChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$3;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 326
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$3;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerService;->l(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 327
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$3;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerService;->m(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result p1

    if-nez p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$3;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerService;->n(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :cond_0
    return-void
.end method
