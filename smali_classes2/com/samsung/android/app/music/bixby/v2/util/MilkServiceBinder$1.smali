.class Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 43
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->a(Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;)Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;->a()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 49
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
