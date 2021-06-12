.class public final Lcom/samsung/android/app/music/util/rx/RxConfigurations;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 50
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a(J)V

    .line 51
    new-instance v0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 29
    new-instance p0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$1;

    invoke-direct {p0}, Lcom/samsung/android/app/music/util/rx/RxConfigurations$1;-><init>()V

    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->a(Lio/reactivex/functions/Consumer;)V

    .line 41
    new-instance p0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$2;

    invoke-direct {p0}, Lcom/samsung/android/app/music/util/rx/RxConfigurations$2;-><init>()V

    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->a(Lio/reactivex/functions/Function;)V

    return-void
.end method
