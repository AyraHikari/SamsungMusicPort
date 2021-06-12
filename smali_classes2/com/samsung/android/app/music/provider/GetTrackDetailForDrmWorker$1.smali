.class Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/contents/TrackDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker$1;->a:Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;->getTrackInfo()Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;->getTrackInfo()Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->fromTrackInfoModel(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/PlayTrackInfo;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker$1;->a:Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->a(Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;Lcom/samsung/android/app/music/model/PlayTrackInfo;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker$1;->a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V

    return-void
.end method
