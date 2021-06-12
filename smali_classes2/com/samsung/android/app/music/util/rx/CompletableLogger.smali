.class public Lcom/samsung/android/app/music/util/rx/CompletableLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableTransformer;


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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/util/rx/CompletableLogger;
    .locals 3

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$6;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/util/rx/CompletableLogger$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/util/rx/CompletableLogger;
    .locals 0

    .line 59
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->a()Lcom/samsung/android/app/music/util/rx/CompletableLogger;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lio/reactivex/Completable;)Lio/reactivex/CompletableSource;
    .locals 1

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/CompletableLogger$5;-><init>(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->b(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/CompletableLogger$4;-><init>(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)V

    .line 32
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/CompletableLogger$3;-><init>(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)V

    .line 37
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/CompletableLogger$2;-><init>(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)V

    .line 42
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->b(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/CompletableLogger$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/CompletableLogger$1;-><init>(Lcom/samsung/android/app/music/util/rx/CompletableLogger;)V

    .line 47
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->c(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
