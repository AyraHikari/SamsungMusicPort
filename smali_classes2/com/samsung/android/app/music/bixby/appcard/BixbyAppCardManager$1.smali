.class Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/bixby/TPOPlaylistResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager$1;->a:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/bixby/TPOPlaylistResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager$1;->a:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/bixby/TPOPlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;Ljava/util/List;)Ljava/util/List;

    const-string p1, "SMUSIC-BixbyAppCard"

    const-string v0, "onNext - Success"

    .line 182
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-BixbyAppCard"

    const-string v0, "onNext - invalid playlist"

    .line 184
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager$1;->a:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "SMUSIC-BixbyAppCard"

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager$1;->a:Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, Lcom/samsung/android/app/music/model/bixby/TPOPlaylistResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager$1;->a(Lcom/samsung/android/app/music/model/bixby/TPOPlaylistResponse;)V

    return-void
.end method
