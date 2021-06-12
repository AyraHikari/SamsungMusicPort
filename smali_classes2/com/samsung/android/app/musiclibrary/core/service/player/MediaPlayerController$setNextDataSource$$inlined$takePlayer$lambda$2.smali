.class final Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$setNextDataSource$$inlined$takePlayer$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $next$inlined:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$setNextDataSource$$inlined$takePlayer$lambda$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$setNextDataSource$$inlined$takePlayer$lambda$2;->$next$inlined:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$setNextDataSource$$inlined$takePlayer$lambda$2;->$next$inlined:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const-wide/32 v1, 0xa0000

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->makeCache(J)V

    return-void
.end method
