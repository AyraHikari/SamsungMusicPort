.class Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->dismiss()V

    return-void
.end method
