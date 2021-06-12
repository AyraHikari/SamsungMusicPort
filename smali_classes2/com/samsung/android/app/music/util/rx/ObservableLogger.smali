.class public Lcom/samsung/android/app/music/util/rx/ObservableLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/util/rx/ObservableLogger;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/samsung/android/app/music/util/rx/ObservableLogger<",
            "TT;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$7;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/util/rx/ObservableLogger$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/music/util/rx/ObservableLogger;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/ObservableLogger$6;-><init>(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/ObservableLogger$5;-><init>(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)V

    .line 31
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/ObservableLogger$4;-><init>(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)V

    .line 36
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/ObservableLogger$3;-><init>(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)V

    .line 41
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/ObservableLogger$2;-><init>(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)V

    .line 46
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/ObservableLogger$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/ObservableLogger$1;-><init>(Lcom/samsung/android/app/music/util/rx/ObservableLogger;)V

    .line 51
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
