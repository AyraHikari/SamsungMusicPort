.class Lcom/mz/common/TraceGPS$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mz/common/TraceGPS;->b(Landroid/content/Context;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:D

.field private final synthetic c:D


# direct methods
.method constructor <init>(Landroid/content/Context;DD)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mz/common/TraceGPS$2;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/mz/common/TraceGPS$2;->b:D

    iput-wide p4, p0, Lcom/mz/common/TraceGPS$2;->c:D

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 68
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/mz/common/TraceGPS$2;->a:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 71
    :try_start_0
    iget-wide v1, p0, Lcom/mz/common/TraceGPS$2;->b:D

    iget-wide v3, p0, Lcom/mz/common/TraceGPS$2;->c:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 72
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mz/common/TraceGPS;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ADSDK"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get postnumber fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
