.class Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapsuleResponseCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

.field private b:Landroid/os/Bundle;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->a:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->b:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->c:Z

    .line 342
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->d:Z

    .line 345
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->c:Z

    .line 346
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;)Z
    .locals 0

    .line 337
    iget-boolean p0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->c:Z

    return p0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 351
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onComplete()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->a:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 353
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->d:Z

    if-eqz v1, :cond_0

    .line 354
    monitor-exit v0

    return-void

    .line 356
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->c:Z

    if-nez v1, :cond_2

    .line 357
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Action Execution Success"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/bixby2/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->b:Landroid/os/Bundle;

    const-string v2, "status_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->b:Landroid/os/Bundle;

    const-string v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 362
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->c:Z

    .line 363
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->a:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 365
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->d:Z

    return-void
.end method
