.class public final Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderMetadata"
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 304
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    return-void

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "componentName must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 318
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderMetadata{ componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    .line 324
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
