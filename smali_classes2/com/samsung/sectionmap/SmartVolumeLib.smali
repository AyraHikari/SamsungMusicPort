.class public final Lcom/samsung/sectionmap/SmartVolumeLib;
.super Ljava/lang/Object;
.source "SmartVolumeLib.kt"


# static fields
.field public static final INSTANCE:Lcom/samsung/sectionmap/SmartVolumeLib;

.field private static final SUB_TAG:Ljava/lang/String; = "SmartVolumeLib"

.field private static final SUPPORT_FW_SMART_VOLUME:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/sectionmap/SmartVolumeLib;

    invoke-direct {v0}, Lcom/samsung/sectionmap/SmartVolumeLib;-><init>()V

    sput-object v0, Lcom/samsung/sectionmap/SmartVolumeLib;->INSTANCE:Lcom/samsung/sectionmap/SmartVolumeLib;

    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/utils/features/a;->c:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/samsung/sectionmap/SmartVolumeLib;->loadLibrary()Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/samsung/sectionmap/SmartVolumeLib;->SUPPORT_FW_SMART_VOLUME:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native SmartVolumeEXE(Ljava/lang/String;)I
.end method

.method private final native SmartVolumeInit()I
.end method

.method private final native SmartVolumeRelease()I
.end method

.method private final loadLibrary()Z
    .locals 11

    .line 1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SmartVolumeLib"

    const-string v3, "savsac"

    const-string v4, "savsff"

    const/4 v5, 0x0

    const-string v6, "This device have NOT SmartVolume Library."

    const-string v7, "SMUSIC-SmartVolumeLib"

    const-string v8, "savscmn"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 3
    :try_start_0
    invoke-static {v8}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 8
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v9

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms\t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SUPPORT_FW_SMART_VOLUME"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |\t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMUSIC-SV"

    .line 13
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 14
    :cond_0
    :try_start_1
    invoke-static {v8}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 18
    :catchall_1
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 19
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 20
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getSUPPORT_FW_SMART_VOLUME()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/sectionmap/SmartVolumeLib;->SUPPORT_FW_SMART_VOLUME:Z

    return v0
.end method

.method public final init()I
    .locals 1

    sget-boolean v0, Lcom/samsung/sectionmap/SmartVolumeLib;->SUPPORT_FW_SMART_VOLUME:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeInit()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final release()I
    .locals 1

    sget-boolean v0, Lcom/samsung/sectionmap/SmartVolumeLib;->SUPPORT_FW_SMART_VOLUME:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeRelease()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final volume(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/sectionmap/SmartVolumeLib;->SUPPORT_FW_SMART_VOLUME:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeEXE(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
