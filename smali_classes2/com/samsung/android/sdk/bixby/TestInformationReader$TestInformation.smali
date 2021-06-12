.class public Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/TestInformationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestInformation"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->a:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->b:Ljava/util/Map;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->a:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->b:Ljava/util/Map;

    return-object v0
.end method
