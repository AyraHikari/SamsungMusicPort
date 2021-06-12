.class final Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/BrowseFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/BrowseFragment;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/BrowseFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$2;->a:Lcom/samsung/android/app/music/browse/BrowseFragment;

    iput p2, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 299
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 300
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$showNetworkLayout$$inlined$apply$lambda$2;->a:Lcom/samsung/android/app/music/browse/BrowseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
