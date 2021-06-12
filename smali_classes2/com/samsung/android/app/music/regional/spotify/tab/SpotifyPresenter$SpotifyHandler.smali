.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpotifyHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)V
    .locals 1

    .line 195
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$1;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyHandler;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 201
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage : retryLoad"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;

    .line 203
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->d(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)I

    move-result v0

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 204
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->e(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_ERROR:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    if-eq v0, v1, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->d()V

    goto :goto_1

    .line 209
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->f(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_ERROR:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    if-eq v0, v1, :cond_1

    .line 211
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryLoad : ERROR : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->c(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;->b()V

    .line 213
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->c(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;->a(II)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->e(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    :goto_0
    const/4 v0, 0x0

    .line 217
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;I)I

    :cond_2
    :goto_1
    return-void
.end method
