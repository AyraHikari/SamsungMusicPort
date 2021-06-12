.class final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceAnimationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$Companion;

.field private static final TERMINATION_DELAY:J = 0x1f4L


# instance fields
.field private final mainHandler:Landroid/os/Handler;

.field private final service:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->Companion:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->service:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .line 565
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;)Landroid/os/Handler;
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getService$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;)Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->service:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    return-object p0
.end method


# virtual methods
.method public onScreenOffAnimationEnd(Z)V
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->service:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getFinished$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 590
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->service:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "GSOM"

    const-string v1, "Time out"

    .line 589
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->service:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$setFinished$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Z)V

    .line 596
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->service:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$goToSleep(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    .line 597
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$onScreenOffAnimationEnd$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener$onScreenOffAnimationEnd$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onScreenOffAnimationStart()V
    .locals 0

    return-void
.end method

.method public onScreenOnAnimationEnd()V
    .locals 5

    .line 574
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->service:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getScreenOffMusicView$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Landroid/view/View;

    move-result-object v0

    const-string v1, "SMUSIC-SOM"

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenOffMusicService onScreenOnAnimationEnd() - view\'s visibility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", drawing time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", attached ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScreenOnAnimationStart()V
    .locals 2

    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService onScreenOnAnimationStart()"

    .line 568
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
