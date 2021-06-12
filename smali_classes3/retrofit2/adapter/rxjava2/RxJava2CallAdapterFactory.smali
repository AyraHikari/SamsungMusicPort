.class public final Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "SourceFile"


# instance fields
.field private final a:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Z


# direct methods
.method private constructor <init>(Lio/reactivex/Scheduler;Z)V
    .locals 0
    .param p1    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 89
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->a:Lio/reactivex/Scheduler;

    .line 90
    iput-boolean p2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->b:Z

    return-void
.end method

.method public static a()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
    .locals 3

    .line 64
    new-instance v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;-><init>(Lio/reactivex/Scheduler;Z)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter<",
            "**>;"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 97
    const-class p3, Lio/reactivex/Completable;

    if-ne p2, p3, :cond_0

    .line 100
    new-instance p1, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;

    const-class v1, Ljava/lang/Void;

    iget-object v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->a:Lio/reactivex/Scheduler;

    iget-boolean v3, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->b:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;-><init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V

    return-object p1

    .line 104
    :cond_0
    const-class p3, Lio/reactivex/Flowable;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 105
    :goto_0
    const-class p3, Lio/reactivex/Single;

    if-ne p2, p3, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 106
    :goto_1
    const-class p3, Lio/reactivex/Maybe;

    if-ne p2, p3, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    .line 107
    :goto_2
    const-class p3, Lio/reactivex/Observable;

    if-eq p2, p3, :cond_4

    if-nez v8, :cond_4

    if-nez v9, :cond_4

    if-nez v10, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_4
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p2, :cond_8

    if-nez v8, :cond_7

    if-nez v9, :cond_6

    if-eqz v10, :cond_5

    const-string p1, "Maybe"

    goto :goto_3

    :cond_5
    const-string p1, "Observable"

    goto :goto_3

    :cond_6
    const-string p1, "Single"

    goto :goto_3

    :cond_7
    const-string p1, "Flowable"

    .line 118
    :goto_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " return type must be parameterized as "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<Foo> or "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<? extends Foo>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 122
    :cond_8
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 124
    const-class p3, Lretrofit2/Response;

    if-ne p2, p3, :cond_a

    .line 125
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_9

    .line 129
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    move-object v3, p1

    const/4 v6, 0x0

    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    .line 126
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_a
    const-class p3, Lretrofit2/adapter/rxjava2/Result;

    if-ne p2, p3, :cond_c

    .line 131
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_b

    .line 135
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    move-object v3, p1

    const/4 v6, 0x1

    goto :goto_4

    .line 132
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    move-object v3, p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 142
    :goto_5
    new-instance p1, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;

    iget-object v4, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->a:Lio/reactivex/Scheduler;

    iget-boolean v5, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->b:Z

    const/4 v11, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;-><init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V

    return-object p1
.end method
