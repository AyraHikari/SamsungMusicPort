.class final Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$7;->a:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$7;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$7;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BrowseViewUtils"

    const-string v1, "runWithDelay. activity is null"

    .line 525
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$7;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
