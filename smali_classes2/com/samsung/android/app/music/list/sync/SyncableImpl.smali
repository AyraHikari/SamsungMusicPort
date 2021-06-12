.class public final Lcom/samsung/android/app/music/list/sync/SyncableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/sync/SyncProcess;


# instance fields
.field private final synthetic a:Lcom/samsung/android/app/music/list/sync/SyncProcess;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/sync/SyncProcess;)V
    .locals 1

    const-string v0, "syncProcess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a:Lcom/samsung/android/app/music/list/sync/SyncProcess;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "updateDate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a:Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/sync/SyncProcess;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a:Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/sync/SyncProcess;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a:Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/list/sync/SyncProcess;->a(J)V

    return-void
.end method

.method public b()I
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a:Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/sync/SyncProcess;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a:Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/sync/SyncProcess;->c()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a:Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/sync/SyncProcess;->d()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a:Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/sync/SyncProcess;->e()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 5

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a(J)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->b()I

    move-result v1

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->c()I

    move-result v3

    if-lez v3, :cond_1

    .line 113
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    add-int/2addr v1, v3

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->d()I

    move-result v0

    add-int/2addr v1, v0

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->e()I

    move-result v0

    add-int/2addr v1, v0

    if-lez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    return v2
.end method
