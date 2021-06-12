.class Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$3;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "SAServiceWrapper"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$3;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$3;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$3;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
