.class final Lcom/samsung/android/app/music/util/rx/ObservableLogger$7;
.super Lcom/samsung/android/app/music/util/rx/ObservableLogger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/ObservableLogger;->a()Lcom/samsung/android/app/music/util/rx/ObservableLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/util/rx/ObservableLogger<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method
