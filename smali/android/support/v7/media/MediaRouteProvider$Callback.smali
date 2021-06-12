.class public abstract Landroid/support/v7/media/MediaRouteProvider$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 0
    .param p1    # Landroid/support/v7/media/MediaRouteProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/media/MediaRouteProviderDescriptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
