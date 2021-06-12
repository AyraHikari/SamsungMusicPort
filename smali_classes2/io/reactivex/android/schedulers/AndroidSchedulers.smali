.class public final Lio/reactivex/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;
    }
.end annotation


# static fields
.field private static final a:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lio/reactivex/android/schedulers/AndroidSchedulers$1;

    invoke-direct {v0}, Lio/reactivex/android/schedulers/AndroidSchedulers$1;-><init>()V

    invoke-static {v0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers;->a:Lio/reactivex/Scheduler;

    return-void
.end method

.method public static a()Lio/reactivex/Scheduler;
    .locals 1

    .line 42
    sget-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers;->a:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
