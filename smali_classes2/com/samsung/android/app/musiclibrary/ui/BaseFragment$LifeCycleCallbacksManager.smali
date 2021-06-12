.class final Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LifeCycleCallbacksManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager$Companion;


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Bundle;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    .line 421
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    .line 423
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, -0x1

    .line 427
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, -0x1

    .line 461
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 448
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->e:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 437
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "lifeCycleCallbacks.iterator()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "iterator.next()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 445
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->e:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 431
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V
    .locals 1

    const-string v0, "lifeCycleCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 481
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    return-void
.end method

.method public final b(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V
    .locals 1

    const-string v0, "lifeCycleCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x7

    .line 537
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    return-void
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 485
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    .line 486
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->e:Landroid/os/Bundle;

    .line 487
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 488
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 491
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 473
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    .line 474
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->e:Landroid/os/Bundle;

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 476
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 541
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    .line 542
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 543
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 546
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 517
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 519
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentPaused(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 522
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentPaused(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 506
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 508
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 511
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 603
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 513
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 551
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 554
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 496
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    .line 497
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 498
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 501
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 527
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->f:I

    .line 528
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 529
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentStopped(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 532
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentStopped(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 560
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 563
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method
