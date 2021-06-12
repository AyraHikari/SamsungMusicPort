.class Lcom/samsung/android/castingfindermanager/BleAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/BleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/castingfindermanager/BleAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/castingfindermanager/BleAdapter;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$3;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$3;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->e(Lcom/samsung/android/castingfindermanager/BleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/castingfindermanager/BleDevice;

    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$3;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->d(Lcom/samsung/android/castingfindermanager/BleAdapter;)Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->a(ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter$3;->a:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->d(Lcom/samsung/android/castingfindermanager/BleAdapter;)Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
