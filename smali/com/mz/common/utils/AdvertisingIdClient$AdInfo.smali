.class public final Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mz/common/utils/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;->a:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;->b:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;->a:Ljava/lang/String;

    return-object v0
.end method
