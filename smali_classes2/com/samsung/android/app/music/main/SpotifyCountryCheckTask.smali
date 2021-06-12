.class public final Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/main/MainActivityTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$Companion;


# instance fields
.field private final b:Lcom/samsung/android/app/music/main/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask;->a:Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask;->b:Lcom/samsung/android/app/music/main/MainActivity;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
    .locals 5

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object p3

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getAppUpdateChecker()Lcom/samsung/android/app/music/update/AppUpdateChecker;

    move-result-object v0

    const-string v1, "SMUSIC-SpotifyCountryCheckTask"

    const-string v2, "onActivityCreated()"

    .line 28
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v1

    .line 32
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 33
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;

    invoke-direct {v2, p2, p3, v0, p1}, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/music/update/AppUpdateChecker;Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast v2, Lio/reactivex/Observer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->d(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public c(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->c(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public d(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public e(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->e(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public f(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->f(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public g(Lcom/samsung/android/app/music/main/MainActivity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->g(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->h(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method
