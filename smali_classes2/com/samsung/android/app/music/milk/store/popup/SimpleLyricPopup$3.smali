.class final Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->h(Landroid/content/Context;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->e(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V

    .line 208
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

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

    .line 203
    check-cast p1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;->a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
