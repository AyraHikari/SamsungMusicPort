.class Lcom/samsung/android/app/music/util/rx/ObservableLogger$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/ObservableLogger;->a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/rx/ObservableLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$3;->a:Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$3;->a:Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;->a(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$3;->a:Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;->b(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".doOnError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/ObservableLogger$3;->a(Ljava/lang/Throwable;)V

    return-void
.end method
