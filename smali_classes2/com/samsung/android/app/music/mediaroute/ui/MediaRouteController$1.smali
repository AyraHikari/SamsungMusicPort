.class Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;Landroid/app/Activity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$1;->b:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    iput-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$1;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->a(Landroid/app/Activity;)V

    return-void
.end method
