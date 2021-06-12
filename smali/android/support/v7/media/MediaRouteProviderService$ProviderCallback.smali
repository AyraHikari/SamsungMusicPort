.class final Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;
.super Landroid/support/v7/media/MediaRouteProvider$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProviderService;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .locals 0

    .line 540
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 0

    .line 546
    iget-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    invoke-virtual {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    return-void
.end method
