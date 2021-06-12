.class Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$2;->b:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
