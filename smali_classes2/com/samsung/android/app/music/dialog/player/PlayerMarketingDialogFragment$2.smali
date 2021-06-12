.class Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Landroid/app/Activity;Landroid/app/Dialog;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/app/Activity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$2;->b:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$2;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a(Landroid/app/Activity;)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$2;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "click_radioover_upsell"

    const-string v1, "click_radioover_upsell"

    const/4 v2, 0x1

    .line 77
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$2;->b:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->dismiss()V

    return-void
.end method
