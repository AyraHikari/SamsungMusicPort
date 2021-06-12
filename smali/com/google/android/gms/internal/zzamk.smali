.class final Lcom/google/android/gms/internal/zzamk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Ljava/lang/Object;

.field private final c:Landroid/view/Display;

.field private final d:[F

.field private final e:[F

.field private f:[F

.field private g:Landroid/os/Handler;

.field private h:Lcom/google/android/gms/internal/zzamm;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamk;->a:Landroid/hardware/SensorManager;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamk;->c:Landroid/view/Display;

    const/16 p1, 0x9

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamk;->d:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamk;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    aget v2, v2, p2

    aput v2, v1, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    aput v0, p1, p2

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamk;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamk;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "No Sensor of TYPE_ROTATION_VECTOR"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OrientationMonitor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamk;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamk;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamk;->g:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SensorManager.registerListener failed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamk;->b()V

    :cond_2
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/zzamm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamk;->h:Lcom/google/android/gms/internal/zzamm;

    return-void
.end method

.method final a([F)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamk;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamk;->f:[F

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamk;->f:[F

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamk;->f:[F

    array-length v3, v3

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamk;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamk;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamk;->g:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzaml;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaml;-><init>(Lcom/google/android/gms/internal/zzamk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamk;->g:Landroid/os/Handler;

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    aget v1, p1, v3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    aget v1, p1, v2

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzamk;->f:[F

    const/16 v5, 0x9

    if-nez v4, :cond_1

    new-array v4, v5, [F

    iput-object v4, p0, Lcom/google/android/gms/internal/zzamk;->f:[F

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamk;->d:[F

    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamk;->c:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v1, 0x82

    const/16 v4, 0x81

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamk;->d:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    invoke-static {p1, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzamk;->d:[F

    iget-object v4, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    invoke-static {p1, v1, v3, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzamk;->d:[F

    iget-object v6, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    invoke-static {p1, v4, v1, v6}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzamk;->d:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    invoke-static {p1, v2, v4, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :goto_0
    const/4 p1, 0x3

    invoke-direct {p0, v3, p1}, Lcom/google/android/gms/internal/zzamk;->a(II)V

    const/4 p1, 0x6

    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/zzamk;->a(II)V

    const/4 p1, 0x5

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzamk;->a(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamk;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamk;->e:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamk;->f:[F

    invoke-static {v1, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamk;->h:Lcom/google/android/gms/internal/zzamm;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamk;->h:Lcom/google/android/gms/internal/zzamm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzamm;->a()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
