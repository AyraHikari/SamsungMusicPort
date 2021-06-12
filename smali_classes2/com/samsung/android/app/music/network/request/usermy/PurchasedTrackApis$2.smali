.class final Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;->a(Landroid/content/Context;I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$2;->a:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$2;->b:I

    const/16 v1, 0x57a

    .line 30
    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->a(II)Lio/reactivex/Observable;

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

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$2;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
