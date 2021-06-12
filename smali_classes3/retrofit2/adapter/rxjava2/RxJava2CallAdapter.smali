.class final Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V
    .locals 0
    .param p2    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->a:Ljava/lang/reflect/Type;

    .line 42
    iput-object p2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->b:Lio/reactivex/Scheduler;

    .line 43
    iput-boolean p3, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->c:Z

    .line 44
    iput-boolean p4, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->d:Z

    .line 45
    iput-boolean p5, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->e:Z

    .line 46
    iput-boolean p6, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->f:Z

    .line 47
    iput-boolean p7, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->g:Z

    .line 48
    iput-boolean p8, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->h:Z

    .line 49
    iput-boolean p9, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->i:Z

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->c:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava2/CallEnqueueObservable;-><init>(Lretrofit2/Call;)V

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava2/CallExecuteObservable;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava2/CallExecuteObservable;-><init>(Lretrofit2/Call;)V

    .line 62
    :goto_0
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->d:Z

    if-eqz p1, :cond_1

    .line 63
    new-instance p1, Lretrofit2/adapter/rxjava2/ResultObservable;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava2/ResultObservable;-><init>(Lio/reactivex/Observable;)V

    goto :goto_1

    .line 64
    :cond_1
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->e:Z

    if-eqz p1, :cond_2

    .line 65
    new-instance p1, Lretrofit2/adapter/rxjava2/BodyObservable;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava2/BodyObservable;-><init>(Lio/reactivex/Observable;)V

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 70
    :goto_1
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->b:Lio/reactivex/Scheduler;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->b:Lio/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    :cond_3
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->f:Z

    if-eqz v0, :cond_4

    .line 75
    sget-object v0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 77
    :cond_4
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->g:Z

    if-eqz v0, :cond_5

    .line 78
    invoke-virtual {p1}, Lio/reactivex/Observable;->f()Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 80
    :cond_5
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->h:Z

    if-eqz v0, :cond_6

    .line 81
    invoke-virtual {p1}, Lio/reactivex/Observable;->e()Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1

    .line 83
    :cond_6
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->i:Z

    if-eqz v0, :cond_7

    .line 84
    invoke-virtual {p1}, Lio/reactivex/Observable;->d()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 53
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method
