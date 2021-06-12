.class public Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31831

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;->b:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;->a:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;->b:Z

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;->a:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "FingerPrintUtils"

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get SemFingerprintManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 26
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;->a(Landroid/content/Context;)V

    .line 37
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;->a:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    if-eqz p0, :cond_0

    .line 38
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;->a:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->getSensorPosition()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "FingerPrintUtils"

    const-string v0, "isInDisplayFingerprint true"

    .line 40
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
