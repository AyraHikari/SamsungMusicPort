.class public Lcom/samsung/sectionmap/SmartVolumeLib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SmartVolumeLib"

.field public static final SMART_VOLUME_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "savscmn"

    .line 47
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "savsff"

    .line 50
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "savsac"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "SmartVolumeLib"

    .line 53
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "SMUSIC-SmartVolumeLib"

    const-string v1, "This device have NOT SmartVolume Library."

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 59
    :goto_0
    sput-boolean v0, Lcom/samsung/sectionmap/SmartVolumeLib;->SMART_VOLUME_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native SmartVolumeEXE(Ljava/lang/String;)I
.end method

.method public native SmartVolumeInit()I
.end method

.method public native SmartVolumeRelease()I
.end method
