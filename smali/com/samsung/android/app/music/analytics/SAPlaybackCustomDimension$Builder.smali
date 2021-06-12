.class public final Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a:Ljava/util/Map;

    const-string v1, "Track ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Z)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a:Ljava/util/Map;

    const-string v1, "Subscription"

    if-eqz p1, :cond_0

    const-string p1, "YES"

    goto :goto_0

    :cond_0
    const-string p1, "NO"

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Ljava/util/Map;
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

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a:Ljava/util/Map;

    const-string v1, "Network"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b(Z)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a:Ljava/util/Map;

    const-string v1, "SA sign in"

    if-eqz p1, :cond_0

    const-string p1, "YES"

    goto :goto_0

    :cond_0
    const-string p1, "NO"

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a:Ljava/util/Map;

    const-string v1, "Date"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public c(Z)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a:Ljava/util/Map;

    const-string v1, "My Music mode"

    if-eqz p1, :cond_0

    const-string p1, "YES"

    goto :goto_0

    :cond_0
    const-string p1, "NO"

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
