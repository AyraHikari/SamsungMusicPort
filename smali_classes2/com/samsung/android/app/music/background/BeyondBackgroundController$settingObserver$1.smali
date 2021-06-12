.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/BeyondBackgroundController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 765
    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    .line 767
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
