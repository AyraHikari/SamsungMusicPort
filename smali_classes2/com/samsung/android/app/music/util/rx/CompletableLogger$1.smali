.class Lcom/samsung/android/app/music/util/rx/CompletableLogger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/CompletableLogger;->a(Lio/reactivex/Completable;)Lio/reactivex/CompletableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/rx/CompletableLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$1;->a:Lcom/samsung/android/app/music/util/rx/CompletableLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$1;->a:Lcom/samsung/android/app/music/util/rx/CompletableLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->a(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$1;->a:Lcom/samsung/android/app/music/util/rx/CompletableLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->b(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".doFinally"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
