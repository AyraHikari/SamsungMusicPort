.class Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->b(Landroid/content/Context;[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;[JLandroid/content/Context;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;->c:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;->a:[J

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public onComplete()V
    .locals 6

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;->a:[J

    array-length v0, v0

    const-string v1, "HiddenTracksFragment"

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete deleteHiddenTracks : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0020

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 430
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    instance-of v0, p1, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$HiddenTrackException;

    if-eqz v0, :cond_0

    const-string v0, "HiddenTracksFragment"

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteHiddenTracks server error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$HiddenTrackException;

    .line 433
    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$HiddenTrackException;->getErrorCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 417
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;->a(Ljava/lang/Integer;)V

    return-void
.end method
