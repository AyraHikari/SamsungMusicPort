.class public final Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/util/GooglePlayAdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;->b:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;->b:Z

    return v0
.end method
