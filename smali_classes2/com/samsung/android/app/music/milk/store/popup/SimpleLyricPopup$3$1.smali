.class Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;->a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/milklyric/LyricResponse;",
        "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3$1;->b:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milklyric/LyricResponse;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SimpleLyricPopup"

    const-string v1, "fillLyricData. done"

    .line 212
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->getDecodedLyrics()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->e:Ljava/lang/String;

    .line 214
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    check-cast p1, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3$1;->a(Lcom/samsung/android/app/music/model/milklyric/LyricResponse;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    move-result-object p1

    return-object p1
.end method
