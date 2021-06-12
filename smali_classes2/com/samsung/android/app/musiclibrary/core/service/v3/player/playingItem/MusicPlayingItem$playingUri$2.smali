.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$playingUri$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;-><init>(Landroid/content/Context;JLcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$playingUri$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;
    .locals 5

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUriFactory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUriFactory;

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$playingUri$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Landroid/content/Context;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$playingUri$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getMeta$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$playingUri$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getData$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 43
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUriFactory;->obtain(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$playingUri$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;

    move-result-object v0

    return-object v0
.end method
