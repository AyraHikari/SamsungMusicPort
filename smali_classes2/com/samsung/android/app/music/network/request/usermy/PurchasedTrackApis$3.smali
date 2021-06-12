.class final Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;->b(Landroid/content/Context;I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$3;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    iget v0, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$3;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PurchasedTrackApis"

    const-string v2, "delete purchased drm"

    .line 62
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "( track_type = 1) "

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$3;->b:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 70
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
