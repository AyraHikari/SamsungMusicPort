.class public Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "InitObservable"

.field private static volatile c:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;


# instance fields
.field private b:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->NOT_INITIALIZED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->b:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;
    .locals 2

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->c:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->c:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->c:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->c:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$1;-><init>(Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;)V

    .line 75
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->b:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_DONE:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->b:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INITIALIZING:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INITIALIZING:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->b:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    return-void
.end method

.method public e()V
    .locals 1

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_DONE:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->b:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    return-void
.end method

.method public f()V
    .locals 1

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_FAILED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->b:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    return-void
.end method

.method public g()V
    .locals 1

    .line 89
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->NOT_INITIALIZED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->b:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    const/4 v0, 0x0

    .line 90
    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->c:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    return-void
.end method
