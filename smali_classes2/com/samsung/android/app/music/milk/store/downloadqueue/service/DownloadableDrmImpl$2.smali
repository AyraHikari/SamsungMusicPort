.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)V
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
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/ResponseModel;)V
    .locals 3

    const-string v0, "SV"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableDrmImpl | completeDrmTrackDownload Result Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p1, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$2;->a(Lcom/samsung/android/app/music/model/ResponseModel;)V

    return-void
.end method
