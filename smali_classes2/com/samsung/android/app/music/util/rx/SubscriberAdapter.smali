.class public Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SubscriberAdapter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 13
    sget-object v0, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;->a:Ljava/lang/String;

    const-string v1, "onCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;->a:Ljava/lang/String;

    const-string v1, "onError()"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    sget-object p1, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;->a:Ljava/lang/String;

    const-string v0, "onNext()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 23
    sget-object p1, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;->a:Ljava/lang/String;

    const-string v0, "onSubscribe()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
