.class Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Landroid/content/Context;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$2;->a:Landroid/content/Context;

    const-string v1, "Music_2_2"

    .line 89
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    check-cast p1, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$2;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    return-object p1
.end method
