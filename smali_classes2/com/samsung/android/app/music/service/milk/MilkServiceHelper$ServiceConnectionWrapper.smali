.class Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceConnectionWrapper"
.end annotation


# instance fields
.field private a:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 523
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;

    if-eqz v1, :cond_3

    .line 524
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    if-nez v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    if-nez v1, :cond_1

    return v0

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    check-cast p1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;

    iget-object p1, p1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 529
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$ServiceConnectionWrapper;->a:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
