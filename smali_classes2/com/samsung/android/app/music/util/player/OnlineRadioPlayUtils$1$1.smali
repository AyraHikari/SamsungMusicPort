.class Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->b:Landroid/content/Context;

    .line 195
    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Ljava/util/List;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->c:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 197
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    move-result-object v6

    if-eqz v6, :cond_2

    .line 198
    array-length v0, v6

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1$1;-><init>(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;)V

    .line 207
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a(Ljava/util/Collection;Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;)I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_1
    const/4 v8, -0x1

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v3, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v4, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v5, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-boolean v7, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->h:Z

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-boolean v9, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->i:Z

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v10, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->j:Lcom/samsung/android/app/music/model/AdInfo;

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JZIZLcom/samsung/android/app/music/model/AdInfo;)V

    const/4 v0, 0x1

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 218
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 199
    :cond_2
    :goto_1
    new-instance v0, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;-><init>()V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    const-string p1, "OnlineRadioPlayUtils"

    const-string v0, "playRadio. audioIds null or length 0"

    .line 200
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
