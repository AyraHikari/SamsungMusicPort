.class public Lcom/samsung/android/app/music/util/rx/RetryWithDelay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Observable<",
        "+",
        "Ljava/lang/Throwable;",
        ">;",
        "Lio/reactivex/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;


# direct methods
.method public constructor <init>(IILcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;)V
    .locals 0
    .param p3    # Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->a:I

    .line 30
    iput p2, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->b:I

    .line 31
    iput-object p3, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->d:Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->c:I

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->d:Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$1;-><init>(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->d:Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->c:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->a:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->d:Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)I
    .locals 1

    .line 12
    iget v0, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->c:I

    return v0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->b:I

    return p0
.end method


# virtual methods
.method public a(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Observable<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;-><init>(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->a(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
