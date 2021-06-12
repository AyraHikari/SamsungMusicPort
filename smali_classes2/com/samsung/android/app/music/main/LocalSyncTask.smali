.class public final Lcom/samsung/android/app/music/main/LocalSyncTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/main/MainActivityTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;

.field private static final b:Z

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/main/LocalSyncTask;->a:Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/app/music/main/LocalSyncTask;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/app/music/main/LocalSyncTask;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/main/LocalSyncTask;->b:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object p1, Lcom/samsung/android/app/music/main/LocalSyncTask;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-boolean v0, Lcom/samsung/android/app/music/main/LocalSyncTask;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "LocalSyncTask"

    const-string v1, "call sync onActivityStopped - start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/main/LocalSyncTask;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/main/LocalSyncTask$onActivityStopped$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/main/LocalSyncTask$onActivityStopped$1;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/main/LocalSyncTask;->b:Z

    if-eqz p1, :cond_2

    const-string p1, "LocalSyncTask"

    const-string v0, "call sync onActivityStopped - end"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public c(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->c(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public d(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public e(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->e(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public f(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->f(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public g(Lcom/samsung/android/app/music/main/MainActivity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->g(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->h(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method
