.class Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final a:Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$1;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    return-void
.end method

.method static synthetic a()Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    return-object v0
.end method
