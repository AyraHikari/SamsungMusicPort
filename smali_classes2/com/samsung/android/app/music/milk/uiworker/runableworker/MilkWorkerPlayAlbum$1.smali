.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum$1;->a:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Throwable;)V
    .locals 3
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum$1;->a:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;

    const-string p2, "MilkWorkerPlayAlbum"

    const-string v0, "PLAYER Error"

    const-string v1, "not Played"

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->b(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum$1;->a:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, v0, v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->a(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
