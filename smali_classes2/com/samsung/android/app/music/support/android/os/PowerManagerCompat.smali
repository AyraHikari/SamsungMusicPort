.class public Lcom/samsung/android/app/music/support/android/os/PowerManagerCompat;
.super Ljava/lang/Object;
.source "PowerManagerCompat.java"


# static fields
.field private static final CLASS_POWER_MANAGER:Ljava/lang/String; = "android.os.PowerManager"

.field private static final SEM_WAKE_UP:Ljava/lang/String; = "semWakeUp"

.field private static semWakeUp:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goToSleep(Landroid/os/PowerManager;J)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->semGoToSleep(J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/os/PowerManagerSdlCompat;->goToSleep(Landroid/os/PowerManager;J)V

    :goto_0
    return-void
.end method

.method public static wakeUp(Landroid/os/PowerManager;J)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const-string v0, "Screen on by samsung music"

    .line 3
    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/android/os/PowerManagerCompat;->semWakeUp:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Class;

    .line 5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v1

    const-string v4, "android.os.PowerManager"

    const-string v5, "semWakeUp"

    invoke-static {v4, v5, v0}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/os/PowerManagerCompat;->semWakeUp:Ljava/lang/reflect/Method;

    .line 6
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/support/android/os/PowerManagerCompat;->semWakeUp:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, p0, v3}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/os/PowerManagerSdlCompat;->wakeUp(Landroid/os/PowerManager;J)V

    :goto_0
    return-void
.end method
