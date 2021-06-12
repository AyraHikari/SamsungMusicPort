.class Lcom/samsung/android/app/music/util/rx/ObservableLogger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/ObservableLogger;->a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/rx/ObservableLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$1;->a:Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$1;->a:Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;->a(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$1;->a:Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;->b(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".doFinally"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
