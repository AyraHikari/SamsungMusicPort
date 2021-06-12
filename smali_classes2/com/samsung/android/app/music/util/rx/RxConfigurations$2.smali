.class final Lcom/samsung/android/app/music/util/rx/RxConfigurations$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/RxConfigurations;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Scheduler;",
        "Lio/reactivex/Scheduler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 1

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$SchedulerProxy;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers$SchedulerProxy;-><init>(Lio/reactivex/Scheduler;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    check-cast p1, Lio/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/RxConfigurations$2;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object p1

    return-object p1
.end method
