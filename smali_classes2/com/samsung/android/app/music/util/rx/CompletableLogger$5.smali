.class Lcom/samsung/android/app/music/util/rx/CompletableLogger$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/CompletableLogger;->a(Lio/reactivex/Completable;)Lio/reactivex/CompletableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/rx/CompletableLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$5;->a:Lcom/samsung/android/app/music/util/rx/CompletableLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$5;->a:Lcom/samsung/android/app/music/util/rx/CompletableLogger;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->a(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$5;->a:Lcom/samsung/android/app/music/util/rx/CompletableLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->b(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".doOnSubscribe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/CompletableLogger$5;->a(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
