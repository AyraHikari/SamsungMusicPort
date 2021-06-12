.class public final Lio/reactivex/internal/functions/Functions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/functions/Functions$MaxRequestSubscription;,
        Lio/reactivex/internal/functions/Functions$NaturalObjectComparator;,
        Lio/reactivex/internal/functions/Functions$NullCallable;,
        Lio/reactivex/internal/functions/Functions$FalsePredicate;,
        Lio/reactivex/internal/functions/Functions$TruePredicate;,
        Lio/reactivex/internal/functions/Functions$EmptyLongConsumer;,
        Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;,
        Lio/reactivex/internal/functions/Functions$ErrorConsumer;,
        Lio/reactivex/internal/functions/Functions$EmptyConsumer;,
        Lio/reactivex/internal/functions/Functions$EmptyAction;,
        Lio/reactivex/internal/functions/Functions$EmptyRunnable;,
        Lio/reactivex/internal/functions/Functions$Identity;,
        Lio/reactivex/internal/functions/Functions$Array2Func;,
        Lio/reactivex/internal/functions/Functions$NaturalComparator;,
        Lio/reactivex/internal/functions/Functions$HashSetCallable;,
        Lio/reactivex/internal/functions/Functions$JustValue;
    }
.end annotation


# static fields
.field static final a:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Runnable;

.field public static final c:Lio/reactivex/functions/Action;

.field static final d:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lio/reactivex/functions/LongConsumer;

.field static final h:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final i:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final j:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final k:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lio/reactivex/internal/functions/Functions$Identity;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$Identity;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->a:Lio/reactivex/functions/Function;

    .line 93
    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyRunnable;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyRunnable;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->b:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyAction;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyAction;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->c:Lio/reactivex/functions/Action;

    .line 97
    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyConsumer;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyConsumer;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->d:Lio/reactivex/functions/Consumer;

    .line 109
    new-instance v0, Lio/reactivex/internal/functions/Functions$ErrorConsumer;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$ErrorConsumer;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->e:Lio/reactivex/functions/Consumer;

    .line 115
    new-instance v0, Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->f:Lio/reactivex/functions/Consumer;

    .line 117
    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyLongConsumer;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyLongConsumer;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->g:Lio/reactivex/functions/LongConsumer;

    .line 119
    new-instance v0, Lio/reactivex/internal/functions/Functions$TruePredicate;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$TruePredicate;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->h:Lio/reactivex/functions/Predicate;

    .line 121
    new-instance v0, Lio/reactivex/internal/functions/Functions$FalsePredicate;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$FalsePredicate;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->i:Lio/reactivex/functions/Predicate;

    .line 123
    new-instance v0, Lio/reactivex/internal/functions/Functions$NullCallable;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$NullCallable;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->j:Ljava/util/concurrent/Callable;

    .line 125
    new-instance v0, Lio/reactivex/internal/functions/Functions$NaturalObjectComparator;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$NaturalObjectComparator;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->k:Ljava/util/Comparator;

    .line 514
    new-instance v0, Lio/reactivex/internal/functions/Functions$MaxRequestSubscription;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$MaxRequestSubscription;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->l:Lio/reactivex/functions/Consumer;

    return-void
.end method

.method public static a()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/functions/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 106
    sget-object v0, Lio/reactivex/internal/functions/Functions;->d:Lio/reactivex/functions/Consumer;

    return-object v0
.end method

.method public static a(Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/BiFunction<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/functions/Function<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 37
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lio/reactivex/internal/functions/Functions$Array2Func;

    invoke-direct {v0, p0}, Lio/reactivex/internal/functions/Functions$Array2Func;-><init>(Lio/reactivex/functions/BiFunction;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Lio/reactivex/internal/functions/Functions$JustValue;

    invoke-direct {v0, p0}, Lio/reactivex/internal/functions/Functions$JustValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
