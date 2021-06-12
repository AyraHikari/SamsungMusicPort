.class public final Lcom/samsung/android/app/music/service/milk/StoreDataSender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/StoreDataSender$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/service/milk/StoreDataSender$Companion;

.field private static volatile c:Lcom/samsung/android/app/music/service/milk/StoreDataSender;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/service/milk/StoreDataSender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/StoreDataSender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->a:Lcom/samsung/android/app/music/service/milk/StoreDataSender$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->b:Landroid/content/Context;

    .line 18
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/basic/BasicApis;->a(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 19
    new-instance v0, Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;-><init>(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)V

    check-cast v0, Lio/reactivex/SingleObserver;

    .line 18
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->a(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic a()Lcom/samsung/android/app/music/service/milk/StoreDataSender;
    .locals 1

    .line 14
    sget-object v0, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->c:Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->c:Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    return-void
.end method
