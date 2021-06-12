.class Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$4;->b:Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$4;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PlayerDialog"

    const-string v1, "PlayerMarketingDialogFragment: loadImage: Set marketing image."

    .line 141
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$4;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$4;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
