.class public final Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;

.field private static final SHA_1:Ljava/lang/String; = "SHA-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSHA1(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/Hex;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;->getSHA1asByteArray(Landroid/content/pm/Signature;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->getHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getSHA1asByteArray(Landroid/content/pm/Signature;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SHA-1"

    .line 13
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v0, "md.digest(signature.toByteArray())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
