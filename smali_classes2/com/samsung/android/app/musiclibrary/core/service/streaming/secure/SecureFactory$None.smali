.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory$None;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "None"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory$None;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p2
.end method

.method public getPostFix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSecureType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
