.class public abstract Landroid/support/v7/media/MediaRouteProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;,
        Landroid/support/v7/media/MediaRouteProvider$Callback;,
        Landroid/support/v7/media/MediaRouteProvider$RouteController;,
        Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;
    }
.end annotation


# static fields
.field static final MSG_DELIVER_DESCRIPTOR_CHANGED:I = 0x1

.field static final MSG_DELIVER_DISCOVERY_REQUEST_CHANGED:I = 0x2


# instance fields
.field private mCallback:Landroid/support/v7/media/MediaRouteProvider$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

.field private mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

.field private final mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

.field private final mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

.field private mPendingDescriptorChange:Z

.field private mPendingDiscoveryRequestChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;-><init>(Landroid/support/v7/media/MediaRouteProvider;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    if-eqz p1, :cond_1

    .line 92
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 94
    new-instance p2, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p2, v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    iput-object p2, p0, Landroid/support/v7/media/MediaRouteProvider;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    goto :goto_0

    .line 96
    :cond_0
    iput-object p2, p0, Landroid/support/v7/media/MediaRouteProvider;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method deliverDescriptorChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDescriptorChange:Z

    .line 240
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mCallback:Landroid/support/v7/media/MediaRouteProvider$Callback;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mCallback:Landroid/support/v7/media/MediaRouteProvider$Callback;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProvider;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/MediaRouteProvider$Callback;->onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    :cond_0
    return-void
.end method

.method deliverDiscoveryRequestChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDiscoveryRequestChange:Z

    .line 168
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouteProvider;->onDiscoveryRequestChanged(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    return-object v0
.end method

.method public final getDiscoveryRequest()Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 141
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 111
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    return-object v0
.end method

.method public final getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    return-object v0
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "routeId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object p1

    return-object p1

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDiscoveryRequestChanged(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 0
    .param p1    # Landroid/support/v7/media/MediaRouteDiscoveryRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V
    .locals 0
    .param p1    # Landroid/support/v7/media/MediaRouteProvider$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 128
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mCallback:Landroid/support/v7/media/MediaRouteProvider$Callback;

    return-void
.end method

.method public final setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 1
    .param p1    # Landroid/support/v7/media/MediaRouteProviderDescriptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 228
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    if-eq v0, p1, :cond_0

    .line 229
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 230
    iget-boolean p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDescriptorChange:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDescriptorChange:Z

    .line 232
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 1

    .line 153
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 155
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-static {v0, p1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 160
    iget-boolean p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDiscoveryRequestChange:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDiscoveryRequestChange:Z

    .line 162
    iget-object p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
