.class Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a(ZZ)Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;ZZ)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->a:Z

    iput-boolean p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    move-result-object v0

    const-string v1, "playByRadio"

    iget-boolean v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->b:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->b()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior;Z)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    check-cast p1, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StorePlayBehavior$1;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V

    return-void
.end method
