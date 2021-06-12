.class Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(ZLcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->a:Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/ResponseModel;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 329
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->a:Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    if-eqz p1, :cond_1

    .line 337
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->a:Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->d(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;->a(Ljava/lang/String;Z)V

    :cond_1
    return-void

    .line 330
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    if-nez p1, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result p1

    :goto_1
    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;II)V

    .line 331
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->a:Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    if-eqz p1, :cond_4

    .line 332
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->a:Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->d(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;->a(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 326
    check-cast p1, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;->a(Lcom/samsung/android/app/music/model/ResponseModel;)V

    return-void
.end method
