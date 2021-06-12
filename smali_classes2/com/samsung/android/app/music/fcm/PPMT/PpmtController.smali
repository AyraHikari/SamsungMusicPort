.class public Lcom/samsung/android/app/music/fcm/PPMT/PpmtController;
.super Lcom/samsung/android/app/music/fcm/PPMT/PpmtConstants;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/fcm/PPMT/PpmtController;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
