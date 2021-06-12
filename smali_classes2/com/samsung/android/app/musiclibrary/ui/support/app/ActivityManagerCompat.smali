.class public final Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->a:Ljava/lang/reflect/Method;

    .line 20
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a()I
    .locals 4

    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->a:Ljava/lang/reflect/Method;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 39
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return v1
.end method

.method public static a(Landroid/app/ActivityManager;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 26
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 28
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 29
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public static a(Landroid/app/ActivityManager;Landroid/content/ComponentName;ILjava/io/FileDescriptor;I)Z
    .locals 3

    .line 87
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return v1
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 3

    .line 49
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getCurrentUser"

    const/4 v2, 0x0

    .line 50
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static c()Ljava/lang/reflect/Method;
    .locals 5

    .line 60
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "setCustomImageForPackage"

    const/4 v2, 0x4

    .line 61
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/io/FileDescriptor;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
