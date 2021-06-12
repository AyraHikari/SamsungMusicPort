.class public final Lcom/samsung/android/app/music/network/request/browse/EventApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/network/request/browse/EventApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/samsung/android/app/music/network/request/browse/EventApi;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/request/browse/EventApi;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/network/request/browse/EventApi;->a:Lcom/samsung/android/app/music/network/request/browse/EventApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopupList;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/samsung/android/app/music/network/request/browse/EventApi$requestEventPopupList$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/request/browse/EventApi$requestEventPopupList$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.defer {\n     \u2026EVENT_POPUP_ID)\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milkevent/EventWebList;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/network/request/browse/EventApi$requestEventWebList$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/request/browse/EventApi$requestEventWebList$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.defer {\n     \u2026WEB_LIST_ID, 1)\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
