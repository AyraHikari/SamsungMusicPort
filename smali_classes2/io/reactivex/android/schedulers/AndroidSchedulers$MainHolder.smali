.class final Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/android/schedulers/AndroidSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainHolder"
.end annotation


# static fields
.field static final a:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;Z)V

    sput-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;->a:Lio/reactivex/Scheduler;

    return-void
.end method
