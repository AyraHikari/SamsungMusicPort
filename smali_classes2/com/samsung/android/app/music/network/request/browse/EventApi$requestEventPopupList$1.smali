.class final Lcom/samsung/android/app/music/network/request/browse/EventApi$requestEventPopupList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/browse/EventApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/ObservableSource<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/browse/EventApi$requestEventPopupList$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopupList;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/browse/EventApi$requestEventPopupList$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BrowseTransport;

    move-result-object v0

    const/16 v1, 0x139

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/BrowseTransport;->b(I)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/browse/EventApi$requestEventPopupList$1;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
