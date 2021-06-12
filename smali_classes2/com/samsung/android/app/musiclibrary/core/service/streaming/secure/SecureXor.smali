.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorInputStream;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorHelper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final POST_FIX_TEA:Ljava/lang/String; = "TEA"

.field private static final SUB_TAG:Ljava/lang/String; = "CacheManager> "


# instance fields
.field private final mCafe:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;->mCafe:Ljava/lang/String;

    return-void
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;->mCafe:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorHelper;->decrypt(Ljava/lang/String;Ljava/io/FileInputStream;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TEA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "encrypt file remove error !!"

    .line 48
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;->printInfoLog(Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorHelper;->encrypt(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rename is success end encrypt! taken "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " and enc file length "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;->printInfoLog(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPostFix()Ljava/lang/String;
    .locals 1

    const-string v0, "TEA"

    return-object v0
.end method

.method public getSecureType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
