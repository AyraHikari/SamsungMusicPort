.class final Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis;->a(Landroid/content/Context;Ljava/util/List;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$2;->a:Z

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/ResponseModel;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-boolean p1, p0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$2;->a:Z

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$2;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 68
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$HiddenTrackException;

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$HiddenTrackException;-><init>(I)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

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

    .line 58
    check-cast p1, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$2;->a(Lcom/samsung/android/app/music/model/ResponseModel;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
